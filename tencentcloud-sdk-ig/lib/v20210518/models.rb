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
  module Ig
    module V20210518
      # DescribeIgOrderList请求参数结构体
      class DescribeIgOrderListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页数目</p>
        # @type PageSize: Integer
        # @param ProductType: <p>产品类型</p><p>枚举值：</p><ul><li>ig： 导诊</li><li>ipc： 预问诊</li></ul><p>默认值：ig</p>
        # @type ProductType: String
        # @param OrderStatus: <p>订单状态</p><p>枚举值：</p><ul><li>0： 无状态</li><li>1： 未激活</li><li>2： 使用中</li><li>3： 暂停使用</li><li>4： 已到期</li><li>5： 已删除</li><li>6： 已失效</li></ul><p>默认值：0</p>
        # @type OrderStatus: Integer
        # @param KeyWord: <p>搜索关键字</p>
        # @type KeyWord: String

        attr_accessor :PageNumber, :PageSize, :ProductType, :OrderStatus, :KeyWord

        def initialize(pagenumber=nil, pagesize=nil, producttype=nil, orderstatus=nil, keyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ProductType = producttype
          @OrderStatus = orderstatus
          @KeyWord = keyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ProductType = params['ProductType']
          @OrderStatus = params['OrderStatus']
          @KeyWord = params['KeyWord']
        end
      end

      # DescribeIgOrderList返回参数结构体
      class DescribeIgOrderListResponse < TencentCloud::Common::AbstractModel
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

      # 药品卡片信息
      class DrugCardInfo < TencentCloud::Common::AbstractModel
        # @param DrugId: 药品id
        # @type DrugId: String
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param TradeName: 商品名称
        # @type TradeName: String
        # @param Specification: 规格
        # @type Specification: String
        # @param Manufacturer: 生产厂商
        # @type Manufacturer: String
        # @param DrugRxType: 是否处方药，0:非处方药，1:处方药
        # @type DrugRxType: Integer
        # @param DocUrl: 药品说明书URL
        # @type DocUrl: String
        # @param IdentifySource: 识别来源，1:药品图片，2:用户输入
        # @type IdentifySource: Integer

        attr_accessor :DrugId, :DrugName, :TradeName, :Specification, :Manufacturer, :DrugRxType, :DocUrl, :IdentifySource

        def initialize(drugid=nil, drugname=nil, tradename=nil, specification=nil, manufacturer=nil, drugrxtype=nil, docurl=nil, identifysource=nil)
          @DrugId = drugid
          @DrugName = drugname
          @TradeName = tradename
          @Specification = specification
          @Manufacturer = manufacturer
          @DrugRxType = drugrxtype
          @DocUrl = docurl
          @IdentifySource = identifysource
        end

        def deserialize(params)
          @DrugId = params['DrugId']
          @DrugName = params['DrugName']
          @TradeName = params['TradeName']
          @Specification = params['Specification']
          @Manufacturer = params['Manufacturer']
          @DrugRxType = params['DrugRxType']
          @DocUrl = params['DocUrl']
          @IdentifySource = params['IdentifySource']
        end
      end

      # 药品说明书信息
      class DrugInstructionInfo < TencentCloud::Common::AbstractModel
        # @param DrugId: 药品id
        # @type DrugId: String
        # @param DrugName: 药品名称
        # @type DrugName: String
        # @param TradeName: 商品名称
        # @type TradeName: String
        # @param Specification: 规格
        # @type Specification: String
        # @param Manufacturer: 生产企业
        # @type Manufacturer: String
        # @param DrugUsage: 用法用量
        # @type DrugUsage: String
        # @param Indication: 适应症
        # @type Indication: String
        # @param AdverseReaction: 不良反应
        # @type AdverseReaction: String
        # @param DrugRxType: 是否处方药，0:非处方药，1:处方药
        # @type DrugRxType: Integer
        # @param DocUrl: 药品说明书URL
        # @type DocUrl: String

        attr_accessor :DrugId, :DrugName, :TradeName, :Specification, :Manufacturer, :DrugUsage, :Indication, :AdverseReaction, :DrugRxType, :DocUrl

        def initialize(drugid=nil, drugname=nil, tradename=nil, specification=nil, manufacturer=nil, drugusage=nil, indication=nil, adversereaction=nil, drugrxtype=nil, docurl=nil)
          @DrugId = drugid
          @DrugName = drugname
          @TradeName = tradename
          @Specification = specification
          @Manufacturer = manufacturer
          @DrugUsage = drugusage
          @Indication = indication
          @AdverseReaction = adversereaction
          @DrugRxType = drugrxtype
          @DocUrl = docurl
        end

        def deserialize(params)
          @DrugId = params['DrugId']
          @DrugName = params['DrugName']
          @TradeName = params['TradeName']
          @Specification = params['Specification']
          @Manufacturer = params['Manufacturer']
          @DrugUsage = params['DrugUsage']
          @Indication = params['Indication']
          @AdverseReaction = params['AdverseReaction']
          @DrugRxType = params['DrugRxType']
          @DocUrl = params['DocUrl']
        end
      end

      # GetLLMDiagnosisDrugChat请求参数结构体
      class GetLLMDiagnosisDrugChatRequest < TencentCloud::Common::AbstractModel
        # @param PartnerId: <p>合作方ID</p>
        # @type PartnerId: String
        # @param PartnerSecret: <p>合作方密钥</p>
        # @type PartnerSecret: String
        # @param HospitalAppId: <p>医院应用ID</p>
        # @type HospitalAppId: String
        # @param DialogueId: <p>对话ID，由接入方生成，相同对话ID会保持相同的上下文，接入方根据业务场景使用相同或新建对话ID（建议使用UUID值）</p><p>入参限制：长度限制10-50</p>
        # @type DialogueId: String
        # @param Message: <p>本次问答用户输入的问题，（最大长度1000）</p>
        # @type Message: String
        # @param ResultType: <p>返回类型：0:正常返回； 1:流式返回； 默认：0</p>
        # @type ResultType: Integer
        # @param Prompt: <p>提示词</p>
        # @type Prompt: String

        attr_accessor :PartnerId, :PartnerSecret, :HospitalAppId, :DialogueId, :Message, :ResultType, :Prompt

        def initialize(partnerid=nil, partnersecret=nil, hospitalappid=nil, dialogueid=nil, message=nil, resulttype=nil, prompt=nil)
          @PartnerId = partnerid
          @PartnerSecret = partnersecret
          @HospitalAppId = hospitalappid
          @DialogueId = dialogueid
          @Message = message
          @ResultType = resulttype
          @Prompt = prompt
        end

        def deserialize(params)
          @PartnerId = params['PartnerId']
          @PartnerSecret = params['PartnerSecret']
          @HospitalAppId = params['HospitalAppId']
          @DialogueId = params['DialogueId']
          @Message = params['Message']
          @ResultType = params['ResultType']
          @Prompt = params['Prompt']
        end
      end

      # GetLLMDiagnosisDrugChat返回参数结构体
      class GetLLMDiagnosisDrugChatResponse < TencentCloud::Common::AbstractModel
        # @param Code: <p>错误码，0成功，非0失败</p>
        # @type Code: Integer
        # @param Message: <p>错误信息</p>
        # @type Message: String
        # @param Data: <p>返回数据</p>
        # @type Data: :class:`Tencentcloud::Ig.v20210518.models.LLMDiagnosisDrugData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = LLMDiagnosisDrugData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLLMDiagnosisDrug请求参数结构体
      class GetLLMDiagnosisDrugRequest < TencentCloud::Common::AbstractModel
        # @param PartnerId: <p>合作方ID</p>
        # @type PartnerId: String
        # @param PartnerSecret: <p>合作方密钥</p>
        # @type PartnerSecret: String
        # @param HospitalAppId: <p>医院应用ID</p>
        # @type HospitalAppId: String
        # @param DialogueId: <p>对话ID，由接入方生成，相同对话ID会保持相同的上下文，接入方根据业务场景使用相同或新建对话ID（建议使用UUID值）</p><p>入参限制：长度限制10-50</p>
        # @type DialogueId: String
        # @param Message: <p>本次问答用户输入的问题，（最大长度1000，传了图片链接，此参数可为空）</p>
        # @type Message: String
        # @param ImageUrl: <p>药品图片链接</p>
        # @type ImageUrl: String
        # @param ResultType: <p>返回类型：0:正常返回； 1:流式返回； 默认：0</p>
        # @type ResultType: Integer
        # @param Prompt: <p>提示词</p>
        # @type Prompt: String

        attr_accessor :PartnerId, :PartnerSecret, :HospitalAppId, :DialogueId, :Message, :ImageUrl, :ResultType, :Prompt

        def initialize(partnerid=nil, partnersecret=nil, hospitalappid=nil, dialogueid=nil, message=nil, imageurl=nil, resulttype=nil, prompt=nil)
          @PartnerId = partnerid
          @PartnerSecret = partnersecret
          @HospitalAppId = hospitalappid
          @DialogueId = dialogueid
          @Message = message
          @ImageUrl = imageurl
          @ResultType = resulttype
          @Prompt = prompt
        end

        def deserialize(params)
          @PartnerId = params['PartnerId']
          @PartnerSecret = params['PartnerSecret']
          @HospitalAppId = params['HospitalAppId']
          @DialogueId = params['DialogueId']
          @Message = params['Message']
          @ImageUrl = params['ImageUrl']
          @ResultType = params['ResultType']
          @Prompt = params['Prompt']
        end
      end

      # GetLLMDiagnosisDrug返回参数结构体
      class GetLLMDiagnosisDrugResponse < TencentCloud::Common::AbstractModel
        # @param Code: <p>错误码，0成功，非0失败</p>
        # @type Code: Integer
        # @param Message: <p>错误信息</p>
        # @type Message: String
        # @param Data: <p>返回数据</p>
        # @type Data: :class:`Tencentcloud::Ig.v20210518.models.LLMDiagnosisDrugData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = LLMDiagnosisDrugData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLLMDiagnosisHealth请求参数结构体
      class GetLLMDiagnosisHealthRequest < TencentCloud::Common::AbstractModel
        # @param PartnerId: <p>合作方ID</p>
        # @type PartnerId: String
        # @param PartnerSecret: <p>合作方密钥</p>
        # @type PartnerSecret: String
        # @param HospitalAppId: <p>医院应用ID</p>
        # @type HospitalAppId: String
        # @param DialogueId: <p>对话ID，由接入方生成，相同对话ID会保持相同的上下文，接入方根据业务场景使用相同或新建对话ID（建议使用UUID值）</p><p>入参限制：长度限制10-50</p>
        # @type DialogueId: String
        # @param Message: <p>本次问答用户输入的问题，（最大长度1000）</p>
        # @type Message: String
        # @param ResultType: <p>返回类型：0:正常返回； 1:流式返回； 默认：0</p>
        # @type ResultType: Integer
        # @param Sex: <p>性别，0:未知，1:男，2:女</p>
        # @type Sex: Integer
        # @param Age: <p>年龄，0:未知，最大值：120</p>
        # @type Age: Integer
        # @param RoundNumber: <p>追问轮数，-1:不追问；0:使用默认规则； 1-10:按指定轮数追问；（最大值10轮）； 默认：0</p>
        # @type RoundNumber: Integer
        # @param OutputStructured: <p>是否追问结构化结果，0：否，1：是；</p>
        # @type OutputStructured: Integer

        attr_accessor :PartnerId, :PartnerSecret, :HospitalAppId, :DialogueId, :Message, :ResultType, :Sex, :Age, :RoundNumber, :OutputStructured

        def initialize(partnerid=nil, partnersecret=nil, hospitalappid=nil, dialogueid=nil, message=nil, resulttype=nil, sex=nil, age=nil, roundnumber=nil, outputstructured=nil)
          @PartnerId = partnerid
          @PartnerSecret = partnersecret
          @HospitalAppId = hospitalappid
          @DialogueId = dialogueid
          @Message = message
          @ResultType = resulttype
          @Sex = sex
          @Age = age
          @RoundNumber = roundnumber
          @OutputStructured = outputstructured
        end

        def deserialize(params)
          @PartnerId = params['PartnerId']
          @PartnerSecret = params['PartnerSecret']
          @HospitalAppId = params['HospitalAppId']
          @DialogueId = params['DialogueId']
          @Message = params['Message']
          @ResultType = params['ResultType']
          @Sex = params['Sex']
          @Age = params['Age']
          @RoundNumber = params['RoundNumber']
          @OutputStructured = params['OutputStructured']
        end
      end

      # GetLLMDiagnosisHealth返回参数结构体
      class GetLLMDiagnosisHealthResponse < TencentCloud::Common::AbstractModel
        # @param Code: <p>错误码，0成功，非0失败</p>
        # @type Code: Integer
        # @param Message: <p>错误信息</p>
        # @type Message: String
        # @param Data: <p>返回数据</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ig.v20210518.models.LLMDiagnosisHealthData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = LLMDiagnosisHealthData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLLMReportInterpretation请求参数结构体
      class GetLLMReportInterpretationRequest < TencentCloud::Common::AbstractModel
        # @param PartnerId: <p>合作方ID</p>
        # @type PartnerId: String
        # @param PartnerSecret: <p>合作方密钥</p>
        # @type PartnerSecret: String
        # @param HospitalId: <p>接入医院id</p>
        # @type HospitalId: String
        # @param DialogueId: <p>对话ID，由接入方生成，相同对话ID会保持相同的上下文，接入方根据业务场景使用相同或新建对话ID（建议使用UUID值）</p><p>入参限制：长度限制10-50</p>
        # @type DialogueId: String
        # @param Message: <p>本次问答用户输入的问题</p>
        # @type Message: String
        # @param ReportFileInfos: <p>报告文件信息</p>
        # @type ReportFileInfos: Array
        # @param ResultType: <p>返回类型：0:正常返回； 1:流式返回； 默认：0</p>
        # @type ResultType: Integer
        # @param Prompt: <p>报告解读提示词</p>
        # @type Prompt: String
        # @param QaPrompt: <p>无报告问答提示词</p>
        # @type QaPrompt: String

        attr_accessor :PartnerId, :PartnerSecret, :HospitalId, :DialogueId, :Message, :ReportFileInfos, :ResultType, :Prompt, :QaPrompt

        def initialize(partnerid=nil, partnersecret=nil, hospitalid=nil, dialogueid=nil, message=nil, reportfileinfos=nil, resulttype=nil, prompt=nil, qaprompt=nil)
          @PartnerId = partnerid
          @PartnerSecret = partnersecret
          @HospitalId = hospitalid
          @DialogueId = dialogueid
          @Message = message
          @ReportFileInfos = reportfileinfos
          @ResultType = resulttype
          @Prompt = prompt
          @QaPrompt = qaprompt
        end

        def deserialize(params)
          @PartnerId = params['PartnerId']
          @PartnerSecret = params['PartnerSecret']
          @HospitalId = params['HospitalId']
          @DialogueId = params['DialogueId']
          @Message = params['Message']
          unless params['ReportFileInfos'].nil?
            @ReportFileInfos = []
            params['ReportFileInfos'].each do |i|
              reportfileinforeq_tmp = ReportFileInfoReq.new
              reportfileinforeq_tmp.deserialize(i)
              @ReportFileInfos << reportfileinforeq_tmp
            end
          end
          @ResultType = params['ResultType']
          @Prompt = params['Prompt']
          @QaPrompt = params['QaPrompt']
        end
      end

      # GetLLMReportInterpretation返回参数结构体
      class GetLLMReportInterpretationResponse < TencentCloud::Common::AbstractModel
        # @param Code: <p>错误码，0成功，非0失败</p>
        # @type Code: Integer
        # @param Message: <p>错误信息</p>
        # @type Message: String
        # @param Data: <p>返回数据</p>
        # @type Data: :class:`Tencentcloud::Ig.v20210518.models.LLMReportInterpretationData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = LLMReportInterpretationData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 猜你想问信息
      class GuessQuestion < TencentCloud::Common::AbstractModel
        # @param Title: 问题标题
        # @type Title: String

        attr_accessor :Title

        def initialize(title=nil)
          @Title = title
        end

        def deserialize(params)
          @Title = params['Title']
        end
      end

      # 症状自查追问问题
      class HealthFollowUpQuestion < TencentCloud::Common::AbstractModel
        # @param PromptType: <p>追问类型</p>
        # @type PromptType: String
        # @param Choices: <p>追问选项列表</p>
        # @type Choices: Array
        # @param QuestionType: <p>追问题型，单选或多选</p>
        # @type QuestionType: String
        # @param SpecialType: <p>追问特殊类型，如部位题、时间题</p>
        # @type SpecialType: String
        # @param Question: <p>追问问题内容</p>
        # @type Question: String

        attr_accessor :PromptType, :Choices, :QuestionType, :SpecialType, :Question

        def initialize(prompttype=nil, choices=nil, questiontype=nil, specialtype=nil, question=nil)
          @PromptType = prompttype
          @Choices = choices
          @QuestionType = questiontype
          @SpecialType = specialtype
          @Question = question
        end

        def deserialize(params)
          @PromptType = params['PromptType']
          @Choices = params['Choices']
          @QuestionType = params['QuestionType']
          @SpecialType = params['SpecialType']
          @Question = params['Question']
        end
      end

      # 高亮词信息
      class HighlightWordInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Type: 类型 1:疾病，2:检验/检查，3:药品，4:科室，5:自定义配置
        # @type Type: Integer
        # @param JumpType: 跳转类型 h5:h5类型，mini_wx:微信小程序
        # @type JumpType: String
        # @param JumpUrl: 跳转URL
        # @type JumpUrl: String
        # @param JumpAppid: 跳转小程序Appid
        # @type JumpAppid: String
        # @param JumpOriginId: 跳转小程序原始ID
        # @type JumpOriginId: String

        attr_accessor :Name, :Type, :JumpType, :JumpUrl, :JumpAppid, :JumpOriginId

        def initialize(name=nil, type=nil, jumptype=nil, jumpurl=nil, jumpappid=nil, jumporiginid=nil)
          @Name = name
          @Type = type
          @JumpType = jumptype
          @JumpUrl = jumpurl
          @JumpAppid = jumpappid
          @JumpOriginId = jumporiginid
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @JumpType = params['JumpType']
          @JumpUrl = params['JumpUrl']
          @JumpAppid = params['JumpAppid']
          @JumpOriginId = params['JumpOriginId']
        end
      end

      # 大模型问药返回数据
      class LLMDiagnosisDrugData < TencentCloud::Common::AbstractModel
        # @param Content: <p>大模型返回问答内容</p>
        # @type Content: String
        # @param Think: <p>大模型返回思考内容</p>
        # @type Think: String
        # @param Sort: <p>序号，无业务含义，标识流式结果的序号</p>
        # @type Sort: Integer
        # @param IsFinish: <p>流式输出结束标识，false:未结束，true:结束</p>
        # @type IsFinish: Boolean
        # @param IsSensitive: <p>是否命中敏感词，false:否，true:是；</p>
        # @type IsSensitive: Boolean
        # @param ReferResourceItems: <p>引用资料列表，流式输出方式，只在流式输出第一次返回；</p>
        # @type ReferResourceItems: Array
        # @param GuessQuestions: <p>猜你想问列表，流式输出方式，只在流式结束输出结果；</p>
        # @type GuessQuestions: Array
        # @param HighlightWords: <p>高亮词列表，流式输出方式在流式过程中输出结果。</p>
        # @type HighlightWords: Array
        # @param DrugList: <p>药品列表，流式输出方式，只在流式结束输出结果。</p>
        # @type DrugList: Array

        attr_accessor :Content, :Think, :Sort, :IsFinish, :IsSensitive, :ReferResourceItems, :GuessQuestions, :HighlightWords, :DrugList

        def initialize(content=nil, think=nil, sort=nil, isfinish=nil, issensitive=nil, referresourceitems=nil, guessquestions=nil, highlightwords=nil, druglist=nil)
          @Content = content
          @Think = think
          @Sort = sort
          @IsFinish = isfinish
          @IsSensitive = issensitive
          @ReferResourceItems = referresourceitems
          @GuessQuestions = guessquestions
          @HighlightWords = highlightwords
          @DrugList = druglist
        end

        def deserialize(params)
          @Content = params['Content']
          @Think = params['Think']
          @Sort = params['Sort']
          @IsFinish = params['IsFinish']
          @IsSensitive = params['IsSensitive']
          unless params['ReferResourceItems'].nil?
            @ReferResourceItems = []
            params['ReferResourceItems'].each do |i|
              referresourceinfo_tmp = ReferResourceInfo.new
              referresourceinfo_tmp.deserialize(i)
              @ReferResourceItems << referresourceinfo_tmp
            end
          end
          unless params['GuessQuestions'].nil?
            @GuessQuestions = []
            params['GuessQuestions'].each do |i|
              guessquestion_tmp = GuessQuestion.new
              guessquestion_tmp.deserialize(i)
              @GuessQuestions << guessquestion_tmp
            end
          end
          unless params['HighlightWords'].nil?
            @HighlightWords = []
            params['HighlightWords'].each do |i|
              highlightwordinfo_tmp = HighlightWordInfo.new
              highlightwordinfo_tmp.deserialize(i)
              @HighlightWords << highlightwordinfo_tmp
            end
          end
          unless params['DrugList'].nil?
            @DrugList = []
            params['DrugList'].each do |i|
              standarddrugcardinfo_tmp = StandardDrugCardInfo.new
              standarddrugcardinfo_tmp.deserialize(i)
              @DrugList << standarddrugcardinfo_tmp
            end
          end
        end
      end

      # 大模型症状自查返回数据
      class LLMDiagnosisHealthData < TencentCloud::Common::AbstractModel
        # @param Content: <p>大模型返回问答内容</p>
        # @type Content: String
        # @param Think: <p>大模型返回思考内容</p>
        # @type Think: String
        # @param Sort: <p>序号，无业务含义，标识流式结果的序号</p>
        # @type Sort: Integer
        # @param IsFinish: <p>流式输出结束标识，false:未结束，true:结束</p>
        # @type IsFinish: Boolean
        # @param IsSensitive: <p>是否命中敏感词，false:否，true:是；</p>
        # @type IsSensitive: Boolean
        # @param Kind: <p>结果类型，0：正常结果，1：追问问题</p>
        # @type Kind: Integer
        # @param RiskReminder: <p>风险提示</p>
        # @type RiskReminder: String
        # @param ReferResourceItems: <p>引用资料列表，流式输出方式，只在流式输出第一次返回；</p>
        # @type ReferResourceItems: Array
        # @param GuessQuestions: <p>猜你想问列表，流式输出方式，只在流式结束输出结果；</p>
        # @type GuessQuestions: Array
        # @param HighlightWords: <p>高亮词列表，流式输出方式在流式过程中输出结果。</p>
        # @type HighlightWords: Array
        # @param FollowUpQuestions: <p>追问问题列表，流式输出方式，只在流式结束输出结果。只会在kind=1追问类型时有结果。</p>
        # @type FollowUpQuestions: Array
        # @param DrugList: <p>药品列表，流式输出方式，只在流式结束输出结果。</p>
        # @type DrugList: Array

        attr_accessor :Content, :Think, :Sort, :IsFinish, :IsSensitive, :Kind, :RiskReminder, :ReferResourceItems, :GuessQuestions, :HighlightWords, :FollowUpQuestions, :DrugList

        def initialize(content=nil, think=nil, sort=nil, isfinish=nil, issensitive=nil, kind=nil, riskreminder=nil, referresourceitems=nil, guessquestions=nil, highlightwords=nil, followupquestions=nil, druglist=nil)
          @Content = content
          @Think = think
          @Sort = sort
          @IsFinish = isfinish
          @IsSensitive = issensitive
          @Kind = kind
          @RiskReminder = riskreminder
          @ReferResourceItems = referresourceitems
          @GuessQuestions = guessquestions
          @HighlightWords = highlightwords
          @FollowUpQuestions = followupquestions
          @DrugList = druglist
        end

        def deserialize(params)
          @Content = params['Content']
          @Think = params['Think']
          @Sort = params['Sort']
          @IsFinish = params['IsFinish']
          @IsSensitive = params['IsSensitive']
          @Kind = params['Kind']
          @RiskReminder = params['RiskReminder']
          unless params['ReferResourceItems'].nil?
            @ReferResourceItems = []
            params['ReferResourceItems'].each do |i|
              referresourceinfo_tmp = ReferResourceInfo.new
              referresourceinfo_tmp.deserialize(i)
              @ReferResourceItems << referresourceinfo_tmp
            end
          end
          unless params['GuessQuestions'].nil?
            @GuessQuestions = []
            params['GuessQuestions'].each do |i|
              guessquestion_tmp = GuessQuestion.new
              guessquestion_tmp.deserialize(i)
              @GuessQuestions << guessquestion_tmp
            end
          end
          unless params['HighlightWords'].nil?
            @HighlightWords = []
            params['HighlightWords'].each do |i|
              highlightwordinfo_tmp = HighlightWordInfo.new
              highlightwordinfo_tmp.deserialize(i)
              @HighlightWords << highlightwordinfo_tmp
            end
          end
          unless params['FollowUpQuestions'].nil?
            @FollowUpQuestions = []
            params['FollowUpQuestions'].each do |i|
              healthfollowupquestion_tmp = HealthFollowUpQuestion.new
              healthfollowupquestion_tmp.deserialize(i)
              @FollowUpQuestions << healthfollowupquestion_tmp
            end
          end
          unless params['DrugList'].nil?
            @DrugList = []
            params['DrugList'].each do |i|
              standarddrugcardinfo_tmp = StandardDrugCardInfo.new
              standarddrugcardinfo_tmp.deserialize(i)
              @DrugList << standarddrugcardinfo_tmp
            end
          end
        end
      end

      # 大模型症状自查返回数据
      class LLMReportInterpretationData < TencentCloud::Common::AbstractModel
        # @param Content: <p>大模型返回问答内容</p>
        # @type Content: String
        # @param Think: <p>大模型返回思考内容</p>
        # @type Think: String
        # @param Sort: <p>序号，无业务含义，标识流式结果的序号</p>
        # @type Sort: Integer
        # @param IsFinish: <p>流式输出结束标识，false:未结束，true:结束</p>
        # @type IsFinish: Boolean
        # @param IsSensitive: <p>是否命中敏感词，false:否，true:是；</p>
        # @type IsSensitive: Boolean
        # @param IsSupportFile: <p>是否支持报告类型，false:否，true:是； 默认返回true，不支持的报告类型返回false</p>
        # @type IsSupportFile: Boolean
        # @param ReportInfos: <p>返回的报告列表，和传入报告文件顺序一致</p>
        # @type ReportInfos: Array
        # @param ReferResourceItems: <p>引用资料列表，流式输出方式，只在流式输出第一次返回；</p>
        # @type ReferResourceItems: Array
        # @param GuessQuestions: <p>猜你想问列表，流式输出方式，只在流式结束输出结果；</p>
        # @type GuessQuestions: Array
        # @param HighlightWords: <p>高亮词列表，流式输出方式在流式过程中输出结果。</p>
        # @type HighlightWords: Array

        attr_accessor :Content, :Think, :Sort, :IsFinish, :IsSensitive, :IsSupportFile, :ReportInfos, :ReferResourceItems, :GuessQuestions, :HighlightWords

        def initialize(content=nil, think=nil, sort=nil, isfinish=nil, issensitive=nil, issupportfile=nil, reportinfos=nil, referresourceitems=nil, guessquestions=nil, highlightwords=nil)
          @Content = content
          @Think = think
          @Sort = sort
          @IsFinish = isfinish
          @IsSensitive = issensitive
          @IsSupportFile = issupportfile
          @ReportInfos = reportinfos
          @ReferResourceItems = referresourceitems
          @GuessQuestions = guessquestions
          @HighlightWords = highlightwords
        end

        def deserialize(params)
          @Content = params['Content']
          @Think = params['Think']
          @Sort = params['Sort']
          @IsFinish = params['IsFinish']
          @IsSensitive = params['IsSensitive']
          @IsSupportFile = params['IsSupportFile']
          unless params['ReportInfos'].nil?
            @ReportInfos = []
            params['ReportInfos'].each do |i|
              reportfileinforsp_tmp = ReportFileInfoRsp.new
              reportfileinforsp_tmp.deserialize(i)
              @ReportInfos << reportfileinforsp_tmp
            end
          end
          unless params['ReferResourceItems'].nil?
            @ReferResourceItems = []
            params['ReferResourceItems'].each do |i|
              referresourceinfo_tmp = ReferResourceInfo.new
              referresourceinfo_tmp.deserialize(i)
              @ReferResourceItems << referresourceinfo_tmp
            end
          end
          unless params['GuessQuestions'].nil?
            @GuessQuestions = []
            params['GuessQuestions'].each do |i|
              guessquestion_tmp = GuessQuestion.new
              guessquestion_tmp.deserialize(i)
              @GuessQuestions << guessquestion_tmp
            end
          end
          unless params['HighlightWords'].nil?
            @HighlightWords = []
            params['HighlightWords'].each do |i|
              highlightwordinfo_tmp = HighlightWordInfo.new
              highlightwordinfo_tmp.deserialize(i)
              @HighlightWords << highlightwordinfo_tmp
            end
          end
        end
      end

      # QueryDrugInstructions请求参数结构体
      class QueryDrugInstructionsRequest < TencentCloud::Common::AbstractModel
        # @param PartnerId: <p>合作方ID</p>
        # @type PartnerId: String
        # @param PartnerSecret: <p>合作方密钥</p>
        # @type PartnerSecret: String
        # @param HospitalAppId: <p>医院应用ID</p>
        # @type HospitalAppId: String
        # @param Message: <p>本次问答用户输入的问题，（最大长度1000）</p>
        # @type Message: String

        attr_accessor :PartnerId, :PartnerSecret, :HospitalAppId, :Message

        def initialize(partnerid=nil, partnersecret=nil, hospitalappid=nil, message=nil)
          @PartnerId = partnerid
          @PartnerSecret = partnersecret
          @HospitalAppId = hospitalappid
          @Message = message
        end

        def deserialize(params)
          @PartnerId = params['PartnerId']
          @PartnerSecret = params['PartnerSecret']
          @HospitalAppId = params['HospitalAppId']
          @Message = params['Message']
        end
      end

      # QueryDrugInstructions返回参数结构体
      class QueryDrugInstructionsResponse < TencentCloud::Common::AbstractModel
        # @param Code: <p>错误码，0成功，非0失败</p>
        # @type Code: Integer
        # @param Message: <p>错误信息</p>
        # @type Message: String
        # @param Data: <p>返回数据</p>
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Code, :Message, :Data, :RequestId

        def initialize(code=nil, message=nil, data=nil, requestid=nil)
          @Code = code
          @Message = message
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              standarddruginstructioninfo_tmp = StandardDrugInstructionInfo.new
              standarddruginstructioninfo_tmp.deserialize(i)
              @Data << standarddruginstructioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 引用资料信息
      class ReferResourceInfo < TencentCloud::Common::AbstractModel
        # @param Title: 资料标题
        # @type Title: String
        # @param Type: 资料来源类型，1:问答库，2:文档，3:医典百科，4:临床指南，5:药品说明书
        # @type Type: String
        # @param Url: 资料详情链接
        # @type Url: String

        attr_accessor :Title, :Type, :Url

        def initialize(title=nil, type=nil, url=nil)
          @Title = title
          @Type = type
          @Url = url
        end

        def deserialize(params)
          @Title = params['Title']
          @Type = params['Type']
          @Url = params['Url']
        end
      end

      # 报告文件信息参数
      class ReportFileInfoReq < TencentCloud::Common::AbstractModel
        # @param ReportFileUrl: <p>报告文件链接</p>
        # @type ReportFileUrl: String
        # @param ReportFileType: <p>报告文件类型，1:pdf，2:图片</p>
        # @type ReportFileType: Integer
        # @param ReportId: <p>报告id</p>
        # @type ReportId: String

        attr_accessor :ReportFileUrl, :ReportFileType, :ReportId

        def initialize(reportfileurl=nil, reportfiletype=nil, reportid=nil)
          @ReportFileUrl = reportfileurl
          @ReportFileType = reportfiletype
          @ReportId = reportid
        end

        def deserialize(params)
          @ReportFileUrl = params['ReportFileUrl']
          @ReportFileType = params['ReportFileType']
          @ReportId = params['ReportId']
        end
      end

      # 报告文件信息返回
      class ReportFileInfoRsp < TencentCloud::Common::AbstractModel
        # @param ReportId: <p>报告id</p>
        # @type ReportId: String
        # @param IsAnalysis: <p>是否解析成功</p>
        # @type IsAnalysis: Boolean
        # @param ErrInfo: <p>解析错误信息</p>
        # @type ErrInfo: String

        attr_accessor :ReportId, :IsAnalysis, :ErrInfo

        def initialize(reportid=nil, isanalysis=nil, errinfo=nil)
          @ReportId = reportid
          @IsAnalysis = isanalysis
          @ErrInfo = errinfo
        end

        def deserialize(params)
          @ReportId = params['ReportId']
          @IsAnalysis = params['IsAnalysis']
          @ErrInfo = params['ErrInfo']
        end
      end

      # 标准药品卡片信息
      class StandardDrugCardInfo < TencentCloud::Common::AbstractModel
        # @param StandardDrugName: 标准药品名
        # @type StandardDrugName: String
        # @param DrugInfos: 药品列表
        # @type DrugInfos: Array

        attr_accessor :StandardDrugName, :DrugInfos

        def initialize(standarddrugname=nil, druginfos=nil)
          @StandardDrugName = standarddrugname
          @DrugInfos = druginfos
        end

        def deserialize(params)
          @StandardDrugName = params['StandardDrugName']
          unless params['DrugInfos'].nil?
            @DrugInfos = []
            params['DrugInfos'].each do |i|
              drugcardinfo_tmp = DrugCardInfo.new
              drugcardinfo_tmp.deserialize(i)
              @DrugInfos << drugcardinfo_tmp
            end
          end
        end
      end

      # 药品说明书标准药品结果
      class StandardDrugInstructionInfo < TencentCloud::Common::AbstractModel
        # @param StandardDrugName: 标准药品名
        # @type StandardDrugName: String
        # @param DrugInfos: 药品列表
        # @type DrugInfos: Array

        attr_accessor :StandardDrugName, :DrugInfos

        def initialize(standarddrugname=nil, druginfos=nil)
          @StandardDrugName = standarddrugname
          @DrugInfos = druginfos
        end

        def deserialize(params)
          @StandardDrugName = params['StandardDrugName']
          unless params['DrugInfos'].nil?
            @DrugInfos = []
            params['DrugInfos'].each do |i|
              druginstructioninfo_tmp = DrugInstructionInfo.new
              druginstructioninfo_tmp.deserialize(i)
              @DrugInfos << druginstructioninfo_tmp
            end
          end
        end
      end

    end
  end
end

