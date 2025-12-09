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
  module Tms
    module V20201229
      # CreateFinancialLLMTask请求参数结构体
      class CreateFinancialLLMTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 接口使用的识别策略 ID，请参考 [快速指引](https://cloud.tencent.com/document/product/1124/124604) 获取该值。
        # 示例值：TencentCloudFinancialLLMDefault
        # @type BizType: String
        # @param ContentType: 送审内容的格式，有两个可选值：
        # - 1：代表送审内容为**文档**，如DOC文档
        # - 2：代表送审内容为**纯文本**

        # 示例值：1
        # @type ContentType: Integer
        # @param FileType: 若送审内容为文档（ContentType=1），需要传入具体格式，当前支持：DOC、DOCX、PDF。
        # 说明：若送审内容为纯文本（ContentType=2），则本字段传空（FileType=""）。
        # @type FileType: String
        # @param Content: 送审内容的传入方式如下：
        # - 若为文档类，需传入文档的URL（原文档文字数不超过10,000字），例如：http://xxxxxxxxxxxx/financial_test.doc
        # - 若为纯文本类，请以UTF-8格式进行Base64编码后传入（编码后字符数不超过10,000字），例如：5piO5aSpNjAz5LiA5a6a5rao

        # 示例值：5piO5aSpNjAz5LiA5a6a5rao
        # @type Content: String

        attr_accessor :BizType, :ContentType, :FileType, :Content

        def initialize(biztype=nil, contenttype=nil, filetype=nil, content=nil)
          @BizType = biztype
          @ContentType = contenttype
          @FileType = filetype
          @Content = content
        end

        def deserialize(params)
          @BizType = params['BizType']
          @ContentType = params['ContentType']
          @FileType = params['FileType']
          @Content = params['Content']
        end
      end

      # CreateFinancialLLMTask返回参数结构体
      class CreateFinancialLLMTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次请求返回的任务ID将用于后续查询接口，以获取对应的审校结果。
        # 示例值：3570106e-b156-45d9-8af5-99b46f7eb2f9。
        # @type TaskId: String
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

      # 文本审核返回的详细结果
      class DetailResults < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回检测结果所对应的全部恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Suggestion: 该字段用于返回对应当前标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Keywords: 该字段用于返回检测文本命中的关键词信息，用于标注文本违规的具体原因（如：*加我微信*）。该参数可能会有多个返回值，代表命中的多个关键词；如返回值为空且Score不为空，则代表识别结果所对应的恶意标签（Label）是来自于语义模型判断的返回值。
        # @type Keywords: Array
        # @param Score: 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容。
        # @type Score: Integer
        # @param LibType: 该字段用于返回自定义关键词对应的词库类型，取值为**1**（黑白库）和**2**（自定义关键词库），若未配置自定义关键词库,则默认值为1（黑白库匹配）。
        # @type LibType: Integer
        # @param LibId: 该字段用于返回自定义库的ID，以方便自定义库管理和配置。
        # @type LibId: String
        # @param LibName: 该字段用于返回自定义库的名称,以方便自定义库管理和配置。
        # @type LibName: String
        # @param SubLabel: 该字段用于返回当前标签（Label）下的二级标签。
        # @type SubLabel: String
        # @param Tags: 该字段用于返回当前一级标签（Label）下的关键词、子标签及分数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param HitInfos: 该字段用于返回违规文本命中信息
        # @type HitInfos: Array

        attr_accessor :Label, :Suggestion, :Keywords, :Score, :LibType, :LibId, :LibName, :SubLabel, :Tags, :HitInfos

        def initialize(label=nil, suggestion=nil, keywords=nil, score=nil, libtype=nil, libid=nil, libname=nil, sublabel=nil, tags=nil, hitinfos=nil)
          @Label = label
          @Suggestion = suggestion
          @Keywords = keywords
          @Score = score
          @LibType = libtype
          @LibId = libid
          @LibName = libname
          @SubLabel = sublabel
          @Tags = tags
          @HitInfos = hitinfos
        end

        def deserialize(params)
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Keywords = params['Keywords']
          @Score = params['Score']
          @LibType = params['LibType']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @SubLabel = params['SubLabel']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['HitInfos'].nil?
            @HitInfos = []
            params['HitInfos'].each do |i|
              hitinfo_tmp = HitInfo.new
              hitinfo_tmp.deserialize(i)
              @HitInfos << hitinfo_tmp
            end
          end
        end
      end

      # 用于表示业务用户对应的设备信息
      class Device < TencentCloud::Common::AbstractModel
        # @param IP: 该字段表示业务用户对应设备的IP地址。<br>
        # 备注:目前仅支持IPv4地址记录，不支持IPv6地址记录。
        # @type IP: String
        # @param Mac: 该字段表示业务用户对应的MAC地址，以方便设备识别与管理；其格式与取值与标准MAC地址一致。
        # @type Mac: String
        # @param TokenId: *内测中，敬请期待。*
        # @type TokenId: String
        # @param DeviceId: *内测中，敬请期待。*
        # @type DeviceId: String
        # @param IMEI: 该字段表示业务用户对应设备的**IMEI码**（国际移动设备识别码），该识别码可用于识别每一部独立的手机等移动通信设备，方便设备识别与管理。<br>备注：格式为**15-17位纯数字**。
        # @type IMEI: String
        # @param IDFA: **iOS设备专用**，该字段表示业务用户对应的**IDFA**(广告标识符),这是由苹果公司提供的用于标识用户的广告标识符，由一串16进制的32位数字和字母组成。<br>
        # 备注：苹果公司自2021年iOS14更新后允许用户手动关闭或者开启IDFA，故此字符串标记有效性可能有所降低。
        # @type IDFA: String
        # @param IDFV: **iOS设备专用**，该字段表示业务用户对应的**IDFV**(应用开发商标识符),这是由苹果公司提供的用于标注应用开发商的标识符，由一串16进制的32位数字和字母组成，可被用于唯一标识设备。
        # @type IDFV: String

        attr_accessor :IP, :Mac, :TokenId, :DeviceId, :IMEI, :IDFA, :IDFV

        def initialize(ip=nil, mac=nil, tokenid=nil, deviceid=nil, imei=nil, idfa=nil, idfv=nil)
          @IP = ip
          @Mac = mac
          @TokenId = tokenid
          @DeviceId = deviceid
          @IMEI = imei
          @IDFA = idfa
          @IDFV = idfv
        end

        def deserialize(params)
          @IP = params['IP']
          @Mac = params['Mac']
          @TokenId = params['TokenId']
          @DeviceId = params['DeviceId']
          @IMEI = params['IMEI']
          @IDFA = params['IDFA']
          @IDFV = params['IDFV']
        end
      end

      # 金融大模型审校 违规明细
      class FinancialLLMViolationDetail < TencentCloud::Common::AbstractModel
        # @param Label: 违规点
        # @type Label: String
        # @param Suggestion: 处置建议
        # @type Suggestion: String
        # @param Reasons: 违规原因列表
        # @type Reasons: Array

        attr_accessor :Label, :Suggestion, :Reasons

        def initialize(label=nil, suggestion=nil, reasons=nil)
          @Label = label
          @Suggestion = suggestion
          @Reasons = reasons
        end

        def deserialize(params)
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          unless params['Reasons'].nil?
            @Reasons = []
            params['Reasons'].each do |i|
              financialllmviolationreason_tmp = FinancialLLMViolationReason.new
              financialllmviolationreason_tmp.deserialize(i)
              @Reasons << financialllmviolationreason_tmp
            end
          end
        end
      end

      # 金融大模型审校-违规原因
      class FinancialLLMViolationReason < TencentCloud::Common::AbstractModel
        # @param TargetText: 违规原文片段
        # @type TargetText: String
        # @param Reason: 违规原因
        # @type Reason: String

        attr_accessor :TargetText, :Reason

        def initialize(targettext=nil, reason=nil)
          @TargetText = targettext
          @Reason = reason
        end

        def deserialize(params)
          @TargetText = params['TargetText']
          @Reason = params['Reason']
        end
      end

      # GetFinancialLLMTaskResult请求参数结构体
      class GetFinancialLLMTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 该值对应创建任务接口里返回的TaskId字段值，创建任务接口见[创建金融大模型审校任务](https://cloud.tencent.com/document/product/1124/124463)。
        # 示例值：3570106e-b156-45d9-8af5-99b46f7eb2f9
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # GetFinancialLLMTaskResult返回参数结构体
      class GetFinancialLLMTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: TaskId对应的任务的状态：
        # - Success: 任务已完成
        # - Processing: 任务进行中，建议10秒后再查询
        # - Failed: 任务失败
        # @type Status: String
        # @param Details: 该字段标识服务检测到的违规点，具体内容参阅数据结构[FinancialLLMViolationDetail](https://cloud.tencent.com/document/api/1124/51861#FinancialLLMViolationDetail)
        # @type Details: Array
        # @param ReviewedLabels: 本次检测的违规点列表
        # @type ReviewedLabels: Array
        # @param StartTime: 审校任务的开始时间
        # 示例值：2025-09-25 19:42:35
        # @type StartTime: String
        # @param FailureReason: 若审校任务失败（Status="Failed"），该字段返回失败的具体原因。
        # 示例值：文档解析失败
        # @type FailureReason: String
        # @param ModerationResult: 该字段为历史结构字段，不再推荐使用。
        # @type ModerationResult: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Details, :ReviewedLabels, :StartTime, :FailureReason, :ModerationResult, :RequestId

        def initialize(status=nil, details=nil, reviewedlabels=nil, starttime=nil, failurereason=nil, moderationresult=nil, requestid=nil)
          @Status = status
          @Details = details
          @ReviewedLabels = reviewedlabels
          @StartTime = starttime
          @FailureReason = failurereason
          @ModerationResult = moderationresult
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              financialllmviolationdetail_tmp = FinancialLLMViolationDetail.new
              financialllmviolationdetail_tmp.deserialize(i)
              @Details << financialllmviolationdetail_tmp
            end
          end
          @ReviewedLabels = params['ReviewedLabels']
          @StartTime = params['StartTime']
          @FailureReason = params['FailureReason']
          @ModerationResult = params['ModerationResult']
          @RequestId = params['RequestId']
        end
      end

      # 关键词命中位置信息
      class HitInfo < TencentCloud::Common::AbstractModel
        # @param Type: 标识模型命中还是关键词命中
        # @type Type: String
        # @param Keyword: 命中关键词
        # @type Keyword: String
        # @param LibName: 自定义词库名称
        # @type LibName: String
        # @param Positions: 位置信息
        # @type Positions: Array

        attr_accessor :Type, :Keyword, :LibName, :Positions

        def initialize(type=nil, keyword=nil, libname=nil, positions=nil)
          @Type = type
          @Keyword = keyword
          @LibName = libname
          @Positions = positions
        end

        def deserialize(params)
          @Type = params['Type']
          @Keyword = params['Keyword']
          @LibName = params['LibName']
          unless params['Positions'].nil?
            @Positions = []
            params['Positions'].each do |i|
              positions_tmp = Positions.new
              positions_tmp.deserialize(i)
              @Positions << positions_tmp
            end
          end
        end
      end

      # 标识命中的违规关键词位置信息
      class Positions < TencentCloud::Common::AbstractModel
        # @param Start: 关键词起始位置
        # @type Start: Integer
        # @param End: 关键词结束位置
        # @type End: Integer

        attr_accessor :Start, :End

        def initialize(start=nil, _end=nil)
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @Start = params['Start']
          @End = params['End']
        end
      end

      # 账号风险检测结果
      class RiskDetails < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回账号信息检测对应的风险类别，取值为：**RiskAccount**（账号存在风险）、**RiskIP**（IP地址存在风险）、**RiskIMEI**（移动设备识别码存在风险）。
        # @type Label: String
        # @param Level: 该字段用于返回账号信息检测对应的风险等级，取值为：**1**（疑似存在风险）和**2**（存在恶意风险）。
        # @type Level: Integer

        attr_accessor :Label, :Level

        def initialize(label=nil, level=nil)
          @Label = label
          @Level = level
        end

        def deserialize(params)
          @Label = params['Label']
          @Level = params['Level']
        end
      end

      # 情感分析结果
      class SentimentAnalysis < TencentCloud::Common::AbstractModel
        # @param Label: 情感标签
        # @type Label: String
        # @param Score: 标签分数，取值范围0到100
        # @type Score: Integer
        # @param Detail: 情感分析明细
        # @type Detail: :class:`Tencentcloud::Tms.v20201229.models.SentimentDetail`
        # @param Code: 响应码，成功为"OK"，失败为"InternalError"
        # @type Code: String
        # @param Message: 异常信息
        # @type Message: String

        attr_accessor :Label, :Score, :Detail, :Code, :Message

        def initialize(label=nil, score=nil, detail=nil, code=nil, message=nil)
          @Label = label
          @Score = score
          @Detail = detail
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          unless params['Detail'].nil?
            @Detail = SentimentDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 情感分析明细
      class SentimentDetail < TencentCloud::Common::AbstractModel
        # @param Positive: 正向分数，取值范围0到100
        # @type Positive: Integer
        # @param Negative: 负向分数，取值范围0到100
        # @type Negative: Integer

        attr_accessor :Positive, :Negative

        def initialize(positive=nil, negative=nil)
          @Positive = positive
          @Negative = negative
        end

        def deserialize(params)
          @Positive = params['Positive']
          @Negative = params['Negative']
        end
      end

      # 该字段用于返回审核结果明细字段的标签及分数
      class Tag < TencentCloud::Common::AbstractModel
        # @param Keyword: 该字段用于返回命中的关键词
        # @type Keyword: String
        # @param SubLabel: 该字段用于返回子标签
        # @type SubLabel: String
        # @param Score: 该字段用于返回子标签对应的分数
        # @type Score: Integer

        attr_accessor :Keyword, :SubLabel, :Score

        def initialize(keyword=nil, sublabel=nil, score=nil)
          @Keyword = keyword
          @SubLabel = sublabel
          @Score = score
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
        end
      end

      # TextModeration请求参数结构体
      class TextModerationRequest < TencentCloud::Common::AbstractModel
        # @param Content: 待检测的文本内容，需为UTF-8编码并以Base64格式传入。
        # 示例值：5L2g55qE5Lil6LCo6K6p5L2g5Y+R546w77yM5Lqn5ZOB57uP55CG5Y+r5YmR6Z2S
        # @type Content: String
        # @param BizType: 接口使用的识别策略编号，需在[控制台](https://console.cloud.tencent.com/cms/clouds/manage)获取。详细获取方式请参考以下链接：
        # - **内容安全**（详见步骤四：策略配置）：[点击这里](https://cloud.tencent.com/document/product/1124/37119)
        # - **AI生成识别**（详见服务对接->方式二）：[点击这里](https://cloud.tencent.com/document/product/1124/118694)

        # 示例值：TencentCloudDefault
        # @type BizType: String
        # @param DataId: 该字段表示您为待检测文本分配的数据ID，作用是方便您对数据进行标识和管理。
        # 取值：可由英文字母、数字、四种特殊符号（_，-，@，#）组成，**长度不超过64个字符**。
        # 示例值：a6127dd-c2a0-43e7-a3da-d27022d39ba7
        # @type DataId: String
        # @param User: 该字段标识用户信息，传入后可增强甄别有违规风险的发布者账号。
        # @type User: :class:`Tencentcloud::Tms.v20201229.models.User`
        # @param Device: 该字段标识设备信息，传入后可增强甄别有违规风险的发布者设备。
        # @type Device: :class:`Tencentcloud::Tms.v20201229.models.Device`
        # @param SourceLanguage: Content字段的原始语种，枚举值包括 zh 和 en：
        # - 推荐使用 zh
        # - en 适用于纯英文内容，耗时较高。若需使用 en，请先通过[反馈工单](https://console.cloud.tencent.com/workorder/category?level1_id=141&level2_id=1287&source=14&data_title=%E6%96%87%E6%9C%AC%E5%86%85%E5%AE%B9%E5%AE%89%E5%85%A8&step=1)确认

        # 示例值：zh
        # @type SourceLanguage: String
        # @param Type: 服务类型，枚举值包括 TEXT 和 TEXT_AIGC：
        # TEXT：内容安全
        # TEXT_AIGC：AI生成识别
        # @type Type: String
        # @param SessionId: 适用于上下文关联审核场景，若多条文本内容需要联合审核，通过该字段关联会话。
        # 示例值：7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b
        # @type SessionId: String

        attr_accessor :Content, :BizType, :DataId, :User, :Device, :SourceLanguage, :Type, :SessionId

        def initialize(content=nil, biztype=nil, dataid=nil, user=nil, device=nil, sourcelanguage=nil, type=nil, sessionid=nil)
          @Content = content
          @BizType = biztype
          @DataId = dataid
          @User = user
          @Device = device
          @SourceLanguage = sourcelanguage
          @Type = type
          @SessionId = sessionid
        end

        def deserialize(params)
          @Content = params['Content']
          @BizType = params['BizType']
          @DataId = params['DataId']
          unless params['User'].nil?
            @User = User.new
            @User.deserialize(params['User'])
          end
          unless params['Device'].nil?
            @Device = Device.new
            @Device.deserialize(params['Device'])
          end
          @SourceLanguage = params['SourceLanguage']
          @Type = params['Type']
          @SessionId = params['SessionId']
        end
      end

      # TextModeration返回参数结构体
      class TextModerationResponse < TencentCloud::Common::AbstractModel
        # @param BizType: 该字段用于回显检测对象请求参数中的 BizType，与输入的 BizType 值对应。
        # 示例值：TencentCloudDefault
        # @type BizType: String
        # @param Suggestion: 用于标识对本次请求的处置建议，共三种返回值。
        # 返回值：**Block**: 建议直接做违规处置，**Review**: 建议人工二次确认，**Pass**: 未识别到风险。
        # @type Suggestion: String
        # @param Label: 该字段用于返回检测结果（DetailResults）中所对应的**优先级最高的恶意标签**，表示模型推荐的审核结果，建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告；以及其他令人反感、不安全或不适宜的内容类型
        # @type Label: String
        # @param SubLabel: 对应 Label 字段下的二级子标签，表示该 Label 下更细分的违规点。
        # 示例值：SexualBehavior（该值为 Porn 下的一个二级标签）
        # @type SubLabel: String
        # @param Score: 该字段标识 SubLabel 的置信度，取值范围为 0 - 100，值越高代表置信度越高。
        # 示例值：85
        # @type Score: Integer
        # @param Keywords: 该字段标识被检测文本所命中的关键词，可能返回0个或多个关键词。
        # 示例值：["优惠券", "线下兑换"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param DetailResults: 该字段返回的检测的详细信息，返回值信息可参阅对应数据结构 DetailResults 的详细描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailResults: Array
        # @param RiskDetails: 该字段标识入参 User 的检测结果，具体内容参阅数据结构 RiskDetails。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskDetails: Array
        # @param Extra: 该字段用于返回根据您的需求配置的附加信息（Extra），如未配置则默认返回值为空。
        # 备注：不同客户或Biztype下返回信息不同，如需配置该字段请提交工单咨询或联系售后专员处理。
        # @type Extra: String
        # @param DataId: 该字段用于回显检测对象请求参数中的 DataId，与输入的 DataId 值对应。
        # 示例值：a6127dd-c2a0-43e7-a3da-d27022d39ba7
        # @type DataId: String
        # @param ContextText: 历史上下文关联的字段，不再推荐使用。上下文关联审核可通过入参的 SessionId 来实现。
        # @type ContextText: String
        # @param SentimentAnalysis: 该字段为历史结构字段，不再推荐使用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SentimentAnalysis: :class:`Tencentcloud::Tms.v20201229.models.SentimentAnalysis`
        # @param HitType: 该字段为历史结构字段，不再推荐使用。
        # @type HitType: String
        # @param SessionId: 该字段用于回显检测对象请求参数中的 SessionId，与输入的 SessionId 值对应。
        # 示例值：7e8f9a0b1c2d3e4f5a6b7c8d9e0f1a2b
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BizType, :Suggestion, :Label, :SubLabel, :Score, :Keywords, :DetailResults, :RiskDetails, :Extra, :DataId, :ContextText, :SentimentAnalysis, :HitType, :SessionId, :RequestId

        def initialize(biztype=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, keywords=nil, detailresults=nil, riskdetails=nil, extra=nil, dataid=nil, contexttext=nil, sentimentanalysis=nil, hittype=nil, sessionid=nil, requestid=nil)
          @BizType = biztype
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Keywords = keywords
          @DetailResults = detailresults
          @RiskDetails = riskdetails
          @Extra = extra
          @DataId = dataid
          @ContextText = contexttext
          @SentimentAnalysis = sentimentanalysis
          @HitType = hittype
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @BizType = params['BizType']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Keywords = params['Keywords']
          unless params['DetailResults'].nil?
            @DetailResults = []
            params['DetailResults'].each do |i|
              detailresults_tmp = DetailResults.new
              detailresults_tmp.deserialize(i)
              @DetailResults << detailresults_tmp
            end
          end
          unless params['RiskDetails'].nil?
            @RiskDetails = []
            params['RiskDetails'].each do |i|
              riskdetails_tmp = RiskDetails.new
              riskdetails_tmp.deserialize(i)
              @RiskDetails << riskdetails_tmp
            end
          end
          @Extra = params['Extra']
          @DataId = params['DataId']
          @ContextText = params['ContextText']
          unless params['SentimentAnalysis'].nil?
            @SentimentAnalysis = SentimentAnalysis.new
            @SentimentAnalysis.deserialize(params['SentimentAnalysis'])
          end
          @HitType = params['HitType']
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # 用于表示业务用户的账号相关信息
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 该字段表示业务用户ID,填写后，系统可根据账号过往违规历史优化审核结果判定，有利于存在可疑违规风险时的辅助判断。<br>
        # 备注：该字段可传入微信openid、QQopenid、字符串等账号信息，与账号类别参数（AccountType）配合使用可确定唯一账号。
        # @type UserId: String
        # @param Nickname: 该字段表示业务用户对应的账号昵称信息。
        # @type Nickname: String
        # @param AccountType: 该字段表示业务用户ID对应的账号类型，取值：**1**-微信uin，**2**-QQ号，**3**-微信群uin，**4**-qq群号，**5**-微信openid，**6**-QQopenid，**7**-其它string。<br>
        # 该字段与账号ID参数（UserId）配合使用可确定唯一账号。
        # @type AccountType: Integer
        # @param Gender: 该字段表示业务用户对应账号的性别信息。<br>
        # 取值：**0**（默认值，代表性别未知）、**1**（男性）、**2**（女性）。
        # @type Gender: Integer
        # @param Age: 该字段表示业务用户对应账号的年龄信息。<br>
        # 取值：**0**（默认值，代表年龄未知）-（**自定义年龄上限**）之间的整数。
        # @type Age: Integer
        # @param Level: 该字段表示业务用户对应账号的等级信息。<br>
        # 取值：**0**（默认值，代表等级未知）、**1**（等级较低）、**2**（等级中等）、**3**（等级较高），目前**暂不支持自定义等级**。
        # @type Level: Integer
        # @param Phone: 该字段表示业务用户对应账号的手机号信息，支持全球各地区手机号的记录。<br>
        # 备注：请保持手机号格式的统一，如区号格式（086/+86）等。
        # @type Phone: String
        # @param HeadUrl: 该字段表示业务用户头像图片的访问链接(URL)，支持PNG、JPG、JPEG、BMP、GIF、WEBP格式。
        # 备注：头像图片大小不超过5MB，建议分辨率不低于256x256；图片下载时间限制为3秒，超过则会返回下载超时。
        # @type HeadUrl: String
        # @param Desc: 该字段表示业务用户的简介信息，支持汉字、英文及特殊符号，长度不超过5000个汉字字符。
        # @type Desc: String
        # @param RoomId: 该字段表示业务群聊场景时的房间ID。
        # @type RoomId: String
        # @param ReceiverId: 该字段表示消息接受者ID
        # @type ReceiverId: String
        # @param SendTime: 消息生成时间，精确到毫秒
        # @type SendTime: Integer

        attr_accessor :UserId, :Nickname, :AccountType, :Gender, :Age, :Level, :Phone, :HeadUrl, :Desc, :RoomId, :ReceiverId, :SendTime

        def initialize(userid=nil, nickname=nil, accounttype=nil, gender=nil, age=nil, level=nil, phone=nil, headurl=nil, desc=nil, roomid=nil, receiverid=nil, sendtime=nil)
          @UserId = userid
          @Nickname = nickname
          @AccountType = accounttype
          @Gender = gender
          @Age = age
          @Level = level
          @Phone = phone
          @HeadUrl = headurl
          @Desc = desc
          @RoomId = roomid
          @ReceiverId = receiverid
          @SendTime = sendtime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Nickname = params['Nickname']
          @AccountType = params['AccountType']
          @Gender = params['Gender']
          @Age = params['Age']
          @Level = params['Level']
          @Phone = params['Phone']
          @HeadUrl = params['HeadUrl']
          @Desc = params['Desc']
          @RoomId = params['RoomId']
          @ReceiverId = params['ReceiverId']
          @SendTime = params['SendTime']
        end
      end

    end
  end
end

