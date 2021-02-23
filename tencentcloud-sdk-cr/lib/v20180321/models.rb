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
      # ApplyBlackListData请求参数结构体
      class ApplyBlackListDataRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名，AiApi
        # @type Module: String
        # @param Operation: 操作名，ApplyBlackListData
        # @type Operation: String
        # @param BlackList: 黑名单列表
        # @type BlackList: Array

        attr_accessor :Module, :Operation, :BlackList
        
        def initialize(_module=nil, operation=nil, blacklist=nil)
          @Module = _module
          @Operation = operation
          @BlackList = blacklist
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          unless params['BlackList'].nil?
            @BlackList = []
            params['BlackList'].each do |i|
              @BlackList << BlackListData.new.deserialize(i)
            end
          end
        end
      end

      # ApplyBlackListData返回参数结构体
      class ApplyBlackListDataResponse < TencentCloud::Common::AbstractModel
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
        
        def initialize(_module=nil, operation=nil, blacklist=nil, instid=nil)
          @Module = _module
          @Operation = operation
          @BlackList = blacklist
          @InstId = instid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          unless params['BlackList'].nil?
            @BlackList = []
            params['BlackList'].each do |i|
              @BlackList << SingleBlackApply.new.deserialize(i)
            end
          end
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
        
        def initialize(_module=nil, operation=nil, instid=nil, productid=nil, caseid=nil, callbackurl=nil, data=nil)
          @Module = _module
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

      # 黑名单申请信息
      class BlackListData < TencentCloud::Common::AbstractModel
        # @param BlackType: 黑名单类型，01代表手机号码。
        # @type BlackType: String
        # @param OperType: 操作类型，A为新增，D为删除。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperType: String
        # @param BlackValue: 黑名单值，BlackType为01时，填写11位手机号码。
        # @type BlackValue: String
        # @param BlackDescription: 备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlackDescription: String
        # @param BlackValidDate: 黑名单生效截止日期，格式为YYYY-MM-DD，不填默认为永久。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlackValidDate: String
        # @param BlackAddDate: 黑名单加入日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlackAddDate: String
        # @param BlackStatus: 0-生效 1-失效
        # @type BlackStatus: String

        attr_accessor :BlackType, :OperType, :BlackValue, :BlackDescription, :BlackValidDate, :BlackAddDate, :BlackStatus
        
        def initialize(blacktype=nil, opertype=nil, blackvalue=nil, blackdescription=nil, blackvaliddate=nil, blackadddate=nil, blackstatus=nil)
          @BlackType = blacktype
          @OperType = opertype
          @BlackValue = blackvalue
          @BlackDescription = blackdescription
          @BlackValidDate = blackvaliddate
          @BlackAddDate = blackadddate
          @BlackStatus = blackstatus
        end

        def deserialize(params)
          @BlackType = params['BlackType']
          @OperType = params['OperType']
          @BlackValue = params['BlackValue']
          @BlackDescription = params['BlackDescription']
          @BlackValidDate = params['BlackValidDate']
          @BlackAddDate = params['BlackAddDate']
          @BlackStatus = params['BlackStatus']
        end
      end

      # 机器人文件结构
      class BotFileData < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型 A 拨打结果 T 记录详情
        # @type FileType: String
        # @param CosUrl: 文件地址
        # @type CosUrl: String

        attr_accessor :FileType, :CosUrl
        
        def initialize(filetype=nil, cosurl=nil)
          @FileType = filetype
          @CosUrl = cosurl
        end

        def deserialize(params)
          @FileType = params['FileType']
          @CosUrl = params['CosUrl']
        end
      end

      # 机器人对话流信息
      class BotFlow < TencentCloud::Common::AbstractModel
        # @param BotFlowId: 对话流ID
        # @type BotFlowId: String
        # @param BotFlowName: 对话流名称
        # @type BotFlowName: String
        # @param PhonePoolList: 号码组信息列表
        # @type PhonePoolList: Array

        attr_accessor :BotFlowId, :BotFlowName, :PhonePoolList
        
        def initialize(botflowid=nil, botflowname=nil, phonepoollist=nil)
          @BotFlowId = botflowid
          @BotFlowName = botflowname
          @PhonePoolList = phonepoollist
        end

        def deserialize(params)
          @BotFlowId = params['BotFlowId']
          @BotFlowName = params['BotFlowName']
          unless params['PhonePoolList'].nil?
            @PhonePoolList = []
            params['PhonePoolList'].each do |i|
              @PhonePoolList << PhonePool.new.deserialize(i)
            end
          end
        end
      end

      # 机器人列表
      class BotInfo < TencentCloud::Common::AbstractModel
        # @param BotId: 机器人ID
        # @type BotId: String
        # @param BotName: 机器人名称
        # @type BotName: String
        # @param BotStatus: 机器人状态。0-停用 1-启用 2-待审核
        # @type BotStatus: String

        attr_accessor :BotId, :BotName, :BotStatus
        
        def initialize(botid=nil, botname=nil, botstatus=nil)
          @BotId = botid
          @BotName = botname
          @BotStatus = botstatus
        end

        def deserialize(params)
          @BotId = params['BotId']
          @BotName = params['BotName']
          @BotStatus = params['BotStatus']
        end
      end

      # 作业信息
      class CallInfo < TencentCloud::Common::AbstractModel
        # @param BizDate: 业务日期
        # @type BizDate: String
        # @param Status: 状态 WAIT：待执行；DOING：执行中；ERROR：执行错误；DONE：已完成；
        # @type Status: String
        # @param TotalCount: 成功总数
        # @type TotalCount: Integer
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileType: 文件类型 I：呼叫文件 R：停拨文件
        # @type FileType: String
        # @param CallId: 作业唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallId: String

        attr_accessor :BizDate, :Status, :TotalCount, :FileName, :FileType, :CallId
        
        def initialize(bizdate=nil, status=nil, totalcount=nil, filename=nil, filetype=nil, callid=nil)
          @BizDate = bizdate
          @Status = status
          @TotalCount = totalcount
          @FileName = filename
          @FileType = filetype
          @CallId = callid
        end

        def deserialize(params)
          @BizDate = params['BizDate']
          @Status = params['Status']
          @TotalCount = params['TotalCount']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CallId = params['CallId']
        end
      end

      # 产品拨打时间集合
      class CallTimeDict < TencentCloud::Common::AbstractModel
        # @param Monday: 周一
        # @type Monday: :class:`Tencentcloud::Cr.v20180321.models.CallTimeInfo`
        # @param Tuesday: 周二
        # @type Tuesday: :class:`Tencentcloud::Cr.v20180321.models.CallTimeInfo`
        # @param Wednesday: 周三
        # @type Wednesday: :class:`Tencentcloud::Cr.v20180321.models.CallTimeInfo`
        # @param Thursday: 周四
        # @type Thursday: :class:`Tencentcloud::Cr.v20180321.models.CallTimeInfo`
        # @param Friday: 周五
        # @type Friday: :class:`Tencentcloud::Cr.v20180321.models.CallTimeInfo`
        # @param Saturday: 周六
        # @type Saturday: :class:`Tencentcloud::Cr.v20180321.models.CallTimeInfo`
        # @param Sunday: 周日
        # @type Sunday: :class:`Tencentcloud::Cr.v20180321.models.CallTimeInfo`

        attr_accessor :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday, :Sunday
        
        def initialize(monday=nil, tuesday=nil, wednesday=nil, thursday=nil, friday=nil, saturday=nil, sunday=nil)
          @Monday = monday
          @Tuesday = tuesday
          @Wednesday = wednesday
          @Thursday = thursday
          @Friday = friday
          @Saturday = saturday
          @Sunday = sunday
        end

        def deserialize(params)
          unless params['Monday'].nil?
            @Monday = CallTimeInfo.new.deserialize(params['Monday'])
          end
          unless params['Tuesday'].nil?
            @Tuesday = CallTimeInfo.new.deserialize(params['Tuesday'])
          end
          unless params['Wednesday'].nil?
            @Wednesday = CallTimeInfo.new.deserialize(params['Wednesday'])
          end
          unless params['Thursday'].nil?
            @Thursday = CallTimeInfo.new.deserialize(params['Thursday'])
          end
          unless params['Friday'].nil?
            @Friday = CallTimeInfo.new.deserialize(params['Friday'])
          end
          unless params['Saturday'].nil?
            @Saturday = CallTimeInfo.new.deserialize(params['Saturday'])
          end
          unless params['Sunday'].nil?
            @Sunday = CallTimeInfo.new.deserialize(params['Sunday'])
          end
        end
      end

      # 产品拨打时间信息
      class CallTimeInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 产品开始拨打时间，HHmmss格式,默认090000
        # @type StartTime: String
        # @param EndTime: 产品结束拨打时间，HHmmss格式.默认200000
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime
        
        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # ChangeBotCallStatus请求参数结构体
      class ChangeBotCallStatusRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：ChangeBotCallStatus
        # @type Operation: String
        # @param Status: 作业变更状态
        # SUSPEND：暂停；EXECUTE：恢复；
        # @type Status: String
        # @param CallId: 作业唯一标识
        # @type CallId: String
        # @param BizDate: 业务日期
        # @type BizDate: String
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String

        attr_accessor :Module, :Operation, :Status, :CallId, :BizDate, :BotId, :BotName
        
        def initialize(_module=nil, operation=nil, status=nil, callid=nil, bizdate=nil, botid=nil, botname=nil)
          @Module = _module
          @Operation = operation
          @Status = status
          @CallId = callid
          @BizDate = bizdate
          @BotId = botid
          @BotName = botname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @Status = params['Status']
          @CallId = params['CallId']
          @BizDate = params['BizDate']
          @BotId = params['BotId']
          @BotName = params['BotName']
        end
      end

      # ChangeBotCallStatus返回参数结构体
      class ChangeBotCallStatusResponse < TencentCloud::Common::AbstractModel
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

      # ChangeBotTaskStatus请求参数结构体
      class ChangeBotTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：ChangeBotTaskStatus
        # @type Operation: String
        # @param Status: 作业变更状态
        # SUSPEND：暂停；EXECUTE：恢复；
        # @type Status: String
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String

        attr_accessor :Module, :Operation, :Status, :BotId, :BotName
        
        def initialize(_module=nil, operation=nil, status=nil, botid=nil, botname=nil)
          @Module = _module
          @Operation = operation
          @Status = status
          @BotId = botid
          @BotName = botname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @Status = params['Status']
          @BotId = params['BotId']
          @BotName = params['BotName']
        end
      end

      # ChangeBotTaskStatus返回参数结构体
      class ChangeBotTaskStatusResponse < TencentCloud::Common::AbstractModel
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

      # CreateBotTask请求参数结构体
      class CreateBotTaskRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：CreateTask
        # @type Operation: String
        # @param BotName: 任务名称
        # @type BotName: String
        # @param FlowId: 对话流ID
        # @type FlowId: String
        # @param BanCall: 是否禁止拨打，默认Y
        # @type BanCall: String
        # @param PhoneCollection: 拨打线路集合
        # @type PhoneCollection: String
        # @param CallTimeCollection: 产品拨打时间集合
        # @type CallTimeCollection: :class:`Tencentcloud::Cr.v20180321.models.CallTimeDict`
        # @param StartTimeBan: 禁止拨打起始时间。默认130000
        # @type StartTimeBan: String
        # @param EndTimeBan: 禁止拨打结束时间。默认140000
        # @type EndTimeBan: String
        # @param CodeType: 重播方式，NON：未接通、LABEL：意向分级，可多选，用竖线分隔：NON|LABEL
        # @type CodeType: String
        # @param CodeCollection: 重播值集合，A：强意向、B：中意向、C：低意向、D：无意向、E：在忙、F：未接通、G：无效号码，可多选，用竖线分隔：A|B|C|D|E|F|G
        # @type CodeCollection: String
        # @param CallCount: 继续拨打次数
        # @type CallCount: Integer
        # @param CallInterval: 拨打间隔
        # @type CallInterval: Integer
        # @param SmsSignId: 未接通引用短信签名ID
        # @type SmsSignId: String
        # @param SmsTemplateId: 未接通引用短信模板ID
        # @type SmsTemplateId: String
        # @param CallType: 拨打方式。NORMAL - 正常拨打；TIMER - 定时拨打
        # @type CallType: String
        # @param CallStartDate: 拨打开始日期。CallType=TIMER时有值，yyyy-MM-dd
        # @type CallStartDate: String
        # @param CallEndDate: 拨打结束日期。CallType=PERIOD 时有值，yyyy-MM-dd
        # @type CallEndDate: String

        attr_accessor :Module, :Operation, :BotName, :FlowId, :BanCall, :PhoneCollection, :CallTimeCollection, :StartTimeBan, :EndTimeBan, :CodeType, :CodeCollection, :CallCount, :CallInterval, :SmsSignId, :SmsTemplateId, :CallType, :CallStartDate, :CallEndDate
        
        def initialize(_module=nil, operation=nil, botname=nil, flowid=nil, bancall=nil, phonecollection=nil, calltimecollection=nil, starttimeban=nil, endtimeban=nil, codetype=nil, codecollection=nil, callcount=nil, callinterval=nil, smssignid=nil, smstemplateid=nil, calltype=nil, callstartdate=nil, callenddate=nil)
          @Module = _module
          @Operation = operation
          @BotName = botname
          @FlowId = flowid
          @BanCall = bancall
          @PhoneCollection = phonecollection
          @CallTimeCollection = calltimecollection
          @StartTimeBan = starttimeban
          @EndTimeBan = endtimeban
          @CodeType = codetype
          @CodeCollection = codecollection
          @CallCount = callcount
          @CallInterval = callinterval
          @SmsSignId = smssignid
          @SmsTemplateId = smstemplateid
          @CallType = calltype
          @CallStartDate = callstartdate
          @CallEndDate = callenddate
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @BotName = params['BotName']
          @FlowId = params['FlowId']
          @BanCall = params['BanCall']
          @PhoneCollection = params['PhoneCollection']
          unless params['CallTimeCollection'].nil?
            @CallTimeCollection = CallTimeDict.new.deserialize(params['CallTimeCollection'])
          end
          @StartTimeBan = params['StartTimeBan']
          @EndTimeBan = params['EndTimeBan']
          @CodeType = params['CodeType']
          @CodeCollection = params['CodeCollection']
          @CallCount = params['CallCount']
          @CallInterval = params['CallInterval']
          @SmsSignId = params['SmsSignId']
          @SmsTemplateId = params['SmsTemplateId']
          @CallType = params['CallType']
          @CallStartDate = params['CallStartDate']
          @CallEndDate = params['CallEndDate']
        end
      end

      # CreateBotTask返回参数结构体
      class CreateBotTaskResponse < TencentCloud::Common::AbstractModel
        # @param BotId: 机器人任务Id
        # @type BotId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BotId, :RequestId
        
        def initialize(botid=nil, requestid=nil)
          @BotId = botid
          @RequestId = requestid
        end

        def deserialize(params)
          @BotId = params['BotId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBotFlow请求参数结构体
      class DescribeBotFlowRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：GetFlow
        # @type Operation: String

        attr_accessor :Module, :Operation
        
        def initialize(_module=nil, operation=nil)
          @Module = _module
          @Operation = operation
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
        end
      end

      # DescribeBotFlow返回参数结构体
      class DescribeBotFlowResponse < TencentCloud::Common::AbstractModel
        # @param BotFlowList: 机器人对话流列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotFlowList: Array
        # @param SmsSignList: 短信签名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmsSignList: Array
        # @param SmsTemplateList: 短信模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmsTemplateList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BotFlowList, :SmsSignList, :SmsTemplateList, :RequestId
        
        def initialize(botflowlist=nil, smssignlist=nil, smstemplatelist=nil, requestid=nil)
          @BotFlowList = botflowlist
          @SmsSignList = smssignlist
          @SmsTemplateList = smstemplatelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BotFlowList'].nil?
            @BotFlowList = []
            params['BotFlowList'].each do |i|
              @BotFlowList << BotFlow.new.deserialize(i)
            end
          end
          unless params['SmsSignList'].nil?
            @SmsSignList = []
            params['SmsSignList'].each do |i|
              @SmsSignList << SmsSign.new.deserialize(i)
            end
          end
          unless params['SmsTemplateList'].nil?
            @SmsTemplateList = []
            params['SmsTemplateList'].each do |i|
              @SmsTemplateList << SmsTemplate.new.deserialize(i)
            end
          end
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
        
        def initialize(_module=nil, operation=nil, instid=nil, productid=nil, caseid=nil, requestdate=nil)
          @Module = _module
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

      # DescribeFileModel请求参数结构体
      class DescribeFileModelRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：DescribeFileModel
        # @type Operation: String
        # @param FileType: 模板文件类型，输入input，停拨stop
        # @type FileType: String
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String

        attr_accessor :Module, :Operation, :FileType, :BotId, :BotName
        
        def initialize(_module=nil, operation=nil, filetype=nil, botid=nil, botname=nil)
          @Module = _module
          @Operation = operation
          @FileType = filetype
          @BotId = botid
          @BotName = botname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @FileType = params['FileType']
          @BotId = params['BotId']
          @BotName = params['BotName']
        end
      end

      # DescribeFileModel返回参数结构体
      class DescribeFileModelResponse < TencentCloud::Common::AbstractModel
        # @param CosUrl: 模板下载链接
        # @type CosUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosUrl, :RequestId
        
        def initialize(cosurl=nil, requestid=nil)
          @CosUrl = cosurl
          @RequestId = requestid
        end

        def deserialize(params)
          @CosUrl = params['CosUrl']
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
        
        def initialize(_module=nil, operation=nil, productid=nil, accountnum=nil, calledphone=nil, startbizdate=nil, endbizdate=nil, offset=nil, limit=nil, instid=nil)
          @Module = _module
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
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              @RecordList << SingleRecord.new.deserialize(i)
            end
          end
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
        
        def initialize(_module=nil, operation=nil, taskid=nil, instid=nil)
          @Module = _module
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

      # DownloadBotRecord请求参数结构体
      class DownloadBotRecordRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块：AiApi
        # @type Module: String
        # @param Operation: 操作：DownloadRecord
        # @type Operation: String
        # @param BizDate: 业务日期
        # @type BizDate: String

        attr_accessor :Module, :Operation, :BizDate
        
        def initialize(_module=nil, operation=nil, bizdate=nil)
          @Module = _module
          @Operation = operation
          @BizDate = bizdate
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @BizDate = params['BizDate']
        end
      end

      # DownloadBotRecord返回参数结构体
      class DownloadBotRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordCosUrl: 录音地址。请求后30分钟内有效
        # @type RecordCosUrl: String
        # @param TextCosUrl: 文本地址。请求后30分钟内有效
        # @type TextCosUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordCosUrl, :TextCosUrl, :RequestId
        
        def initialize(recordcosurl=nil, textcosurl=nil, requestid=nil)
          @RecordCosUrl = recordcosurl
          @TextCosUrl = textcosurl
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordCosUrl = params['RecordCosUrl']
          @TextCosUrl = params['TextCosUrl']
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
        
        def initialize(_module=nil, operation=nil, reportdate=nil, instid=nil)
          @Module = _module
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
        
        def initialize(_module=nil, operation=nil, bizdate=nil, instid=nil)
          @Module = _module
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
        
        def initialize(_module=nil, operation=nil, reportdate=nil, instid=nil)
          @Module = _module
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

      # ExportBotData请求参数结构体
      class ExportBotDataRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：ExportBotData
        # @type Operation: String
        # @param BizDate: 业务日期。YYYY-MM-DD
        # @type BizDate: String
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String

        attr_accessor :Module, :Operation, :BizDate, :BotId, :BotName
        
        def initialize(_module=nil, operation=nil, bizdate=nil, botid=nil, botname=nil)
          @Module = _module
          @Operation = operation
          @BizDate = bizdate
          @BotId = botid
          @BotName = botname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @BizDate = params['BizDate']
          @BotId = params['BotId']
          @BotName = params['BotName']
        end
      end

      # ExportBotData返回参数结构体
      class ExportBotDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 导出文件列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              @Data << BotFileData.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 号码组信息
      class PhonePool < TencentCloud::Common::AbstractModel
        # @param PoolId: 号码组ID
        # @type PoolId: String
        # @param PoolName: 号码组名称
        # @type PoolName: String

        attr_accessor :PoolId, :PoolName
        
        def initialize(poolid=nil, poolname=nil)
          @PoolId = poolid
          @PoolName = poolname
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @PoolName = params['PoolName']
        end
      end

      # QueryProducts接口对应数据结构。产品对应的相关信息。
      class ProductQueryInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductCode: 产品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductCode: String
        # @param ProductStatus: 产品状态 0 禁用 1 启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductStatus: Integer
        # @param SceneType: 场景类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneType: String

        attr_accessor :ProductId, :ProductName, :ProductCode, :ProductStatus, :SceneType
        
        def initialize(productid=nil, productname=nil, productcode=nil, productstatus=nil, scenetype=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductCode = productcode
          @ProductStatus = productstatus
          @SceneType = scenetype
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductCode = params['ProductCode']
          @ProductStatus = params['ProductStatus']
          @SceneType = params['SceneType']
        end
      end

      # QueryBotList请求参数结构体
      class QueryBotListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名：AiApi
        # @type Module: String
        # @param Operation: 操作名：QueryBotList
        # @type Operation: String

        attr_accessor :Module, :Operation
        
        def initialize(_module=nil, operation=nil)
          @Module = _module
          @Operation = operation
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
        end
      end

      # QueryBotList返回参数结构体
      class QueryBotListResponse < TencentCloud::Common::AbstractModel
        # @param BotList: 任务列表。
        # @type BotList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BotList, :RequestId
        
        def initialize(botlist=nil, requestid=nil)
          @BotList = botlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BotList'].nil?
            @BotList = []
            params['BotList'].each do |i|
              @BotList << BotInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCallList请求参数结构体
      class QueryCallListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：QueryCallList
        # @type Operation: String
        # @param BizDate: 业务日期
        # @type BizDate: String
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String
        # @param FileName: 通过API或平台上传的文件完整名称
        # @type FileName: String

        attr_accessor :Module, :Operation, :BizDate, :BotId, :BotName, :FileName
        
        def initialize(_module=nil, operation=nil, bizdate=nil, botid=nil, botname=nil, filename=nil)
          @Module = _module
          @Operation = operation
          @BizDate = bizdate
          @BotId = botid
          @BotName = botname
          @FileName = filename
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @BizDate = params['BizDate']
          @BotId = params['BotId']
          @BotName = params['BotName']
          @FileName = params['FileName']
        end
      end

      # QueryCallList返回参数结构体
      class QueryCallListResponse < TencentCloud::Common::AbstractModel
        # @param CallList: 任务作业状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallList, :RequestId
        
        def initialize(calllist=nil, requestid=nil)
          @CallList = calllist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CallList'].nil?
            @CallList = []
            params['CallList'].each do |i|
              @CallList << CallInfo.new.deserialize(i)
            end
          end
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
        
        def initialize(_module=nil, operation=nil, productid=nil, instanceid=nil, querymodel=nil, data=nil)
          @Module = _module
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

      # QueryProducts请求参数结构体
      class QueryProductsRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：Product
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：QueryProducts
        # @type Operation: String
        # @param InstanceId: 实例Id。
        # @type InstanceId: String

        attr_accessor :Module, :Operation, :InstanceId
        
        def initialize(_module=nil, operation=nil, instanceid=nil)
          @Module = _module
          @Operation = operation
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @InstanceId = params['InstanceId']
        end
      end

      # QueryProducts返回参数结构体
      class QueryProductsResponse < TencentCloud::Common::AbstractModel
        # @param ProductList: 产品信息。
        # @type ProductList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductList, :RequestId
        
        def initialize(productlist=nil, requestid=nil)
          @ProductList = productlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProductList'].nil?
            @ProductList = []
            params['ProductList'].each do |i|
              @ProductList << ProductQueryInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryRecordList请求参数结构体
      class QueryRecordListRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。AiApi
        # @type Module: String
        # @param Operation: 操作名。QueryRecordList
        # @type Operation: String
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: 偏移位移，最大20
        # @type Limit: Integer
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String
        # @param CalledPhone: 被叫号码
        # @type CalledPhone: String
        # @param StartBizDate: 开始日期
        # @type StartBizDate: String
        # @param EndBizDate: 结束日期
        # @type EndBizDate: String

        attr_accessor :Module, :Operation, :Offset, :Limit, :BotId, :BotName, :CalledPhone, :StartBizDate, :EndBizDate
        
        def initialize(_module=nil, operation=nil, offset=nil, limit=nil, botid=nil, botname=nil, calledphone=nil, startbizdate=nil, endbizdate=nil)
          @Module = _module
          @Operation = operation
          @Offset = offset
          @Limit = limit
          @BotId = botid
          @BotName = botname
          @CalledPhone = calledphone
          @StartBizDate = startbizdate
          @EndBizDate = endbizdate
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @BotId = params['BotId']
          @BotName = params['BotName']
          @CalledPhone = params['CalledPhone']
          @StartBizDate = params['StartBizDate']
          @EndBizDate = params['EndBizDate']
        end
      end

      # QueryRecordList返回参数结构体
      class QueryRecordListResponse < TencentCloud::Common::AbstractModel
        # @param RecordList: 录音列表。
        # @type RecordList: Array
        # @param TotalCount: 总数
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
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              @RecordList << RecordInfo.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 录音文件详情
      class RecordInfo < TencentCloud::Common::AbstractModel
        # @param BotId: 任务Id
        # @type BotId: String
        # @param BotName: 任务名称
        # @type BotName: String
        # @param BizDate: 任务日期
        # @type BizDate: String
        # @param CalledPhone: 被叫号码
        # @type CalledPhone: String
        # @param CallStartTime: 开始通话时间
        # @type CallStartTime: String
        # @param Duration: 通话时长
        # @type Duration: Integer
        # @param CosUrl: 录音文件地址
        # @type CosUrl: String
        # @param DialogueLog: 对话日志。JSON格式
        # @type DialogueLog: String
        # @param CosFileName: 录音文件名
        # @type CosFileName: String

        attr_accessor :BotId, :BotName, :BizDate, :CalledPhone, :CallStartTime, :Duration, :CosUrl, :DialogueLog, :CosFileName
        
        def initialize(botid=nil, botname=nil, bizdate=nil, calledphone=nil, callstarttime=nil, duration=nil, cosurl=nil, dialoguelog=nil, cosfilename=nil)
          @BotId = botid
          @BotName = botname
          @BizDate = bizdate
          @CalledPhone = calledphone
          @CallStartTime = callstarttime
          @Duration = duration
          @CosUrl = cosurl
          @DialogueLog = dialoguelog
          @CosFileName = cosfilename
        end

        def deserialize(params)
          @BotId = params['BotId']
          @BotName = params['BotName']
          @BizDate = params['BizDate']
          @CalledPhone = params['CalledPhone']
          @CallStartTime = params['CallStartTime']
          @Duration = params['Duration']
          @CosUrl = params['CosUrl']
          @DialogueLog = params['DialogueLog']
          @CosFileName = params['CosFileName']
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

      # 短信签名信息
      class SmsSign < TencentCloud::Common::AbstractModel
        # @param SignId: 短信签名ID
        # @type SignId: String
        # @param SignName: 短信签名名称
        # @type SignName: String

        attr_accessor :SignId, :SignName
        
        def initialize(signid=nil, signname=nil)
          @SignId = signid
          @SignName = signname
        end

        def deserialize(params)
          @SignId = params['SignId']
          @SignName = params['SignName']
        end
      end

      # 短信模板信息
      class SmsTemplate < TencentCloud::Common::AbstractModel
        # @param TemplateId: 短信模板ID
        # @type TemplateId: String
        # @param TemplateName: 短信模板名称
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

      # UpdateBotTask请求参数结构体
      class UpdateBotTaskRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：UpdateTask
        # @type Operation: String
        # @param BotName: 任务名称
        # @type BotName: String
        # @param BotId: 任务ID
        # @type BotId: String
        # @param CallTimeCollection: 产品拨打时间集合
        # @type CallTimeCollection: :class:`Tencentcloud::Cr.v20180321.models.CallTimeDict`
        # @param BanCall: 是否禁止拨打，默认Y
        # @type BanCall: String
        # @param StartTimeBan: 禁止拨打起始时间。默认130000
        # @type StartTimeBan: String
        # @param EndTimeBan: 禁止拨打结束时间。默认140000
        # @type EndTimeBan: String
        # @param PhoneCollection: 拨打线路集合
        # @type PhoneCollection: String
        # @param CodeType: 重播方式，NON：未接通、LABEL：意向分级，可多选，用竖线分隔：NON|LABEL
        # @type CodeType: String
        # @param CodeCollection: 重播值集合，A：强意向、B：中意向、C：低意向、D：无意向、E：在忙、F：未接通、G：无效号码，可多选，用竖线分隔：A|B|C|D|E|F|G
        # @type CodeCollection: String
        # @param CallCount: 继续拨打次数
        # @type CallCount: Integer
        # @param CallInterval: 拨打间隔
        # @type CallInterval: Integer
        # @param SmsSignId: 未接通引用短信签名ID
        # @type SmsSignId: String
        # @param SmsTemplateId: 未接通引用短信模板ID
        # @type SmsTemplateId: String

        attr_accessor :Module, :Operation, :BotName, :BotId, :CallTimeCollection, :BanCall, :StartTimeBan, :EndTimeBan, :PhoneCollection, :CodeType, :CodeCollection, :CallCount, :CallInterval, :SmsSignId, :SmsTemplateId
        
        def initialize(_module=nil, operation=nil, botname=nil, botid=nil, calltimecollection=nil, bancall=nil, starttimeban=nil, endtimeban=nil, phonecollection=nil, codetype=nil, codecollection=nil, callcount=nil, callinterval=nil, smssignid=nil, smstemplateid=nil)
          @Module = _module
          @Operation = operation
          @BotName = botname
          @BotId = botid
          @CallTimeCollection = calltimecollection
          @BanCall = bancall
          @StartTimeBan = starttimeban
          @EndTimeBan = endtimeban
          @PhoneCollection = phonecollection
          @CodeType = codetype
          @CodeCollection = codecollection
          @CallCount = callcount
          @CallInterval = callinterval
          @SmsSignId = smssignid
          @SmsTemplateId = smstemplateid
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @BotName = params['BotName']
          @BotId = params['BotId']
          unless params['CallTimeCollection'].nil?
            @CallTimeCollection = CallTimeDict.new.deserialize(params['CallTimeCollection'])
          end
          @BanCall = params['BanCall']
          @StartTimeBan = params['StartTimeBan']
          @EndTimeBan = params['EndTimeBan']
          @PhoneCollection = params['PhoneCollection']
          @CodeType = params['CodeType']
          @CodeCollection = params['CodeCollection']
          @CallCount = params['CallCount']
          @CallInterval = params['CallInterval']
          @SmsSignId = params['SmsSignId']
          @SmsTemplateId = params['SmsTemplateId']
        end
      end

      # UpdateBotTask返回参数结构体
      class UpdateBotTaskResponse < TencentCloud::Common::AbstractModel
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

      # UploadBotData请求参数结构体
      class UploadBotDataRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：UploadData
        # @type Operation: String
        # @param Data: 任务数据。JSON格式
        # @type Data: String
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String

        attr_accessor :Module, :Operation, :Data, :BotId, :BotName
        
        def initialize(_module=nil, operation=nil, data=nil, botid=nil, botname=nil)
          @Module = _module
          @Operation = operation
          @Data = data
          @BotId = botid
          @BotName = botname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @Data = params['Data']
          @BotId = params['BotId']
          @BotName = params['BotName']
        end
      end

      # UploadBotData返回参数结构体
      class UploadBotDataResponse < TencentCloud::Common::AbstractModel
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

      # UploadBotFile请求参数结构体
      class UploadBotFileRequest < TencentCloud::Common::AbstractModel
        # @param Module: 模块名。默认值（固定）：AiApi
        # @type Module: String
        # @param Operation: 操作名。默认值（固定）：Upload
        # @type Operation: String
        # @param FileType: 文件类型，输入input，停拨stop
        # @type FileType: String
        # @param FileUrl: 文件链接
        # @type FileUrl: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param BotId: 任务ID，二者必填一个
        # @type BotId: String
        # @param BotName: 任务名称，二者必填一个
        # @type BotName: String

        attr_accessor :Module, :Operation, :FileType, :FileUrl, :FileName, :BotId, :BotName
        
        def initialize(_module=nil, operation=nil, filetype=nil, fileurl=nil, filename=nil, botid=nil, botname=nil)
          @Module = _module
          @Operation = operation
          @FileType = filetype
          @FileUrl = fileurl
          @FileName = filename
          @BotId = botid
          @BotName = botname
        end

        def deserialize(params)
          @Module = params['Module']
          @Operation = params['Operation']
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileName = params['FileName']
          @BotId = params['BotId']
          @BotName = params['BotName']
        end
      end

      # UploadBotFile返回参数结构体
      class UploadBotFileResponse < TencentCloud::Common::AbstractModel
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
        
        def initialize(_module=nil, operation=nil, filename=nil, uploadmodel=nil, file=nil, fileurl=nil, instid=nil)
          @Module = _module
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
        
        def initialize(_module=nil, operation=nil, data=nil, uploadmodel=nil, instanceid=nil)
          @Module = _module
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
        
        def initialize(_module=nil, operation=nil, fileurl=nil, filename=nil, filedate=nil)
          @Module = _module
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

