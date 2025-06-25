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
  module Ccc
    module V20200210
      # AI 通话提取配置项
      class AICallExtractConfigElement < TencentCloud::Common::AbstractModel
        # @param InfoType: 配置项类型，包括
        # Text 文本
        # Selector 选项
        # Boolean 布尔值
        # Number 数字
        # @type InfoType: String
        # @param InfoName: 配置项名称，不可重复
        # @type InfoName: String
        # @param InfoContent: 配置项具体内容
        # @type InfoContent: String
        # @param Examples: 配置项提取内容示例
        # @type Examples: Array
        # @param Choices: InfoType 为 Selector，需要配置此字段
        # @type Choices: Array

        attr_accessor :InfoType, :InfoName, :InfoContent, :Examples, :Choices

        def initialize(infotype=nil, infoname=nil, infocontent=nil, examples=nil, choices=nil)
          @InfoType = infotype
          @InfoName = infoname
          @InfoContent = infocontent
          @Examples = examples
          @Choices = choices
        end

        def deserialize(params)
          @InfoType = params['InfoType']
          @InfoName = params['InfoName']
          @InfoContent = params['InfoContent']
          @Examples = params['Examples']
          @Choices = params['Choices']
        end
      end

      # AI 通话提取结果。
      class AICallExtractResultElement < TencentCloud::Common::AbstractModel
        # @param InfoType: 提取信息的类型
        # Text 文本
        # Selector 选项
        # Boolean 布尔值
        # Number 数字
        # @type InfoType: String
        # @param InfoName: 提取信息的名称
        # @type InfoName: String
        # @param InfoContent: 提取信息的具体描述
        # @type InfoContent: String
        # @param Result: 提取信息的具体结果
        # @type Result: :class:`Tencentcloud::Ccc.v20200210.models.AICallExtractResultInfo`

        attr_accessor :InfoType, :InfoName, :InfoContent, :Result

        def initialize(infotype=nil, infoname=nil, infocontent=nil, result=nil)
          @InfoType = infotype
          @InfoName = infoname
          @InfoContent = infocontent
          @Result = result
        end

        def deserialize(params)
          @InfoType = params['InfoType']
          @InfoName = params['InfoName']
          @InfoContent = params['InfoContent']
          unless params['Result'].nil?
            @Result = AICallExtractResultInfo.new
            @Result.deserialize(params['Result'])
          end
        end
      end

      # AI 通话结果具体信息
      class AICallExtractResultInfo < TencentCloud::Common::AbstractModel
        # @param Text: 提取的类型是文本
        # @type Text: String
        # @param Chosen: 提取的内型是选项
        # @type Chosen: Array
        # @param Boolean: 提取类型是布尔值
        # @type Boolean: Boolean
        # @param Number: 提取类型是数字
        # @type Number: Float

        attr_accessor :Text, :Chosen, :Boolean, :Number

        def initialize(text=nil, chosen=nil, boolean=nil, number=nil)
          @Text = text
          @Chosen = chosen
          @Boolean = boolean
          @Number = number
        end

        def deserialize(params)
          @Text = params['Text']
          @Chosen = params['Chosen']
          @Boolean = params['Boolean']
          @Number = params['Number']
        end
      end

      # AI时延明细
      class AILatencyDetail < TencentCloud::Common::AbstractModel
        # @param RoundId: 对话ID
        # @type RoundId: String
        # @param ASRLatency: asr时延（毫秒）
        # @type ASRLatency: Integer
        # @param TTSLatency: tts时延（毫秒）
        # @type TTSLatency: Integer
        # @param LLMLatency: llm时延（毫秒）
        # @type LLMLatency: Integer
        # @param LLMFirstTokenLatency: llm首token时延(毫秒)
        # @type LLMFirstTokenLatency: Integer
        # @param ETELatency: 端到端时延（毫秒）
        # @type ETELatency: Integer

        attr_accessor :RoundId, :ASRLatency, :TTSLatency, :LLMLatency, :LLMFirstTokenLatency, :ETELatency

        def initialize(roundid=nil, asrlatency=nil, ttslatency=nil, llmlatency=nil, llmfirsttokenlatency=nil, etelatency=nil)
          @RoundId = roundid
          @ASRLatency = asrlatency
          @TTSLatency = ttslatency
          @LLMLatency = llmlatency
          @LLMFirstTokenLatency = llmfirsttokenlatency
          @ETELatency = etelatency
        end

        def deserialize(params)
          @RoundId = params['RoundId']
          @ASRLatency = params['ASRLatency']
          @TTSLatency = params['TTSLatency']
          @LLMLatency = params['LLMLatency']
          @LLMFirstTokenLatency = params['LLMFirstTokenLatency']
          @ETELatency = params['ETELatency']
        end
      end

      # AI时延统计
      class AILatencyStatistics < TencentCloud::Common::AbstractModel
        # @param ASRLatency: asr时延统计
        # @type ASRLatency: :class:`Tencentcloud::Ccc.v20200210.models.AILatencyStatisticsInfo`
        # @param TTSLatency: tts时延统计
        # @type TTSLatency: :class:`Tencentcloud::Ccc.v20200210.models.AILatencyStatisticsInfo`
        # @param LLMLatency: llm时延统计
        # @type LLMLatency: :class:`Tencentcloud::Ccc.v20200210.models.AILatencyStatisticsInfo`
        # @param ETELatency: 端到端时延统计
        # @type ETELatency: :class:`Tencentcloud::Ccc.v20200210.models.AILatencyStatisticsInfo`

        attr_accessor :ASRLatency, :TTSLatency, :LLMLatency, :ETELatency

        def initialize(asrlatency=nil, ttslatency=nil, llmlatency=nil, etelatency=nil)
          @ASRLatency = asrlatency
          @TTSLatency = ttslatency
          @LLMLatency = llmlatency
          @ETELatency = etelatency
        end

        def deserialize(params)
          unless params['ASRLatency'].nil?
            @ASRLatency = AILatencyStatisticsInfo.new
            @ASRLatency.deserialize(params['ASRLatency'])
          end
          unless params['TTSLatency'].nil?
            @TTSLatency = AILatencyStatisticsInfo.new
            @TTSLatency.deserialize(params['TTSLatency'])
          end
          unless params['LLMLatency'].nil?
            @LLMLatency = AILatencyStatisticsInfo.new
            @LLMLatency.deserialize(params['LLMLatency'])
          end
          unless params['ETELatency'].nil?
            @ETELatency = AILatencyStatisticsInfo.new
            @ETELatency.deserialize(params['ETELatency'])
          end
        end
      end

      # AI时延统计
      class AILatencyStatisticsInfo < TencentCloud::Common::AbstractModel
        # @param MinLatency: 最小值
        # @type MinLatency: Integer
        # @param MiddleLatency: 中位数
        # @type MiddleLatency: Integer
        # @param P90Latency: p90
        # @type P90Latency: Integer

        attr_accessor :MinLatency, :MiddleLatency, :P90Latency

        def initialize(minlatency=nil, middlelatency=nil, p90latency=nil)
          @MinLatency = minlatency
          @MiddleLatency = middlelatency
          @P90Latency = p90latency
        end

        def deserialize(params)
          @MinLatency = params['MinLatency']
          @MiddleLatency = params['MiddleLatency']
          @P90Latency = params['P90Latency']
        end
      end

      # AI转人工配置项
      class AITransferItem < TencentCloud::Common::AbstractModel
        # @param TransferFunctionName: 转人工的function calling 名称
        # @type TransferFunctionName: String
        # @param TransferFunctionDesc: TransferFunctionEnable为true时生效；transfer_to_human function calling的desc，默认为 "Transfer to human when the user has to transfer to human (like says transfer to human) or you are instructed to do so."
        # @type TransferFunctionDesc: String
        # @param TransferSkillGroupId: 转人工的技能组ID
        # @type TransferSkillGroupId: Integer

        attr_accessor :TransferFunctionName, :TransferFunctionDesc, :TransferSkillGroupId

        def initialize(transferfunctionname=nil, transferfunctiondesc=nil, transferskillgroupid=nil)
          @TransferFunctionName = transferfunctionname
          @TransferFunctionDesc = transferfunctiondesc
          @TransferSkillGroupId = transferskillgroupid
        end

        def deserialize(params)
          @TransferFunctionName = params['TransferFunctionName']
          @TransferFunctionDesc = params['TransferFunctionDesc']
          @TransferSkillGroupId = params['TransferSkillGroupId']
        end
      end

      # AbortAgentCruiseDialingCampaign请求参数结构体
      class AbortAgentCruiseDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer

        attr_accessor :SdkAppId, :CampaignId

        def initialize(sdkappid=nil, campaignid=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
        end
      end

      # AbortAgentCruiseDialingCampaign返回参数结构体
      class AbortAgentCruiseDialingCampaignResponse < TencentCloud::Common::AbstractModel
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

      # AbortPredictiveDialingCampaign请求参数结构体
      class AbortPredictiveDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer

        attr_accessor :SdkAppId, :CampaignId

        def initialize(sdkappid=nil, campaignid=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
        end
      end

      # AbortPredictiveDialingCampaign返回参数结构体
      class AbortPredictiveDialingCampaignResponse < TencentCloud::Common::AbstractModel
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

      # 生效运营商白名单号码
      class ActiveCarrierPrivilegeNumber < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例Id
        # @type SdkAppId: Integer
        # @param Caller: 主叫号码
        # @type Caller: String
        # @param Callee: 被叫号码
        # @type Callee: String
        # @param CreateTime: 生效unix时间戳(秒)
        # @type CreateTime: Integer

        attr_accessor :SdkAppId, :Caller, :Callee, :CreateTime

        def initialize(sdkappid=nil, caller=nil, callee=nil, createtime=nil)
          @SdkAppId = sdkappid
          @Caller = caller
          @Callee = callee
          @CreateTime = createtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Caller = params['Caller']
          @Callee = params['Callee']
          @CreateTime = params['CreateTime']
        end
      end

      # 语音转文本信息
      class AsrData < TencentCloud::Common::AbstractModel
        # @param User: 用户方
        # @type User: String
        # @param Message: 消息内容
        # @type Message: String
        # @param Timestamp: 时间戳
        # @type Timestamp: Integer
        # @param Start: 句子开始时间，Unix 毫秒时间戳
        # @type Start: Integer
        # @param End: 句子结束时间，Unix 毫秒时间戳
        # @type End: Integer

        attr_accessor :User, :Message, :Timestamp, :Start, :End
        extend Gem::Deprecate
        deprecate :Timestamp, :none, 2025, 6
        deprecate :Timestamp=, :none, 2025, 6

        def initialize(user=nil, message=nil, timestamp=nil, start=nil, _end=nil)
          @User = user
          @Message = message
          @Timestamp = timestamp
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @User = params['User']
          @Message = params['Message']
          @Timestamp = params['Timestamp']
          @Start = params['Start']
          @End = params['End']
        end
      end

      # 音频文件审核信息
      class AudioFileInfo < TencentCloud::Common::AbstractModel
        # @param FileId: 文件ID
        # @type FileId: Integer
        # @param CustomFileName: 文件别名
        # @type CustomFileName: String
        # @param AudioFileName: 文件名
        # @type AudioFileName: String
        # @param Status: 审核状态，0-未审核，1-审核通过，2-审核拒绝
        # @type Status: Integer

        attr_accessor :FileId, :CustomFileName, :AudioFileName, :Status

        def initialize(fileid=nil, customfilename=nil, audiofilename=nil, status=nil)
          @FileId = fileid
          @CustomFileName = customfilename
          @AudioFileName = audiofilename
          @Status = status
        end

        def deserialize(params)
          @FileId = params['FileId']
          @CustomFileName = params['CustomFileName']
          @AudioFileName = params['AudioFileName']
          @Status = params['Status']
        end
      end

      # 外呼任务被叫信息
      class AutoCalloutTaskCalleeInfo < TencentCloud::Common::AbstractModel
        # @param Callee: 被叫号码
        # @type Callee: String
        # @param State: 呼叫状态 0初始 1已接听 2未接听 3呼叫中 4待重试
        # @type State: Integer
        # @param Sessions: 会话ID列表
        # @type Sessions: Array

        attr_accessor :Callee, :State, :Sessions

        def initialize(callee=nil, state=nil, sessions=nil)
          @Callee = callee
          @State = state
          @Sessions = sessions
        end

        def deserialize(params)
          @Callee = params['Callee']
          @State = params['State']
          @Sessions = params['Sessions']
        end
      end

      # 自动外呼任务列表项
      class AutoCalloutTaskInfo < TencentCloud::Common::AbstractModel
        # @param Name: 任务名
        # @type Name: String
        # @param CalleeCount: 被叫数量
        # @type CalleeCount: Integer
        # @param Callers: 主叫号码列表
        # @type Callers: Array
        # @param NotBefore: 起始时间戳
        # @type NotBefore: Integer
        # @param NotAfter: 结束时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotAfter: Integer
        # @param IvrId: 任务使用的IvrId
        # @type IvrId: Integer
        # @param State: 任务状态：
        # 0初始：任务创建，呼叫未开始
        # 1运行中
        # 2 已完成：任务中所有呼叫完成
        # 3结束中：任务到期，但仍有部分呼叫未结束
        # 4已结束：任务到期终止
        # @type State: Integer
        # @param TaskId: 任务Id
        # @type TaskId: Integer

        attr_accessor :Name, :CalleeCount, :Callers, :NotBefore, :NotAfter, :IvrId, :State, :TaskId

        def initialize(name=nil, calleecount=nil, callers=nil, notbefore=nil, notafter=nil, ivrid=nil, state=nil, taskid=nil)
          @Name = name
          @CalleeCount = calleecount
          @Callers = callers
          @NotBefore = notbefore
          @NotAfter = notafter
          @IvrId = ivrid
          @State = state
          @TaskId = taskid
        end

        def deserialize(params)
          @Name = params['Name']
          @CalleeCount = params['CalleeCount']
          @Callers = params['Callers']
          @NotBefore = params['NotBefore']
          @NotAfter = params['NotAfter']
          @IvrId = params['IvrId']
          @State = params['State']
          @TaskId = params['TaskId']
        end
      end

      # BindNumberCallInInterface请求参数结构体
      class BindNumberCallInInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Number: 待绑定的号码
        # @type Number: String
        # @param CallInInterface: 待绑定的回调地址
        # @type CallInInterface: :class:`Tencentcloud::Ccc.v20200210.models.Interface`

        attr_accessor :SdkAppId, :Number, :CallInInterface

        def initialize(sdkappid=nil, number=nil, callininterface=nil)
          @SdkAppId = sdkappid
          @Number = number
          @CallInInterface = callininterface
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Number = params['Number']
          unless params['CallInInterface'].nil?
            @CallInInterface = Interface.new
            @CallInInterface.deserialize(params['CallInInterface'])
          end
        end
      end

      # BindNumberCallInInterface返回参数结构体
      class BindNumberCallInInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # BindNumberCallOutSkillGroup请求参数结构体
      class BindNumberCallOutSkillGroupRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Number: 待绑定的号码
        # @type Number: String
        # @param SkillGroupIds: 待绑定的技能组Id列表
        # @type SkillGroupIds: Array

        attr_accessor :SdkAppId, :Number, :SkillGroupIds

        def initialize(sdkappid=nil, number=nil, skillgroupids=nil)
          @SdkAppId = sdkappid
          @Number = number
          @SkillGroupIds = skillgroupids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Number = params['Number']
          @SkillGroupIds = params['SkillGroupIds']
        end
      end

      # BindNumberCallOutSkillGroup返回参数结构体
      class BindNumberCallOutSkillGroupResponse < TencentCloud::Common::AbstractModel
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

      # BindStaffSkillGroupList请求参数结构体
      class BindStaffSkillGroupListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param StaffEmail: 座席邮箱
        # @type StaffEmail: String
        # @param SkillGroupList: 绑定技能组列表
        # @type SkillGroupList: Array
        # @param StaffSkillGroupList: 绑定技能组列表(必填)
        # @type StaffSkillGroupList: Array

        attr_accessor :SdkAppId, :StaffEmail, :SkillGroupList, :StaffSkillGroupList
        extend Gem::Deprecate
        deprecate :SkillGroupList, :none, 2025, 6
        deprecate :SkillGroupList=, :none, 2025, 6

        def initialize(sdkappid=nil, staffemail=nil, skillgrouplist=nil, staffskillgrouplist=nil)
          @SdkAppId = sdkappid
          @StaffEmail = staffemail
          @SkillGroupList = skillgrouplist
          @StaffSkillGroupList = staffskillgrouplist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffEmail = params['StaffEmail']
          @SkillGroupList = params['SkillGroupList']
          unless params['StaffSkillGroupList'].nil?
            @StaffSkillGroupList = []
            params['StaffSkillGroupList'].each do |i|
              staffskillgrouplist_tmp = StaffSkillGroupList.new
              staffskillgrouplist_tmp.deserialize(i)
              @StaffSkillGroupList << staffskillgrouplist_tmp
            end
          end
        end
      end

      # BindStaffSkillGroupList返回参数结构体
      class BindStaffSkillGroupListResponse < TencentCloud::Common::AbstractModel
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

      # 呼入实时指标
      class CallInMetrics < TencentCloud::Common::AbstractModel
        # @param IvrCount: IVR驻留数量
        # @type IvrCount: Integer
        # @param QueueCount: 排队中数量
        # @type QueueCount: Integer
        # @param RingCount: 振铃中数量
        # @type RingCount: Integer
        # @param AcceptCount: 接通中数量
        # @type AcceptCount: Integer
        # @param TransferOuterCount: 客服转接外线中数量
        # @type TransferOuterCount: Integer
        # @param MaxQueueDuration: 最大排队时长
        # @type MaxQueueDuration: Integer
        # @param AvgQueueDuration: 平均排队时长
        # @type AvgQueueDuration: Integer
        # @param MaxRingDuration: 最大振铃时长
        # @type MaxRingDuration: Integer
        # @param AvgRingDuration: 平均振铃时长
        # @type AvgRingDuration: Integer
        # @param MaxAcceptDuration: 最大接通时长
        # @type MaxAcceptDuration: Integer
        # @param AvgAcceptDuration: 平均接通时长
        # @type AvgAcceptDuration: Integer

        attr_accessor :IvrCount, :QueueCount, :RingCount, :AcceptCount, :TransferOuterCount, :MaxQueueDuration, :AvgQueueDuration, :MaxRingDuration, :AvgRingDuration, :MaxAcceptDuration, :AvgAcceptDuration

        def initialize(ivrcount=nil, queuecount=nil, ringcount=nil, acceptcount=nil, transferoutercount=nil, maxqueueduration=nil, avgqueueduration=nil, maxringduration=nil, avgringduration=nil, maxacceptduration=nil, avgacceptduration=nil)
          @IvrCount = ivrcount
          @QueueCount = queuecount
          @RingCount = ringcount
          @AcceptCount = acceptcount
          @TransferOuterCount = transferoutercount
          @MaxQueueDuration = maxqueueduration
          @AvgQueueDuration = avgqueueduration
          @MaxRingDuration = maxringduration
          @AvgRingDuration = avgringduration
          @MaxAcceptDuration = maxacceptduration
          @AvgAcceptDuration = avgacceptduration
        end

        def deserialize(params)
          @IvrCount = params['IvrCount']
          @QueueCount = params['QueueCount']
          @RingCount = params['RingCount']
          @AcceptCount = params['AcceptCount']
          @TransferOuterCount = params['TransferOuterCount']
          @MaxQueueDuration = params['MaxQueueDuration']
          @AvgQueueDuration = params['AvgQueueDuration']
          @MaxRingDuration = params['MaxRingDuration']
          @AvgRingDuration = params['AvgRingDuration']
          @MaxAcceptDuration = params['MaxAcceptDuration']
          @AvgAcceptDuration = params['AvgAcceptDuration']
        end
      end

      # 呼入线路维度相关指标
      class CallInNumberMetrics < TencentCloud::Common::AbstractModel
        # @param Number: 线路号码
        # @type Number: String
        # @param Metrics: 线路相关指标
        # @type Metrics: :class:`Tencentcloud::Ccc.v20200210.models.CallInMetrics`
        # @param SkillGroupMetrics: 所属技能组相关指标
        # @type SkillGroupMetrics: Array

        attr_accessor :Number, :Metrics, :SkillGroupMetrics

        def initialize(number=nil, metrics=nil, skillgroupmetrics=nil)
          @Number = number
          @Metrics = metrics
          @SkillGroupMetrics = skillgroupmetrics
        end

        def deserialize(params)
          @Number = params['Number']
          unless params['Metrics'].nil?
            @Metrics = CallInMetrics.new
            @Metrics.deserialize(params['Metrics'])
          end
          unless params['SkillGroupMetrics'].nil?
            @SkillGroupMetrics = []
            params['SkillGroupMetrics'].each do |i|
              callinskillgroupmetrics_tmp = CallInSkillGroupMetrics.new
              callinskillgroupmetrics_tmp.deserialize(i)
              @SkillGroupMetrics << callinskillgroupmetrics_tmp
            end
          end
        end
      end

      # 呼入技能组相关指标
      class CallInSkillGroupMetrics < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param Metrics: 数据指标
        # @type Metrics: :class:`Tencentcloud::Ccc.v20200210.models.CallInMetrics`
        # @param Name: 技能组名称
        # @type Name: String

        attr_accessor :SkillGroupId, :Metrics, :Name

        def initialize(skillgroupid=nil, metrics=nil, name=nil)
          @SkillGroupId = skillgroupid
          @Metrics = metrics
          @Name = name
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          unless params['Metrics'].nil?
            @Metrics = CallInMetrics.new
            @Metrics.deserialize(params['Metrics'])
          end
          @Name = params['Name']
        end
      end

      # 被叫属性
      class CalleeAttribute < TencentCloud::Common::AbstractModel
        # @param Callee: 被叫号码
        # @type Callee: String
        # @param UUI: 随路数据
        # @type UUI: String
        # @param Variables: 参数
        # @type Variables: Array

        attr_accessor :Callee, :UUI, :Variables

        def initialize(callee=nil, uui=nil, variables=nil)
          @Callee = callee
          @UUI = uui
          @Variables = variables
        end

        def deserialize(params)
          @Callee = params['Callee']
          @UUI = params['UUI']
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
        end
      end

      # 运营商白名单号码申请单
      class CarrierPrivilegeNumberApplicant < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例Id
        # @type SdkAppId: Integer
        # @param ApplicantId: 申请单Id
        # @type ApplicantId: Integer
        # @param Callers: 主叫号码列表
        # @type Callers: Array
        # @param Callees: 被叫号码列表
        # @type Callees: Array
        # @param Description: 描述
        # @type Description: String
        # @param State: 审批状态:1 待审核、2 通过、3 拒绝
        # @type State: Integer
        # @param CreateTime: 创建时间，unix时间戳(秒)
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，unix时间戳(秒)
        # @type UpdateTime: Integer

        attr_accessor :SdkAppId, :ApplicantId, :Callers, :Callees, :Description, :State, :CreateTime, :UpdateTime

        def initialize(sdkappid=nil, applicantid=nil, callers=nil, callees=nil, description=nil, state=nil, createtime=nil, updatetime=nil)
          @SdkAppId = sdkappid
          @ApplicantId = applicantid
          @Callers = callers
          @Callees = callees
          @Description = description
          @State = state
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @ApplicantId = params['ApplicantId']
          @Callers = params['Callers']
          @Callees = params['Callees']
          @Description = params['Description']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 座席登录的终端信息
      class ClientInfo < TencentCloud::Common::AbstractModel
        # @param ClientType: 登录的端类型，"Web"表示web工作台，"WeChatMiniProgram"表示微信小程序
        # @type ClientType: String
        # @param IsConnected: 当前登录的端是否在前台。若登录的端是Web，则该值为true；若登录的端是WeChatMiniProgram，true表示打开着微信小程序，false表示微信小程序退到后台
        # @type IsConnected: Boolean

        attr_accessor :ClientType, :IsConnected

        def initialize(clienttype=nil, isconnected=nil)
          @ClientType = clienttype
          @IsConnected = isconnected
        end

        def deserialize(params)
          @ClientType = params['ClientType']
          @IsConnected = params['IsConnected']
        end
      end

      # 企业资质申请信息
      class CompanyApplyInfo < TencentCloud::Common::AbstractModel
        # @param ApplicantType: 申请人身份，0-公司法定代表人，1-经办人（受法定代表人委托）
        # @type ApplicantType: Integer
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param BusinessId: 统一社会信用代码
        # @type BusinessId: String
        # @param BusinessIdPicUrl: 营业执照扫描件(加盖公章)。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type BusinessIdPicUrl: String
        # @param CorporationName: 法定代表人名称
        # @type CorporationName: String
        # @param CorporationId: 法定代表人身份证号码
        # @type CorporationId: String
        # @param CorporationIdPicUrl: 法定代表人身份证正反面扫描件。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type CorporationIdPicUrl: String
        # @param NetworkCommitmentPicUrl: 安全合规使用承诺书。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type NetworkCommitmentPicUrl: String
        # @param IsEqualTencentCloud: 是否与腾讯云账号的资质一致,0-不一致,1-一致
        # @type IsEqualTencentCloud: Integer
        # @param CorporationMobile: 法定代表人手机号
        # @type CorporationMobile: String
        # @param CorporationMobilePicUrl: 法定代表人手机号码实名认证。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type CorporationMobilePicUrl: String
        # @param UseDescribeFileUrl: 通话话术。(支持doc、docx格式的文档不超过50MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type UseDescribeFileUrl: String
        # @param CompanyAuthLetterPicUrl: 公司授权函。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type CompanyAuthLetterPicUrl: String
        # @param AcceptPicUrl: 电话受理单。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type AcceptPicUrl: String
        # @param CorporationHoldingOnIdPicUrl: 法定代表人手持身份证照，申请人类型为法定代表人时必填。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type CorporationHoldingOnIdPicUrl: String
        # @param OperatorName: 经办人名称，申请人类型为经办人时必填。
        # @type OperatorName: String
        # @param OperatorId: 经办人证件号码，申请人类型为经办人时必填。
        # @type OperatorId: String
        # @param OperatorIdPicUrl: 经办人身份证正反面扫描件，申请人类型为经办人时必填。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type OperatorIdPicUrl: String
        # @param OperatorHoldingOnIdPicUrl: 经办人手持身份证照，申请人类型为经办人时必填。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type OperatorHoldingOnIdPicUrl: String
        # @param CommissionPicUrl: 委托授权书，申请人类型为经办人时必填。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type CommissionPicUrl: String
        # @param OperatorMobile: 经办人手机号，申请人类型为经办人时必填。
        # @type OperatorMobile: String
        # @param OperatorEmail: 经办人邮箱，申请人类型为经办人时必填。
        # @type OperatorEmail: String
        # @param OperatorMobilePicUrl: 经办人手机号码实名认证，申请人类型为经办人时必填。(支持jpg、png、gif、jpeg格式的图片，每张图片应大于50K，不超过5MB，模板参见控制台:https://console.cloud.tencent.com/ccc/enterprise/update)
        # @type OperatorMobilePicUrl: String

        attr_accessor :ApplicantType, :CompanyName, :BusinessId, :BusinessIdPicUrl, :CorporationName, :CorporationId, :CorporationIdPicUrl, :NetworkCommitmentPicUrl, :IsEqualTencentCloud, :CorporationMobile, :CorporationMobilePicUrl, :UseDescribeFileUrl, :CompanyAuthLetterPicUrl, :AcceptPicUrl, :CorporationHoldingOnIdPicUrl, :OperatorName, :OperatorId, :OperatorIdPicUrl, :OperatorHoldingOnIdPicUrl, :CommissionPicUrl, :OperatorMobile, :OperatorEmail, :OperatorMobilePicUrl

        def initialize(applicanttype=nil, companyname=nil, businessid=nil, businessidpicurl=nil, corporationname=nil, corporationid=nil, corporationidpicurl=nil, networkcommitmentpicurl=nil, isequaltencentcloud=nil, corporationmobile=nil, corporationmobilepicurl=nil, usedescribefileurl=nil, companyauthletterpicurl=nil, acceptpicurl=nil, corporationholdingonidpicurl=nil, operatorname=nil, operatorid=nil, operatoridpicurl=nil, operatorholdingonidpicurl=nil, commissionpicurl=nil, operatormobile=nil, operatoremail=nil, operatormobilepicurl=nil)
          @ApplicantType = applicanttype
          @CompanyName = companyname
          @BusinessId = businessid
          @BusinessIdPicUrl = businessidpicurl
          @CorporationName = corporationname
          @CorporationId = corporationid
          @CorporationIdPicUrl = corporationidpicurl
          @NetworkCommitmentPicUrl = networkcommitmentpicurl
          @IsEqualTencentCloud = isequaltencentcloud
          @CorporationMobile = corporationmobile
          @CorporationMobilePicUrl = corporationmobilepicurl
          @UseDescribeFileUrl = usedescribefileurl
          @CompanyAuthLetterPicUrl = companyauthletterpicurl
          @AcceptPicUrl = acceptpicurl
          @CorporationHoldingOnIdPicUrl = corporationholdingonidpicurl
          @OperatorName = operatorname
          @OperatorId = operatorid
          @OperatorIdPicUrl = operatoridpicurl
          @OperatorHoldingOnIdPicUrl = operatorholdingonidpicurl
          @CommissionPicUrl = commissionpicurl
          @OperatorMobile = operatormobile
          @OperatorEmail = operatoremail
          @OperatorMobilePicUrl = operatormobilepicurl
        end

        def deserialize(params)
          @ApplicantType = params['ApplicantType']
          @CompanyName = params['CompanyName']
          @BusinessId = params['BusinessId']
          @BusinessIdPicUrl = params['BusinessIdPicUrl']
          @CorporationName = params['CorporationName']
          @CorporationId = params['CorporationId']
          @CorporationIdPicUrl = params['CorporationIdPicUrl']
          @NetworkCommitmentPicUrl = params['NetworkCommitmentPicUrl']
          @IsEqualTencentCloud = params['IsEqualTencentCloud']
          @CorporationMobile = params['CorporationMobile']
          @CorporationMobilePicUrl = params['CorporationMobilePicUrl']
          @UseDescribeFileUrl = params['UseDescribeFileUrl']
          @CompanyAuthLetterPicUrl = params['CompanyAuthLetterPicUrl']
          @AcceptPicUrl = params['AcceptPicUrl']
          @CorporationHoldingOnIdPicUrl = params['CorporationHoldingOnIdPicUrl']
          @OperatorName = params['OperatorName']
          @OperatorId = params['OperatorId']
          @OperatorIdPicUrl = params['OperatorIdPicUrl']
          @OperatorHoldingOnIdPicUrl = params['OperatorHoldingOnIdPicUrl']
          @CommissionPicUrl = params['CommissionPicUrl']
          @OperatorMobile = params['OperatorMobile']
          @OperatorEmail = params['OperatorEmail']
          @OperatorMobilePicUrl = params['OperatorMobilePicUrl']
        end
      end

      # 公司资质审核状态信息
      class CompanyStateInfo < TencentCloud::Common::AbstractModel
        # @param Id: 申请单ID
        # @type Id: Integer
        # @param CompanyName: 公司名称
        # @type CompanyName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param CheckTime: 审核时间
        # @type CheckTime: Integer
        # @param CheckMsg: 审核备注
        # @type CheckMsg: String
        # @param State: 审核状态，1-待审核，2-审核通过，3-驳回
        # @type State: Integer
        # @param BusinessId: 公司统一社会信用代码
        # @type BusinessId: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: Integer
        # @param ContractNo: 合同编号
        # @type ContractNo: String

        attr_accessor :Id, :CompanyName, :CreateTime, :CheckTime, :CheckMsg, :State, :BusinessId, :ModifyTime, :ContractNo

        def initialize(id=nil, companyname=nil, createtime=nil, checktime=nil, checkmsg=nil, state=nil, businessid=nil, modifytime=nil, contractno=nil)
          @Id = id
          @CompanyName = companyname
          @CreateTime = createtime
          @CheckTime = checktime
          @CheckMsg = checkmsg
          @State = state
          @BusinessId = businessid
          @ModifyTime = modifytime
          @ContractNo = contractno
        end

        def deserialize(params)
          @Id = params['Id']
          @CompanyName = params['CompanyName']
          @CreateTime = params['CreateTime']
          @CheckTime = params['CheckTime']
          @CheckMsg = params['CheckMsg']
          @State = params['State']
          @BusinessId = params['BusinessId']
          @ModifyTime = params['ModifyTime']
          @ContractNo = params['ContractNo']
        end
      end

      # CreateAIAgentCall请求参数结构体
      class CreateAIAgentCallRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param AIAgentId: AI智能体ID
        # @type AIAgentId: Integer
        # @param Callee: 被叫号码
        # @type Callee: String
        # @param Callers: 主叫号码列表
        # @type Callers: Array
        # @param PromptVariables: 提示词变量
        # @type PromptVariables: Array
        # @param Variables: 通用变量： <p>提示词变量</p> <p>欢迎语变量</p> <p> 欢迎语延迟播放(秒级)：welcome-message-delay</p>  <p> dify变量</p>

        # 1. dify-inputs-xxx 为dify的inputs变量
        # 2.  dify-inputs-user 为dify的user值
        # 3.  dify-inputs-conversation_id 为dify的conversation_id值
        # @type Variables: Array

        attr_accessor :SdkAppId, :AIAgentId, :Callee, :Callers, :PromptVariables, :Variables
        extend Gem::Deprecate
        deprecate :PromptVariables, :none, 2025, 6
        deprecate :PromptVariables=, :none, 2025, 6

        def initialize(sdkappid=nil, aiagentid=nil, callee=nil, callers=nil, promptvariables=nil, variables=nil)
          @SdkAppId = sdkappid
          @AIAgentId = aiagentid
          @Callee = callee
          @Callers = callers
          @PromptVariables = promptvariables
          @Variables = variables
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @AIAgentId = params['AIAgentId']
          @Callee = params['Callee']
          @Callers = params['Callers']
          unless params['PromptVariables'].nil?
            @PromptVariables = []
            params['PromptVariables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @PromptVariables << variable_tmp
            end
          end
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
        end
      end

      # CreateAIAgentCall返回参数结构体
      class CreateAIAgentCallResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 新创建的会话 ID
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :RequestId

        def initialize(sessionid=nil, requestid=nil)
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAICall请求参数结构体
      class CreateAICallRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Callee: 被叫号码
        # @type Callee: String
        # @param LLMType: 模型接口协议类型，目前兼容四种协议类型：

        # - OpenAI协议(包括GPT、混元、DeepSeek等)："openai"
        # - Azure协议："azure"
        # - Minimax协议："minimax"
        # - Dify协议: "dify"
        # @type LLMType: String
        # @param APIKey: 模型API密钥，获取鉴权信息方式请参见各模型官网

        # - OpenAI协议：[GPT](https://help.openai.com/en/articles/4936850-where-do-i-find-my-openai-api-key)，[混元](https://cloud.tencent.com/document/product/1729/111008)，[DeepSeek](https://api-docs.deepseek.com/zh-cn/)；

        # - Azure协议：[Azure GPT](https://learn.microsoft.com/en-us/azure/ai-services/openai/chatgpt-quickstart?tabs=command-line%2Ctypescript%2Cpython-new&pivots=programming-language-studio#key-settings)；

        # - Minimax：[Minimax](https://platform.minimaxi.com/document/Fast%20access?key=66701cf51d57f38758d581b2)
        # @type APIKey: String
        # @param APIUrl: 模型接口地址

        # - OpenAI协议
        # GPT："https://api.openai.com/v1/"
        # 混元："https://api.hunyuan.cloud.tencent.com/v1"
        # Deepseek："https://api.deepseek.com/v1"

        # - Azure协议
        #  "https://{your-resource-name}.openai.azure.com?api-version={api-version}"

        # - Minimax协议
        # "https://api.minimax.chat/v1"
        # @type APIUrl: String
        # @param SystemPrompt: 用于设定AI人设、说话规则、任务等的全局提示词。示例：## 人设您是人民医院友善、和蔼的随访医生李医生，正在给患者小明的家长打电话，原因是医院要求小明2024-08-08回院复查手术恢复情况，但小明没有来。您需要按照任务流程对小明家长进行电话随访调查。## 要求简洁回复：使用简练语言，每次最多询问一个问题，不要在一个回复中询问多个问题。富有变化：尽量使表达富有变化，表达机械重复。自然亲切：使用日常语言，尽量显得专业并亲切。提到时间时使用口语表述，如下周三、6月18日。积极主动：尝试引导对话，每个回复通常以问题或下一步建议来结尾。询问清楚：如果对方部分回答了您的问题，或者回答很模糊，请通过追问来确保回答的完整明确。遵循任务：当对方的回答偏离了您的任务时，及时引导对方回到任务中。不要从头开始重复，从偏离的地方继续询问。诚实可靠：对于客户的提问，如果不确定请务必不要编造，礼貌告知对方不清楚。不要捏造患者未提及的症状史、用药史、治疗史。其他注意点：避免提到病情恶化、恢复不理想或疾病名称等使用会使患者感到紧张的表述。不要问患者已经直接或间接回答过的问题，例如患者已经说没有不适症状，那就不要再问手术部位是否有红肿疼痛症状的问题。##任务： 1.自我介绍您是人民医院负责随访的李医生，并说明致电的目的。2.询问被叫方是否是小明家长。 - 如果不是小明家长，请礼貌表达歉意，并使用 call_end 挂断电话。- 如果小明家长没空，请礼貌告诉对方稍后会重新致电，并使用 end_call 挂断电话。3.询问小明出院后水肿情况如何，较出院时是否有变化。- 如果水肿变严重，直接跳转步骤7。4.询问出院后是否给小朋友量过体温，是否出现过发烧情况。- 如果没有量过体温，请礼貌告诉家长出院后三个月内需要每天观察体温。- 如果出现过发烧，请直接跳转步骤7。5.询问出院后是否给小朋友按时服药。- 如果没有按时服药，请友善提醒家长严格按医嘱服用药物，避免影响手术效果。6.询问小朋友在饮食上是否做到低盐低脂，适量吃优质蛋白如鸡蛋、牛奶、瘦肉等。- 如果没有做到，请友善提醒家长低盐低脂和优质蛋白有助小朋友尽快恢复。7.告知家长医生要求6月18日回院复查，但没看到有相关复诊记录。提醒家长尽快前往医院体检复查血化验、尿常规。8.询问家长是否有问题需要咨询，如果没有请礼貌道别并用call_end挂断电话。
        # @type SystemPrompt: String
        # @param Model: 模型名称，如

        # - OpenAI协议
        # "gpt-4o-mini","gpt-4o"，"hunyuan-standard", "hunyuan-turbo"，"deepseek-chat"；

        # - Azure协议
        # "gpt-4o-mini", "gpt-4o"；

        # - Minmax协议
        # "deepseek-chat".
        # @type Model: String
        # @param VoiceType: 默认提供以下音色参数值可选择，如需自定义音色VoiceType请留空并在参数CustomTTSConfig中配置

        # 汉语：
        # ZhiMei：智美，客服女声
        # ZhiXi： 智希 通用女声
        # ZhiQi：智琪 客服女声
        # ZhiTian：智甜 女童声
        # AiXiaoJing：爱小静 对话女声

        # 英语:
        # WeRose：英文女声
        # Monika：英文女声

        # 日语：
        # Nanami

        # 韩语：
        # SunHi

        # 印度尼西亚语(印度尼西亚)：
        # Gadis

        # 马来语（马来西亚）:
        # Yasmin

        #  泰米尔语（马来西亚）:
        # Kani

        # 泰语（泰国）:
        # Achara

        # 越南语(越南):
        # HoaiMy

        # @type VoiceType: String
        # @param Callers: 主叫号码列表
        # @type Callers: Array
        # @param WelcomeMessage: 用于设定AI座席欢迎语。
        # @type WelcomeMessage: String
        # @param WelcomeType: 0：使用welcomeMessage(为空时，被叫先说话；不为空时，机器人先说话)
        # 1:   使用ai根据prompt自动生成welcomeMessage并先说话
        # @type WelcomeType: Integer
        # @param WelcomeMessagePriority: 0: 默认可打断， 2：高优先不可打断
        # @type WelcomeMessagePriority: Integer
        # @param MaxDuration: 最大等待时长(毫秒)，默认60秒，超过这个时间用户没说话，自动挂断
        # @type MaxDuration: Integer
        # @param Languages: 语音识别支持的语言, 默认是"zh" 中文,
        # 填写数组,最长4个语言，第一个语言为主要识别语言，后面为可选语言，
        # 注意:主要语言为中国方言时，可选语言无效
        # 目前全量支持的语言如下，等号左面是语言英文名，右面是Language字段需要填写的值，该值遵循ISO639：
        # 1. Chinese = "zh" # 中文
        # 2. Chinese_TW = "zh-TW" # 中国台湾
        # 3. Chinese_DIALECT = "zh-dialect" # 中国方言
        # 4. English = "en" # 英语
        # 5. Vietnamese = "vi" # 越南语
        # 6. Japanese = "ja" # 日语
        # 7. Korean = "ko" # 汉语
        # 8. Indonesia = "id" # 印度尼西亚语
        # 9. Thai = "th" # 泰语
        # 10. Portuguese = "pt" # 葡萄牙语
        # 11. Turkish = "tr" # 土耳其语
        # 12. Arabic = "ar" # 阿拉伯语
        # 13. Spanish = "es" # 西班牙语
        # 14. Hindi = "hi" # 印地语
        # 15. French = "fr" # 法语
        # 16. Malay = "ms" # 马来语
        # 17. Filipino = "fil" # 菲律宾语
        # 18. German = "de" # 德语
        # 19. Italian = "it" # 意大利语
        # 20. Russian = "ru" # 俄语
        # @type Languages: Array
        # @param InterruptMode: 打断AI说话模式，默认为0，0表示自动打断，1表示不打断。
        # @type InterruptMode: Integer
        # @param InterruptSpeechDuration: InterruptMode为0时使用，单位为毫秒，默认为500ms。表示服务端检测到持续InterruptSpeechDuration毫秒的人声则进行打断。
        # @type InterruptSpeechDuration: Integer
        # @param EndFunctionEnable: 模型是否支持(或者开启)call_end function calling
        # @type EndFunctionEnable: Boolean
        # @param EndFunctionDesc: EndFunctionEnable为true时生效；call_end function calling的desc，默认为 "End the call when user has to leave (like says bye) or you are instructed to do so."
        # @type EndFunctionDesc: String
        # @param TransferFunctionEnable: 模型是否支持(或者开启)transfer_to_human function calling
        # @type TransferFunctionEnable: Boolean
        # @param TransferItems: TransferFunctionEnable为true的时候生效: 转人工配置
        # @type TransferItems: Array
        # @param NotifyDuration: 用户多久没说话提示时长,最小10秒,默认10秒
        # @type NotifyDuration: Integer
        # @param NotifyMessage: 用户NotifyDuration没说话，AI提示的语句，默认是"抱歉，我没听清。您可以重复下吗？"
        # @type NotifyMessage: String
        # @param NotifyMaxCount: 最大触发AI提示音次数，默认为不限制
        # @type NotifyMaxCount: Integer
        # @param CustomTTSConfig: <p>和VoiceType字段需要选填一个，这里是使用自己自定义的TTS，VoiceType是系统内置的一些音色</p>
        # <ul>
        # <li>Tencent TTS<br>
        # 配置请参考<a href="https://cloud.tencent.com/document/product/1073/92668#55924b56-1a73-4663-a7a1-a8dd82d6e823" target="_blank">腾讯云TTS文档链接</a></li>
        # </ul>
        # <div><div class="v-md-pre-wrapper copy-code-mode v-md-pre-wrapper- extra-class"><pre class="v-md-prism-"><code>{
        #        &quot;TTSType&quot;: &quot;tencent&quot;, // String TTS类型, 目前支持&quot;tencent&quot; 和 “minixmax”， 其他的厂商支持中
        #        &quot;AppId&quot;: &quot;您的应用ID&quot;, // String 必填
        #        &quot;SecretId&quot;: &quot;您的密钥ID&quot;, // String 必填
        #        &quot;SecretKey&quot;:  &quot;您的密钥Key&quot;, // String 必填
        #        &quot;VoiceType&quot;: 101001, // Integer  必填，音色 ID，包括标准音色与精品音色，精品音色拟真度更高，价格不同于标准音色，请参见语音合成计费概述。完整的音色 ID 列表请参见语音合成音色列表。
        #        &quot;Speed&quot;: 1.25, // Integer 非必填，语速，范围：[-2，6]，分别对应不同语速： -2: 代表0.6倍 -1: 代表0.8倍 0: 代表1.0倍（默认） 1: 代表1.2倍 2: 代表1.5倍  6: 代表2.5倍  如果需要更细化的语速，可以保留小数点后 2 位，例如0.5/1.25/2.81等。 参数值与实际语速转换，可参考 语速转换
        #        &quot;Volume&quot;: 5, // Integer 非必填，音量大小，范围：[0，10]，分别对应11个等级的音量，默认值为0，代表正常音量。
        #        &quot;PrimaryLanguage&quot;: 1, // Integer 可选 主要语言 1-中文（默认） 2-英文 3-日文
        #        &quot;FastVoiceType&quot;: &quot;xxxx&quot;   //  可选参数， 快速声音复刻的参数
        #   }
        # </code></pre>

        #   </div></div><ul>
        # <li>Minimax TTS<br>
        # 配置请参考<a href="https://platform.minimaxi.com/document/T2A%20V2?key=66719005a427f0c8a5701643" target="_blank">Minimax TTS文档链接</a>。注意Minimax TTS存在频率限制，超频可能会导致回答卡顿，<a href="https://platform.minimaxi.com/document/Rate%20limits?key=66b19417290299a26b234572" target="_blank">Minimax TTS频率限制相关文档链接</a>。</li>
        # </ul>
        # <div><div class="v-md-pre-wrapper copy-code-mode v-md-pre-wrapper- extra-class"><pre class="v-md-prism-"><code>{
        #         &quot;TTSType&quot;: &quot;minimax&quot;,  // String TTS类型,
        #         &quot;Model&quot;: &quot;speech-01-turbo&quot;,
        #         &quot;APIUrl&quot;: &quot;https://api.minimax.chat/v1/t2a_v2&quot;,
        #         &quot;APIKey&quot;: &quot;eyxxxx&quot;,
        #         &quot;GroupId&quot;: &quot;181000000000000&quot;,
        #         &quot;VoiceType&quot;:&quot;female-tianmei-jingpin&quot;,
        #         &quot;Speed&quot;: 1.2
        # }
        # </code></pre>
        # </div></div><ul>
        # <li>火山 TTS</li>
        # </ul>
        # <p>配置音色类型参考<a href="https://www.volcengine.com/docs/6561/162929" target="_blank">火山TTS文档链接</a><br>
        # 语音合成音色列表–语音技术-火山引擎<br>
        # 大模型语音合成音色列表–语音技术-火山引擎</p>
        # <div><div class="v-md-pre-wrapper copy-code-mode v-md-pre-wrapper- extra-class"><pre class="v-md-prism-"><code>{
        #     &quot;TTSType&quot;: &quot;volcengine&quot;,  // 必填：String TTS类型
        #     &quot;AppId&quot; : &quot;xxxxxxxx&quot;,   // 必填：String 火山引擎分配的Appid
        #     &quot;Token&quot; : &quot;TY9d4sQXHxxxxxxx&quot;, // 必填： String类型 火山引擎的访问token
        #     &quot;Speed&quot; : 1.0,            // 可选参数 语速，默认为1.0
        #     &quot;Volume&quot;: 1.0,            // 可选参数， 音量大小， 默认为1.0
        #     &quot;Cluster&quot; : &quot;volcano_tts&quot;, // 可选参数，业务集群, 默认是 volcano_tts
        #     &quot;VoiceType&quot; : &quot;zh_male_aojiaobazong_moon_bigtts&quot;   // 音色类型， 默认为大模型语音合成的音色。 如果使用普通语音合成，则需要填写对应的音色类型。 音色类型填写错误会导致没有声音。
        # }
        # </code></pre>

        # </div></div><ul>
        # <li>Azure TTS<br>
        # 配置请参考<a href="https://docs.azure.cn/zh-cn/ai-services/speech-service/speech-synthesis-markup-voice" target="_blank">AzureTTS文档链接</a></li>
        # </ul>
        # <div><div class="v-md-pre-wrapper copy-code-mode v-md-pre-wrapper- extra-class"><pre class="v-md-prism-"><code>{
        #     &quot;TTSType&quot;: &quot;azure&quot;, // 必填：String TTS类型
        #     &quot;SubscriptionKey&quot;: &quot;xxxxxxxx&quot;, // 必填：String 订阅的Key
        #     &quot;Region&quot;: &quot;chinanorth3&quot;,  // 必填：String 订阅的地区
        #     &quot;VoiceName&quot;: &quot;zh-CN-XiaoxiaoNeural&quot;, // 必填：String 音色名必填
        #     &quot;Language&quot;: &quot;zh-CN&quot;, // 必填：String 合成的语言
        #     &quot;Rate&quot;: 1 // 选填：float 语速  0.5～2 默认为 1
        # }
        # </code></pre>

        # </div></div><ul>
        # <li>自定义</li>
        # </ul>
        # <p>TTS<br>
        # 具体协议规范请参考<a href="https://doc.weixin.qq.com/doc/w3_ANQAiAbdAFwHILbJBmtSqSbV1WZ3L?scode=AJEAIQdfAAo5a1xajYANQAiAbdAFw" target="_blank">腾讯文档</a></p>
        # <div><div class="v-md-pre-wrapper copy-code-mode v-md-pre-wrapper- extra-class"><pre class="v-md-prism-"><code>{
        #   &quot;TTSType&quot;: &quot;custom&quot;, // String 必填
        #   &quot;APIKey&quot;: &quot;ApiKey&quot;, // String 必填 用来鉴权
        #   &quot;APIUrl&quot;: &quot;http://0.0.0.0:8080/stream-audio&quot; // String，必填，TTS API URL
        #   &quot;AudioFormat&quot;: &quot;wav&quot;, // String, 非必填，期望输出的音频格式，如mp3， ogg_opus，pcm，wav，默认为 wav，目前只支持pcm和wav，
        #   &quot;SampleRate&quot;: 16000,  // Integer，非必填，音频采样率，默认为16000(16k)，推荐值为16000
        #   &quot;AudioChannel&quot;: 1,    // Integer，非必填，音频通道数，取值：1 或 2  默认为1
        # }
        # </code></pre>

        # </div></div>
        # @type CustomTTSConfig: String
        # @param PromptVariables: 提示词变量
        # @type PromptVariables: Array
        # @param VadSilenceTime: 语音识别vad的时间，范围为240-2000，默认为1000，单位为ms。更小的值会让语音识别分句更快。
        # @type VadSilenceTime: Integer
        # @param ExtractConfig: 通话内容提取配置
        # @type ExtractConfig: Array
        # @param Temperature: 模型温度控制
        # @type Temperature: Float
        # @param Variables: 通用变量： <p>提示词变量</p> <p>欢迎语变量</p> <p> 欢迎语延迟播放(秒级)：welcome-message-delay</p>  <p> dify变量</p>

        # 1. dify-inputs-xxx 为dify的inputs变量
        # 2.  dify-inputs-user 为dify的user值
        # 3.  dify-inputs-conversation_id 为dify的conversation_id值
        # @type Variables: Array

        attr_accessor :SdkAppId, :Callee, :LLMType, :APIKey, :APIUrl, :SystemPrompt, :Model, :VoiceType, :Callers, :WelcomeMessage, :WelcomeType, :WelcomeMessagePriority, :MaxDuration, :Languages, :InterruptMode, :InterruptSpeechDuration, :EndFunctionEnable, :EndFunctionDesc, :TransferFunctionEnable, :TransferItems, :NotifyDuration, :NotifyMessage, :NotifyMaxCount, :CustomTTSConfig, :PromptVariables, :VadSilenceTime, :ExtractConfig, :Temperature, :Variables
        extend Gem::Deprecate
        deprecate :PromptVariables, :none, 2025, 6
        deprecate :PromptVariables=, :none, 2025, 6

        def initialize(sdkappid=nil, callee=nil, llmtype=nil, apikey=nil, apiurl=nil, systemprompt=nil, model=nil, voicetype=nil, callers=nil, welcomemessage=nil, welcometype=nil, welcomemessagepriority=nil, maxduration=nil, languages=nil, interruptmode=nil, interruptspeechduration=nil, endfunctionenable=nil, endfunctiondesc=nil, transferfunctionenable=nil, transferitems=nil, notifyduration=nil, notifymessage=nil, notifymaxcount=nil, customttsconfig=nil, promptvariables=nil, vadsilencetime=nil, extractconfig=nil, temperature=nil, variables=nil)
          @SdkAppId = sdkappid
          @Callee = callee
          @LLMType = llmtype
          @APIKey = apikey
          @APIUrl = apiurl
          @SystemPrompt = systemprompt
          @Model = model
          @VoiceType = voicetype
          @Callers = callers
          @WelcomeMessage = welcomemessage
          @WelcomeType = welcometype
          @WelcomeMessagePriority = welcomemessagepriority
          @MaxDuration = maxduration
          @Languages = languages
          @InterruptMode = interruptmode
          @InterruptSpeechDuration = interruptspeechduration
          @EndFunctionEnable = endfunctionenable
          @EndFunctionDesc = endfunctiondesc
          @TransferFunctionEnable = transferfunctionenable
          @TransferItems = transferitems
          @NotifyDuration = notifyduration
          @NotifyMessage = notifymessage
          @NotifyMaxCount = notifymaxcount
          @CustomTTSConfig = customttsconfig
          @PromptVariables = promptvariables
          @VadSilenceTime = vadsilencetime
          @ExtractConfig = extractconfig
          @Temperature = temperature
          @Variables = variables
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Callee = params['Callee']
          @LLMType = params['LLMType']
          @APIKey = params['APIKey']
          @APIUrl = params['APIUrl']
          @SystemPrompt = params['SystemPrompt']
          @Model = params['Model']
          @VoiceType = params['VoiceType']
          @Callers = params['Callers']
          @WelcomeMessage = params['WelcomeMessage']
          @WelcomeType = params['WelcomeType']
          @WelcomeMessagePriority = params['WelcomeMessagePriority']
          @MaxDuration = params['MaxDuration']
          @Languages = params['Languages']
          @InterruptMode = params['InterruptMode']
          @InterruptSpeechDuration = params['InterruptSpeechDuration']
          @EndFunctionEnable = params['EndFunctionEnable']
          @EndFunctionDesc = params['EndFunctionDesc']
          @TransferFunctionEnable = params['TransferFunctionEnable']
          unless params['TransferItems'].nil?
            @TransferItems = []
            params['TransferItems'].each do |i|
              aitransferitem_tmp = AITransferItem.new
              aitransferitem_tmp.deserialize(i)
              @TransferItems << aitransferitem_tmp
            end
          end
          @NotifyDuration = params['NotifyDuration']
          @NotifyMessage = params['NotifyMessage']
          @NotifyMaxCount = params['NotifyMaxCount']
          @CustomTTSConfig = params['CustomTTSConfig']
          unless params['PromptVariables'].nil?
            @PromptVariables = []
            params['PromptVariables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @PromptVariables << variable_tmp
            end
          end
          @VadSilenceTime = params['VadSilenceTime']
          unless params['ExtractConfig'].nil?
            @ExtractConfig = []
            params['ExtractConfig'].each do |i|
              aicallextractconfigelement_tmp = AICallExtractConfigElement.new
              aicallextractconfigelement_tmp.deserialize(i)
              @ExtractConfig << aicallextractconfigelement_tmp
            end
          end
          @Temperature = params['Temperature']
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
        end
      end

      # CreateAICall返回参数结构体
      class CreateAICallResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 新创建的会话 ID
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :RequestId

        def initialize(sessionid=nil, requestid=nil)
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAdminURL请求参数结构体
      class CreateAdminURLRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SeatUserId: 管理员账号
        # @type SeatUserId: String

        attr_accessor :SdkAppId, :SeatUserId

        def initialize(sdkappid=nil, seatuserid=nil)
          @SdkAppId = sdkappid
          @SeatUserId = seatuserid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SeatUserId = params['SeatUserId']
        end
      end

      # CreateAdminURL返回参数结构体
      class CreateAdminURLResponse < TencentCloud::Common::AbstractModel
        # @param URL: 登录链接
        # @type URL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :URL, :RequestId

        def initialize(url=nil, requestid=nil)
          @URL = url
          @RequestId = requestid
        end

        def deserialize(params)
          @URL = params['URL']
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentCruiseDialingCampaign请求参数结构体
      class CreateAgentCruiseDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param Agent: 座席账号
        # @type Agent: String
        # @param ConcurrencyNumber: 单轮并发呼叫量 1-20
        # @type ConcurrencyNumber: Integer
        # @param StartTime: 任务启动时间，Unix 时间戳，到此时间后会自动启动任务
        # @type StartTime: Integer
        # @param EndTime: 任务结束时间，Unix 时间戳，到此时间后会自动终止任务
        # @type EndTime: Integer
        # @param Callees: 被叫列表，支持 E.164 或不带国家码形式的号码
        # @type Callees: Array
        # @param Callers: 主叫列表，使用管理端展示的号码格式
        # @type Callers: Array
        # @param CallOrder: 被叫呼叫顺序 0 随机 1 顺序
        # @type CallOrder: Integer
        # @param UUI: 调用方自定义数据，最大长度 1024
        # @type UUI: String

        attr_accessor :SdkAppId, :Name, :Agent, :ConcurrencyNumber, :StartTime, :EndTime, :Callees, :Callers, :CallOrder, :UUI

        def initialize(sdkappid=nil, name=nil, agent=nil, concurrencynumber=nil, starttime=nil, endtime=nil, callees=nil, callers=nil, callorder=nil, uui=nil)
          @SdkAppId = sdkappid
          @Name = name
          @Agent = agent
          @ConcurrencyNumber = concurrencynumber
          @StartTime = starttime
          @EndTime = endtime
          @Callees = callees
          @Callers = callers
          @CallOrder = callorder
          @UUI = uui
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Name = params['Name']
          @Agent = params['Agent']
          @ConcurrencyNumber = params['ConcurrencyNumber']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Callees = params['Callees']
          @Callers = params['Callers']
          @CallOrder = params['CallOrder']
          @UUI = params['UUI']
        end
      end

      # CreateAgentCruiseDialingCampaign返回参数结构体
      class CreateAgentCruiseDialingCampaignResponse < TencentCloud::Common::AbstractModel
        # @param CampaignId: 生成的任务 ID
        # @type CampaignId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CampaignId, :RequestId

        def initialize(campaignid=nil, requestid=nil)
          @CampaignId = campaignid
          @RequestId = requestid
        end

        def deserialize(params)
          @CampaignId = params['CampaignId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAutoCalloutTask请求参数结构体
      class CreateAutoCalloutTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param NotBefore: 任务起始时间戳，Unix 秒级时间戳
        # @type NotBefore: Integer
        # @param Callees: 被叫号码列表
        # @type Callees: Array
        # @param Callers: 主叫号码列表
        # @type Callers: Array
        # @param IvrId: 呼叫使用的 IVR Id，不填时需要填写 AIAgentId
        # @type IvrId: Integer
        # @param Name: 任务名
        # @type Name: String
        # @param Description: 任务描述
        # @type Description: String
        # @param NotAfter: 任务停止时间戳，Unix 秒级时间戳
        # @type NotAfter: Integer
        # @param Tries: 最大尝试次数，1-3 次
        # @type Tries: Integer
        # @param Variables: 自定义变量（仅高级版支持）
        # @type Variables: Array
        # @param UUI: UUI
        # @type UUI: String
        # @param CalleeAttributes: 被叫属性
        # @type CalleeAttributes: Array
        # @param TimeZone: IANA 时区名称，参考 https://datatracker.ietf.org/doc/html/draft-ietf-netmod-iana-timezones
        # @type TimeZone: String
        # @param AvailableTime: 可用时间段
        # @type AvailableTime: Array
        # @param AIAgentId: 智能体 ID，不填写时需要填写 IvrId
        # @type AIAgentId: Integer

        attr_accessor :SdkAppId, :NotBefore, :Callees, :Callers, :IvrId, :Name, :Description, :NotAfter, :Tries, :Variables, :UUI, :CalleeAttributes, :TimeZone, :AvailableTime, :AIAgentId

        def initialize(sdkappid=nil, notbefore=nil, callees=nil, callers=nil, ivrid=nil, name=nil, description=nil, notafter=nil, tries=nil, variables=nil, uui=nil, calleeattributes=nil, timezone=nil, availabletime=nil, aiagentid=nil)
          @SdkAppId = sdkappid
          @NotBefore = notbefore
          @Callees = callees
          @Callers = callers
          @IvrId = ivrid
          @Name = name
          @Description = description
          @NotAfter = notafter
          @Tries = tries
          @Variables = variables
          @UUI = uui
          @CalleeAttributes = calleeattributes
          @TimeZone = timezone
          @AvailableTime = availabletime
          @AIAgentId = aiagentid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @NotBefore = params['NotBefore']
          @Callees = params['Callees']
          @Callers = params['Callers']
          @IvrId = params['IvrId']
          @Name = params['Name']
          @Description = params['Description']
          @NotAfter = params['NotAfter']
          @Tries = params['Tries']
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
          @UUI = params['UUI']
          unless params['CalleeAttributes'].nil?
            @CalleeAttributes = []
            params['CalleeAttributes'].each do |i|
              calleeattribute_tmp = CalleeAttribute.new
              calleeattribute_tmp.deserialize(i)
              @CalleeAttributes << calleeattribute_tmp
            end
          end
          @TimeZone = params['TimeZone']
          unless params['AvailableTime'].nil?
            @AvailableTime = []
            params['AvailableTime'].each do |i|
              timerange_tmp = TimeRange.new
              timerange_tmp.deserialize(i)
              @AvailableTime << timerange_tmp
            end
          end
          @AIAgentId = params['AIAgentId']
        end
      end

      # CreateAutoCalloutTask返回参数结构体
      class CreateAutoCalloutTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
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

      # CreateCCCSkillGroup请求参数结构体
      class CreateCCCSkillGroupRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String
        # @param SkillGroupType: 技能组类型0-电话，1-在线，3-音频，4-视频
        # @type SkillGroupType: Integer
        # @param MaxConcurrency: 技能组接待人数上限（该技能组中1个座席可接待的人数上限）默认为1。1、若技能组类型为在线，则接待上限可设置为1及以上
        # 2、若技能组类型为电话、音频、视频，则接待上线必须只能为1
        # @type MaxConcurrency: Integer

        attr_accessor :SdkAppId, :SkillGroupName, :SkillGroupType, :MaxConcurrency

        def initialize(sdkappid=nil, skillgroupname=nil, skillgrouptype=nil, maxconcurrency=nil)
          @SdkAppId = sdkappid
          @SkillGroupName = skillgroupname
          @SkillGroupType = skillgrouptype
          @MaxConcurrency = maxconcurrency
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SkillGroupName = params['SkillGroupName']
          @SkillGroupType = params['SkillGroupType']
          @MaxConcurrency = params['MaxConcurrency']
        end
      end

      # CreateCCCSkillGroup返回参数结构体
      class CreateCCCSkillGroupResponse < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SkillGroupId, :RequestId

        def initialize(skillgroupid=nil, requestid=nil)
          @SkillGroupId = skillgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCallOutSession请求参数结构体
      class CreateCallOutSessionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID
        # @type SdkAppId: Integer
        # @param UserId: 客服用户 ID，一般为客服邮箱，确保已经绑定了手机号 https://cloud.tencent.com/document/product/679/76067#.E6.AD.A5.E9.AA.A42.EF.BC.9A.E5.AE.8C.E5.96.84.E8.B4.A6.E5.8F.B7.E4.BF.A1.E6.81.AF
        # @type UserId: String
        # @param Callee: 被叫号码，须带 0086 前缀
        # @type Callee: String
        # @param Caller: 主叫号码（废弃，使用Callers），须带 0086 前缀
        # @type Caller: String
        # @param Callers: 指定主叫号码列表，如果前面的号码失败了会自动换成下一个号码，须带 0086 前缀
        # @type Callers: Array
        # @param IsForceUseMobile: 是否强制使用手机外呼，当前只支持 true，若为 true 请确保已配置白名单 https://cloud.tencent.com/document/product/679/76744#.E6.93.8D.E4.BD.9C.E6.AD.A5.E9.AA.A4
        # @type IsForceUseMobile: Boolean
        # @param Uui: 自定义数据，长度限制 1024 字节
        # @type Uui: String
        # @param UUI: 自定义数据，长度限制 1024 字节
        # @type UUI: String

        attr_accessor :SdkAppId, :UserId, :Callee, :Caller, :Callers, :IsForceUseMobile, :Uui, :UUI
        extend Gem::Deprecate
        deprecate :Uui, :none, 2025, 6
        deprecate :Uui=, :none, 2025, 6

        def initialize(sdkappid=nil, userid=nil, callee=nil, caller=nil, callers=nil, isforceusemobile=nil, uui=nil)
          @SdkAppId = sdkappid
          @UserId = userid
          @Callee = callee
          @Caller = caller
          @Callers = callers
          @IsForceUseMobile = isforceusemobile
          @UUI = uui
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @Callee = params['Callee']
          @Caller = params['Caller']
          @Callers = params['Callers']
          @IsForceUseMobile = params['IsForceUseMobile']
          @UUI = params['UUI']
        end
      end

      # CreateCallOutSession返回参数结构体
      class CreateCallOutSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 新创建的会话 ID
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :RequestId

        def initialize(sessionid=nil, requestid=nil)
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCarrierPrivilegeNumberApplicant请求参数结构体
      class CreateCarrierPrivilegeNumberApplicantRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Callers: 主叫号码，必须为实例中存在的号码，格式为0086xxxx（暂时只支持国内号码）
        # @type Callers: Array
        # @param Callees: 被叫号码，必须为实例中坐席绑定的手机号码，格式为0086xxxx（暂时只支持国内号码）
        # @type Callees: Array
        # @param Description: 描述
        # @type Description: String

        attr_accessor :SdkAppId, :Callers, :Callees, :Description

        def initialize(sdkappid=nil, callers=nil, callees=nil, description=nil)
          @SdkAppId = sdkappid
          @Callers = callers
          @Callees = callees
          @Description = description
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Callers = params['Callers']
          @Callees = params['Callees']
          @Description = params['Description']
        end
      end

      # CreateCarrierPrivilegeNumberApplicant返回参数结构体
      class CreateCarrierPrivilegeNumberApplicantResponse < TencentCloud::Common::AbstractModel
        # @param ApplicantId: 申请单Id
        # @type ApplicantId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicantId, :RequestId

        def initialize(applicantid=nil, requestid=nil)
          @ApplicantId = applicantid
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplicantId = params['ApplicantId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCompanyApply请求参数结构体
      class CreateCompanyApplyRequest < TencentCloud::Common::AbstractModel
        # @param CompanyInfo: 企业资质信息
        # @type CompanyInfo: :class:`Tencentcloud::Ccc.v20200210.models.CompanyApplyInfo`

        attr_accessor :CompanyInfo

        def initialize(companyinfo=nil)
          @CompanyInfo = companyinfo
        end

        def deserialize(params)
          unless params['CompanyInfo'].nil?
            @CompanyInfo = CompanyApplyInfo.new
            @CompanyInfo.deserialize(params['CompanyInfo'])
          end
        end
      end

      # CreateCompanyApply返回参数结构体
      class CreateCompanyApplyResponse < TencentCloud::Common::AbstractModel
        # @param Id: 申请单ID
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

      # CreateExtension请求参数结构体
      class CreateExtensionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param ExtensionId: 分机号
        # @type ExtensionId: String
        # @param ExtensionName: 分机名称
        # @type ExtensionName: String
        # @param SkillGroupIds: 绑定的技能组列表
        # @type SkillGroupIds: Array
        # @param Relation: 绑定的坐席邮箱
        # @type Relation: String

        attr_accessor :SdkAppId, :ExtensionId, :ExtensionName, :SkillGroupIds, :Relation

        def initialize(sdkappid=nil, extensionid=nil, extensionname=nil, skillgroupids=nil, relation=nil)
          @SdkAppId = sdkappid
          @ExtensionId = extensionid
          @ExtensionName = extensionname
          @SkillGroupIds = skillgroupids
          @Relation = relation
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @ExtensionId = params['ExtensionId']
          @ExtensionName = params['ExtensionName']
          @SkillGroupIds = params['SkillGroupIds']
          @Relation = params['Relation']
        end
      end

      # CreateExtension返回参数结构体
      class CreateExtensionResponse < TencentCloud::Common::AbstractModel
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

      # CreateIVRSession请求参数结构体
      class CreateIVRSessionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Callee: 被叫
        # @type Callee: String
        # @param IVRId: 指定的 IVR Id，目前支持呼入和自动外呼两种类型
        # @type IVRId: Integer
        # @param Callers: 主叫号码列表
        # @type Callers: Array
        # @param Variables: 自定义变量
        # @type Variables: Array
        # @param UUI: 用户数据
        # @type UUI: String

        attr_accessor :SdkAppId, :Callee, :IVRId, :Callers, :Variables, :UUI

        def initialize(sdkappid=nil, callee=nil, ivrid=nil, callers=nil, variables=nil, uui=nil)
          @SdkAppId = sdkappid
          @Callee = callee
          @IVRId = ivrid
          @Callers = callers
          @Variables = variables
          @UUI = uui
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Callee = params['Callee']
          @IVRId = params['IVRId']
          @Callers = params['Callers']
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
          @UUI = params['UUI']
        end
      end

      # CreateIVRSession返回参数结构体
      class CreateIVRSessionResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 新创建的会话 ID
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :RequestId

        def initialize(sessionid=nil, requestid=nil)
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOwnNumberApply请求参数结构体
      class CreateOwnNumberApplyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SipTrunkId: SIP通道ID
        # @type SipTrunkId: Integer
        # @param DetailList: 线路相关参数
        # @type DetailList: Array
        # @param Prefix: 送号前缀
        # @type Prefix: String

        attr_accessor :SdkAppId, :SipTrunkId, :DetailList, :Prefix

        def initialize(sdkappid=nil, siptrunkid=nil, detaillist=nil, prefix=nil)
          @SdkAppId = sdkappid
          @SipTrunkId = siptrunkid
          @DetailList = detaillist
          @Prefix = prefix
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SipTrunkId = params['SipTrunkId']
          unless params['DetailList'].nil?
            @DetailList = []
            params['DetailList'].each do |i|
              ownnumberapplydetailitem_tmp = OwnNumberApplyDetailItem.new
              ownnumberapplydetailitem_tmp.deserialize(i)
              @DetailList << ownnumberapplydetailitem_tmp
            end
          end
          @Prefix = params['Prefix']
        end
      end

      # CreateOwnNumberApply返回参数结构体
      class CreateOwnNumberApplyResponse < TencentCloud::Common::AbstractModel
        # @param ApplyId: 审批单号
        # @type ApplyId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplyId, :RequestId

        def initialize(applyid=nil, requestid=nil)
          @ApplyId = applyid
          @RequestId = requestid
        end

        def deserialize(params)
          @ApplyId = params['ApplyId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePredictiveDialingCampaign请求参数结构体
      class CreatePredictiveDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param Callees: 被叫列表，支持 E.164 或不带国家码形式的号码
        # @type Callees: Array
        # @param Callers: 主叫列表，使用管理端展示的号码格式
        # @type Callers: Array
        # @param CallOrder: 被叫呼叫顺序 0 随机 1 顺序
        # @type CallOrder: Integer
        # @param SkillGroupId: 使用的座席技能组 ID
        # @type SkillGroupId: Integer
        # @param Priority: 相同应用内多个任务运行优先级，从高到底 1 - 5
        # @type Priority: Integer
        # @param ExpectedAbandonRate: 预期呼损率，百分比，5 - 50
        # @type ExpectedAbandonRate: Integer
        # @param RetryInterval: 呼叫重试间隔时间，单位秒，60 - 86400
        # @type RetryInterval: Integer
        # @param StartTime: 任务启动时间，Unix 时间戳，到此时间后会自动启动任务
        # @type StartTime: Integer
        # @param EndTime: 任务结束时间，Unix 时间戳，到此时间后会自动终止任务
        # @type EndTime: Integer
        # @param IVRId: 指定的 IVR Id
        # @type IVRId: Integer
        # @param RetryTimes: 呼叫重试次数，0 - 2
        # @type RetryTimes: Integer
        # @param Variables: 自定义变量
        # @type Variables: Array
        # @param UUI: UUI
        # @type UUI: String
        # @param CalleeAttributes: 被叫属性
        # @type CalleeAttributes: Array
        # @param TimeZone: IANA 时区名称，参考 https://datatracker.ietf.org/doc/html/draft-ietf-netmod-iana-timezones
        # @type TimeZone: String
        # @param AvailableTime: 可用时间段
        # @type AvailableTime: Array

        attr_accessor :SdkAppId, :Name, :Callees, :Callers, :CallOrder, :SkillGroupId, :Priority, :ExpectedAbandonRate, :RetryInterval, :StartTime, :EndTime, :IVRId, :RetryTimes, :Variables, :UUI, :CalleeAttributes, :TimeZone, :AvailableTime

        def initialize(sdkappid=nil, name=nil, callees=nil, callers=nil, callorder=nil, skillgroupid=nil, priority=nil, expectedabandonrate=nil, retryinterval=nil, starttime=nil, endtime=nil, ivrid=nil, retrytimes=nil, variables=nil, uui=nil, calleeattributes=nil, timezone=nil, availabletime=nil)
          @SdkAppId = sdkappid
          @Name = name
          @Callees = callees
          @Callers = callers
          @CallOrder = callorder
          @SkillGroupId = skillgroupid
          @Priority = priority
          @ExpectedAbandonRate = expectedabandonrate
          @RetryInterval = retryinterval
          @StartTime = starttime
          @EndTime = endtime
          @IVRId = ivrid
          @RetryTimes = retrytimes
          @Variables = variables
          @UUI = uui
          @CalleeAttributes = calleeattributes
          @TimeZone = timezone
          @AvailableTime = availabletime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Name = params['Name']
          @Callees = params['Callees']
          @Callers = params['Callers']
          @CallOrder = params['CallOrder']
          @SkillGroupId = params['SkillGroupId']
          @Priority = params['Priority']
          @ExpectedAbandonRate = params['ExpectedAbandonRate']
          @RetryInterval = params['RetryInterval']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IVRId = params['IVRId']
          @RetryTimes = params['RetryTimes']
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
          @UUI = params['UUI']
          unless params['CalleeAttributes'].nil?
            @CalleeAttributes = []
            params['CalleeAttributes'].each do |i|
              calleeattribute_tmp = CalleeAttribute.new
              calleeattribute_tmp.deserialize(i)
              @CalleeAttributes << calleeattribute_tmp
            end
          end
          @TimeZone = params['TimeZone']
          unless params['AvailableTime'].nil?
            @AvailableTime = []
            params['AvailableTime'].each do |i|
              timerange_tmp = TimeRange.new
              timerange_tmp.deserialize(i)
              @AvailableTime << timerange_tmp
            end
          end
        end
      end

      # CreatePredictiveDialingCampaign返回参数结构体
      class CreatePredictiveDialingCampaignResponse < TencentCloud::Common::AbstractModel
        # @param CampaignId: 生成的任务 ID
        # @type CampaignId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CampaignId, :RequestId

        def initialize(campaignid=nil, requestid=nil)
          @CampaignId = campaignid
          @RequestId = requestid
        end

        def deserialize(params)
          @CampaignId = params['CampaignId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSDKLoginToken请求参数结构体
      class CreateSDKLoginTokenRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SeatUserId: 座席账号。
        # @type SeatUserId: String
        # @param OnlyOnce: 生成的token是否一次性校验
        # @type OnlyOnce: Boolean

        attr_accessor :SdkAppId, :SeatUserId, :OnlyOnce

        def initialize(sdkappid=nil, seatuserid=nil, onlyonce=nil)
          @SdkAppId = sdkappid
          @SeatUserId = seatuserid
          @OnlyOnce = onlyonce
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SeatUserId = params['SeatUserId']
          @OnlyOnce = params['OnlyOnce']
        end
      end

      # CreateSDKLoginToken返回参数结构体
      class CreateSDKLoginTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: SDK 登录 Token。
        # @type Token: String
        # @param ExpiredTime: 过期时间戳，Unix 时间戳。
        # @type ExpiredTime: Integer
        # @param SdkURL: SDK 加载路径会随着 SDK 的发布而变动。
        # @type SdkURL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :ExpiredTime, :SdkURL, :RequestId

        def initialize(token=nil, expiredtime=nil, sdkurl=nil, requestid=nil)
          @Token = token
          @ExpiredTime = expiredtime
          @SdkURL = sdkurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
          @SdkURL = params['SdkURL']
          @RequestId = params['RequestId']
        end
      end

      # CreateStaff请求参数结构体
      class CreateStaffRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Staffs: 客服信息，个数不超过 10
        # @type Staffs: Array
        # @param SendPassword: 是否发送密码邮件，默认true
        # @type SendPassword: Boolean

        attr_accessor :SdkAppId, :Staffs, :SendPassword

        def initialize(sdkappid=nil, staffs=nil, sendpassword=nil)
          @SdkAppId = sdkappid
          @Staffs = staffs
          @SendPassword = sendpassword
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['Staffs'].nil?
            @Staffs = []
            params['Staffs'].each do |i|
              seatuserinfo_tmp = SeatUserInfo.new
              seatuserinfo_tmp.deserialize(i)
              @Staffs << seatuserinfo_tmp
            end
          end
          @SendPassword = params['SendPassword']
        end
      end

      # CreateStaff返回参数结构体
      class CreateStaffResponse < TencentCloud::Common::AbstractModel
        # @param ErrorStaffList: 错误坐席列表及错误信息
        # @type ErrorStaffList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorStaffList, :RequestId

        def initialize(errorstafflist=nil, requestid=nil)
          @ErrorStaffList = errorstafflist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorStaffList'].nil?
            @ErrorStaffList = []
            params['ErrorStaffList'].each do |i|
              errstaffitem_tmp = ErrStaffItem.new
              errstaffitem_tmp.deserialize(i)
              @ErrorStaffList << errstaffitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateUserSig请求参数结构体
      class CreateUserSigRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Uid: 用户 ID，该值必须与 ClientData 字段中 Uid 的值一致
        # @type Uid: String
        # @param ExpiredTime: 有效期，单位秒，不超过 1 小时
        # @type ExpiredTime: Integer
        # @param ClientData: 用户签名数据，必填字段，为标准 JSON 格式
        # @type ClientData: String

        attr_accessor :SdkAppId, :Uid, :ExpiredTime, :ClientData

        def initialize(sdkappid=nil, uid=nil, expiredtime=nil, clientdata=nil)
          @SdkAppId = sdkappid
          @Uid = uid
          @ExpiredTime = expiredtime
          @ClientData = clientdata
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Uid = params['Uid']
          @ExpiredTime = params['ExpiredTime']
          @ClientData = params['ClientData']
        end
      end

      # CreateUserSig返回参数结构体
      class CreateUserSigResponse < TencentCloud::Common::AbstractModel
        # @param UserSig: 签名结果
        # @type UserSig: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserSig, :RequestId

        def initialize(usersig=nil, requestid=nil)
          @UserSig = usersig
          @RequestId = requestid
        end

        def deserialize(params)
          @UserSig = params['UserSig']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCCCSkillGroup请求参数结构体
      class DeleteCCCSkillGroupRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer

        attr_accessor :SdkAppId, :SkillGroupId

        def initialize(sdkappid=nil, skillgroupid=nil)
          @SdkAppId = sdkappid
          @SkillGroupId = skillgroupid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SkillGroupId = params['SkillGroupId']
        end
      end

      # DeleteCCCSkillGroup返回参数结构体
      class DeleteCCCSkillGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteExtension请求参数结构体
      class DeleteExtensionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param ExtensionId: 分机号
        # @type ExtensionId: String

        attr_accessor :SdkAppId, :ExtensionId

        def initialize(sdkappid=nil, extensionid=nil)
          @SdkAppId = sdkappid
          @ExtensionId = extensionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @ExtensionId = params['ExtensionId']
        end
      end

      # DeleteExtension返回参数结构体
      class DeleteExtensionResponse < TencentCloud::Common::AbstractModel
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

      # DeletePredictiveDialingCampaign请求参数结构体
      class DeletePredictiveDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer

        attr_accessor :SdkAppId, :CampaignId

        def initialize(sdkappid=nil, campaignid=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
        end
      end

      # DeletePredictiveDialingCampaign返回参数结构体
      class DeletePredictiveDialingCampaignResponse < TencentCloud::Common::AbstractModel
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

      # DeleteStaff请求参数结构体
      class DeleteStaffRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param StaffList: 待删除客服邮箱列表，一次最大支持200个。
        # @type StaffList: Array

        attr_accessor :SdkAppId, :StaffList

        def initialize(sdkappid=nil, stafflist=nil)
          @SdkAppId = sdkappid
          @StaffList = stafflist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffList = params['StaffList']
        end
      end

      # DeleteStaff返回参数结构体
      class DeleteStaffResponse < TencentCloud::Common::AbstractModel
        # @param OnlineStaffList: 无法删除的状态为在线的客服列表
        # @type OnlineStaffList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OnlineStaffList, :RequestId

        def initialize(onlinestafflist=nil, requestid=nil)
          @OnlineStaffList = onlinestafflist
          @RequestId = requestid
        end

        def deserialize(params)
          @OnlineStaffList = params['OnlineStaffList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAICallExtractResult请求参数结构体
      class DescribeAICallExtractResultRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SessionId: 会话 ID
        # @type SessionId: String
        # @param StartTime: 查找起始时间
        # @type StartTime: Integer
        # @param EndTime: 查找结束时间
        # @type EndTime: Integer

        attr_accessor :SdkAppId, :SessionId, :StartTime, :EndTime

        def initialize(sdkappid=nil, sessionid=nil, starttime=nil, endtime=nil)
          @SdkAppId = sdkappid
          @SessionId = sessionid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeAICallExtractResult返回参数结构体
      class DescribeAICallExtractResultResponse < TencentCloud::Common::AbstractModel
        # @param ResultList: 结果列表
        # @type ResultList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultList, :RequestId

        def initialize(resultlist=nil, requestid=nil)
          @ResultList = resultlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResultList'].nil?
            @ResultList = []
            params['ResultList'].each do |i|
              aicallextractresultelement_tmp = AICallExtractResultElement.new
              aicallextractresultelement_tmp.deserialize(i)
              @ResultList << aicallextractresultelement_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAILatency请求参数结构体
      class DescribeAILatencyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SessionId: 会话 ID
        # @type SessionId: String
        # @param StartTime: 查找起始时间
        # @type StartTime: Integer
        # @param EndTime: 1737350008
        # @type EndTime: Integer

        attr_accessor :SdkAppId, :SessionId, :StartTime, :EndTime

        def initialize(sdkappid=nil, sessionid=nil, starttime=nil, endtime=nil)
          @SdkAppId = sdkappid
          @SessionId = sessionid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeAILatency返回参数结构体
      class DescribeAILatencyResponse < TencentCloud::Common::AbstractModel
        # @param AILatencyDetail: 时延明细数据
        #  -1表示无对应数据
        # @type AILatencyDetail: Array
        # @param AILatencyStatistics: 时延统计数据
        #  -1表示无对应数据
        # @type AILatencyStatistics: :class:`Tencentcloud::Ccc.v20200210.models.AILatencyStatistics`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AILatencyDetail, :AILatencyStatistics, :RequestId

        def initialize(ailatencydetail=nil, ailatencystatistics=nil, requestid=nil)
          @AILatencyDetail = ailatencydetail
          @AILatencyStatistics = ailatencystatistics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AILatencyDetail'].nil?
            @AILatencyDetail = []
            params['AILatencyDetail'].each do |i|
              ailatencydetail_tmp = AILatencyDetail.new
              ailatencydetail_tmp.deserialize(i)
              @AILatencyDetail << ailatencydetail_tmp
            end
          end
          unless params['AILatencyStatistics'].nil?
            @AILatencyStatistics = AILatencyStatistics.new
            @AILatencyStatistics.deserialize(params['AILatencyStatistics'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeActiveCarrierPrivilegeNumber请求参数结构体
      class DescribeActiveCarrierPrivilegeNumberRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageNumber: 默认0
        # @type PageNumber: Integer
        # @param PageSize: 默认10，最大100
        # @type PageSize: Integer
        # @param Filters: 筛选条件 Name支持PhoneNumber(按号码模糊查找)
        # @type Filters: Array

        attr_accessor :SdkAppId, :PageNumber, :PageSize, :Filters

        def initialize(sdkappid=nil, pagenumber=nil, pagesize=nil, filters=nil)
          @SdkAppId = sdkappid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeActiveCarrierPrivilegeNumber返回参数结构体
      class DescribeActiveCarrierPrivilegeNumberResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param ActiveCarrierPrivilegeNumbers: 生效列表
        # @type ActiveCarrierPrivilegeNumbers: Array
        # @param PendingApplicantIds: 待审核单号
        # @type PendingApplicantIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ActiveCarrierPrivilegeNumbers, :PendingApplicantIds, :RequestId

        def initialize(totalcount=nil, activecarrierprivilegenumbers=nil, pendingapplicantids=nil, requestid=nil)
          @TotalCount = totalcount
          @ActiveCarrierPrivilegeNumbers = activecarrierprivilegenumbers
          @PendingApplicantIds = pendingapplicantids
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ActiveCarrierPrivilegeNumbers'].nil?
            @ActiveCarrierPrivilegeNumbers = []
            params['ActiveCarrierPrivilegeNumbers'].each do |i|
              activecarrierprivilegenumber_tmp = ActiveCarrierPrivilegeNumber.new
              activecarrierprivilegenumber_tmp.deserialize(i)
              @ActiveCarrierPrivilegeNumbers << activecarrierprivilegenumber_tmp
            end
          end
          @PendingApplicantIds = params['PendingApplicantIds']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAgentCruiseDialingCampaign请求参数结构体
      class DescribeAgentCruiseDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer

        attr_accessor :SdkAppId, :CampaignId

        def initialize(sdkappid=nil, campaignid=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
        end
      end

      # DescribeAgentCruiseDialingCampaign返回参数结构体
      class DescribeAgentCruiseDialingCampaignResponse < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # @type Name: String
        # @param Agent: 座席账号
        # @type Agent: String
        # @param ConcurrencyNumber: 单轮并发呼叫量 1-20
        # @type ConcurrencyNumber: Integer
        # @param StartTime: 任务启动时间，Unix 时间戳，到此时间后会自动启动任务
        # @type StartTime: Integer
        # @param EndTime: 任务结束时间，Unix 时间戳，到此时间后会自动终止任务
        # @type EndTime: Integer
        # @param CallOrder: 被叫呼叫顺序 0 随机 1 顺序
        # @type CallOrder: Integer
        # @param UUI: 调用方自定义数据，最大长度 1024
        # @type UUI: String
        # @param State: 任务状态 0 未启动 1 运行中 2 已完成 3 已终止
        # @type State: Integer
        # @param TotalCalleeCount: 被叫总数
        # @type TotalCalleeCount: Integer
        # @param CalledCalleeCount: 已呼被叫数
        # @type CalledCalleeCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Agent, :ConcurrencyNumber, :StartTime, :EndTime, :CallOrder, :UUI, :State, :TotalCalleeCount, :CalledCalleeCount, :RequestId

        def initialize(name=nil, agent=nil, concurrencynumber=nil, starttime=nil, endtime=nil, callorder=nil, uui=nil, state=nil, totalcalleecount=nil, calledcalleecount=nil, requestid=nil)
          @Name = name
          @Agent = agent
          @ConcurrencyNumber = concurrencynumber
          @StartTime = starttime
          @EndTime = endtime
          @CallOrder = callorder
          @UUI = uui
          @State = state
          @TotalCalleeCount = totalcalleecount
          @CalledCalleeCount = calledcalleecount
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Agent = params['Agent']
          @ConcurrencyNumber = params['ConcurrencyNumber']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CallOrder = params['CallOrder']
          @UUI = params['UUI']
          @State = params['State']
          @TotalCalleeCount = params['TotalCalleeCount']
          @CalledCalleeCount = params['CalledCalleeCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoCalloutTask请求参数结构体
      class DescribeAutoCalloutTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param TaskId: 任务Id
        # @type TaskId: Integer

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeAutoCalloutTask返回参数结构体
      class DescribeAutoCalloutTaskResponse < TencentCloud::Common::AbstractModel
        # @param Name: 任务名
        # @type Name: String
        # @param Description: 任务描述
        # @type Description: String
        # @param NotBefore: 任务起始时间戳
        # @type NotBefore: Integer
        # @param NotAfter: 任务结束时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotAfter: Integer
        # @param Callers: 主叫列表
        # @type Callers: Array
        # @param Callees: 被叫信息列表
        # @type Callees: Array
        # @param IvrId: 任务使用的IvrId
        # @type IvrId: Integer
        # @param State: 任务状态 0初始 1运行中 2已完成 3结束中 4已终止
        # @type State: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Description, :NotBefore, :NotAfter, :Callers, :Callees, :IvrId, :State, :RequestId

        def initialize(name=nil, description=nil, notbefore=nil, notafter=nil, callers=nil, callees=nil, ivrid=nil, state=nil, requestid=nil)
          @Name = name
          @Description = description
          @NotBefore = notbefore
          @NotAfter = notafter
          @Callers = callers
          @Callees = callees
          @IvrId = ivrid
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @NotBefore = params['NotBefore']
          @NotAfter = params['NotAfter']
          @Callers = params['Callers']
          unless params['Callees'].nil?
            @Callees = []
            params['Callees'].each do |i|
              autocallouttaskcalleeinfo_tmp = AutoCalloutTaskCalleeInfo.new
              autocallouttaskcalleeinfo_tmp.deserialize(i)
              @Callees << autocallouttaskcalleeinfo_tmp
            end
          end
          @IvrId = params['IvrId']
          @State = params['State']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAutoCalloutTasks请求参数结构体
      class DescribeAutoCalloutTasksRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNumber: 页数
        # @type PageNumber: Integer

        attr_accessor :SdkAppId, :PageSize, :PageNumber

        def initialize(sdkappid=nil, pagesize=nil, pagenumber=nil)
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeAutoCalloutTasks返回参数结构体
      class DescribeAutoCalloutTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Tasks: 任务列表
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
              autocallouttaskinfo_tmp = AutoCalloutTaskInfo.new
              autocallouttaskinfo_tmp.deserialize(i)
              @Tasks << autocallouttaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCCCBuyInfoList请求参数结构体
      class DescribeCCCBuyInfoListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppIds: 应用ID列表，不传时查询所有应用
        # @type SdkAppIds: Array

        attr_accessor :SdkAppIds

        def initialize(sdkappids=nil)
          @SdkAppIds = sdkappids
        end

        def deserialize(params)
          @SdkAppIds = params['SdkAppIds']
        end
      end

      # DescribeCCCBuyInfoList返回参数结构体
      class DescribeCCCBuyInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 应用总数
        # @type TotalCount: Integer
        # @param SdkAppIdBuyList: 应用购买信息列表
        # @type SdkAppIdBuyList: Array
        # @param PackageBuyList: 套餐包购买信息列表
        # @type PackageBuyList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SdkAppIdBuyList, :PackageBuyList, :RequestId

        def initialize(totalcount=nil, sdkappidbuylist=nil, packagebuylist=nil, requestid=nil)
          @TotalCount = totalcount
          @SdkAppIdBuyList = sdkappidbuylist
          @PackageBuyList = packagebuylist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SdkAppIdBuyList'].nil?
            @SdkAppIdBuyList = []
            params['SdkAppIdBuyList'].each do |i|
              sdkappidbuyinfo_tmp = SdkAppIdBuyInfo.new
              sdkappidbuyinfo_tmp.deserialize(i)
              @SdkAppIdBuyList << sdkappidbuyinfo_tmp
            end
          end
          unless params['PackageBuyList'].nil?
            @PackageBuyList = []
            params['PackageBuyList'].each do |i|
              packagebuyinfo_tmp = PackageBuyInfo.new
              packagebuyinfo_tmp.deserialize(i)
              @PackageBuyList << packagebuyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallInMetrics请求参数结构体
      class DescribeCallInMetricsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param EnabledSkillGroup: 是否返回技能组维度信息，默认“是”
        # @type EnabledSkillGroup: Boolean
        # @param EnabledNumber: 是否返回线路维度信息，默认“否”
        # @type EnabledNumber: Boolean
        # @param GroupIdList: 筛选技能组列表
        # @type GroupIdList: Array

        attr_accessor :SdkAppId, :EnabledSkillGroup, :EnabledNumber, :GroupIdList

        def initialize(sdkappid=nil, enabledskillgroup=nil, enablednumber=nil, groupidlist=nil)
          @SdkAppId = sdkappid
          @EnabledSkillGroup = enabledskillgroup
          @EnabledNumber = enablednumber
          @GroupIdList = groupidlist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @EnabledSkillGroup = params['EnabledSkillGroup']
          @EnabledNumber = params['EnabledNumber']
          @GroupIdList = params['GroupIdList']
        end
      end

      # DescribeCallInMetrics返回参数结构体
      class DescribeCallInMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Timestamp: 时间戳
        # @type Timestamp: Integer
        # @param TotalMetrics: 总体指标
        # @type TotalMetrics: :class:`Tencentcloud::Ccc.v20200210.models.CallInMetrics`
        # @param NumberMetrics: 线路维度指标
        # @type NumberMetrics: Array
        # @param SkillGroupMetrics: 技能组维度指标
        # @type SkillGroupMetrics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Timestamp, :TotalMetrics, :NumberMetrics, :SkillGroupMetrics, :RequestId

        def initialize(timestamp=nil, totalmetrics=nil, numbermetrics=nil, skillgroupmetrics=nil, requestid=nil)
          @Timestamp = timestamp
          @TotalMetrics = totalmetrics
          @NumberMetrics = numbermetrics
          @SkillGroupMetrics = skillgroupmetrics
          @RequestId = requestid
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          unless params['TotalMetrics'].nil?
            @TotalMetrics = CallInMetrics.new
            @TotalMetrics.deserialize(params['TotalMetrics'])
          end
          unless params['NumberMetrics'].nil?
            @NumberMetrics = []
            params['NumberMetrics'].each do |i|
              callinnumbermetrics_tmp = CallInNumberMetrics.new
              callinnumbermetrics_tmp.deserialize(i)
              @NumberMetrics << callinnumbermetrics_tmp
            end
          end
          unless params['SkillGroupMetrics'].nil?
            @SkillGroupMetrics = []
            params['SkillGroupMetrics'].each do |i|
              callinskillgroupmetrics_tmp = CallInSkillGroupMetrics.new
              callinskillgroupmetrics_tmp.deserialize(i)
              @SkillGroupMetrics << callinskillgroupmetrics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCarrierPrivilegeNumberApplicants请求参数结构体
      class DescribeCarrierPrivilegeNumberApplicantsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageNumber: 默认0，从0开始
        # @type PageNumber: Integer
        # @param PageSize: 默认10，最大100
        # @type PageSize: Integer
        # @param Filters: 筛选条件,Name支持ApplicantId,PhoneNumber(按号码模糊查找)
        # @type Filters: Array

        attr_accessor :SdkAppId, :PageNumber, :PageSize, :Filters

        def initialize(sdkappid=nil, pagenumber=nil, pagesize=nil, filters=nil)
          @SdkAppId = sdkappid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeCarrierPrivilegeNumberApplicants返回参数结构体
      class DescribeCarrierPrivilegeNumberApplicantsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 筛选出的总申请单数量
        # @type TotalCount: Integer
        # @param Applicants: 申请单列表
        # @type Applicants: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Applicants, :RequestId

        def initialize(totalcount=nil, applicants=nil, requestid=nil)
          @TotalCount = totalcount
          @Applicants = applicants
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Applicants'].nil?
            @Applicants = []
            params['Applicants'].each do |i|
              carrierprivilegenumberapplicant_tmp = CarrierPrivilegeNumberApplicant.new
              carrierprivilegenumberapplicant_tmp.deserialize(i)
              @Applicants << carrierprivilegenumberapplicant_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChatMessages请求参数结构体
      class DescribeChatMessagesRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID，可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param InstanceId: 实例 ID（废弃）
        # @type InstanceId: Integer
        # @param CdrId: 服务记录ID（废弃）
        # @type CdrId: String
        # @param Limit: 返回记录条数，最大为100 默认20
        # @type Limit: Integer
        # @param Offset: 返回记录偏移，默认为 0
        # @type Offset: Integer
        # @param Order: 1为从早到晚，2为从晚到早，默认为2
        # @type Order: Integer
        # @param SessionId: 服务记录 SessionID
        # @type SessionId: String

        attr_accessor :SdkAppId, :InstanceId, :CdrId, :Limit, :Offset, :Order, :SessionId
        extend Gem::Deprecate
        deprecate :InstanceId, :none, 2025, 6
        deprecate :InstanceId=, :none, 2025, 6
        deprecate :CdrId, :none, 2025, 6
        deprecate :CdrId=, :none, 2025, 6

        def initialize(sdkappid=nil, instanceid=nil, cdrid=nil, limit=nil, offset=nil, order=nil, sessionid=nil)
          @SdkAppId = sdkappid
          @InstanceId = instanceid
          @CdrId = cdrid
          @Limit = limit
          @Offset = offset
          @Order = order
          @SessionId = sessionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @InstanceId = params['InstanceId']
          @CdrId = params['CdrId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @SessionId = params['SessionId']
        end
      end

      # DescribeChatMessages返回参数结构体
      class DescribeChatMessagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param Messages: 消息列表
        # @type Messages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Messages, :RequestId

        def initialize(totalcount=nil, messages=nil, requestid=nil)
          @TotalCount = totalcount
          @Messages = messages
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              messagebody_tmp = MessageBody.new
              messagebody_tmp.deserialize(i)
              @Messages << messagebody_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCompanyList请求参数结构体
      class DescribeCompanyListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 分页尺寸，上限 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param CompanyName: 公司名称
        # @type CompanyName: Array
        # @param State: 审核状态，1-待审核，2-审核通过，3-驳回
        # @type State: Array
        # @param ApplyID: 申请ID
        # @type ApplyID: Array

        attr_accessor :PageSize, :PageNumber, :CompanyName, :State, :ApplyID

        def initialize(pagesize=nil, pagenumber=nil, companyname=nil, state=nil, applyid=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
          @CompanyName = companyname
          @State = state
          @ApplyID = applyid
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @CompanyName = params['CompanyName']
          @State = params['State']
          @ApplyID = params['ApplyID']
        end
      end

      # DescribeCompanyList返回参数结构体
      class DescribeCompanyListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param CompanyInfo: 企业资质审核信息
        # @type CompanyInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CompanyInfo, :RequestId

        def initialize(totalcount=nil, companyinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @CompanyInfo = companyinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CompanyInfo'].nil?
            @CompanyInfo = []
            params['CompanyInfo'].each do |i|
              companystateinfo_tmp = CompanyStateInfo.new
              companystateinfo_tmp.deserialize(i)
              @CompanyInfo << companystateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtension请求参数结构体
      class DescribeExtensionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param ExtensionId: 分机号
        # @type ExtensionId: String

        attr_accessor :SdkAppId, :ExtensionId

        def initialize(sdkappid=nil, extensionid=nil)
          @SdkAppId = sdkappid
          @ExtensionId = extensionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @ExtensionId = params['ExtensionId']
        end
      end

      # DescribeExtension返回参数结构体
      class DescribeExtensionResponse < TencentCloud::Common::AbstractModel
        # @param ExtensionId: 分机号
        # @type ExtensionId: String
        # @param ExtensionDomain: 域名
        # @type ExtensionDomain: String
        # @param Password: 注册密码
        # @type Password: String
        # @param OutboundProxy: 代理服务器地址
        # @type OutboundProxy: String
        # @param Transport: 传输协议
        # @type Transport: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExtensionId, :ExtensionDomain, :Password, :OutboundProxy, :Transport, :RequestId

        def initialize(extensionid=nil, extensiondomain=nil, password=nil, outboundproxy=nil, transport=nil, requestid=nil)
          @ExtensionId = extensionid
          @ExtensionDomain = extensiondomain
          @Password = password
          @OutboundProxy = outboundproxy
          @Transport = transport
          @RequestId = requestid
        end

        def deserialize(params)
          @ExtensionId = params['ExtensionId']
          @ExtensionDomain = params['ExtensionDomain']
          @Password = params['Password']
          @OutboundProxy = params['OutboundProxy']
          @Transport = params['Transport']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExtensions请求参数结构体
      class DescribeExtensionsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageNumber: 分页页号（从0开始）
        # @type PageNumber: Integer
        # @param ExtensionIds: 筛选分机号列表
        # @type ExtensionIds: Array
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param FuzzingKeyWord: 模糊查询字段（模糊查询分机号、分机名称、坐席邮箱、坐席名称）
        # @type FuzzingKeyWord: String
        # @param IsNeedStatus: 是否需要返回话机当前状态
        # @type IsNeedStatus: Boolean

        attr_accessor :SdkAppId, :PageNumber, :ExtensionIds, :PageSize, :FuzzingKeyWord, :IsNeedStatus

        def initialize(sdkappid=nil, pagenumber=nil, extensionids=nil, pagesize=nil, fuzzingkeyword=nil, isneedstatus=nil)
          @SdkAppId = sdkappid
          @PageNumber = pagenumber
          @ExtensionIds = extensionids
          @PageSize = pagesize
          @FuzzingKeyWord = fuzzingkeyword
          @IsNeedStatus = isneedstatus
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageNumber = params['PageNumber']
          @ExtensionIds = params['ExtensionIds']
          @PageSize = params['PageSize']
          @FuzzingKeyWord = params['FuzzingKeyWord']
          @IsNeedStatus = params['IsNeedStatus']
        end
      end

      # DescribeExtensions返回参数结构体
      class DescribeExtensionsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 查询总数
        # @type Total: Integer
        # @param ExtensionList: 话机信息列表
        # @type ExtensionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ExtensionList, :RequestId

        def initialize(total=nil, extensionlist=nil, requestid=nil)
          @Total = total
          @ExtensionList = extensionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ExtensionList'].nil?
            @ExtensionList = []
            params['ExtensionList'].each do |i|
              extensioninfo_tmp = ExtensionInfo.new
              extensioninfo_tmp.deserialize(i)
              @ExtensionList << extensioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIMCdrList请求参数结构体
      class DescribeIMCdrListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param StartTimestamp: 起始时间（必填），Unix 秒级时间戳
        # @type StartTimestamp: Integer
        # @param EndTimestamp: 结束时间（必填），Unix 秒级时间戳
        # @type EndTimestamp: Integer
        # @param Limit: 返回记录条数，最大为100默认20
        # @type Limit: Integer
        # @param Offset: 返回记录偏移，默认为 0
        # @type Offset: Integer
        # @param Type: 1为全媒体，2为文本客服，不填则查询全部
        # @type Type: Integer

        attr_accessor :SdkAppId, :StartTimestamp, :EndTimestamp, :Limit, :Offset, :Type

        def initialize(sdkappid=nil, starttimestamp=nil, endtimestamp=nil, limit=nil, offset=nil, type=nil)
          @SdkAppId = sdkappid
          @StartTimestamp = starttimestamp
          @EndTimestamp = endtimestamp
          @Limit = limit
          @Offset = offset
          @Type = type
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTimestamp = params['StartTimestamp']
          @EndTimestamp = params['EndTimestamp']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Type = params['Type']
        end
      end

      # DescribeIMCdrList返回参数结构体
      class DescribeIMCdrListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param IMCdrList: 服务记录列表
        # @type IMCdrList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IMCdrList, :RequestId

        def initialize(totalcount=nil, imcdrlist=nil, requestid=nil)
          @TotalCount = totalcount
          @IMCdrList = imcdrlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IMCdrList'].nil?
            @IMCdrList = []
            params['IMCdrList'].each do |i|
              imcdrinfo_tmp = IMCdrInfo.new
              imcdrinfo_tmp.deserialize(i)
              @IMCdrList << imcdrinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIMCdrs请求参数结构体
      class DescribeIMCdrsRequest < TencentCloud::Common::AbstractModel
        # @param StartTimestamp: 起始时间（必填），Unix 秒级时间戳
        # @type StartTimestamp: Integer
        # @param EndTimestamp: 结束时间（必填），Unix 秒级时间戳
        # @type EndTimestamp: Integer
        # @param InstanceId: 实例 ID（废弃）
        # @type InstanceId: Integer
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Limit: 返回记录条数，最大为100默认20
        # @type Limit: Integer
        # @param Offset: 返回记录偏移，默认为 0
        # @type Offset: Integer
        # @param Type: 1为全媒体，2为文本客服，不填则查询全部
        # @type Type: Integer

        attr_accessor :StartTimestamp, :EndTimestamp, :InstanceId, :SdkAppId, :Limit, :Offset, :Type
        extend Gem::Deprecate
        deprecate :InstanceId, :none, 2025, 6
        deprecate :InstanceId=, :none, 2025, 6

        def initialize(starttimestamp=nil, endtimestamp=nil, instanceid=nil, sdkappid=nil, limit=nil, offset=nil, type=nil)
          @StartTimestamp = starttimestamp
          @EndTimestamp = endtimestamp
          @InstanceId = instanceid
          @SdkAppId = sdkappid
          @Limit = limit
          @Offset = offset
          @Type = type
        end

        def deserialize(params)
          @StartTimestamp = params['StartTimestamp']
          @EndTimestamp = params['EndTimestamp']
          @InstanceId = params['InstanceId']
          @SdkAppId = params['SdkAppId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Type = params['Type']
        end
      end

      # DescribeIMCdrs返回参数结构体
      class DescribeIMCdrsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param IMCdrs: 服务记录列表
        # @type IMCdrs: Array
        # @param IMCdrList: 服务记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IMCdrList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IMCdrs, :IMCdrList, :RequestId
        extend Gem::Deprecate
        deprecate :IMCdrs, :none, 2025, 6
        deprecate :IMCdrs=, :none, 2025, 6

        def initialize(totalcount=nil, imcdrs=nil, imcdrlist=nil, requestid=nil)
          @TotalCount = totalcount
          @IMCdrs = imcdrs
          @IMCdrList = imcdrlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IMCdrs'].nil?
            @IMCdrs = []
            params['IMCdrs'].each do |i|
              imcdrinfo_tmp = IMCdrInfo.new
              imcdrinfo_tmp.deserialize(i)
              @IMCdrs << imcdrinfo_tmp
            end
          end
          unless params['IMCdrList'].nil?
            @IMCdrList = []
            params['IMCdrList'].each do |i|
              imcdrinfo_tmp = IMCdrInfo.new
              imcdrinfo_tmp.deserialize(i)
              @IMCdrList << imcdrinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIvrAudioList请求参数结构体
      class DescribeIvrAudioListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，上限 50
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param CustomFileName: 文件别名
        # @type CustomFileName: Array
        # @param AudioFileName: 文件名
        # @type AudioFileName: Array
        # @param FileId: 文件ID
        # @type FileId: Array

        attr_accessor :SdkAppId, :PageSize, :PageNumber, :CustomFileName, :AudioFileName, :FileId

        def initialize(sdkappid=nil, pagesize=nil, pagenumber=nil, customfilename=nil, audiofilename=nil, fileid=nil)
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @CustomFileName = customfilename
          @AudioFileName = audiofilename
          @FileId = fileid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @CustomFileName = params['CustomFileName']
          @AudioFileName = params['AudioFileName']
          @FileId = params['FileId']
        end
      end

      # DescribeIvrAudioList返回参数结构体
      class DescribeIvrAudioListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param FileInfo: 文件信息
        # @type FileInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :FileInfo, :RequestId

        def initialize(totalcount=nil, fileinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @FileInfo = fileinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['FileInfo'].nil?
            @FileInfo = []
            params['FileInfo'].each do |i|
              audiofileinfo_tmp = AudioFileInfo.new
              audiofileinfo_tmp.deserialize(i)
              @FileInfo << audiofileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNumbers请求参数结构体
      class DescribeNumbersRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageNumber: 页数，从0开始
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，默认20
        # @type PageSize: Integer

        attr_accessor :SdkAppId, :PageNumber, :PageSize

        def initialize(sdkappid=nil, pagenumber=nil, pagesize=nil)
          @SdkAppId = sdkappid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeNumbers返回参数结构体
      class DescribeNumbersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param Numbers: 号码列表
        # @type Numbers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Numbers, :RequestId

        def initialize(totalcount=nil, numbers=nil, requestid=nil)
          @TotalCount = totalcount
          @Numbers = numbers
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Numbers'].nil?
            @Numbers = []
            params['Numbers'].each do |i|
              numberinfo_tmp = NumberInfo.new
              numberinfo_tmp.deserialize(i)
              @Numbers << numberinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePSTNActiveSessionList请求参数结构体
      class DescribePSTNActiveSessionListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Offset: 数据偏移
        # @type Offset: Integer
        # @param Limit: 返回的数据条数，最大 25
        # @type Limit: Integer

        attr_accessor :SdkAppId, :Offset, :Limit

        def initialize(sdkappid=nil, offset=nil, limit=nil)
          @SdkAppId = sdkappid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePSTNActiveSessionList返回参数结构体
      class DescribePSTNActiveSessionListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 列表总条数
        # @type Total: Integer
        # @param Sessions: 列表内容
        # @type Sessions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Sessions, :RequestId

        def initialize(total=nil, sessions=nil, requestid=nil)
          @Total = total
          @Sessions = sessions
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Sessions'].nil?
            @Sessions = []
            params['Sessions'].each do |i|
              pstnsessioninfo_tmp = PSTNSessionInfo.new
              pstnsessioninfo_tmp.deserialize(i)
              @Sessions << pstnsessioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePredictiveDialingCampaign请求参数结构体
      class DescribePredictiveDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer

        attr_accessor :SdkAppId, :CampaignId

        def initialize(sdkappid=nil, campaignid=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
        end
      end

      # DescribePredictiveDialingCampaign返回参数结构体
      class DescribePredictiveDialingCampaignResponse < TencentCloud::Common::AbstractModel
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param CallOrder: 被叫呼叫顺序 0 随机 1 顺序
        # @type CallOrder: Integer
        # @param SkillGroupId: 使用的座席技能组 ID
        # @type SkillGroupId: Integer
        # @param IVRId: 指定的 IVR ID
        # @type IVRId: Integer
        # @param Priority: 相同应用内多个任务运行优先级，从高到底 1 - 5
        # @type Priority: Integer
        # @param ExpectedAbandonRate: 预期呼损率，百分比，5 - 50
        # @type ExpectedAbandonRate: Integer
        # @param RetryTimes: 呼叫重试次数，0 - 2
        # @type RetryTimes: Integer
        # @param RetryInterval: 呼叫重试间隔时间，单位秒，60 - 86400
        # @type RetryInterval: Integer
        # @param StartTime: 任务启动时间，Unix 时间戳，到此时间后会自动启动任务
        # @type StartTime: Integer
        # @param EndTime: 任务结束时间，Unix 时间戳，到此时间后会自动终止任务
        # @type EndTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CampaignId, :Name, :CallOrder, :SkillGroupId, :IVRId, :Priority, :ExpectedAbandonRate, :RetryTimes, :RetryInterval, :StartTime, :EndTime, :RequestId

        def initialize(campaignid=nil, name=nil, callorder=nil, skillgroupid=nil, ivrid=nil, priority=nil, expectedabandonrate=nil, retrytimes=nil, retryinterval=nil, starttime=nil, endtime=nil, requestid=nil)
          @CampaignId = campaignid
          @Name = name
          @CallOrder = callorder
          @SkillGroupId = skillgroupid
          @IVRId = ivrid
          @Priority = priority
          @ExpectedAbandonRate = expectedabandonrate
          @RetryTimes = retrytimes
          @RetryInterval = retryinterval
          @StartTime = starttime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          @CampaignId = params['CampaignId']
          @Name = params['Name']
          @CallOrder = params['CallOrder']
          @SkillGroupId = params['SkillGroupId']
          @IVRId = params['IVRId']
          @Priority = params['Priority']
          @ExpectedAbandonRate = params['ExpectedAbandonRate']
          @RetryTimes = params['RetryTimes']
          @RetryInterval = params['RetryInterval']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # 查询预测式外呼任务列表元素
      class DescribePredictiveDialingCampaignsElement < TencentCloud::Common::AbstractModel
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param Status: 任务状态 0 待开始 1 进行中 2 已暂停 3 已终止 4 已完成
        # @type Status: Integer
        # @param StatusReason: 任务状态原因 0 正常 1 手动结束 2 超时结束
        # @type StatusReason: Integer
        # @param CalleeCount: 被叫号码个数
        # @type CalleeCount: Integer
        # @param FinishedCalleeCount: 已完成的被叫个数
        # @type FinishedCalleeCount: Integer
        # @param Priority: 相同应用内多个任务运行优先级，从高到底 1 - 5
        # @type Priority: Integer
        # @param SkillGroupId: 使用的座席技能组 ID
        # @type SkillGroupId: Integer

        attr_accessor :CampaignId, :Name, :Status, :StatusReason, :CalleeCount, :FinishedCalleeCount, :Priority, :SkillGroupId

        def initialize(campaignid=nil, name=nil, status=nil, statusreason=nil, calleecount=nil, finishedcalleecount=nil, priority=nil, skillgroupid=nil)
          @CampaignId = campaignid
          @Name = name
          @Status = status
          @StatusReason = statusreason
          @CalleeCount = calleecount
          @FinishedCalleeCount = finishedcalleecount
          @Priority = priority
          @SkillGroupId = skillgroupid
        end

        def deserialize(params)
          @CampaignId = params['CampaignId']
          @Name = params['Name']
          @Status = params['Status']
          @StatusReason = params['StatusReason']
          @CalleeCount = params['CalleeCount']
          @FinishedCalleeCount = params['FinishedCalleeCount']
          @Priority = params['Priority']
          @SkillGroupId = params['SkillGroupId']
        end
      end

      # DescribePredictiveDialingCampaigns请求参数结构体
      class DescribePredictiveDialingCampaignsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，最大为 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param Name: 查询任务列表名称关键字
        # @type Name: String
        # @param SkillGroupId: 查询任务列表技能组 ID
        # @type SkillGroupId: Integer

        attr_accessor :SdkAppId, :PageSize, :PageNumber, :Name, :SkillGroupId

        def initialize(sdkappid=nil, pagesize=nil, pagenumber=nil, name=nil, skillgroupid=nil)
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Name = name
          @SkillGroupId = skillgroupid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Name = params['Name']
          @SkillGroupId = params['SkillGroupId']
        end
      end

      # DescribePredictiveDialingCampaigns返回参数结构体
      class DescribePredictiveDialingCampaignsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据总量
        # @type TotalCount: Integer
        # @param CampaignList: 数据
        # @type CampaignList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CampaignList, :RequestId

        def initialize(totalcount=nil, campaignlist=nil, requestid=nil)
          @TotalCount = totalcount
          @CampaignList = campaignlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CampaignList'].nil?
            @CampaignList = []
            params['CampaignList'].each do |i|
              describepredictivedialingcampaignselement_tmp = DescribePredictiveDialingCampaignsElement.new
              describepredictivedialingcampaignselement_tmp.deserialize(i)
              @CampaignList << describepredictivedialingcampaignselement_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePredictiveDialingSessions请求参数结构体
      class DescribePredictiveDialingSessionsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 生成的任务 ID
        # @type CampaignId: Integer
        # @param PageSize: 分页尺寸，最大为 1000
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer

        attr_accessor :SdkAppId, :CampaignId, :PageSize, :PageNumber

        def initialize(sdkappid=nil, campaignid=nil, pagesize=nil, pagenumber=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribePredictiveDialingSessions返回参数结构体
      class DescribePredictiveDialingSessionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据总量
        # @type TotalCount: Integer
        # @param SessionList: 呼叫的 session id 列表，通过 https://cloud.tencent.com/document/product/679/47714 可以批量获取呼叫详细话单
        # @type SessionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SessionList, :RequestId

        def initialize(totalcount=nil, sessionlist=nil, requestid=nil)
          @TotalCount = totalcount
          @SessionList = sessionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SessionList = params['SessionList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectedTelCdr请求参数结构体
      class DescribeProtectedTelCdrRequest < TencentCloud::Common::AbstractModel
        # @param StartTimeStamp: 起始时间戳，Unix 秒级时间戳
        # @type StartTimeStamp: Integer
        # @param EndTimeStamp: 结束时间戳，Unix 秒级时间戳
        # @type EndTimeStamp: Integer
        # @param SdkAppId: 应用 ID，可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，上限 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer

        attr_accessor :StartTimeStamp, :EndTimeStamp, :SdkAppId, :PageSize, :PageNumber

        def initialize(starttimestamp=nil, endtimestamp=nil, sdkappid=nil, pagesize=nil, pagenumber=nil)
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeProtectedTelCdr返回参数结构体
      class DescribeProtectedTelCdrResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 话单记录总数
        # @type TotalCount: Integer
        # @param TelCdrs: 话单记录
        # @type TelCdrs: Array
        # @param TelCdrList: 话单记录
        # @type TelCdrList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TelCdrs, :TelCdrList, :RequestId
        extend Gem::Deprecate
        deprecate :TelCdrs, :none, 2025, 6
        deprecate :TelCdrs=, :none, 2025, 6

        def initialize(totalcount=nil, telcdrs=nil, telcdrlist=nil, requestid=nil)
          @TotalCount = totalcount
          @TelCdrs = telcdrs
          @TelCdrList = telcdrlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TelCdrs'].nil?
            @TelCdrs = []
            params['TelCdrs'].each do |i|
              telcdrinfo_tmp = TelCdrInfo.new
              telcdrinfo_tmp.deserialize(i)
              @TelCdrs << telcdrinfo_tmp
            end
          end
          unless params['TelCdrList'].nil?
            @TelCdrList = []
            params['TelCdrList'].each do |i|
              telcdrinfo_tmp = TelCdrInfo.new
              telcdrinfo_tmp.deserialize(i)
              @TelCdrList << telcdrinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSkillGroupInfoList请求参数结构体
      class DescribeSkillGroupInfoListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，上限 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param SkillGroupId: 技能组ID，查询单个技能组时使用
        # @type SkillGroupId: Integer
        # @param ModifiedTime: 查询修改时间大于等于ModifiedTime的技能组时使用
        # @type ModifiedTime: Integer
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String

        attr_accessor :SdkAppId, :PageSize, :PageNumber, :SkillGroupId, :ModifiedTime, :SkillGroupName

        def initialize(sdkappid=nil, pagesize=nil, pagenumber=nil, skillgroupid=nil, modifiedtime=nil, skillgroupname=nil)
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @SkillGroupId = skillgroupid
          @ModifiedTime = modifiedtime
          @SkillGroupName = skillgroupname
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @SkillGroupId = params['SkillGroupId']
          @ModifiedTime = params['ModifiedTime']
          @SkillGroupName = params['SkillGroupName']
        end
      end

      # DescribeSkillGroupInfoList返回参数结构体
      class DescribeSkillGroupInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 技能组总数
        # @type TotalCount: Integer
        # @param SkillGroupList: 技能组信息列表
        # @type SkillGroupList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SkillGroupList, :RequestId

        def initialize(totalcount=nil, skillgrouplist=nil, requestid=nil)
          @TotalCount = totalcount
          @SkillGroupList = skillgrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SkillGroupList'].nil?
            @SkillGroupList = []
            params['SkillGroupList'].each do |i|
              skillgroupinfoitem_tmp = SkillGroupInfoItem.new
              skillgroupinfoitem_tmp.deserialize(i)
              @SkillGroupList << skillgroupinfoitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStaffInfoList请求参数结构体
      class DescribeStaffInfoListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸，上限 9999
        # @type PageSize: Integer
        # @param PageNumber: 分页页码，从 0 开始
        # @type PageNumber: Integer
        # @param StaffMail: 坐席账号，查询单个坐席时使用
        # @type StaffMail: String
        # @param ModifiedTime: 查询修改时间大于等于ModifiedTime的坐席时使用
        # @type ModifiedTime: Integer
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer

        attr_accessor :SdkAppId, :PageSize, :PageNumber, :StaffMail, :ModifiedTime, :SkillGroupId

        def initialize(sdkappid=nil, pagesize=nil, pagenumber=nil, staffmail=nil, modifiedtime=nil, skillgroupid=nil)
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @StaffMail = staffmail
          @ModifiedTime = modifiedtime
          @SkillGroupId = skillgroupid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @StaffMail = params['StaffMail']
          @ModifiedTime = params['ModifiedTime']
          @SkillGroupId = params['SkillGroupId']
        end
      end

      # DescribeStaffInfoList返回参数结构体
      class DescribeStaffInfoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 坐席用户总数
        # @type TotalCount: Integer
        # @param StaffList: 坐席用户信息列表
        # @type StaffList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :StaffList, :RequestId

        def initialize(totalcount=nil, stafflist=nil, requestid=nil)
          @TotalCount = totalcount
          @StaffList = stafflist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StaffList'].nil?
            @StaffList = []
            params['StaffList'].each do |i|
              staffinfo_tmp = StaffInfo.new
              staffinfo_tmp.deserialize(i)
              @StaffList << staffinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStaffStatusMetrics请求参数结构体
      class DescribeStaffStatusMetricsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param StaffList: 筛选坐席列表，默认不传返回全部坐席信息
        # @type StaffList: Array
        # @param GroupIdList: 筛选技能组ID列表
        # @type GroupIdList: Array
        # @param StatusList: 筛选坐席状态列表 座席状态 free 示闲 | busy 忙碌 | rest 小休 | notReady 示忙 | afterCallWork 话后调整 | offline 离线
        # @type StatusList: Array

        attr_accessor :SdkAppId, :StaffList, :GroupIdList, :StatusList

        def initialize(sdkappid=nil, stafflist=nil, groupidlist=nil, statuslist=nil)
          @SdkAppId = sdkappid
          @StaffList = stafflist
          @GroupIdList = groupidlist
          @StatusList = statuslist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffList = params['StaffList']
          @GroupIdList = params['GroupIdList']
          @StatusList = params['StatusList']
        end
      end

      # DescribeStaffStatusMetrics返回参数结构体
      class DescribeStaffStatusMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Metrics: 坐席状态实时信息
        # @type Metrics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metrics, :RequestId

        def initialize(metrics=nil, requestid=nil)
          @Metrics = metrics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              staffstatusmetrics_tmp = StaffStatusMetrics.new
              staffstatusmetrics_tmp.deserialize(i)
              @Metrics << staffstatusmetrics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTelCallInfo请求参数结构体
      class DescribeTelCallInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTimeStamp: 起始时间戳，Unix 时间戳(查询维度仅支持天，例如查询5月1日应该传startTime:"2023-05-01 00:00:00","endTime":"2023-05-01 23:59:59"的时间戳,查5月1日和5月2日的应该传startTime:"2023-05-01 00:00:00","endTime":"2023-05-02 23:59:59"的时间戳)
        # @type StartTimeStamp: Integer
        # @param EndTimeStamp: 结束时间戳，Unix 时间戳，查询时间范围最大为90天(查询维度仅支持天，例如查询5月1日应该传startTime:"2023-05-01 00:00:00","endTime":"2023-05-01 23:59:59"的时间戳,查5月1日和5月2日的应该传startTime:"2023-05-01 00:00:00","endTime":"2023-05-02 23:59:59"的时间戳)
        # @type EndTimeStamp: Integer
        # @param SdkAppIdList: 应用ID列表，多个ID时，返回值为多个ID使用总和
        # @type SdkAppIdList: Array

        attr_accessor :StartTimeStamp, :EndTimeStamp, :SdkAppIdList

        def initialize(starttimestamp=nil, endtimestamp=nil, sdkappidlist=nil)
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @SdkAppIdList = sdkappidlist
        end

        def deserialize(params)
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @SdkAppIdList = params['SdkAppIdList']
        end
      end

      # DescribeTelCallInfo返回参数结构体
      class DescribeTelCallInfoResponse < TencentCloud::Common::AbstractModel
        # @param TelCallOutCount: 呼出套餐包消耗分钟数
        # @type TelCallOutCount: Integer
        # @param TelCallInCount: 呼入套餐包消耗分钟数
        # @type TelCallInCount: Integer
        # @param SeatUsedCount: 坐席使用统计个数
        # @type SeatUsedCount: Integer
        # @param VoipCallInCount: 音频套餐包消耗分钟数
        # @type VoipCallInCount: Integer
        # @param VOIPCallInCount: 音频套餐包消耗分钟数
        # @type VOIPCallInCount: Integer
        # @param AsrOfflineCount: 离线语音转文字套餐包消耗分钟数
        # @type AsrOfflineCount: Integer
        # @param AsrRealtimeCount: 实时语音转文字套餐包消耗分钟数
        # @type AsrRealtimeCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TelCallOutCount, :TelCallInCount, :SeatUsedCount, :VoipCallInCount, :VOIPCallInCount, :AsrOfflineCount, :AsrRealtimeCount, :RequestId
        extend Gem::Deprecate
        deprecate :VoipCallInCount, :none, 2025, 6
        deprecate :VoipCallInCount=, :none, 2025, 6

        def initialize(telcalloutcount=nil, telcallincount=nil, seatusedcount=nil, voipcallincount=nil, asrofflinecount=nil, asrrealtimecount=nil, requestid=nil)
          @TelCallOutCount = telcalloutcount
          @TelCallInCount = telcallincount
          @SeatUsedCount = seatusedcount
          @VOIPCallInCount = voipcallincount
          @AsrOfflineCount = asrofflinecount
          @AsrRealtimeCount = asrrealtimecount
          @RequestId = requestid
        end

        def deserialize(params)
          @TelCallOutCount = params['TelCallOutCount']
          @TelCallInCount = params['TelCallInCount']
          @SeatUsedCount = params['SeatUsedCount']
          @VOIPCallInCount = params['VOIPCallInCount']
          @AsrOfflineCount = params['AsrOfflineCount']
          @AsrRealtimeCount = params['AsrRealtimeCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTelCdr请求参数结构体
      class DescribeTelCdrRequest < TencentCloud::Common::AbstractModel
        # @param StartTimeStamp: 起始时间戳，Unix 秒级时间戳，最大支持近180天。
        # @type StartTimeStamp: Integer
        # @param EndTimeStamp: 结束时间戳，Unix 秒级时间戳，结束时间与开始时间的区间范围小于90天。
        # @type EndTimeStamp: Integer
        # @param InstanceId: 实例 ID（废弃）
        # @type InstanceId: Integer
        # @param Limit: 返回数据条数，上限（废弃）
        # @type Limit: Integer
        # @param Offset: 偏移（废弃）
        # @type Offset: Integer
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param PageSize: 分页尺寸（必填），上限 100
        # @type PageSize: Integer
        # @param PageNumber: 分页页码（必填），从 0 开始
        # @type PageNumber: Integer
        # @param Phones: 按手机号筛选
        # @type Phones: Array
        # @param SessionIds: 按SessionId筛选
        # @type SessionIds: Array

        attr_accessor :StartTimeStamp, :EndTimeStamp, :InstanceId, :Limit, :Offset, :SdkAppId, :PageSize, :PageNumber, :Phones, :SessionIds
        extend Gem::Deprecate
        deprecate :InstanceId, :none, 2025, 6
        deprecate :InstanceId=, :none, 2025, 6

        def initialize(starttimestamp=nil, endtimestamp=nil, instanceid=nil, limit=nil, offset=nil, sdkappid=nil, pagesize=nil, pagenumber=nil, phones=nil, sessionids=nil)
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @SdkAppId = sdkappid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Phones = phones
          @SessionIds = sessionids
        end

        def deserialize(params)
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SdkAppId = params['SdkAppId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Phones = params['Phones']
          @SessionIds = params['SessionIds']
        end
      end

      # DescribeTelCdr返回参数结构体
      class DescribeTelCdrResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 话单记录总数
        # @type TotalCount: Integer
        # @param TelCdrs: 话单记录
        # @type TelCdrs: Array
        # @param TelCdrList: 话单记录
        # @type TelCdrList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TelCdrs, :TelCdrList, :RequestId
        extend Gem::Deprecate
        deprecate :TelCdrs, :none, 2025, 6
        deprecate :TelCdrs=, :none, 2025, 6

        def initialize(totalcount=nil, telcdrs=nil, telcdrlist=nil, requestid=nil)
          @TotalCount = totalcount
          @TelCdrs = telcdrs
          @TelCdrList = telcdrlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TelCdrs'].nil?
            @TelCdrs = []
            params['TelCdrs'].each do |i|
              telcdrinfo_tmp = TelCdrInfo.new
              telcdrinfo_tmp.deserialize(i)
              @TelCdrs << telcdrinfo_tmp
            end
          end
          unless params['TelCdrList'].nil?
            @TelCdrList = []
            params['TelCdrList'].each do |i|
              telcdrinfo_tmp = TelCdrInfo.new
              telcdrinfo_tmp.deserialize(i)
              @TelCdrList << telcdrinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTelRecordAsr请求参数结构体
      class DescribeTelRecordAsrRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SessionId: 会话 ID
        # @type SessionId: String

        attr_accessor :SdkAppId, :SessionId

        def initialize(sdkappid=nil, sessionid=nil)
          @SdkAppId = sdkappid
          @SessionId = sessionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
        end
      end

      # DescribeTelRecordAsr返回参数结构体
      class DescribeTelRecordAsrResponse < TencentCloud::Common::AbstractModel
        # @param AsrDataList: 录音转文本信息
        # @type AsrDataList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsrDataList, :RequestId

        def initialize(asrdatalist=nil, requestid=nil)
          @AsrDataList = asrdatalist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AsrDataList'].nil?
            @AsrDataList = []
            params['AsrDataList'].each do |i|
              asrdata_tmp = AsrData.new
              asrdata_tmp.deserialize(i)
              @AsrDataList << asrdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTelSession请求参数结构体
      class DescribeTelSessionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SessionId: 会话 ID
        # @type SessionId: String

        attr_accessor :SdkAppId, :SessionId

        def initialize(sdkappid=nil, sessionid=nil)
          @SdkAppId = sdkappid
          @SessionId = sessionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
        end
      end

      # DescribeTelSession返回参数结构体
      class DescribeTelSessionResponse < TencentCloud::Common::AbstractModel
        # @param Session: 会话信息
        # @type Session: :class:`Tencentcloud::Ccc.v20200210.models.PSTNSession`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Session, :RequestId

        def initialize(session=nil, requestid=nil)
          @Session = session
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Session'].nil?
            @Session = PSTNSession.new
            @Session.deserialize(params['Session'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableCCCPhoneNumber请求参数结构体
      class DisableCCCPhoneNumberRequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumbers: 号码列表，0086开头
        # @type PhoneNumbers: Array
        # @param Disabled: 停用开关，0启用 1停用
        # @type Disabled: Integer
        # @param SdkAppId: TCCC 实例应用 ID
        # @type SdkAppId: Integer

        attr_accessor :PhoneNumbers, :Disabled, :SdkAppId

        def initialize(phonenumbers=nil, disabled=nil, sdkappid=nil)
          @PhoneNumbers = phonenumbers
          @Disabled = disabled
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @PhoneNumbers = params['PhoneNumbers']
          @Disabled = params['Disabled']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DisableCCCPhoneNumber返回参数结构体
      class DisableCCCPhoneNumberResponse < TencentCloud::Common::AbstractModel
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

      # 批量添加客服时，返回出错客服的信息
      class ErrStaffItem < TencentCloud::Common::AbstractModel
        # @param StaffEmail: 座席邮箱地址
        # @type StaffEmail: String
        # @param Code: 错误码
        # @type Code: String
        # @param Message: 错误描述
        # @type Message: String

        attr_accessor :StaffEmail, :Code, :Message

        def initialize(staffemail=nil, code=nil, message=nil)
          @StaffEmail = staffemail
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @StaffEmail = params['StaffEmail']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 话机信息
      class ExtensionInfo < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 实例ID
        # @type SdkAppId: Integer
        # @param FullExtensionId: 分机全名
        # @type FullExtensionId: String
        # @param ExtensionId: 分机号
        # @type ExtensionId: String
        # @param SkillGroupId: 所属技能组列表
        # @type SkillGroupId: String
        # @param ExtensionName: 分机名称
        # @type ExtensionName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param ModifyTime: 最后修改时间
        # @type ModifyTime: Integer
        # @param Status: 话机状态(0 离线、100 空闲、200忙碌）
        # @type Status: Integer
        # @param Register: 是否注册
        # @type Register: Boolean
        # @param Relation: 绑定座席邮箱
        # @type Relation: String
        # @param RelationName: 绑定座席名称
        # @type RelationName: String

        attr_accessor :SdkAppId, :FullExtensionId, :ExtensionId, :SkillGroupId, :ExtensionName, :CreateTime, :ModifyTime, :Status, :Register, :Relation, :RelationName

        def initialize(sdkappid=nil, fullextensionid=nil, extensionid=nil, skillgroupid=nil, extensionname=nil, createtime=nil, modifytime=nil, status=nil, register=nil, relation=nil, relationname=nil)
          @SdkAppId = sdkappid
          @FullExtensionId = fullextensionid
          @ExtensionId = extensionid
          @SkillGroupId = skillgroupid
          @ExtensionName = extensionname
          @CreateTime = createtime
          @ModifyTime = modifytime
          @Status = status
          @Register = register
          @Relation = relation
          @RelationName = relationname
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @FullExtensionId = params['FullExtensionId']
          @ExtensionId = params['ExtensionId']
          @SkillGroupId = params['SkillGroupId']
          @ExtensionName = params['ExtensionName']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @Status = params['Status']
          @Register = params['Register']
          @Relation = params['Relation']
          @RelationName = params['RelationName']
        end
      end

      # 筛选条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 筛选字段名
        # @type Name: String
        # @param Values: 筛选条件值
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

      # ForceMemberOffline请求参数结构体
      class ForceMemberOfflineRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param UserId: 客服ID
        # @type UserId: String

        attr_accessor :SdkAppId, :UserId

        def initialize(sdkappid=nil, userid=nil)
          @SdkAppId = sdkappid
          @UserId = userid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
        end
      end

      # ForceMemberOffline返回参数结构体
      class ForceMemberOfflineResponse < TencentCloud::Common::AbstractModel
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

      # 呼转配置
      class ForwardingConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param Condition: 1 无条件呼转 2 有条件呼转
        # @type Condition: Integer
        # @param Target: 呼转目标
        # @type Target: :class:`Tencentcloud::Ccc.v20200210.models.ForwardingTarget`

        attr_accessor :Enabled, :Condition, :Target

        def initialize(enabled=nil, condition=nil, target=nil)
          @Enabled = enabled
          @Condition = condition
          @Target = target
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Condition = params['Condition']
          unless params['Target'].nil?
            @Target = ForwardingTarget.new
            @Target.deserialize(params['Target'])
          end
        end
      end

      # 呼转目标
      class ForwardingTarget < TencentCloud::Common::AbstractModel
        # @param Type: 呼转目标类型 1 座席 2 技能组 3 分机
        # @type Type: Integer
        # @param StaffUserId: 呼转目标为座席的账号 Type 为 1 时填写
        # @type StaffUserId: String
        # @param SkillGroupId: 呼转目标为技能组的 ID，Type 为 2 时填写
        # @type SkillGroupId: Integer
        # @param Extension: 呼转目标为分机的账号，Type 为 3 时填写
        # @type Extension: String

        attr_accessor :Type, :StaffUserId, :SkillGroupId, :Extension

        def initialize(type=nil, staffuserid=nil, skillgroupid=nil, extension=nil)
          @Type = type
          @StaffUserId = staffuserid
          @SkillGroupId = skillgroupid
          @Extension = extension
        end

        def deserialize(params)
          @Type = params['Type']
          @StaffUserId = params['StaffUserId']
          @SkillGroupId = params['SkillGroupId']
          @Extension = params['Extension']
        end
      end

      # HangUpCall请求参数结构体
      class HangUpCallRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SessionId: 会话ID
        # @type SessionId: String

        attr_accessor :SdkAppId, :SessionId

        def initialize(sdkappid=nil, sessionid=nil)
          @SdkAppId = sdkappid
          @SessionId = sessionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
        end
      end

      # HangUpCall返回参数结构体
      class HangUpCallResponse < TencentCloud::Common::AbstractModel
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

      # 文本会话服务记录信息
      class IMCdrInfo < TencentCloud::Common::AbstractModel
        # @param Id: 服务记录ID
        # @type Id: String
        # @param Duration: 服务时长秒数
        # @type Duration: Integer
        # @param EndStatus: 结束状态
        # 0 异常结束
        # 1 正常结束
        # 3 无座席在线
        # 17 座席放弃接听
        # 100 黑名单
        # 101 座席手动转接
        # 102 IVR阶段放弃
        # 108 用户超时自动结束
        # 109 用户主动结束
        # @type EndStatus: Integer
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param Type: 服务类型 1为全媒体，2为文本客服
        # @type Type: Integer
        # @param StaffId: 客服ID
        # @type StaffId: String
        # @param Timestamp: 服务时间戳
        # @type Timestamp: Integer
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: String
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String
        # @param Satisfaction: 满意度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Satisfaction: :class:`Tencentcloud::Ccc.v20200210.models.IMSatisfaction`
        # @param ClientUserId: 用户ID
        # @type ClientUserId: String

        attr_accessor :Id, :Duration, :EndStatus, :Nickname, :Type, :StaffId, :Timestamp, :SessionId, :SkillGroupId, :SkillGroupName, :Satisfaction, :ClientUserId

        def initialize(id=nil, duration=nil, endstatus=nil, nickname=nil, type=nil, staffid=nil, timestamp=nil, sessionid=nil, skillgroupid=nil, skillgroupname=nil, satisfaction=nil, clientuserid=nil)
          @Id = id
          @Duration = duration
          @EndStatus = endstatus
          @Nickname = nickname
          @Type = type
          @StaffId = staffid
          @Timestamp = timestamp
          @SessionId = sessionid
          @SkillGroupId = skillgroupid
          @SkillGroupName = skillgroupname
          @Satisfaction = satisfaction
          @ClientUserId = clientuserid
        end

        def deserialize(params)
          @Id = params['Id']
          @Duration = params['Duration']
          @EndStatus = params['EndStatus']
          @Nickname = params['Nickname']
          @Type = params['Type']
          @StaffId = params['StaffId']
          @Timestamp = params['Timestamp']
          @SessionId = params['SessionId']
          @SkillGroupId = params['SkillGroupId']
          @SkillGroupName = params['SkillGroupName']
          unless params['Satisfaction'].nil?
            @Satisfaction = IMSatisfaction.new
            @Satisfaction.deserialize(params['Satisfaction'])
          end
          @ClientUserId = params['ClientUserId']
        end
      end

      # IM满意度
      class IMSatisfaction < TencentCloud::Common::AbstractModel
        # @param Id: 满意度值
        # @type Id: Integer
        # @param Label: 满意度标签
        # @type Label: String

        attr_accessor :Id, :Label

        def initialize(id=nil, label=nil)
          @Id = id
          @Label = label
        end

        def deserialize(params)
          @Id = params['Id']
          @Label = params['Label']
        end
      end

      # ivr 按键信息
      class IVRKeyPressedElement < TencentCloud::Common::AbstractModel
        # @param Key: 命中的关键字或者按键
        # @type Key: String
        # @param Label: 按键关联的标签
        # @type Label: String
        # @param Timestamp: Unix 毫秒时间戳
        # @type Timestamp: Integer
        # @param NodeLabel: 节点标签
        # @type NodeLabel: String
        # @param OriginalContent: 用户原始输入
        # @type OriginalContent: String
        # @param TTSPrompt: TTS 提示音内容
        # @type TTSPrompt: String

        attr_accessor :Key, :Label, :Timestamp, :NodeLabel, :OriginalContent, :TTSPrompt

        def initialize(key=nil, label=nil, timestamp=nil, nodelabel=nil, originalcontent=nil, ttsprompt=nil)
          @Key = key
          @Label = label
          @Timestamp = timestamp
          @NodeLabel = nodelabel
          @OriginalContent = originalcontent
          @TTSPrompt = ttsprompt
        end

        def deserialize(params)
          @Key = params['Key']
          @Label = params['Label']
          @Timestamp = params['Timestamp']
          @NodeLabel = params['NodeLabel']
          @OriginalContent = params['OriginalContent']
          @TTSPrompt = params['TTSPrompt']
        end
      end

      # 回调接口
      class Interface < TencentCloud::Common::AbstractModel
        # @param URL: 接口地址
        # @type URL: String

        attr_accessor :URL

        def initialize(url=nil)
          @URL = url
        end

        def deserialize(params)
          @URL = params['URL']
        end
      end

      # 单条消息
      class Message < TencentCloud::Common::AbstractModel
        # @param Type: 消息类型
        # @type Type: String
        # @param Content: 消息内容
        # @type Content: String

        attr_accessor :Type, :Content

        def initialize(type=nil, content=nil)
          @Type = type
          @Content = content
        end

        def deserialize(params)
          @Type = params['Type']
          @Content = params['Content']
        end
      end

      # 聊天消息
      class MessageBody < TencentCloud::Common::AbstractModel
        # @param Timestamp: 消息时间戳
        # @type Timestamp: Integer
        # @param From: 发消息的用户ID
        # @type From: String
        # @param Messages: 消息列表
        # @type Messages: Array

        attr_accessor :Timestamp, :From, :Messages

        def initialize(timestamp=nil, from=nil, messages=nil)
          @Timestamp = timestamp
          @From = from
          @Messages = messages
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @From = params['From']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              message_tmp = Message.new
              message_tmp.deserialize(i)
              @Messages << message_tmp
            end
          end
        end
      end

      # ModifyCompanyApply请求参数结构体
      class ModifyCompanyApplyRequest < TencentCloud::Common::AbstractModel
        # @param ApplyId: 申请单ID(只能修改状态为“驳回”或者“待审核”的申请单)
        # @type ApplyId: Integer
        # @param CompanyInfo: 企业资质信息
        # @type CompanyInfo: :class:`Tencentcloud::Ccc.v20200210.models.CompanyApplyInfo`

        attr_accessor :ApplyId, :CompanyInfo

        def initialize(applyid=nil, companyinfo=nil)
          @ApplyId = applyid
          @CompanyInfo = companyinfo
        end

        def deserialize(params)
          @ApplyId = params['ApplyId']
          unless params['CompanyInfo'].nil?
            @CompanyInfo = CompanyApplyInfo.new
            @CompanyInfo.deserialize(params['CompanyInfo'])
          end
        end
      end

      # ModifyCompanyApply返回参数结构体
      class ModifyCompanyApplyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyExtension请求参数结构体
      class ModifyExtensionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param ExtensionId: 分机号
        # @type ExtensionId: String
        # @param ExtensionName: 分机名称
        # @type ExtensionName: String
        # @param SkillGroupIds: 所属技能组列表
        # @type SkillGroupIds: Array
        # @param Relation: 绑定坐席邮箱账号
        # @type Relation: String

        attr_accessor :SdkAppId, :ExtensionId, :ExtensionName, :SkillGroupIds, :Relation

        def initialize(sdkappid=nil, extensionid=nil, extensionname=nil, skillgroupids=nil, relation=nil)
          @SdkAppId = sdkappid
          @ExtensionId = extensionid
          @ExtensionName = extensionname
          @SkillGroupIds = skillgroupids
          @Relation = relation
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @ExtensionId = params['ExtensionId']
          @ExtensionName = params['ExtensionName']
          @SkillGroupIds = params['SkillGroupIds']
          @Relation = params['Relation']
        end
      end

      # ModifyExtension返回参数结构体
      class ModifyExtensionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOwnNumberApply请求参数结构体
      class ModifyOwnNumberApplyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param DetailList: 线路相关参数
        # @type DetailList: Array
        # @param ApplyId: 审批单号
        # @type ApplyId: Integer
        # @param Prefix: 送号前缀
        # @type Prefix: String

        attr_accessor :SdkAppId, :DetailList, :ApplyId, :Prefix

        def initialize(sdkappid=nil, detaillist=nil, applyid=nil, prefix=nil)
          @SdkAppId = sdkappid
          @DetailList = detaillist
          @ApplyId = applyid
          @Prefix = prefix
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['DetailList'].nil?
            @DetailList = []
            params['DetailList'].each do |i|
              ownnumberapplydetailitem_tmp = OwnNumberApplyDetailItem.new
              ownnumberapplydetailitem_tmp.deserialize(i)
              @DetailList << ownnumberapplydetailitem_tmp
            end
          end
          @ApplyId = params['ApplyId']
          @Prefix = params['Prefix']
        end
      end

      # ModifyOwnNumberApply返回参数结构体
      class ModifyOwnNumberApplyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyStaffPassword请求参数结构体
      class ModifyStaffPasswordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Email: 座席邮箱
        # @type Email: String
        # @param Password: 设置的密码
        # @type Password: String

        attr_accessor :SdkAppId, :Email, :Password

        def initialize(sdkappid=nil, email=nil, password=nil)
          @SdkAppId = sdkappid
          @Email = email
          @Password = password
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Email = params['Email']
          @Password = params['Password']
        end
      end

      # ModifyStaffPassword返回参数结构体
      class ModifyStaffPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ModifyStaff请求参数结构体
      class ModifyStaffRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Email: 座席账户
        # @type Email: String
        # @param Name: 座席名称
        # @type Name: String
        # @param Phone: 座席手机号（带0086前缀,示例：008618011111111）
        # @type Phone: String
        # @param Nick: 座席昵称
        # @type Nick: String
        # @param StaffNo: 座席工号
        # @type StaffNo: String
        # @param SkillGroupIds: 绑定技能组ID列表
        # @type SkillGroupIds: Array
        # @param UseMobileCallOut: 是否开启手机外呼开关
        # @type UseMobileCallOut: Boolean
        # @param UseMobileAccept: 手机接听模式 0 - 关闭 | 1 - 仅离线 | 2 - 始终
        # @type UseMobileAccept: Integer
        # @param ExtensionNumber: 座席分机号（1 到 8 打头，4 - 6 位）
        # @type ExtensionNumber: String

        attr_accessor :SdkAppId, :Email, :Name, :Phone, :Nick, :StaffNo, :SkillGroupIds, :UseMobileCallOut, :UseMobileAccept, :ExtensionNumber

        def initialize(sdkappid=nil, email=nil, name=nil, phone=nil, nick=nil, staffno=nil, skillgroupids=nil, usemobilecallout=nil, usemobileaccept=nil, extensionnumber=nil)
          @SdkAppId = sdkappid
          @Email = email
          @Name = name
          @Phone = phone
          @Nick = nick
          @StaffNo = staffno
          @SkillGroupIds = skillgroupids
          @UseMobileCallOut = usemobilecallout
          @UseMobileAccept = usemobileaccept
          @ExtensionNumber = extensionnumber
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Email = params['Email']
          @Name = params['Name']
          @Phone = params['Phone']
          @Nick = params['Nick']
          @StaffNo = params['StaffNo']
          @SkillGroupIds = params['SkillGroupIds']
          @UseMobileCallOut = params['UseMobileCallOut']
          @UseMobileAccept = params['UseMobileAccept']
          @ExtensionNumber = params['ExtensionNumber']
        end
      end

      # ModifyStaff返回参数结构体
      class ModifyStaffResponse < TencentCloud::Common::AbstractModel
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

      # 号码信息
      class NumberInfo < TencentCloud::Common::AbstractModel
        # @param Number: 号码
        # @type Number: String
        # @param CallOutSkillGroupIds: 绑定的外呼技能组
        # @type CallOutSkillGroupIds: Array
        # @param State: 号码状态，1-正常，2-欠费停用，4-管理员停用，5-违规停用
        # @type State: Integer

        attr_accessor :Number, :CallOutSkillGroupIds, :State

        def initialize(number=nil, calloutskillgroupids=nil, state=nil)
          @Number = number
          @CallOutSkillGroupIds = calloutskillgroupids
          @State = state
        end

        def deserialize(params)
          @Number = params['Number']
          @CallOutSkillGroupIds = params['CallOutSkillGroupIds']
          @State = params['State']
        end
      end

      # 用户自带号码审批明细数据类型
      class OwnNumberApplyDetailItem < TencentCloud::Common::AbstractModel
        # @param CallType: 号码类型：0-呼入|1-呼出|2-呼入呼出
        # @type CallType: Integer
        # @param PhoneNumber: 线路号码
        # @type PhoneNumber: String
        # @param MaxCallCount: 最大并发呼叫数
        # @type MaxCallCount: Integer
        # @param MaxCallPSec: 每秒最大并发数
        # @type MaxCallPSec: Integer
        # @param OutboundCalleeFormat: 呼出被叫格式，使用 {+E.164} 或 {E.164},
        # @type OutboundCalleeFormat: String

        attr_accessor :CallType, :PhoneNumber, :MaxCallCount, :MaxCallPSec, :OutboundCalleeFormat

        def initialize(calltype=nil, phonenumber=nil, maxcallcount=nil, maxcallpsec=nil, outboundcalleeformat=nil)
          @CallType = calltype
          @PhoneNumber = phonenumber
          @MaxCallCount = maxcallcount
          @MaxCallPSec = maxcallpsec
          @OutboundCalleeFormat = outboundcalleeformat
        end

        def deserialize(params)
          @CallType = params['CallType']
          @PhoneNumber = params['PhoneNumber']
          @MaxCallCount = params['MaxCallCount']
          @MaxCallPSec = params['MaxCallPSec']
          @OutboundCalleeFormat = params['OutboundCalleeFormat']
        end
      end

      # PSTN 会话类型。
      class PSTNSession < TencentCloud::Common::AbstractModel
        # @param SessionID: 会话 ID
        # @type SessionID: String
        # @param RoomID: 会话临时房间 ID
        # @type RoomID: String
        # @param Caller: 主叫
        # @type Caller: String
        # @param Callee: 被叫
        # @type Callee: String
        # @param StartTimestamp: 开始时间，Unix 时间戳
        # @type StartTimestamp: Integer
        # @param RingTimestamp: 振铃时间，Unix 时间戳
        # @type RingTimestamp: Integer
        # @param AcceptTimestamp: 接听时间，Unix 时间戳
        # @type AcceptTimestamp: Integer
        # @param StaffEmail: 座席邮箱
        # @type StaffEmail: String
        # @param StaffNumber: 座席工号
        # @type StaffNumber: String
        # @param SessionStatus: 会话状态
        # ringing 振铃中
        # seatJoining  等待座席接听
        # inProgress 进行中
        # finished 已完成
        # @type SessionStatus: String
        # @param Direction: 会话呼叫方向， 0 呼入 | 1 - 呼出
        # @type Direction: Integer
        # @param OutBoundCaller: 转外线使用的号码（转外线主叫）
        # @type OutBoundCaller: String
        # @param OutBoundCallee: 转外线被叫
        # @type OutBoundCallee: String
        # @param ProtectedCaller: 主叫号码保护ID，开启号码保护映射功能时有效，且Caller字段置空
        # @type ProtectedCaller: String
        # @param ProtectedCallee: 被叫号码保护ID，开启号码保护映射功能时有效，且Callee字段置空
        # @type ProtectedCallee: String

        attr_accessor :SessionID, :RoomID, :Caller, :Callee, :StartTimestamp, :RingTimestamp, :AcceptTimestamp, :StaffEmail, :StaffNumber, :SessionStatus, :Direction, :OutBoundCaller, :OutBoundCallee, :ProtectedCaller, :ProtectedCallee

        def initialize(sessionid=nil, roomid=nil, caller=nil, callee=nil, starttimestamp=nil, ringtimestamp=nil, accepttimestamp=nil, staffemail=nil, staffnumber=nil, sessionstatus=nil, direction=nil, outboundcaller=nil, outboundcallee=nil, protectedcaller=nil, protectedcallee=nil)
          @SessionID = sessionid
          @RoomID = roomid
          @Caller = caller
          @Callee = callee
          @StartTimestamp = starttimestamp
          @RingTimestamp = ringtimestamp
          @AcceptTimestamp = accepttimestamp
          @StaffEmail = staffemail
          @StaffNumber = staffnumber
          @SessionStatus = sessionstatus
          @Direction = direction
          @OutBoundCaller = outboundcaller
          @OutBoundCallee = outboundcallee
          @ProtectedCaller = protectedcaller
          @ProtectedCallee = protectedcallee
        end

        def deserialize(params)
          @SessionID = params['SessionID']
          @RoomID = params['RoomID']
          @Caller = params['Caller']
          @Callee = params['Callee']
          @StartTimestamp = params['StartTimestamp']
          @RingTimestamp = params['RingTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @StaffEmail = params['StaffEmail']
          @StaffNumber = params['StaffNumber']
          @SessionStatus = params['SessionStatus']
          @Direction = params['Direction']
          @OutBoundCaller = params['OutBoundCaller']
          @OutBoundCallee = params['OutBoundCallee']
          @ProtectedCaller = params['ProtectedCaller']
          @ProtectedCallee = params['ProtectedCallee']
        end
      end

      # PSTN 会话信息
      class PSTNSessionInfo < TencentCloud::Common::AbstractModel
        # @param SessionID: 会话 ID
        # @type SessionID: String
        # @param RoomID: 会话临时房间 ID
        # @type RoomID: String
        # @param Caller: 主叫
        # @type Caller: String
        # @param Callee: 被叫
        # @type Callee: String
        # @param StartTimestamp: 开始时间，Unix 时间戳
        # @type StartTimestamp: String
        # @param AcceptTimestamp: 接听时间，Unix 时间戳
        # @type AcceptTimestamp: String
        # @param StaffEmail: 座席邮箱
        # @type StaffEmail: String
        # @param StaffNumber: 座席工号
        # @type StaffNumber: String
        # @param SessionStatus: 座席状态 inProgress 进行中
        # @type SessionStatus: String
        # @param Direction: 会话呼叫方向， 0 呼入 | 1 - 呼出
        # @type Direction: Integer
        # @param RingTimestamp: 振铃时间，Unix 时间戳
        # @type RingTimestamp: Integer
        # @param ProtectedCaller: 主叫号码保护ID，开启号码保护映射功能时有效，且Caller字段置空
        # @type ProtectedCaller: String
        # @param ProtectedCallee: 被叫号码保护ID，开启号码保护映射功能时有效，且Callee字段置空
        # @type ProtectedCallee: String

        attr_accessor :SessionID, :RoomID, :Caller, :Callee, :StartTimestamp, :AcceptTimestamp, :StaffEmail, :StaffNumber, :SessionStatus, :Direction, :RingTimestamp, :ProtectedCaller, :ProtectedCallee

        def initialize(sessionid=nil, roomid=nil, caller=nil, callee=nil, starttimestamp=nil, accepttimestamp=nil, staffemail=nil, staffnumber=nil, sessionstatus=nil, direction=nil, ringtimestamp=nil, protectedcaller=nil, protectedcallee=nil)
          @SessionID = sessionid
          @RoomID = roomid
          @Caller = caller
          @Callee = callee
          @StartTimestamp = starttimestamp
          @AcceptTimestamp = accepttimestamp
          @StaffEmail = staffemail
          @StaffNumber = staffnumber
          @SessionStatus = sessionstatus
          @Direction = direction
          @RingTimestamp = ringtimestamp
          @ProtectedCaller = protectedcaller
          @ProtectedCallee = protectedcallee
        end

        def deserialize(params)
          @SessionID = params['SessionID']
          @RoomID = params['RoomID']
          @Caller = params['Caller']
          @Callee = params['Callee']
          @StartTimestamp = params['StartTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @StaffEmail = params['StaffEmail']
          @StaffNumber = params['StaffNumber']
          @SessionStatus = params['SessionStatus']
          @Direction = params['Direction']
          @RingTimestamp = params['RingTimestamp']
          @ProtectedCaller = params['ProtectedCaller']
          @ProtectedCallee = params['ProtectedCallee']
        end
      end

      # 套餐包购买信息
      class PackageBuyInfo < TencentCloud::Common::AbstractModel
        # @param PackageId: 套餐包Id
        # @type PackageId: String
        # @param Type: 套餐包类型，0-外呼套餐包|1-400呼入套餐包
        # @type Type: Integer
        # @param CapacitySize: 套餐包总量
        # @type CapacitySize: Integer
        # @param CapacityRemain: 套餐包剩余量
        # @type CapacityRemain: Integer
        # @param BuyTime: 购买时间戳
        # @type BuyTime: Integer
        # @param EndTime: 截止时间戳
        # @type EndTime: Integer

        attr_accessor :PackageId, :Type, :CapacitySize, :CapacityRemain, :BuyTime, :EndTime

        def initialize(packageid=nil, type=nil, capacitysize=nil, capacityremain=nil, buytime=nil, endtime=nil)
          @PackageId = packageid
          @Type = type
          @CapacitySize = capacitysize
          @CapacityRemain = capacityremain
          @BuyTime = buytime
          @EndTime = endtime
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @Type = params['Type']
          @CapacitySize = params['CapacitySize']
          @CapacityRemain = params['CapacityRemain']
          @BuyTime = params['BuyTime']
          @EndTime = params['EndTime']
        end
      end

      # PausePredictiveDialingCampaign请求参数结构体
      class PausePredictiveDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer

        attr_accessor :SdkAppId, :CampaignId

        def initialize(sdkappid=nil, campaignid=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
        end
      end

      # PausePredictiveDialingCampaign返回参数结构体
      class PausePredictiveDialingCampaignResponse < TencentCloud::Common::AbstractModel
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

      # 号码购买信息
      class PhoneNumBuyInfo < TencentCloud::Common::AbstractModel
        # @param PhoneNum: 电话号码
        # @type PhoneNum: String
        # @param Type: 号码类型，0-固话|1-虚商号码|2-运营商号码|3-400号码
        # @type Type: Integer
        # @param CallType: 号码呼叫类型，1-呼入|2-呼出|3-呼入呼出
        # @type CallType: Integer
        # @param BuyTime: 购买时间戳
        # @type BuyTime: Integer
        # @param EndTime: 截止时间戳
        # @type EndTime: Integer
        # @param State: 号码状态，1正常|2欠费停用|4管理员停用|5违规停用
        # @type State: Integer

        attr_accessor :PhoneNum, :Type, :CallType, :BuyTime, :EndTime, :State

        def initialize(phonenum=nil, type=nil, calltype=nil, buytime=nil, endtime=nil, state=nil)
          @PhoneNum = phonenum
          @Type = type
          @CallType = calltype
          @BuyTime = buytime
          @EndTime = endtime
          @State = state
        end

        def deserialize(params)
          @PhoneNum = params['PhoneNum']
          @Type = params['Type']
          @CallType = params['CallType']
          @BuyTime = params['BuyTime']
          @EndTime = params['EndTime']
          @State = params['State']
        end
      end

      # ResetExtensionPassword请求参数结构体
      class ResetExtensionPasswordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param ExtensionId: 分机号
        # @type ExtensionId: String

        attr_accessor :SdkAppId, :ExtensionId

        def initialize(sdkappid=nil, extensionid=nil)
          @SdkAppId = sdkappid
          @ExtensionId = extensionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @ExtensionId = params['ExtensionId']
        end
      end

      # ResetExtensionPassword返回参数结构体
      class ResetExtensionPasswordResponse < TencentCloud::Common::AbstractModel
        # @param Password: 重置后密码
        # @type Password: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Password, :RequestId

        def initialize(password=nil, requestid=nil)
          @Password = password
          @RequestId = requestid
        end

        def deserialize(params)
          @Password = params['Password']
          @RequestId = params['RequestId']
        end
      end

      # RestoreMemberOnline请求参数结构体
      class RestoreMemberOnlineRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param UserId: 客服ID
        # @type UserId: String

        attr_accessor :SdkAppId, :UserId

        def initialize(sdkappid=nil, userid=nil)
          @SdkAppId = sdkappid
          @UserId = userid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
        end
      end

      # RestoreMemberOnline返回参数结构体
      class RestoreMemberOnlineResponse < TencentCloud::Common::AbstractModel
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

      # ResumePredictiveDialingCampaign请求参数结构体
      class ResumePredictiveDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 任务 ID
        # @type CampaignId: Integer

        attr_accessor :SdkAppId, :CampaignId

        def initialize(sdkappid=nil, campaignid=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
        end
      end

      # ResumePredictiveDialingCampaign返回参数结构体
      class ResumePredictiveDialingCampaignResponse < TencentCloud::Common::AbstractModel
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

      # 应用购买信息
      class SdkAppIdBuyInfo < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param Name: 应用名称
        # @type Name: String
        # @param StaffBuyNum: 座席购买数（还在有效期内）
        # @type StaffBuyNum: Integer
        # @param StaffBuyList: 座席购买列表 （还在有效期内）
        # @type StaffBuyList: Array
        # @param PhoneNumBuyList: 号码购买列表
        # @type PhoneNumBuyList: Array
        # @param SipBuyNum: 办公电话购买数（还在有效期内）
        # @type SipBuyNum: Integer

        attr_accessor :SdkAppId, :Name, :StaffBuyNum, :StaffBuyList, :PhoneNumBuyList, :SipBuyNum

        def initialize(sdkappid=nil, name=nil, staffbuynum=nil, staffbuylist=nil, phonenumbuylist=nil, sipbuynum=nil)
          @SdkAppId = sdkappid
          @Name = name
          @StaffBuyNum = staffbuynum
          @StaffBuyList = staffbuylist
          @PhoneNumBuyList = phonenumbuylist
          @SipBuyNum = sipbuynum
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Name = params['Name']
          @StaffBuyNum = params['StaffBuyNum']
          unless params['StaffBuyList'].nil?
            @StaffBuyList = []
            params['StaffBuyList'].each do |i|
              staffbuyinfo_tmp = StaffBuyInfo.new
              staffbuyinfo_tmp.deserialize(i)
              @StaffBuyList << staffbuyinfo_tmp
            end
          end
          unless params['PhoneNumBuyList'].nil?
            @PhoneNumBuyList = []
            params['PhoneNumBuyList'].each do |i|
              phonenumbuyinfo_tmp = PhoneNumBuyInfo.new
              phonenumbuyinfo_tmp.deserialize(i)
              @PhoneNumBuyList << phonenumbuyinfo_tmp
            end
          end
          @SipBuyNum = params['SipBuyNum']
        end
      end

      # 座席用户信息
      class SeatUserInfo < TencentCloud::Common::AbstractModel
        # @param Name: 座席名称
        # @type Name: String
        # @param Mail: 座席邮箱
        # @type Mail: String
        # @param StaffNumber: 工号
        # @type StaffNumber: String
        # @param Phone: 座席电话号码（带0086前缀）
        # @type Phone: String
        # @param Nick: 座席昵称
        # @type Nick: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param SkillGroupNameList: 座席关联的技能组列表
        # @type SkillGroupNameList: Array
        # @param Role: 1:管理员
        # 2:质检员
        # 3:普通座席
        # else:自定义角色ID
        # @type Role: Integer
        # @param ExtensionNumber: 座席分机号（1 到 8 打头，4 - 6 位）
        # @type ExtensionNumber: String

        attr_accessor :Name, :Mail, :StaffNumber, :Phone, :Nick, :UserId, :SkillGroupNameList, :Role, :ExtensionNumber

        def initialize(name=nil, mail=nil, staffnumber=nil, phone=nil, nick=nil, userid=nil, skillgroupnamelist=nil, role=nil, extensionnumber=nil)
          @Name = name
          @Mail = mail
          @StaffNumber = staffnumber
          @Phone = phone
          @Nick = nick
          @UserId = userid
          @SkillGroupNameList = skillgroupnamelist
          @Role = role
          @ExtensionNumber = extensionnumber
        end

        def deserialize(params)
          @Name = params['Name']
          @Mail = params['Mail']
          @StaffNumber = params['StaffNumber']
          @Phone = params['Phone']
          @Nick = params['Nick']
          @UserId = params['UserId']
          @SkillGroupNameList = params['SkillGroupNameList']
          @Role = params['Role']
          @ExtensionNumber = params['ExtensionNumber']
        end
      end

      # 参与者信息
      class ServeParticipant < TencentCloud::Common::AbstractModel
        # @param Mail: 座席邮箱
        # @type Mail: String
        # @param Phone: 座席电话
        # @type Phone: String
        # @param RingTimestamp: 振铃时间戳，Unix 秒级时间戳
        # @type RingTimestamp: Integer
        # @param AcceptTimestamp: 接听时间戳，Unix 秒级时间戳
        # @type AcceptTimestamp: Integer
        # @param EndedTimestamp: 结束时间戳，Unix 秒级时间戳
        # @type EndedTimestamp: Integer
        # @param RecordId: 录音 ID，能够索引到座席侧的录音
        # @type RecordId: String
        # @param Type: 参与者类型，"staffSeat", "outboundSeat", "staffPhoneSeat"
        # @type Type: String
        # @param TransferFrom: 转接来源座席信息
        # @type TransferFrom: String
        # @param TransferFromType: 转接来源参与者类型，取值与 Type 一致
        # @type TransferFromType: String
        # @param TransferTo: 转接去向座席信息
        # @type TransferTo: String
        # @param TransferToType: 转接去向参与者类型，取值与 Type 一致
        # @type TransferToType: String
        # @param SkillGroupId: 技能组 ID
        # @type SkillGroupId: Integer
        # @param EndStatusString: 结束状态
        # @type EndStatusString: String
        # @param RecordURL: 录音 URL
        # @type RecordURL: String
        # @param Sequence: 参与者序号，从 0 开始
        # @type Sequence: Integer
        # @param StartTimestamp: 开始时间戳，Unix 秒级时间戳
        # @type StartTimestamp: Integer
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String
        # @param CustomRecordURL: 录音转存第三方COS地址
        # @type CustomRecordURL: String

        attr_accessor :Mail, :Phone, :RingTimestamp, :AcceptTimestamp, :EndedTimestamp, :RecordId, :Type, :TransferFrom, :TransferFromType, :TransferTo, :TransferToType, :SkillGroupId, :EndStatusString, :RecordURL, :Sequence, :StartTimestamp, :SkillGroupName, :CustomRecordURL

        def initialize(mail=nil, phone=nil, ringtimestamp=nil, accepttimestamp=nil, endedtimestamp=nil, recordid=nil, type=nil, transferfrom=nil, transferfromtype=nil, transferto=nil, transfertotype=nil, skillgroupid=nil, endstatusstring=nil, recordurl=nil, sequence=nil, starttimestamp=nil, skillgroupname=nil, customrecordurl=nil)
          @Mail = mail
          @Phone = phone
          @RingTimestamp = ringtimestamp
          @AcceptTimestamp = accepttimestamp
          @EndedTimestamp = endedtimestamp
          @RecordId = recordid
          @Type = type
          @TransferFrom = transferfrom
          @TransferFromType = transferfromtype
          @TransferTo = transferto
          @TransferToType = transfertotype
          @SkillGroupId = skillgroupid
          @EndStatusString = endstatusstring
          @RecordURL = recordurl
          @Sequence = sequence
          @StartTimestamp = starttimestamp
          @SkillGroupName = skillgroupname
          @CustomRecordURL = customrecordurl
        end

        def deserialize(params)
          @Mail = params['Mail']
          @Phone = params['Phone']
          @RingTimestamp = params['RingTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @EndedTimestamp = params['EndedTimestamp']
          @RecordId = params['RecordId']
          @Type = params['Type']
          @TransferFrom = params['TransferFrom']
          @TransferFromType = params['TransferFromType']
          @TransferTo = params['TransferTo']
          @TransferToType = params['TransferToType']
          @SkillGroupId = params['SkillGroupId']
          @EndStatusString = params['EndStatusString']
          @RecordURL = params['RecordURL']
          @Sequence = params['Sequence']
          @StartTimestamp = params['StartTimestamp']
          @SkillGroupName = params['SkillGroupName']
          @CustomRecordURL = params['CustomRecordURL']
        end
      end

      # 技能组信息
      class SkillGroupInfoItem < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String
        # @param Type: （废弃）类型：IM、TEL、ALL（全媒体）
        # @type Type: String
        # @param RoutePolicy: 会话分配策略
        # @type RoutePolicy: String
        # @param UsingLastSeat: 会话分配是否优先上次服务座席
        # @type UsingLastSeat: Integer
        # @param MaxConcurrency: 单客服最大并发数（电话类型默认1）
        # @type MaxConcurrency: Integer
        # @param LastModifyTimestamp: 最后修改时间
        # @type LastModifyTimestamp: Integer
        # @param SkillGroupType: 技能组类型0-电话，1-在线，3-音频，4-视频
        # @type SkillGroupType: Integer
        # @param Alias: 技能组内线号码
        # @type Alias: String

        attr_accessor :SkillGroupId, :SkillGroupName, :Type, :RoutePolicy, :UsingLastSeat, :MaxConcurrency, :LastModifyTimestamp, :SkillGroupType, :Alias

        def initialize(skillgroupid=nil, skillgroupname=nil, type=nil, routepolicy=nil, usinglastseat=nil, maxconcurrency=nil, lastmodifytimestamp=nil, skillgrouptype=nil, _alias=nil)
          @SkillGroupId = skillgroupid
          @SkillGroupName = skillgroupname
          @Type = type
          @RoutePolicy = routepolicy
          @UsingLastSeat = usinglastseat
          @MaxConcurrency = maxconcurrency
          @LastModifyTimestamp = lastmodifytimestamp
          @SkillGroupType = skillgrouptype
          @Alias = _alias
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          @SkillGroupName = params['SkillGroupName']
          @Type = params['Type']
          @RoutePolicy = params['RoutePolicy']
          @UsingLastSeat = params['UsingLastSeat']
          @MaxConcurrency = params['MaxConcurrency']
          @LastModifyTimestamp = params['LastModifyTimestamp']
          @SkillGroupType = params['SkillGroupType']
          @Alias = params['Alias']
        end
      end

      # 技能组信息
      class SkillGroupItem < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param SkillGroupName: 技能组名称
        # @type SkillGroupName: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param Type: 类型：IM、TEL、ALL（全媒体）
        # @type Type: String

        attr_accessor :SkillGroupId, :SkillGroupName, :Priority, :Type

        def initialize(skillgroupid=nil, skillgroupname=nil, priority=nil, type=nil)
          @SkillGroupId = skillgroupid
          @SkillGroupName = skillgroupname
          @Priority = priority
          @Type = type
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          @SkillGroupName = params['SkillGroupName']
          @Priority = params['Priority']
          @Type = params['Type']
        end
      end

      # 座席购买信息
      class StaffBuyInfo < TencentCloud::Common::AbstractModel
        # @param Num: 购买座席数量
        # @type Num: Integer
        # @param BuyTime: 购买时间戳
        # @type BuyTime: Integer
        # @param EndTime: 截止时间戳
        # @type EndTime: Integer
        # @param SipNum: 购买办公电话数量
        # @type SipNum: Integer

        attr_accessor :Num, :BuyTime, :EndTime, :SipNum

        def initialize(num=nil, buytime=nil, endtime=nil, sipnum=nil)
          @Num = num
          @BuyTime = buytime
          @EndTime = endtime
          @SipNum = sipnum
        end

        def deserialize(params)
          @Num = params['Num']
          @BuyTime = params['BuyTime']
          @EndTime = params['EndTime']
          @SipNum = params['SipNum']
        end
      end

      # 带有技能组优先级的座席信息
      class StaffInfo < TencentCloud::Common::AbstractModel
        # @param Name: 座席名称
        # @type Name: String
        # @param Mail: 座席邮箱
        # @type Mail: String
        # @param Phone: 座席电话号码
        # @type Phone: String
        # @param Nick: 座席昵称
        # @type Nick: String
        # @param StaffNumber: 座席工号
        # @type StaffNumber: String
        # @param RoleId: 用户角色 ID，一个用户绑定了多个角色时以RoleIdList为准
        # @type RoleId: Integer
        # @param RoleIdList: 用户角色id列表
        # @type RoleIdList: Integer
        # @param RoleList: 用户角色id列表
        # @type RoleList: Array
        # @param SkillGroupList: 所属技能组列表
        # @type SkillGroupList: Array
        # @param LastModifyTimestamp: 最后修改时间
        # @type LastModifyTimestamp: Integer
        # @param ExtensionNumber: 座席分机号（1 到 8 打头，4 - 6 位）
        # @type ExtensionNumber: String
        # @param ForwardingConfig: 呼叫转移配置
        # @type ForwardingConfig: :class:`Tencentcloud::Ccc.v20200210.models.ForwardingConfig`

        attr_accessor :Name, :Mail, :Phone, :Nick, :StaffNumber, :RoleId, :RoleIdList, :RoleList, :SkillGroupList, :LastModifyTimestamp, :ExtensionNumber, :ForwardingConfig
        extend Gem::Deprecate
        deprecate :RoleId, :none, 2025, 6
        deprecate :RoleId=, :none, 2025, 6
        deprecate :RoleIdList, :none, 2025, 6
        deprecate :RoleIdList=, :none, 2025, 6

        def initialize(name=nil, mail=nil, phone=nil, nick=nil, staffnumber=nil, roleid=nil, roleidlist=nil, rolelist=nil, skillgrouplist=nil, lastmodifytimestamp=nil, extensionnumber=nil, forwardingconfig=nil)
          @Name = name
          @Mail = mail
          @Phone = phone
          @Nick = nick
          @StaffNumber = staffnumber
          @RoleId = roleid
          @RoleIdList = roleidlist
          @RoleList = rolelist
          @SkillGroupList = skillgrouplist
          @LastModifyTimestamp = lastmodifytimestamp
          @ExtensionNumber = extensionnumber
          @ForwardingConfig = forwardingconfig
        end

        def deserialize(params)
          @Name = params['Name']
          @Mail = params['Mail']
          @Phone = params['Phone']
          @Nick = params['Nick']
          @StaffNumber = params['StaffNumber']
          @RoleId = params['RoleId']
          @RoleIdList = params['RoleIdList']
          @RoleList = params['RoleList']
          unless params['SkillGroupList'].nil?
            @SkillGroupList = []
            params['SkillGroupList'].each do |i|
              skillgroupitem_tmp = SkillGroupItem.new
              skillgroupitem_tmp.deserialize(i)
              @SkillGroupList << skillgroupitem_tmp
            end
          end
          @LastModifyTimestamp = params['LastModifyTimestamp']
          @ExtensionNumber = params['ExtensionNumber']
          unless params['ForwardingConfig'].nil?
            @ForwardingConfig = ForwardingConfig.new
            @ForwardingConfig.deserialize(params['ForwardingConfig'])
          end
        end
      end

      # 座席绑定技能组列表
      class StaffSkillGroupList < TencentCloud::Common::AbstractModel
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param Priority: 座席在技能组中的优先级（1为最高，5最低，默认3）
        # @type Priority: Integer

        attr_accessor :SkillGroupId, :Priority

        def initialize(skillgroupid=nil, priority=nil)
          @SkillGroupId = skillgroupid
          @Priority = priority
        end

        def deserialize(params)
          @SkillGroupId = params['SkillGroupId']
          @Priority = params['Priority']
        end
      end

      # 座席状态补充信息
      class StaffStatusExtra < TencentCloud::Common::AbstractModel
        # @param Type: im - 文本 | tel - 电话 | all - 全媒体
        # @type Type: String
        # @param Direct: in - 呼入 | out - 呼出
        # @type Direct: String

        attr_accessor :Type, :Direct

        def initialize(type=nil, direct=nil)
          @Type = type
          @Direct = direct
        end

        def deserialize(params)
          @Type = params['Type']
          @Direct = params['Direct']
        end
      end

      # 座席状态相关信息
      class StaffStatusMetrics < TencentCloud::Common::AbstractModel
        # @param Email: 座席邮箱
        # @type Email: String
        # @param Status: 座席状态 free 示闲 | busy 忙碌 | rest 小休 | notReady 示忙 | afterCallWork 话后调整 | offline 离线
        # @type Status: String
        # @param StatusExtra: 座席状态补充信息
        # @type StatusExtra: :class:`Tencentcloud::Ccc.v20200210.models.StaffStatusExtra`
        # @param OnlineDuration: 当天在线总时长
        # @type OnlineDuration: Integer
        # @param FreeDuration: 当天示闲总时长
        # @type FreeDuration: Integer
        # @param BusyDuration: 当天忙碌总时长
        # @type BusyDuration: Integer
        # @param NotReadyDuration: 当天示忙总时长
        # @type NotReadyDuration: Integer
        # @param RestDuration: 当天小休总时长
        # @type RestDuration: Integer
        # @param AfterCallWorkDuration: 当天话后调整总时长
        # @type AfterCallWorkDuration: Integer
        # @param Reason: 小休原因
        # @type Reason: String
        # @param ReserveRest: 是否预约小休
        # @type ReserveRest: Boolean
        # @param ReserveNotReady: 是否预约示忙
        # @type ReserveNotReady: Boolean
        # @param UseMobileAccept: 手机接听模式： 0 - 关闭 | 1 - 仅离线 | 2- 始终
        # @type UseMobileAccept: Integer
        # @param UseMobileCallOut: 手机外呼开关
        # @type UseMobileCallOut: Boolean
        # @param LastOnlineTimestamp: 最近一次上线时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOnlineTimestamp: Integer
        # @param LastStatusTimestamp: 最近一次状态时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastStatusTimestamp: Integer
        # @param ClientInfo: 客服登录的端信息
        # @type ClientInfo: Array

        attr_accessor :Email, :Status, :StatusExtra, :OnlineDuration, :FreeDuration, :BusyDuration, :NotReadyDuration, :RestDuration, :AfterCallWorkDuration, :Reason, :ReserveRest, :ReserveNotReady, :UseMobileAccept, :UseMobileCallOut, :LastOnlineTimestamp, :LastStatusTimestamp, :ClientInfo

        def initialize(email=nil, status=nil, statusextra=nil, onlineduration=nil, freeduration=nil, busyduration=nil, notreadyduration=nil, restduration=nil, aftercallworkduration=nil, reason=nil, reserverest=nil, reservenotready=nil, usemobileaccept=nil, usemobilecallout=nil, lastonlinetimestamp=nil, laststatustimestamp=nil, clientinfo=nil)
          @Email = email
          @Status = status
          @StatusExtra = statusextra
          @OnlineDuration = onlineduration
          @FreeDuration = freeduration
          @BusyDuration = busyduration
          @NotReadyDuration = notreadyduration
          @RestDuration = restduration
          @AfterCallWorkDuration = aftercallworkduration
          @Reason = reason
          @ReserveRest = reserverest
          @ReserveNotReady = reservenotready
          @UseMobileAccept = usemobileaccept
          @UseMobileCallOut = usemobilecallout
          @LastOnlineTimestamp = lastonlinetimestamp
          @LastStatusTimestamp = laststatustimestamp
          @ClientInfo = clientinfo
        end

        def deserialize(params)
          @Email = params['Email']
          @Status = params['Status']
          unless params['StatusExtra'].nil?
            @StatusExtra = StaffStatusExtra.new
            @StatusExtra.deserialize(params['StatusExtra'])
          end
          @OnlineDuration = params['OnlineDuration']
          @FreeDuration = params['FreeDuration']
          @BusyDuration = params['BusyDuration']
          @NotReadyDuration = params['NotReadyDuration']
          @RestDuration = params['RestDuration']
          @AfterCallWorkDuration = params['AfterCallWorkDuration']
          @Reason = params['Reason']
          @ReserveRest = params['ReserveRest']
          @ReserveNotReady = params['ReserveNotReady']
          @UseMobileAccept = params['UseMobileAccept']
          @UseMobileCallOut = params['UseMobileCallOut']
          @LastOnlineTimestamp = params['LastOnlineTimestamp']
          @LastStatusTimestamp = params['LastStatusTimestamp']
          unless params['ClientInfo'].nil?
            @ClientInfo = []
            params['ClientInfo'].each do |i|
              clientinfo_tmp = ClientInfo.new
              clientinfo_tmp.deserialize(i)
              @ClientInfo << clientinfo_tmp
            end
          end
        end
      end

      # StopAutoCalloutTask请求参数结构体
      class StopAutoCalloutTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param TaskId: 任务Id
        # @type TaskId: Integer

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # StopAutoCalloutTask返回参数结构体
      class StopAutoCalloutTaskResponse < TencentCloud::Common::AbstractModel
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

      # 电话话单信息
      class TelCdrInfo < TencentCloud::Common::AbstractModel
        # @param Caller: 主叫号码
        # @type Caller: String
        # @param Callee: 被叫号码
        # @type Callee: String
        # @param Time: 呼叫发起时间戳，Unix 时间戳
        # @type Time: Integer
        # @param Direction: 呼入呼出方向 0 呼入 1 呼出
        # @type Direction: Integer
        # @param CallType: 通话类型 1 呼出 2 呼入 3 音频呼入 5 预测式外呼 6 内线呼叫
        # @type CallType: Integer
        # @param Duration: 通话时长
        # @type Duration: Integer
        # @param RecordURL: 录音信息
        # @type RecordURL: String
        # @param RecordId: 录音 ID
        # @type RecordId: String
        # @param SeatUser: 座席信息
        # @type SeatUser: :class:`Tencentcloud::Ccc.v20200210.models.SeatUserInfo`
        # @param EndStatus: EndStatus与EndStatusString一一对应，具体枚举如下：

        # **场景	         EndStatus	EndStatusString	状态说明**

        # 电话呼入&呼出	1	        ok	                        正常通话

        # 电话呼入&呼出	0	        error	                异常结束

        # 电话呼入	             102	        ivrGiveUp	        IVR 期间用户放弃

        # 电话呼入	             103	        waitingGiveUp	       排队时用户放弃

        # 电话呼入	             104	        ringingGiveUp	       振铃时用户放弃

        # 电话呼入	             105	        noSeatOnline	       无座席在线

        # 电话呼入              106	       notWorkTime	       非工作时间

        # 电话呼入	            107	       ivrEnd	               IVR 后直接结束

        # 电话呼入	            100	      blackList 黑名单

        # 电话呼出               2	              unconnected	未接通

        # 电话呼出             108	        restrictedCallee	被叫因高风险受限

        # 电话呼出             109	        tooManyRequest	    外呼超频限制

        # 电话呼出             110	        restrictedArea	    外呼区域限制

        # 电话呼出             111	        restrictedTime	外呼时间限制

        # 电话呼出             201            unknown	未知状态

        # 电话呼出             202            notAnswer	 被叫未接听

        # 电话呼出            203	    userReject	被叫拒接挂断

        # 电话呼出	          204	    powerOff	被叫关机

        # 电话呼出           205            numberNotExist	被叫空号

        # 电话呼出	         206	           busy	被叫忙

        # 电话呼出   	        207	           outOfCredit	被叫欠费

        # 电话呼出	         208	           operatorError	运营商线路异常

        # 电话呼出         	209	           callerCancel	主叫取消

        # 电话呼出	        210	           notInService	被叫不在服务区

        # 电话呼入&呼出	211    clientError    客户端错误
        # 电话呼出        212     carrierBlocked      运营商拦截
        # @type EndStatus: Integer
        # @param SkillGroup: 技能组名称
        # @type SkillGroup: String
        # @param CallerLocation: 主叫归属地
        # @type CallerLocation: String
        # @param IVRDuration: IVR 阶段耗时
        # @type IVRDuration: Integer
        # @param RingTimestamp: 振铃时间戳，UNIX 秒级时间戳
        # @type RingTimestamp: Integer
        # @param AcceptTimestamp: 接听时间戳，UNIX 秒级时间戳
        # @type AcceptTimestamp: Integer
        # @param EndedTimestamp: 结束时间戳，UNIX 秒级时间戳
        # @type EndedTimestamp: Integer
        # @param IVRKeyPressed: IVR 按键信息 ，e.g. ["1","2","3"]
        # @type IVRKeyPressed: Array
        # @param HungUpSide: 挂机方 seat 座席 user 用户 system 系统
        # @type HungUpSide: String
        # @param ServeParticipants: 服务参与者列表
        # @type ServeParticipants: Array
        # @param SkillGroupId: 技能组ID
        # @type SkillGroupId: Integer
        # @param EndStatusString: EndStatus与EndStatusString一一对应，具体枚举如下：

        # **场景	         EndStatus	EndStatusString	状态说明**

        # 电话呼入&呼出	1	        ok	                        正常通话

        # 电话呼入&呼出	0	        error	                异常结束

        # 电话呼入	             102	        ivrGiveUp	        IVR 期间用户放弃

        # 电话呼入	             103	        waitingGiveUp	       排队时用户放弃

        # 电话呼入	             104	        ringingGiveUp	       振铃时用户放弃

        # 电话呼入	             105	        noSeatOnline	       无座席在线

        # 电话呼入              106	       notWorkTime	       非工作时间

        # 电话呼入	            107	       ivrEnd	               IVR 后直接结束

        # 电话呼入	            100	      blackList 黑名单

        # 电话呼出               2	              unconnected	未接通

        # 电话呼出             108	        restrictedCallee	被叫因高风险受限

        # 电话呼出             109	        tooManyRequest	    外呼超频限制

        # 电话呼出             110	        restrictedArea	    外呼区域限制

        # 电话呼出             111	        restrictedTime	外呼时间限制

        # 电话呼出             201            unknown	未知状态

        # 电话呼出             202            notAnswer	 被叫未接听

        # 电话呼出            203	    userReject	被叫拒接挂断

        # 电话呼出	          204	    powerOff	被叫关机

        # 电话呼出           205            numberNotExist	被叫空号

        # 电话呼出	         206	           busy	被叫忙

        # 电话呼出   	        207	           outOfCredit	被叫欠费

        # 电话呼出	         208	           operatorError	运营商线路异常

        # 电话呼出         	209	           callerCancel	主叫取消

        # 电话呼出	        210	           notInService	被叫不在服务区

        # 电话呼入&呼出	211    clientError    客户端错误
        # 电话呼出        212     carrierBlocked      运营商拦截
        # @type EndStatusString: String
        # @param StartTimestamp: 会话开始时间戳，UNIX 秒级时间戳
        # @type StartTimestamp: Integer
        # @param QueuedTimestamp: 进入排队时间，Unix 秒级时间戳
        # @type QueuedTimestamp: Integer
        # @param PostIVRKeyPressed: 后置IVR按键信息（e.g. [{"Key":"1","Label":"非常满意"}]）
        # @type PostIVRKeyPressed: Array
        # @param QueuedSkillGroupId: 排队技能组Id
        # @type QueuedSkillGroupId: Integer
        # @param SessionId: 会话 ID
        # @type SessionId: String
        # @param ProtectedCaller: 主叫号码保护ID，开启号码保护映射功能时有效，且Caller字段置空
        # @type ProtectedCaller: String
        # @param ProtectedCallee: 被叫号码保护ID，开启号码保护映射功能时有效，且Callee字段置空
        # @type ProtectedCallee: String
        # @param Uui: 客户自定义数据（User-to-User Interface）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uui: String
        # @param UUI: 客户自定义数据（User-to-User Interface）
        # @type UUI: String
        # @param IVRKeyPressedEx: IVR按键信息（e.g. [{"Key":"1","Label":"非常满意"}]）
        # @type IVRKeyPressedEx: Array
        # @param AsrUrl: 获取录音ASR文本信息地址
        # @type AsrUrl: String
        # @param AsrStatus: AsrUrl的状态：Complete
        # 已完成;
        # Processing
        # 正在生成中;
        # NotExists
        # 无记录(未开启生成离线asr或者无套餐包)
        # @type AsrStatus: String
        # @param CustomRecordURL: 录音转存第三方COS地址
        # @type CustomRecordURL: String
        # @param Remark: 备注
        # @type Remark: String
        # @param QueuedSkillGroupName: 排队技能组名称
        # @type QueuedSkillGroupName: String
        # @param VoicemailRecordURL: 通话中语音留言录音URL
        # @type VoicemailRecordURL: Array
        # @param VoicemailAsrURL: 通话中语音留言ASR文本信息地址
        # @type VoicemailAsrURL: Array

        attr_accessor :Caller, :Callee, :Time, :Direction, :CallType, :Duration, :RecordURL, :RecordId, :SeatUser, :EndStatus, :SkillGroup, :CallerLocation, :IVRDuration, :RingTimestamp, :AcceptTimestamp, :EndedTimestamp, :IVRKeyPressed, :HungUpSide, :ServeParticipants, :SkillGroupId, :EndStatusString, :StartTimestamp, :QueuedTimestamp, :PostIVRKeyPressed, :QueuedSkillGroupId, :SessionId, :ProtectedCaller, :ProtectedCallee, :Uui, :UUI, :IVRKeyPressedEx, :AsrUrl, :AsrStatus, :CustomRecordURL, :Remark, :QueuedSkillGroupName, :VoicemailRecordURL, :VoicemailAsrURL
        extend Gem::Deprecate
        deprecate :Uui, :none, 2025, 6
        deprecate :Uui=, :none, 2025, 6

        def initialize(caller=nil, callee=nil, time=nil, direction=nil, calltype=nil, duration=nil, recordurl=nil, recordid=nil, seatuser=nil, endstatus=nil, skillgroup=nil, callerlocation=nil, ivrduration=nil, ringtimestamp=nil, accepttimestamp=nil, endedtimestamp=nil, ivrkeypressed=nil, hungupside=nil, serveparticipants=nil, skillgroupid=nil, endstatusstring=nil, starttimestamp=nil, queuedtimestamp=nil, postivrkeypressed=nil, queuedskillgroupid=nil, sessionid=nil, protectedcaller=nil, protectedcallee=nil, uui=nil, ivrkeypressedex=nil, asrurl=nil, asrstatus=nil, customrecordurl=nil, remark=nil, queuedskillgroupname=nil, voicemailrecordurl=nil, voicemailasrurl=nil)
          @Caller = caller
          @Callee = callee
          @Time = time
          @Direction = direction
          @CallType = calltype
          @Duration = duration
          @RecordURL = recordurl
          @RecordId = recordid
          @SeatUser = seatuser
          @EndStatus = endstatus
          @SkillGroup = skillgroup
          @CallerLocation = callerlocation
          @IVRDuration = ivrduration
          @RingTimestamp = ringtimestamp
          @AcceptTimestamp = accepttimestamp
          @EndedTimestamp = endedtimestamp
          @IVRKeyPressed = ivrkeypressed
          @HungUpSide = hungupside
          @ServeParticipants = serveparticipants
          @SkillGroupId = skillgroupid
          @EndStatusString = endstatusstring
          @StartTimestamp = starttimestamp
          @QueuedTimestamp = queuedtimestamp
          @PostIVRKeyPressed = postivrkeypressed
          @QueuedSkillGroupId = queuedskillgroupid
          @SessionId = sessionid
          @ProtectedCaller = protectedcaller
          @ProtectedCallee = protectedcallee
          @UUI = uui
          @IVRKeyPressedEx = ivrkeypressedex
          @AsrUrl = asrurl
          @AsrStatus = asrstatus
          @CustomRecordURL = customrecordurl
          @Remark = remark
          @QueuedSkillGroupName = queuedskillgroupname
          @VoicemailRecordURL = voicemailrecordurl
          @VoicemailAsrURL = voicemailasrurl
        end

        def deserialize(params)
          @Caller = params['Caller']
          @Callee = params['Callee']
          @Time = params['Time']
          @Direction = params['Direction']
          @CallType = params['CallType']
          @Duration = params['Duration']
          @RecordURL = params['RecordURL']
          @RecordId = params['RecordId']
          unless params['SeatUser'].nil?
            @SeatUser = SeatUserInfo.new
            @SeatUser.deserialize(params['SeatUser'])
          end
          @EndStatus = params['EndStatus']
          @SkillGroup = params['SkillGroup']
          @CallerLocation = params['CallerLocation']
          @IVRDuration = params['IVRDuration']
          @RingTimestamp = params['RingTimestamp']
          @AcceptTimestamp = params['AcceptTimestamp']
          @EndedTimestamp = params['EndedTimestamp']
          @IVRKeyPressed = params['IVRKeyPressed']
          @HungUpSide = params['HungUpSide']
          unless params['ServeParticipants'].nil?
            @ServeParticipants = []
            params['ServeParticipants'].each do |i|
              serveparticipant_tmp = ServeParticipant.new
              serveparticipant_tmp.deserialize(i)
              @ServeParticipants << serveparticipant_tmp
            end
          end
          @SkillGroupId = params['SkillGroupId']
          @EndStatusString = params['EndStatusString']
          @StartTimestamp = params['StartTimestamp']
          @QueuedTimestamp = params['QueuedTimestamp']
          unless params['PostIVRKeyPressed'].nil?
            @PostIVRKeyPressed = []
            params['PostIVRKeyPressed'].each do |i|
              ivrkeypressedelement_tmp = IVRKeyPressedElement.new
              ivrkeypressedelement_tmp.deserialize(i)
              @PostIVRKeyPressed << ivrkeypressedelement_tmp
            end
          end
          @QueuedSkillGroupId = params['QueuedSkillGroupId']
          @SessionId = params['SessionId']
          @ProtectedCaller = params['ProtectedCaller']
          @ProtectedCallee = params['ProtectedCallee']
          @UUI = params['UUI']
          unless params['IVRKeyPressedEx'].nil?
            @IVRKeyPressedEx = []
            params['IVRKeyPressedEx'].each do |i|
              ivrkeypressedelement_tmp = IVRKeyPressedElement.new
              ivrkeypressedelement_tmp.deserialize(i)
              @IVRKeyPressedEx << ivrkeypressedelement_tmp
            end
          end
          @AsrUrl = params['AsrUrl']
          @AsrStatus = params['AsrStatus']
          @CustomRecordURL = params['CustomRecordURL']
          @Remark = params['Remark']
          @QueuedSkillGroupName = params['QueuedSkillGroupName']
          @VoicemailRecordURL = params['VoicemailRecordURL']
          @VoicemailAsrURL = params['VoicemailAsrURL']
        end
      end

      # 时间范围，24 小时制，格式为 09:00:00
      class TimeRange < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
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

      # TransferToManual请求参数结构体
      class TransferToManualRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param SkillGroupId: 技能组Id
        # @type SkillGroupId: Integer

        attr_accessor :SdkAppId, :SessionId, :SkillGroupId

        def initialize(sdkappid=nil, sessionid=nil, skillgroupid=nil)
          @SdkAppId = sdkappid
          @SessionId = sessionid
          @SkillGroupId = skillgroupid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
          @SkillGroupId = params['SkillGroupId']
        end
      end

      # TransferToManual返回参数结构体
      class TransferToManualResponse < TencentCloud::Common::AbstractModel
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

      # UnbindNumberCallOutSkillGroup请求参数结构体
      class UnbindNumberCallOutSkillGroupRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param Number: 待解绑的号码
        # @type Number: String
        # @param SkillGroupIds: 待解绑的技能组Id列表
        # @type SkillGroupIds: Array

        attr_accessor :SdkAppId, :Number, :SkillGroupIds

        def initialize(sdkappid=nil, number=nil, skillgroupids=nil)
          @SdkAppId = sdkappid
          @Number = number
          @SkillGroupIds = skillgroupids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Number = params['Number']
          @SkillGroupIds = params['SkillGroupIds']
        end
      end

      # UnbindNumberCallOutSkillGroup返回参数结构体
      class UnbindNumberCallOutSkillGroupResponse < TencentCloud::Common::AbstractModel
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

      # UnbindStaffSkillGroupList请求参数结构体
      class UnbindStaffSkillGroupListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param StaffEmail: 客服邮箱
        # @type StaffEmail: String
        # @param SkillGroupList: 解绑技能组列表
        # @type SkillGroupList: Array

        attr_accessor :SdkAppId, :StaffEmail, :SkillGroupList

        def initialize(sdkappid=nil, staffemail=nil, skillgrouplist=nil)
          @SdkAppId = sdkappid
          @StaffEmail = staffemail
          @SkillGroupList = skillgrouplist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StaffEmail = params['StaffEmail']
          @SkillGroupList = params['SkillGroupList']
        end
      end

      # UnbindStaffSkillGroupList返回参数结构体
      class UnbindStaffSkillGroupListResponse < TencentCloud::Common::AbstractModel
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

      # UpdateCCCSkillGroup请求参数结构体
      class UpdateCCCSkillGroupRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param SkillGroupID: 技能组ID
        # @type SkillGroupID: Integer
        # @param SkillGroupName: 修改后的技能组名字
        # @type SkillGroupName: String
        # @param MaxConcurrency: 修改后的最大并发数,同振最大为2
        # @type MaxConcurrency: Integer
        # @param RingAll: true同振，false顺振
        # @type RingAll: Boolean

        attr_accessor :SdkAppId, :SkillGroupID, :SkillGroupName, :MaxConcurrency, :RingAll

        def initialize(sdkappid=nil, skillgroupid=nil, skillgroupname=nil, maxconcurrency=nil, ringall=nil)
          @SdkAppId = sdkappid
          @SkillGroupID = skillgroupid
          @SkillGroupName = skillgroupname
          @MaxConcurrency = maxconcurrency
          @RingAll = ringall
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SkillGroupID = params['SkillGroupID']
          @SkillGroupName = params['SkillGroupName']
          @MaxConcurrency = params['MaxConcurrency']
          @RingAll = params['RingAll']
        end
      end

      # UpdateCCCSkillGroup返回参数结构体
      class UpdateCCCSkillGroupResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePredictiveDialingCampaign请求参数结构体
      class UpdatePredictiveDialingCampaignRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param CampaignId: 生成的任务 ID
        # @type CampaignId: Integer
        # @param Name: 任务名称
        # @type Name: String
        # @param Callees: 被叫列表，支持 E.164 或不带国家码形式的号码
        # @type Callees: Array
        # @param Callers: 主叫列表，使用管理端展示的号码格式
        # @type Callers: Array
        # @param CallOrder: 被叫呼叫顺序 0 随机 1 顺序
        # @type CallOrder: Integer
        # @param SkillGroupId: 使用的座席技能组 ID
        # @type SkillGroupId: Integer
        # @param Priority: 相同应用内多个任务运行优先级，从高到底 1 - 5
        # @type Priority: Integer
        # @param ExpectedAbandonRate: 预期呼损率，百分比，5 - 50
        # @type ExpectedAbandonRate: Integer
        # @param RetryInterval: 呼叫重试间隔时间，单位秒，60 - 86400
        # @type RetryInterval: Integer
        # @param StartTime: 任务启动时间，Unix 时间戳，到此时间后会自动启动任务
        # @type StartTime: Integer
        # @param EndTime: 任务结束时间，Unix 时间戳，到此时间后会自动终止任务
        # @type EndTime: Integer
        # @param IVRId: 指定的 IVR ID
        # @type IVRId: Integer
        # @param RetryTimes: 呼叫重试次数，0 - 2
        # @type RetryTimes: Integer
        # @param Variables: 自定义变量
        # @type Variables: Array
        # @param UUI: 	UUI
        # @type UUI: String
        # @param CalleeAttributes: 被叫属性
        # @type CalleeAttributes: Array

        attr_accessor :SdkAppId, :CampaignId, :Name, :Callees, :Callers, :CallOrder, :SkillGroupId, :Priority, :ExpectedAbandonRate, :RetryInterval, :StartTime, :EndTime, :IVRId, :RetryTimes, :Variables, :UUI, :CalleeAttributes

        def initialize(sdkappid=nil, campaignid=nil, name=nil, callees=nil, callers=nil, callorder=nil, skillgroupid=nil, priority=nil, expectedabandonrate=nil, retryinterval=nil, starttime=nil, endtime=nil, ivrid=nil, retrytimes=nil, variables=nil, uui=nil, calleeattributes=nil)
          @SdkAppId = sdkappid
          @CampaignId = campaignid
          @Name = name
          @Callees = callees
          @Callers = callers
          @CallOrder = callorder
          @SkillGroupId = skillgroupid
          @Priority = priority
          @ExpectedAbandonRate = expectedabandonrate
          @RetryInterval = retryinterval
          @StartTime = starttime
          @EndTime = endtime
          @IVRId = ivrid
          @RetryTimes = retrytimes
          @Variables = variables
          @UUI = uui
          @CalleeAttributes = calleeattributes
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CampaignId = params['CampaignId']
          @Name = params['Name']
          @Callees = params['Callees']
          @Callers = params['Callers']
          @CallOrder = params['CallOrder']
          @SkillGroupId = params['SkillGroupId']
          @Priority = params['Priority']
          @ExpectedAbandonRate = params['ExpectedAbandonRate']
          @RetryInterval = params['RetryInterval']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IVRId = params['IVRId']
          @RetryTimes = params['RetryTimes']
          unless params['Variables'].nil?
            @Variables = []
            params['Variables'].each do |i|
              variable_tmp = Variable.new
              variable_tmp.deserialize(i)
              @Variables << variable_tmp
            end
          end
          @UUI = params['UUI']
          unless params['CalleeAttributes'].nil?
            @CalleeAttributes = []
            params['CalleeAttributes'].each do |i|
              calleeattribute_tmp = CalleeAttribute.new
              calleeattribute_tmp.deserialize(i)
              @CalleeAttributes << calleeattribute_tmp
            end
          end
        end
      end

      # UpdatePredictiveDialingCampaign返回参数结构体
      class UpdatePredictiveDialingCampaignResponse < TencentCloud::Common::AbstractModel
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

      # 上传音频文件信息
      class UploadAudioInfo < TencentCloud::Common::AbstractModel
        # @param CustomFileName: 文件别名（可重复）
        # @type CustomFileName: String
        # @param AudioUrl: 音频文件链接。(支持mp3和wav格式，文件不超过5MB)
        # @type AudioUrl: String

        attr_accessor :CustomFileName, :AudioUrl

        def initialize(customfilename=nil, audiourl=nil)
          @CustomFileName = customfilename
          @AudioUrl = audiourl
        end

        def deserialize(params)
          @CustomFileName = params['CustomFileName']
          @AudioUrl = params['AudioUrl']
        end
      end

      # 上传音频文件失败信息
      class UploadIvrAudioFailedInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名
        # @type FileName: String
        # @param FailedMsg: 失败原因
        # @type FailedMsg: String

        attr_accessor :FileName, :FailedMsg

        def initialize(filename=nil, failedmsg=nil)
          @FileName = filename
          @FailedMsg = failedmsg
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FailedMsg = params['FailedMsg']
        end
      end

      # UploadIvrAudio请求参数结构体
      class UploadIvrAudioRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        # @type SdkAppId: Integer
        # @param AudioList: 音频文件列表
        # @type AudioList: Array

        attr_accessor :SdkAppId, :AudioList

        def initialize(sdkappid=nil, audiolist=nil)
          @SdkAppId = sdkappid
          @AudioList = audiolist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['AudioList'].nil?
            @AudioList = []
            params['AudioList'].each do |i|
              uploadaudioinfo_tmp = UploadAudioInfo.new
              uploadaudioinfo_tmp.deserialize(i)
              @AudioList << uploadaudioinfo_tmp
            end
          end
        end
      end

      # UploadIvrAudio返回参数结构体
      class UploadIvrAudioResponse < TencentCloud::Common::AbstractModel
        # @param FailedFileList: 上传失败的文件列表
        # @type FailedFileList: Array
        # @param SuccessFileList: 上传成功文件列表
        # @type SuccessFileList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailedFileList, :SuccessFileList, :RequestId

        def initialize(failedfilelist=nil, successfilelist=nil, requestid=nil)
          @FailedFileList = failedfilelist
          @SuccessFileList = successfilelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FailedFileList'].nil?
            @FailedFileList = []
            params['FailedFileList'].each do |i|
              uploadivraudiofailedinfo_tmp = UploadIvrAudioFailedInfo.new
              uploadivraudiofailedinfo_tmp.deserialize(i)
              @FailedFileList << uploadivraudiofailedinfo_tmp
            end
          end
          unless params['SuccessFileList'].nil?
            @SuccessFileList = []
            params['SuccessFileList'].each do |i|
              audiofileinfo_tmp = AudioFileInfo.new
              audiofileinfo_tmp.deserialize(i)
              @SuccessFileList << audiofileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 变量
      class Variable < TencentCloud::Common::AbstractModel
        # @param Key: 变量名
        # @type Key: String
        # @param Value: 变量值
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

    end
  end
end

