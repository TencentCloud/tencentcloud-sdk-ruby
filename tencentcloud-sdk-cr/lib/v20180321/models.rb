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
  module Cr
    module V20180321
      # ApplyBlackList请求参数结构体
      class ApplyBlackListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：account
        # @type Module: String
        # @param Operation: 操作名，本接口取值：ApplyBlackList
        # @type Operation: String
        # @param BlackList: 黑名单列表
        # @type BlackList: Array
        # @param InstId: 实例ID，不传默认为系统分配的初始实例
        # @type InstId: String

        attr_accessor :Module, :Operation, :BlackList, :InstId
        
        def initialize(module=nil, operation=nil, blacklist=nil, instid=nil)
          @Module = module
          @Operation = operation
          @BlackList = blacklist
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @BlackList = params['BlackList']
          @InstId = params['InstId']
        end
      end

      # ApplyBlackList返回参数结构体
      class ApplyBlackListResponse < TencentCloud::Common::AbstractModel
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

      # ApplyCreditAudit请求参数结构体
      class ApplyCreditAuditRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Credit
        # @type Module: String
        # @param Operation: 操作名，本接口取值：Apply
        # @type Operation: String
        # @param InstId: 实例ID
        # @type InstId: String
        # @param ProductId: 产品ID，形如P******。
        # @type ProductId: String
        # @param CaseId: 信审任务ID，同一天内，同一InstId下，同一CaseId只能调用一次。
        # @type CaseId: String
        # @param CallbackUrl: 回调地址
        # @type CallbackUrl: String
        # @param Data: JSON格式的业务字段。
        # @type Data: String

        attr_accessor :Module, :Operation, :InstId, :ProductId, :CaseId, :CallbackUrl, :Data
        
        def initialize(module=nil, operation=nil, instid=nil, productid=nil, caseid=nil, callbackurl=nil, data=nil)
          @Module = module
          @Operation = operation
          @InstId = instid
          @ProductId = productid
          @CaseId = caseid
          @CallbackUrl = callbackurl
          @Data = data
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @InstId = params['InstId']
          @ProductId = params['ProductId']
          @CaseId = params['CaseId']
          @CallbackUrl = params['CallbackUrl']
          @Data = params['Data']
        end
      end

      # ApplyCreditAudit返回参数结构体
      class ApplyCreditAuditResponse < TencentCloud::Common::AbstractModel
        # @param RequestDate: 请求日期
        # @type RequestDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestDate, :RequestId
        
        def initialize(requestdate=nil, requestid=nil)
          @RequestDate = requestdate
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestDate = params['RequestDate']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCreditResult请求参数结构体
      class DescribeCreditResultRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Credit
        # @type Module: String
        # @param Operation: 操作名，本接口取值：Get
        # @type Operation: String
        # @param InstId: 实例ID
        # @type InstId: String
        # @param ProductId: 产品ID，形如P******。
        # @type ProductId: String
        # @param CaseId: 信审任务ID
        # @type CaseId: String
        # @param RequestDate: 请求日期，格式为YYYY-MM-DD
        # @type RequestDate: String

        attr_accessor :Module, :Operation, :InstId, :ProductId, :CaseId, :RequestDate
        
        def initialize(module=nil, operation=nil, instid=nil, productid=nil, caseid=nil, requestdate=nil)
          @Module = module
          @Operation = operation
          @InstId = instid
          @ProductId = productid
          @CaseId = caseid
          @RequestDate = requestdate
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @InstId = params['InstId']
          @ProductId = params['ProductId']
          @CaseId = params['CaseId']
          @RequestDate = params['RequestDate']
        end
      end

      # DescribeCreditResult返回参数结构体
      class DescribeCreditResultResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: <p>呼叫结果，取值范围：</p><ul style="margin-bottom:0px;"><li>NON：接通</li><li>DBU：号码忙</li><li>DRF：不在服务区</li><li>ANA：欠费未接听</li><li>REJ：拒接</li><li>SHU：关机</li><li>NAN：空号</li><li>HAL：停机</li><li>DAD：未接听</li><li>EXE：其他异常</li></ul>
        # @type ResultCode: String
        # @param ClientCode: 客户标识代码，多个标识码以英文逗号分隔，ResultCode为NON时才有。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCode: String
        # @param RingStartTime: 开始振铃时间，ResultCode为NON或DAD时才有此字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RingStartTime: String
        # @param RingDuration: 振铃时长
        # @type RingDuration: Integer
        # @param AnswerDuration: 接通时长
        # @type AnswerDuration: Integer
        # @param ContextValue: JSON格式的扩展信息字段，ResultCode为NON时才有。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextValue: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ClientCode, :RingStartTime, :RingDuration, :AnswerDuration, :ContextValue, :RequestId
        
        def initialize(resultcode=nil, clientcode=nil, ringstarttime=nil, ringduration=nil, answerduration=nil, contextvalue=nil, requestid=nil)
          @ResultCode = resultcode
          @ClientCode = clientcode
          @RingStartTime = ringstarttime
          @RingDuration = ringduration
          @AnswerDuration = answerduration
          @ContextValue = contextvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ClientCode = params['ClientCode']
          @RingStartTime = params['RingStartTime']
          @RingDuration = params['RingDuration']
          @AnswerDuration = params['AnswerDuration']
          @ContextValue = params['ContextValue']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecords请求参数结构体
      class DescribeRecordsRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Record
        # @type Module: String
        # @param Operation: 操作名，本接口取值：List
        # @type Operation: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param AccountNum: 案件编号
        # @type AccountNum: String
        # @param CalledPhone: 被叫号码
        # @type CalledPhone: String
        # @param StartBizDate: 查询起始日期，格式为YYYY-MM-DD
        # @type StartBizDate: String
        # @param EndBizDate: 查询结束日期，格式为YYYY-MM-DD
        # @type EndBizDate: String
        # @param Offset: 分页参数，索引，默认为0
        # @type Offset: String
        # @param Limit: 分页参数，页长，默认为20
        # @type Limit: String
        # @param InstId: 实例ID，不传默认为系统分配的初始实例
        # @type InstId: String

        attr_accessor :Module, :Operation, :ProductId, :AccountNum, :CalledPhone, :StartBizDate, :EndBizDate, :Offset, :Limit, :InstId
        
        def initialize(module=nil, operation=nil, productid=nil, accountnum=nil, calledphone=nil, startbizdate=nil, endbizdate=nil, offset=nil, limit=nil, instid=nil)
          @Module = module
          @Operation = operation
          @ProductId = productid
          @AccountNum = accountnum
          @CalledPhone = calledphone
          @StartBizDate = startbizdate
          @EndBizDate = endbizdate
          @Offset = offset
          @Limit = limit
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ProductId = params['ProductId']
          @AccountNum = params['AccountNum']
          @CalledPhone = params['CalledPhone']
          @StartBizDate = params['StartBizDate']
          @EndBizDate = params['EndBizDate']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstId = params['InstId']
        end
      end

      # DescribeRecords返回参数结构体
      class DescribeRecordsResponse < TencentCloud::Common::AbstractModel
        # @param RecordList: 录音列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordList: Array
        # @param TotalCount: 录音总量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordList, :TotalCount, :RequestId
        
        def initialize(recordlist=nil, totalcount=nil, requestid=nil)
          @RecordList = recordlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordList = params['RecordList']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Task
        # @type Module: String
        # @param Operation: 操作名，本接口取值：DescribeTaskStatus
        # @type Operation: String
        # @param TaskId: 任务ID，"上传文件"接口返回的DataResId，形如abc-xyz123
        # @type TaskId: String
        # @param InstId: 实例ID，不传默认为系统分配的初始实例。
        # @type InstId: String

        attr_accessor :Module, :Operation, :TaskId, :InstId
        
        def initialize(module=nil, operation=nil, taskid=nil, instid=nil)
          @Module = module
          @Operation = operation
          @TaskId = taskid
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @TaskId = params['TaskId']
          @InstId = params['InstId']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskResult: <p>任务结果：</p><ul style="margin-bottom:0px;"><li>处理中："Uploading Data."</li><li>上传成功："File Uploading Task Success."</li><li>上传失败：具体失败原因</li></ul>
        # @type TaskResult: String
        # @param TaskType: <p>任务类型：</p><ul style="margin-bottom:0px;"><li>到期/逾期提醒数据上传：002</li><li>到期/逾期提醒停拨数据上传：003</li><li>回访数据上传：004</li><li>回访停拨数据上传：005</li></ul>
        # @type TaskType: String
        # @param TaskFileUrl: 过滤文件下载链接，有过滤数据时才存在。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskFileUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskResult, :TaskType, :TaskFileUrl, :RequestId
        
        def initialize(taskresult=nil, tasktype=nil, taskfileurl=nil, requestid=nil)
          @TaskResult = taskresult
          @TaskType = tasktype
          @TaskFileUrl = taskfileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskResult = params['TaskResult']
          @TaskType = params['TaskType']
          @TaskFileUrl = params['TaskFileUrl']
          @RequestId = params['RequestId']
        end
      end

      # DownloadDialogueText请求参数结构体
      class DownloadDialogueTextRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Report
        # @type Module: String
        # @param Operation: 操作名，本接口取值：DownloadTextReport
        # @type Operation: String
        # @param ReportDate: 报告日期，格式为YYYY-MM-DD
        # @type ReportDate: String
        # @param InstId: 实例ID
        # @type InstId: String

        attr_accessor :Module, :Operation, :ReportDate, :InstId
        
        def initialize(module=nil, operation=nil, reportdate=nil, instid=nil)
          @Module = module
          @Operation = operation
          @ReportDate = reportdate
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ReportDate = params['ReportDate']
          @InstId = params['InstId']
        end
      end

      # DownloadDialogueText返回参数结构体
      class DownloadDialogueTextResponse < TencentCloud::Common::AbstractModel
        # @param TextReportUrl: 对话文本下载地址
        # @type TextReportUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TextReportUrl, :RequestId
        
        def initialize(textreporturl=nil, requestid=nil)
          @TextReportUrl = textreporturl
          @RequestId = requestid
        end

        def deserialize(params)
          @TextReportUrl = params['TextReportUrl']
          @RequestId = params['RequestId']
        end
      end

      # DownloadRecordList请求参数结构体
      class DownloadRecordListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Record
        # @type Module: String
        # @param Operation: 操作名，本接口取值：DownloadList
        # @type Operation: String
        # @param BizDate: 录音日期，格式为YYYY-MM-DD
        # @type BizDate: String
        # @param InstId: 实例ID
        # @type InstId: String

        attr_accessor :Module, :Operation, :BizDate, :InstId
        
        def initialize(module=nil, operation=nil, bizdate=nil, instid=nil)
          @Module = module
          @Operation = operation
          @BizDate = bizdate
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @BizDate = params['BizDate']
          @InstId = params['InstId']
        end
      end

      # DownloadRecordList返回参数结构体
      class DownloadRecordListResponse < TencentCloud::Common::AbstractModel
        # @param RecordListUrl: 录音列表下载地址
        # @type RecordListUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordListUrl, :RequestId
        
        def initialize(recordlisturl=nil, requestid=nil)
          @RecordListUrl = recordlisturl
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordListUrl = params['RecordListUrl']
          @RequestId = params['RequestId']
        end
      end

      # DownloadReport请求参数结构体
      class DownloadReportRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Report
        # @type Module: String
        # @param Operation: 操作名，本接口取值：DownloadReport
        # @type Operation: String
        # @param ReportDate: 报告日期，格式为YYYY-MM-DD
        # @type ReportDate: String
        # @param InstId: 实例ID，不传默认为系统分配的初始实例。
        # @type InstId: String

        attr_accessor :Module, :Operation, :ReportDate, :InstId
        
        def initialize(module=nil, operation=nil, reportdate=nil, instid=nil)
          @Module = module
          @Operation = operation
          @ReportDate = reportdate
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ReportDate = params['ReportDate']
          @InstId = params['InstId']
        end
      end

      # DownloadReport返回参数结构体
      class DownloadReportResponse < TencentCloud::Common::AbstractModel
        # @param DailyReportUrl: 到期/逾期提醒日报下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DailyReportUrl: String
        # @param ResultReportUrl: 到期/逾期提醒结果下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultReportUrl: String
        # @param DetailReportUrl: 到期/逾期提醒明细下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailReportUrl: String
        # @param CallbackDailyReportUrl: 回访日报下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackDailyReportUrl: String
        # @param CallbackResultReportUrl: 回访结果下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackResultReportUrl: String
        # @param CallbackDetailReportUrl: 回访明细下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallbackDetailReportUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DailyReportUrl, :ResultReportUrl, :DetailReportUrl, :CallbackDailyReportUrl, :CallbackResultReportUrl, :CallbackDetailReportUrl, :RequestId
        
        def initialize(dailyreporturl=nil, resultreporturl=nil, detailreporturl=nil, callbackdailyreporturl=nil, callbackresultreporturl=nil, callbackdetailreporturl=nil, requestid=nil)
          @DailyReportUrl = dailyreporturl
          @ResultReportUrl = resultreporturl
          @DetailReportUrl = detailreporturl
          @CallbackDailyReportUrl = callbackdailyreporturl
          @CallbackResultReportUrl = callbackresultreporturl
          @CallbackDetailReportUrl = callbackdetailreporturl
          @RequestId = requestid
        end

        def deserialize(params)
          @DailyReportUrl = params['DailyReportUrl']
          @ResultReportUrl = params['ResultReportUrl']
          @DetailReportUrl = params['DetailReportUrl']
          @CallbackDailyReportUrl = params['CallbackDailyReportUrl']
          @CallbackResultReportUrl = params['CallbackResultReportUrl']
          @CallbackDetailReportUrl = params['CallbackDetailReportUrl']
          @RequestId = params['RequestId']
        end
      end

      # QueryInstantData请求参数结构体
      class QueryInstantDataRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Data
        # @type Module: String
        # @param Operation: 操作名，本接口取值：Query
        # @type Operation: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param InstanceId: 实例ID，不传默认为系统分配的初始实例
        # @type InstanceId: String
        # @param QueryModel: 查询类型：callRecord 通话记录
        # @type QueryModel: String
        # @param Data: 查询参数
        # @type Data: String

        attr_accessor :Module, :Operation, :ProductId, :InstanceId, :QueryModel, :Data
        
        def initialize(module=nil, operation=nil, productid=nil, instanceid=nil, querymodel=nil, data=nil)
          @Module = module
          @Operation = operation
          @ProductId = productid
          @InstanceId = instanceid
          @QueryModel = querymodel
          @Data = data
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @ProductId = params['ProductId']
          @InstanceId = params['InstanceId']
          @QueryModel = params['QueryModel']
          @Data = params['Data']
        end
      end

      # QueryInstantData返回参数结构体
      class QueryInstantDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Data: 返回内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId
        
        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 黑名单申请信息
      class SingleBlackApply < TencentCloud::Common::AbstractModel
        # @param BlackType: 黑名单类型，01代表手机号码。
        # @type BlackType: String
        # @param OperationType: 操作类型，A为新增，D为删除。
        # @type OperationType: String
        # @param BlackValue: 黑名单值，BlackType为01时，填写11位手机号码。
        # @type BlackValue: String
        # @param BlackDescription: 备注。
        # @type BlackDescription: String
        # @param BlackValidDate: 黑名单生效截止日期，格式为YYYY-MM-DD，不填默认为永久。
        # @type BlackValidDate: String

        attr_accessor :BlackType, :OperationType, :BlackValue, :BlackDescription, :BlackValidDate
        
        def initialize(blacktype=nil, operationtype=nil, blackvalue=nil, blackdescription=nil, blackvaliddate=nil)
          @BlackType = blacktype
          @OperationType = operationtype
          @BlackValue = blackvalue
          @BlackDescription = blackdescription
          @BlackValidDate = blackvaliddate
        end

        def deserialize(params)
          @BlackType = params['BlackType']
          @OperationType = params['OperationType']
          @BlackValue = params['BlackValue']
          @BlackDescription = params['BlackDescription']
          @BlackValidDate = params['BlackValidDate']
        end
      end

      # 录音信息
      class SingleRecord < TencentCloud::Common::AbstractModel
        # @param AccountNum: 案件编号。
        # @type AccountNum: String
        # @param BizDate: 外呼日期。
        # @type BizDate: String
        # @param CallStartTime: 开始呼叫时间。
        # @type CallStartTime: String
        # @param CallerPhone: 主叫号码。
        # @type CallerPhone: String
        # @param Direction: 呼叫方向，O为呼出，I为呼入。
        # @type Direction: String
        # @param Duration: 通话时长。
        # @type Duration: Integer
        # @param ProductId: 产品ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param RecordCosUrl: 录音下载链接。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordCosUrl: String

        attr_accessor :AccountNum, :BizDate, :CallStartTime, :CallerPhone, :Direction, :Duration, :ProductId, :RecordCosUrl
        
        def initialize(accountnum=nil, bizdate=nil, callstarttime=nil, callerphone=nil, direction=nil, duration=nil, productid=nil, recordcosurl=nil)
          @AccountNum = accountnum
          @BizDate = bizdate
          @CallStartTime = callstarttime
          @CallerPhone = callerphone
          @Direction = direction
          @Duration = duration
          @ProductId = productid
          @RecordCosUrl = recordcosurl
        end

        def deserialize(params)
          @AccountNum = params['AccountNum']
          @BizDate = params['BizDate']
          @CallStartTime = params['CallStartTime']
          @CallerPhone = params['CallerPhone']
          @Direction = params['Direction']
          @Duration = params['Duration']
          @ProductId = params['ProductId']
          @RecordCosUrl = params['RecordCosUrl']
        end
      end

      # UploadDataFile请求参数结构体
      class UploadDataFileRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Data
        # @type Module: String
        # @param Operation: 操作名，本接口取值：Upload
        # @type Operation: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param UploadModel: <p>上传类型，不填默认到期/逾期提醒文件，取值范围：</p><ul style="margin-bottom:0px;"><li>data：到期/逾期提醒文件</li><li>repay：到期/逾期提醒停拨文件</li><li>callback：回访文件</li><li>callstop：回访停拨文件</li><li>blacklist：黑名单文件</li></ul>
        # @type UploadModel: String
        # @param File: 文件，文件与文件地址上传只可选用一种，必须使用multipart/form-data协议来上传二进制流文件，建议使用xlsx格式，大小不超过5MB。
        # @type File: String
        # @param FileUrl: 文件上传地址，文件与文件地址上传只可选用一种，大小不超过50MB。
        # @type FileUrl: String
        # @param InstId: 实例ID，不传默认为系统分配的初始实例。
        # @type InstId: String

        attr_accessor :Module, :Operation, :FileName, :UploadModel, :File, :FileUrl, :InstId
        
        def initialize(module=nil, operation=nil, filename=nil, uploadmodel=nil, file=nil, fileurl=nil, instid=nil)
          @Module = module
          @Operation = operation
          @FileName = filename
          @UploadModel = uploadmodel
          @File = file
          @FileUrl = fileurl
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @FileName = params['FileName']
          @UploadModel = params['UploadModel']
          @File = params['File']
          @FileUrl = params['FileUrl']
          @InstId = params['InstId']
        end
      end

      # UploadDataFile返回参数结构体
      class UploadDataFileResponse < TencentCloud::Common::AbstractModel
        # @param DataResId: 数据ID
        # @type DataResId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataResId, :RequestId
        
        def initialize(dataresid=nil, requestid=nil)
          @DataResId = dataresid
          @RequestId = requestid
        end

        def deserialize(params)
          @DataResId = params['DataResId']
          @RequestId = params['RequestId']
        end
      end

      # UploadDataJson请求参数结构体
      class UploadDataJsonRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，本接口取值：Data
        # @type Module: String
        # @param Operation: 操作名，本接口取值：UploadJson
        # @type Operation: String
        # @param Data: 报文信息
        # @type Data: String
        # @param UploadModel: <p>上传类型，不填默认到期/逾期提醒数据，取值范围：</p><ul style="margin-bottom:0px;"><li>data：到期/逾期提醒数据</li><li>repay：到期/逾期提醒停拨数据</li></ul>
        # @type UploadModel: String
        # @param InstanceId: 实例ID，不传默认为系统分配的初始实例。
        # @type InstanceId: String

        attr_accessor :Module, :Operation, :Data, :UploadModel, :InstanceId
        
        def initialize(module=nil, operation=nil, data=nil, uploadmodel=nil, instanceid=nil)
          @Module = module
          @Operation = operation
          @Data = data
          @UploadModel = uploadmodel
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @Data = params['Data']
          @UploadModel = params['UploadModel']
          @InstanceId = params['InstanceId']
        end
      end

      # UploadDataJson返回参数结构体
      class UploadDataJsonResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应报文信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # UploadFile请求参数结构体
      class UploadFileRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名
        # @type Module: String
        # @param Operation: 操作名
        # @type Operation: String
        # @param FileUrl: 文件上传地址，要求地址协议为HTTPS，且URL端口必须为443
        # @type FileUrl: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileDate: 文件日期
        # @type FileDate: String

        attr_accessor :Module, :Operation, :FileUrl, :FileName, :FileDate
        
        def initialize(module=nil, operation=nil, fileurl=nil, filename=nil, filedate=nil)
          @Module = module
          @Operation = operation
          @FileUrl = fileurl
          @FileName = filename
          @FileDate = filedate
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @FileUrl = params['FileUrl']
          @FileName = params['FileName']
          @FileDate = params['FileDate']
        end
      end

      # UploadFile返回参数结构体
      class UploadFileResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
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

    end
  end
end

