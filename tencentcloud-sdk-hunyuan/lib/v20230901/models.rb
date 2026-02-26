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
  module Hunyuan
    module V20230901
      # ActivateService请求参数结构体
      class ActivateServiceRequest < TencentCloud::Common::AbstractModel
        # @param PayMode: 开通之后，是否关闭后付费；默认为0，不关闭；1为关闭
        # @type PayMode: Integer

        attr_accessor :PayMode

        def initialize(paymode=nil)
          @PayMode = paymode
        end

        def deserialize(params)
          @PayMode = params['PayMode']
        end
      end

      # ActivateService返回参数结构体
      class ActivateServiceResponse < TencentCloud::Common::AbstractModel
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

      # 用户位置信息
      class Approximate < TencentCloud::Common::AbstractModel
        # @param Country: 表示 ISO 国家代码
        # @type Country: String
        # @param City: 表示城市名称
        # @type City: String
        # @param Region: 表示区域名称
        # @type Region: String
        # @param Timezone: 表示IANA时区
        # @type Timezone: String
        # @param Address: 表示详细地址
        # @type Address: String

        attr_accessor :Country, :City, :Region, :Timezone, :Address

        def initialize(country=nil, city=nil, region=nil, timezone=nil, address=nil)
          @Country = country
          @City = city
          @Region = region
          @Timezone = timezone
          @Address = address
        end

        def deserialize(params)
          @Country = params['Country']
          @City = params['City']
          @Region = params['Region']
          @Timezone = params['Timezone']
          @Address = params['Address']
        end
      end

      # 人物描述
      class Character < TencentCloud::Common::AbstractModel
        # @param Name: 人物名称
        # @type Name: String
        # @param SystemPrompt: 人物对应SystemPrompt
        # @type SystemPrompt: String

        attr_accessor :Name, :SystemPrompt

        def initialize(name=nil, systemprompt=nil)
          @Name = name
          @SystemPrompt = systemprompt
        end

        def deserialize(params)
          @Name = params['Name']
          @SystemPrompt = params['SystemPrompt']
        end
      end

      # ChatCompletions请求参数结构体
      class ChatCompletionsRequest < TencentCloud::Common::AbstractModel
        # @param Model: 模型名称，可选值参考 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中混元生文模型列表。
        # 示例值：hunyuan-turbos-latest
        # 各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。注意：不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1. 长度最多为 40，按对话时间从旧到新在数组中排列。
        # 2. Message.Role 可选值：system、user、assistant、 tool（functioncall场景）。
        # 其中，system 角色可选，如存在则必须位于列表的最开始。user（tool） 和 assistant 需交替出现（一问一答），以 user 提问开始，user（tool）提问结束，其中tool可以连续出现多次，且 Content 不能为空。Role 的顺序示例：[system（可选） user assistant user（tool tool ...） assistant user（tool tool ...） ...]。
        # 3. Messages 中 Content 总长度不能超过模型输入长度上限（可参考 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 文档），超过则会截断最前面的内容，只保留尾部内容。
        # @type Messages: Array
        # @param Stream: 流式调用开关。
        # 说明：
        # 1. 未传值时默认为非流式调用（false）。
        # 2. 流式调用时以 SSE 协议增量返回结果（返回值取 Choices[n].Delta 中的值，需要拼接增量数据才能获得完整结果）。
        # 3. 非流式调用时：
        # 调用方式与普通 HTTP 请求无异。
        # 接口响应耗时较长，**如需更低时延建议设置为 true**。
        # 只返回一次最终结果（返回值取 Choices[n].Message 中的值）。

        # 注意：
        # 通过 SDK 调用时，流式和非流式调用需用**不同的方式**获取返回值，具体参考 SDK 中的注释或示例（在各语言 SDK 代码仓库的 examples/hunyuan/v20230901/ 目录中）。
        # @type Stream: Boolean
        # @param StreamModeration: 流式输出审核开关。
        # 说明：
        # 1. 当使用流式输出（Stream 字段值为 true）时，该字段生效。
        # 2. 输出审核有流式和同步两种模式，**流式模式首包响应更快**。未传值时默认为流式模式（true）。
        # 3. 如果值为 true，将对输出内容进行分段审核，审核通过的内容流式输出返回。如果出现审核不过，响应中的 FinishReason 值为 sensitive。
        # 4. 如果值为 false，则不使用流式输出审核，需要审核完所有输出内容后再返回结果。

        # 注意：
        # 当选择流式输出审核时，可能会出现部分内容已输出，但中间某一段响应中的 FinishReason 值为 sensitive，此时说明安全审核未通过。如果业务场景有实时文字上屏的需求，需要自行撤回已上屏的内容，并建议自定义替换为一条提示语，如 “这个问题我不方便回答，不如我们换个话题试试”，以保障终端体验。
        # @type StreamModeration: Boolean
        # @param TopP: 说明：
        # 1. 影响输出文本的多样性。模型已有默认参数，不传值时使用各模型推荐值，不推荐用户修改。
        # 2. 取值区间为 [0.0, 1.0]。取值越大，生成文本的多样性越强。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1. 影响模型输出多样性，模型已有默认参数，不传值时使用各模型推荐值，不推荐用户修改。
        # 2. 取值区间为 [0.0, 2.0]。较高的数值会使输出更加多样化和不可预测，而较低的数值会使其更加集中和确定。
        # @type Temperature: Float
        # @param EnableEnhancement: 功能增强（如搜索）开关。
        # 说明：
        # 1. hunyuan-lite 无功能增强（如搜索）能力，该参数对 hunyuan-lite 版本不生效。
        # 2. 未传值时默认关闭开关。
        # 3. 关闭时将直接由主模型生成回复内容，可以降低响应时延（对于流式输出时的首字时延尤为明显）。但在少数场景里，回复效果可能会下降。
        # 4. 安全审核能力不属于功能增强范围，不受此字段影响。
        # 5. 2025-04-20 00:00:00起，由默认开启状态转为默认关闭状态。
        # @type EnableEnhancement: Boolean
        # @param Tools: 可调用的工具列表，仅对 hunyuan-turbos、hunyuan-t1、hunyuan-functioncall 模型生效。
        # @type Tools: Array
        # @param ToolChoice: 工具使用选项，可选值包括 none、auto、custom。说明：1. 仅对 hunyuan-turbo、hunyuan-functioncall 模型生效。2. none：不调用工具；auto：模型自行选择生成回复或调用工具；custom：强制模型调用指定的工具。3. 未设置时，默认值为auto
        # @type ToolChoice: String
        # @param CustomTool: 强制模型调用指定的工具，当参数ToolChoice为custom时，此参数为必填
        # @type CustomTool: :class:`Tencentcloud::Hunyuan.v20230901.models.Tool`
        # @param SearchInfo: 默认是false，在值为true且命中搜索时，接口会返回SearchInfo
        # @type SearchInfo: Boolean
        # @param Citation: 搜索引文角标开关。
        # 说明：
        # 1. 配合EnableEnhancement和SearchInfo参数使用。打开后，回答中命中搜索的结果会在片段后增加角标标志，对应SearchInfo列表中的链接。
        # 2. false：开关关闭，true：开关打开。
        # 3. 未传值时默认开关关闭（false）。
        # @type Citation: Boolean
        # @param EnableSpeedSearch: 是否开启极速版搜索，默认false，不开启；在开启且命中搜索时，会启用极速版搜索，流式输出首字返回更快。
        # @type EnableSpeedSearch: Boolean
        # @param EnableMultimedia: 多媒体开关。
        # 详细介绍请阅读 [多媒体介绍](https://cloud.tencent.com/document/product/1729/111178) 中的说明。
        # 说明：
        # 1. 该参数目前仅对白名单内用户生效，如您想体验该功能请 [联系我们](https://cloud.tencent.com/act/event/Online_service)。
        # 2. 该参数仅在功能增强（如搜索）开关开启（EnableEnhancement=true）并且极速版搜索开关关闭（EnableSpeedSearch=false）时生效。
        # 3. hunyuan-lite 无多媒体能力，该参数对 hunyuan-lite 版本不生效。
        # 4. 未传值时默认关闭。
        # 5. 开启并搜索到对应的多媒体信息时，会输出对应的多媒体地址，可以定制个性化的图文消息。
        # @type EnableMultimedia: Boolean
        # @param EnableDeepSearch: 是否开启深度研究该问题，默认是false，在值为true且命中深度研究该问题时，会返回深度研究该问题信息。
        # @type EnableDeepSearch: Boolean
        # @param Seed: 说明： 1. 确保模型的输出是可复现的。 2. 取值区间为非0正整数，最大值10000。 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type Seed: Integer
        # @param ForceSearchEnhancement: 强制搜索增强开关。
        # 说明：
        # 1. 未传值时默认关闭。
        # 2. 开启后，将强制走AI搜索，当AI搜索结果为空时，由大模型回复兜底话术。
        # @type ForceSearchEnhancement: Boolean
        # @param Stop: 自定义结束生成字符串

        # 调用 OpenAI 的接口时，如果您指定了 `stop` 参数, 模型会停止在匹配到 `stop` 的内容之前。
        # 在调用混元接口时，会停止在匹配到 `stop` 的内容之后。

        # **说明：**
        # 未来我们可能会修改此行为以便和 OpenAI 保持一致。
        # 但是目前有使用该参数的情况下，开发者需要注意该参数是否会对应用造成影响，以及未来该行为调整时带来的影响。
        # @type Stop: Array
        # @param EnableRecommendedQuestions: 推荐问答开关。
        # 说明：
        # 1. 未传值时默认关闭。
        # 2. 开启后，在返回值的最后一个包中会增加 RecommendedQuestions 字段表示推荐问答， 最多返回3条。
        # @type EnableRecommendedQuestions: Boolean
        # @param EnableDeepRead: 是否开启深度阅读，默认是false，在值为true时，会返回深度阅读的结果信息。说明:1.深度阅读需要开启插件增强,即设置EnableEnhancement为true,当设置EnableDeepRead为true时EnableEnhancement默认为true；2.目前暂时只支持单文档单轮的深度阅读；3.深度阅读功能的文件上传可以使用FilesUploads接口，具体参数详见FilesUploads接口文档
        # @type EnableDeepRead: Boolean
        # @param WebSearchOptions: 知识注入相关的参数信息
        # @type WebSearchOptions: :class:`Tencentcloud::Hunyuan.v20230901.models.WebSearchOptions`
        # @param TopicChoice: 用户传入Topic
        # @type TopicChoice: String
        # @param EnableThinking: 模型思维链开关 说明： 1. 未传值时默认开启，打开模型思维链推理能力。 2. 关闭后，关闭模型思维链推理能力。  开关当前仅对hunyuan-a13b模型生效 示例值：ture
        # @type EnableThinking: Boolean

        attr_accessor :Model, :Messages, :Stream, :StreamModeration, :TopP, :Temperature, :EnableEnhancement, :Tools, :ToolChoice, :CustomTool, :SearchInfo, :Citation, :EnableSpeedSearch, :EnableMultimedia, :EnableDeepSearch, :Seed, :ForceSearchEnhancement, :Stop, :EnableRecommendedQuestions, :EnableDeepRead, :WebSearchOptions, :TopicChoice, :EnableThinking
        extend Gem::Deprecate
        deprecate :EnableDeepSearch, :none, 2026, 2
        deprecate :EnableDeepSearch=, :none, 2026, 2
        deprecate :EnableDeepRead, :none, 2026, 2
        deprecate :EnableDeepRead=, :none, 2026, 2

        def initialize(model=nil, messages=nil, stream=nil, streammoderation=nil, topp=nil, temperature=nil, enableenhancement=nil, tools=nil, toolchoice=nil, customtool=nil, searchinfo=nil, citation=nil, enablespeedsearch=nil, enablemultimedia=nil, enabledeepsearch=nil, seed=nil, forcesearchenhancement=nil, stop=nil, enablerecommendedquestions=nil, enabledeepread=nil, websearchoptions=nil, topicchoice=nil, enablethinking=nil)
          @Model = model
          @Messages = messages
          @Stream = stream
          @StreamModeration = streammoderation
          @TopP = topp
          @Temperature = temperature
          @EnableEnhancement = enableenhancement
          @Tools = tools
          @ToolChoice = toolchoice
          @CustomTool = customtool
          @SearchInfo = searchinfo
          @Citation = citation
          @EnableSpeedSearch = enablespeedsearch
          @EnableMultimedia = enablemultimedia
          @EnableDeepSearch = enabledeepsearch
          @Seed = seed
          @ForceSearchEnhancement = forcesearchenhancement
          @Stop = stop
          @EnableRecommendedQuestions = enablerecommendedquestions
          @EnableDeepRead = enabledeepread
          @WebSearchOptions = websearchoptions
          @TopicChoice = topicchoice
          @EnableThinking = enablethinking
        end

        def deserialize(params)
          @Model = params['Model']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              message_tmp = Message.new
              message_tmp.deserialize(i)
              @Messages << message_tmp
            end
          end
          @Stream = params['Stream']
          @StreamModeration = params['StreamModeration']
          @TopP = params['TopP']
          @Temperature = params['Temperature']
          @EnableEnhancement = params['EnableEnhancement']
          unless params['Tools'].nil?
            @Tools = []
            params['Tools'].each do |i|
              tool_tmp = Tool.new
              tool_tmp.deserialize(i)
              @Tools << tool_tmp
            end
          end
          @ToolChoice = params['ToolChoice']
          unless params['CustomTool'].nil?
            @CustomTool = Tool.new
            @CustomTool.deserialize(params['CustomTool'])
          end
          @SearchInfo = params['SearchInfo']
          @Citation = params['Citation']
          @EnableSpeedSearch = params['EnableSpeedSearch']
          @EnableMultimedia = params['EnableMultimedia']
          @EnableDeepSearch = params['EnableDeepSearch']
          @Seed = params['Seed']
          @ForceSearchEnhancement = params['ForceSearchEnhancement']
          @Stop = params['Stop']
          @EnableRecommendedQuestions = params['EnableRecommendedQuestions']
          @EnableDeepRead = params['EnableDeepRead']
          unless params['WebSearchOptions'].nil?
            @WebSearchOptions = WebSearchOptions.new
            @WebSearchOptions.deserialize(params['WebSearchOptions'])
          end
          @TopicChoice = params['TopicChoice']
          @EnableThinking = params['EnableThinking']
        end
      end

      # ChatCompletions返回参数结构体
      class ChatCompletionsResponse < TencentCloud::Common::AbstractModel
        # @param Created: Unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: Token 统计信息。
        # 按照总 Token 数量计费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.Usage`
        # @param Note: 免责声明。
        # @type Note: String
        # @param Id: 本次请求的 RequestId。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param ModerationLevel: 多轮会话风险审核，值为1时，表明存在信息安全风险，建议终止客户多轮会话。
        # @type ModerationLevel: String
        # @param SearchInfo: 搜索结果信息
        # @type SearchInfo: :class:`Tencentcloud::Hunyuan.v20230901.models.SearchInfo`
        # @param Replaces: 多媒体信息。
        # 说明：
        # 1. 可以用多媒体信息替换回复内容里的占位符，得到完整的消息。
        # 2. 可能会出现回复内容里存在占位符，但是因为审核等原因没有返回多媒体信息。
        # @type Replaces: Array
        # @param RecommendedQuestions: 推荐问答。
        # @type RecommendedQuestions: Array
        # @param Processes: AI搜索返回状态
        # @type Processes: :class:`Tencentcloud::Hunyuan.v20230901.models.Processes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Created, :Usage, :Note, :Id, :Choices, :ErrorMsg, :ModerationLevel, :SearchInfo, :Replaces, :RecommendedQuestions, :Processes, :RequestId
        extend Gem::Deprecate
        deprecate :ModerationLevel, :none, 2026, 2
        deprecate :ModerationLevel=, :none, 2026, 2

        def initialize(created=nil, usage=nil, note=nil, id=nil, choices=nil, errormsg=nil, moderationlevel=nil, searchinfo=nil, replaces=nil, recommendedquestions=nil, processes=nil, requestid=nil)
          @Created = created
          @Usage = usage
          @Note = note
          @Id = id
          @Choices = choices
          @ErrorMsg = errormsg
          @ModerationLevel = moderationlevel
          @SearchInfo = searchinfo
          @Replaces = replaces
          @RecommendedQuestions = recommendedquestions
          @Processes = processes
          @RequestId = requestid
        end

        def deserialize(params)
          @Created = params['Created']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @Note = params['Note']
          @Id = params['Id']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              choice_tmp = Choice.new
              choice_tmp.deserialize(i)
              @Choices << choice_tmp
            end
          end
          unless params['ErrorMsg'].nil?
            @ErrorMsg = ErrorMsg.new
            @ErrorMsg.deserialize(params['ErrorMsg'])
          end
          @ModerationLevel = params['ModerationLevel']
          unless params['SearchInfo'].nil?
            @SearchInfo = SearchInfo.new
            @SearchInfo.deserialize(params['SearchInfo'])
          end
          unless params['Replaces'].nil?
            @Replaces = []
            params['Replaces'].each do |i|
              replace_tmp = Replace.new
              replace_tmp.deserialize(i)
              @Replaces << replace_tmp
            end
          end
          @RecommendedQuestions = params['RecommendedQuestions']
          unless params['Processes'].nil?
            @Processes = Processes.new
            @Processes.deserialize(params['Processes'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ChatTranslations请求参数结构体
      class ChatTranslationsRequest < TencentCloud::Common::AbstractModel
        # @param Model: 模型名称，可选值包括 hunyuan-translation、hunyuan-translation-lite。
        # 各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。

        # 注意：
        # 不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param Stream: 流式调用开关。
        # 说明：
        # 1. 未传值时默认为非流式调用（false）。
        # 2. 流式调用时以 SSE 协议增量返回结果（返回值取 Choices[n].Delta 中的值，需要拼接增量数据才能获得完整结果）。
        # 3. 非流式调用时：
        # 调用方式与普通 HTTP 请求无异。
        # 接口响应耗时较长，**如需更低时延建议设置为 true**。
        # 只返回一次最终结果（返回值取 Choices[n].Message 中的值）。

        # 注意：
        # 通过 SDK 调用时，流式和非流式调用需用**不同的方式**获取返回值，具体参考 SDK 中的注释或示例（在各语言 SDK 代码仓库的 examples/hunyuan/v20230901/ 目录中）。
        # @type Stream: Boolean
        # @param Text: 待翻译的文本
        # @type Text: String
        # @param Source: 源语言。
        # 支持语言列表:
        # 简体中文：zh，繁体中文：zh-TR，粤语：yue，英语：en，法语：fr，葡萄牙语：pt，西班牙语：es，日语：ja，土耳其语：tr，俄语：ru，阿拉伯语：ar，韩语：ko，泰语：th，意大利语：it，德语：de，越南语：vi，马来语：ms，印尼语：id
        # 以下语种仅 hunyuan-translation 模型支持：
        # 菲律宾语：fil，印地语：hi，波兰语：pl，捷克语：cs，荷兰语：nl，高棉语：km，缅甸语：my，波斯语：fa，古吉拉特语：gu，乌尔都语：ur，泰卢固语：te，马拉地语：mr，希伯来语：he，孟加拉语：bn，泰米尔语：ta，乌克兰语：uk，藏语：bo，哈萨克语：kk，蒙古语：mn，维吾尔语：ug
        # @type Source: String
        # @param Target: 目标语言。
        # 支持语言列表:
        # 简体中文：zh，繁体中文：zh-TR，粤语：yue，英语：en，法语：fr，葡萄牙语：pt，西班牙语：es，日语：ja，土耳其语：tr，俄语：ru，阿拉伯语：ar，韩语：ko，泰语：th，意大利语：it，德语：de，越南语：vi，马来语：ms，印尼语：id
        # 以下语种仅 hunyuan-translation 模型支持：
        # 菲律宾语：fil，印地语：hi，波兰语：pl，捷克语：cs，荷兰语：nl，高棉语：km，缅甸语：my，波斯语：fa，古吉拉特语：gu，乌尔都语：ur，泰卢固语：te，马拉地语：mr，希伯来语：he，孟加拉语：bn，泰米尔语：ta，乌克兰语：uk，藏语：bo，哈萨克语：kk，蒙古语：mn，维吾尔语：ug
        # @type Target: String
        # @param Field: 待翻译文本所属领域，例如游戏剧情等
        # @type Field: String
        # @param References: 参考示例，最多10个
        # @type References: Array
        # @param GlossaryIDs: 关联的术语库 ID 列表，用于术语翻译，最大支持5个术语库
        # @type GlossaryIDs: Array

        attr_accessor :Model, :Stream, :Text, :Source, :Target, :Field, :References, :GlossaryIDs

        def initialize(model=nil, stream=nil, text=nil, source=nil, target=nil, field=nil, references=nil, glossaryids=nil)
          @Model = model
          @Stream = stream
          @Text = text
          @Source = source
          @Target = target
          @Field = field
          @References = references
          @GlossaryIDs = glossaryids
        end

        def deserialize(params)
          @Model = params['Model']
          @Stream = params['Stream']
          @Text = params['Text']
          @Source = params['Source']
          @Target = params['Target']
          @Field = params['Field']
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              reference_tmp = Reference.new
              reference_tmp.deserialize(i)
              @References << reference_tmp
            end
          end
          @GlossaryIDs = params['GlossaryIDs']
        end
      end

      # ChatTranslations返回参数结构体
      class ChatTranslationsResponse < TencentCloud::Common::AbstractModel
        # @param Id: 本次请求的 RequestId。
        # @type Id: String
        # @param Note: 免责声明。
        # @type Note: String
        # @param Created: Unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: Token 统计信息。
        # 按照总 Token 数量计费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.Usage`
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Id, :Note, :Created, :Usage, :Choices, :ErrorMsg, :RequestId

        def initialize(id=nil, note=nil, created=nil, usage=nil, choices=nil, errormsg=nil, requestid=nil)
          @Id = id
          @Note = note
          @Created = created
          @Usage = usage
          @Choices = choices
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @Note = params['Note']
          @Created = params['Created']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              translationchoice_tmp = TranslationChoice.new
              translationchoice_tmp.deserialize(i)
              @Choices << translationchoice_tmp
            end
          end
          unless params['ErrorMsg'].nil?
            @ErrorMsg = ErrorMsg.new
            @ErrorMsg.deserialize(params['ErrorMsg'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 返回的回复, 支持多个
      class Choice < TencentCloud::Common::AbstractModel
        # @param FinishReason: 结束标志位，可能为 stop、 sensitive或者tool_calls。
        # stop 表示输出正常结束。
        # sensitive 只在开启流式输出审核时会出现，表示安全审核未通过。
        # tool_calls 标识函数调用。
        # @type FinishReason: String
        # @param Delta: 增量返回值，流式调用时使用该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Delta: :class:`Tencentcloud::Hunyuan.v20230901.models.Delta`
        # @param Message: 返回值，非流式调用时使用该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: :class:`Tencentcloud::Hunyuan.v20230901.models.Message`
        # @param Index: 索引值，流式调用时使用该字段。
        # @type Index: Integer
        # @param ModerationLevel: 多轮会话风险审核，值为1时，表明存在信息安全风险，建议终止客户多轮会话。
        # @type ModerationLevel: String

        attr_accessor :FinishReason, :Delta, :Message, :Index, :ModerationLevel

        def initialize(finishreason=nil, delta=nil, message=nil, index=nil, moderationlevel=nil)
          @FinishReason = finishreason
          @Delta = delta
          @Message = message
          @Index = index
          @ModerationLevel = moderationlevel
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          unless params['Delta'].nil?
            @Delta = Delta.new
            @Delta.deserialize(params['Delta'])
          end
          unless params['Message'].nil?
            @Message = Message.new
            @Message.deserialize(params['Message'])
          end
          @Index = params['Index']
          @ModerationLevel = params['ModerationLevel']
        end
      end

      # 可以传入多种类型的内容，目前支持文本、图片、视频。
      class Content < TencentCloud::Common::AbstractModel
        # @param Type: 内容类型
        # 注意：
        # 需包含至少一个 Type 为"text"的参数。
        # 参数值可选范围：["text", "image_url","video_url","video_frames"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Text: 当 Type 为 text 时使用，表示具体的文本内容。当 Type 为 其他类型 时，当前字段内容需保持为空，传递内容不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param ImageUrl: 图片的url，当 Type 为 image_url 时使用，表示具体的图片内容
        # 如"https://example.com/1.png" 或 图片的base64（注意 "data:image/jpeg;base64," 为必要部分）："data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAA......"。当 Type 为 其他类型 时，当前字段内容需保持为空，传递内容不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: :class:`Tencentcloud::Hunyuan.v20230901.models.ImageUrl`
        # @param VideoUrl: 当 Type 为 video_url 时使用，标识具体的视频链接内容，如"https://your-video-path.mp4"。当 Type 为 其他类型 时，当前字段内容需保持为空，传递内容不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoUrl: :class:`Tencentcloud::Hunyuan.v20230901.models.VideoUrl`
        # @param VideoFrames: 当 Type 为 video_frames 时使用，标识具体的视频内图像帧内容，当 Type 为 其他类型 时，当前字段内容需保持为空，传递内容不生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoFrames: :class:`Tencentcloud::Hunyuan.v20230901.models.VideoFrames`

        attr_accessor :Type, :Text, :ImageUrl, :VideoUrl, :VideoFrames

        def initialize(type=nil, text=nil, imageurl=nil, videourl=nil, videoframes=nil)
          @Type = type
          @Text = text
          @ImageUrl = imageurl
          @VideoUrl = videourl
          @VideoFrames = videoframes
        end

        def deserialize(params)
          @Type = params['Type']
          @Text = params['Text']
          unless params['ImageUrl'].nil?
            @ImageUrl = ImageUrl.new
            @ImageUrl.deserialize(params['ImageUrl'])
          end
          unless params['VideoUrl'].nil?
            @VideoUrl = VideoUrl.new
            @VideoUrl.deserialize(params['VideoUrl'])
          end
          unless params['VideoFrames'].nil?
            @VideoFrames = VideoFrames.new
            @VideoFrames.deserialize(params['VideoFrames'])
          end
        end
      end

      # CreateGlossaryEntry请求参数结构体
      class CreateGlossaryEntryRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID
        # @type GlossaryId: String
        # @param Entries: 术语条目列表，单次请求限制100个
        # @type Entries: Array

        attr_accessor :GlossaryId, :Entries

        def initialize(glossaryid=nil, entries=nil)
          @GlossaryId = glossaryid
          @Entries = entries
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentrycreateitem_tmp = GlossaryEntryCreateItem.new
              glossaryentrycreateitem_tmp.deserialize(i)
              @Entries << glossaryentrycreateitem_tmp
            end
          end
        end
      end

      # CreateGlossaryEntry返回参数结构体
      class CreateGlossaryEntryResponse < TencentCloud::Common::AbstractModel
        # @param Entries: 成功创建的术语条目
        # @type Entries: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Entries, :RequestId

        def initialize(entries=nil, requestid=nil)
          @Entries = entries
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentry_tmp = GlossaryEntry.new
              glossaryentry_tmp.deserialize(i)
              @Entries << glossaryentry_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateGlossary请求参数结构体
      class CreateGlossaryRequest < TencentCloud::Common::AbstractModel
        # @param Name: 术语库名称，限制50个字符
        # @type Name: String
        # @param Source: 源语言代码，取值范围：zh(中文)、en(英语)、fr(法语)、pt(葡萄牙语)、es(西班牙语)、ja(日语)、tr(土耳其语)、ru(俄语)、ar(阿拉伯语)、ko(韩语)、th(泰语)、it(意大利语)、de(德语)、vi(越南语)、ms(马来语)、id(印尼语)、yue(粤语)、zh-TR(繁体中文)、hi(印地语)、fil(菲律宾语)、pl(波兰语)、cs(捷克语)、nl(荷兰语)、km(高棉语)、my(缅甸语)、fa(波斯语)、gu(古吉拉特语)、ur(乌尔都语)、te(泰卢固语)、mr(马拉地语)、he(希伯来语)、bn(孟加拉语)、ta(泰米尔语)、uk(乌克兰语)、bo(藏语)、kk(哈萨克语)、mn(蒙古语)、ug(维吾尔语)
        # @type Source: String
        # @param Target: 目标语言代码，取值范围：zh(中文)、en(英语)、fr(法语)、pt(葡萄牙语)、es(西班牙语)、ja(日语)、tr(土耳其语)、ru(俄语)、ar(阿拉伯语)、ko(韩语)、th(泰语)、it(意大利语)、de(德语)、vi(越南语)、ms(马来语)、id(印尼语)、yue(粤语)、zh-TR(繁体中文)、hi(印地语)、fil(菲律宾语)、pl(波兰语)、cs(捷克语)、nl(荷兰语)、km(高棉语)、my(缅甸语)、fa(波斯语)、gu(古吉拉特语)、ur(乌尔都语)、te(泰卢固语)、mr(马拉地语)、he(希伯来语)、bn(孟加拉语)、ta(泰米尔语)、uk(乌克兰语)、bo(藏语)、kk(哈萨克语)、mn(蒙古语)、ug(维吾尔语)
        # @type Target: String
        # @param Description: 术语库描述，限制255个字符
        # @type Description: String

        attr_accessor :Name, :Source, :Target, :Description

        def initialize(name=nil, source=nil, target=nil, description=nil)
          @Name = name
          @Source = source
          @Target = target
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Source = params['Source']
          @Target = params['Target']
          @Description = params['Description']
        end
      end

      # CreateGlossary返回参数结构体
      class CreateGlossaryResponse < TencentCloud::Common::AbstractModel
        # @param Name: 术语库名称
        # @type Name: String
        # @param GlossaryId: 术语库唯一 ID
        # @type GlossaryId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :GlossaryId, :RequestId

        def initialize(name=nil, glossaryid=nil, requestid=nil)
          @Name = name
          @GlossaryId = glossaryid
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @GlossaryId = params['GlossaryId']
          @RequestId = params['RequestId']
        end
      end

      # CreateThread请求参数结构体
      class CreateThreadRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateThread返回参数结构体
      class CreateThreadResponse < TencentCloud::Common::AbstractModel
        # @param ID: 会话 ID
        # @type ID: String
        # @param Object: 对象类型
        # @type Object: String
        # @param CreatedAt: 创建时间，Unix 时间戳，单位为秒。
        # @type CreatedAt: Integer
        # @param ToolResources: 提供给工具的资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolResources: :class:`Tencentcloud::Hunyuan.v20230901.models.ThreadToolResources`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :ID, :Object, :CreatedAt, :ToolResources, :RequestId

        def initialize(id=nil, object=nil, createdat=nil, toolresources=nil, requestid=nil)
          @ID = id
          @Object = object
          @CreatedAt = createdat
          @ToolResources = toolresources
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Object = params['Object']
          @CreatedAt = params['CreatedAt']
          unless params['ToolResources'].nil?
            @ToolResources = ThreadToolResources.new
            @ToolResources.deserialize(params['ToolResources'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteGlossaryEntry请求参数结构体
      class DeleteGlossaryEntryRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID
        # @type GlossaryId: String
        # @param Entries: 需要更新的术语条目列表，单次请求限制100个
        # @type Entries: Array

        attr_accessor :GlossaryId, :Entries

        def initialize(glossaryid=nil, entries=nil)
          @GlossaryId = glossaryid
          @Entries = entries
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentrydeleteitem_tmp = GlossaryEntryDeleteItem.new
              glossaryentrydeleteitem_tmp.deserialize(i)
              @Entries << glossaryentrydeleteitem_tmp
            end
          end
        end
      end

      # DeleteGlossaryEntry返回参数结构体
      class DeleteGlossaryEntryResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGlossary请求参数结构体
      class DeleteGlossaryRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID
        # @type GlossaryId: String

        attr_accessor :GlossaryId

        def initialize(glossaryid=nil)
          @GlossaryId = glossaryid
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
        end
      end

      # DeleteGlossary返回参数结构体
      class DeleteGlossaryResponse < TencentCloud::Common::AbstractModel
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

      # 返回的内容（流式返回）
      class Delta < TencentCloud::Common::AbstractModel
        # @param Role: 角色名称。
        # @type Role: String
        # @param Content: 内容详情。
        # @type Content: String
        # @param ToolCalls: 模型生成的工具调用，仅 hunyuan-functioncall 模型支持
        # 说明：
        # 对于每一次的输出值应该以Id为标识对Type、Name、Arguments字段进行合并。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCalls: Array
        # @param ReasoningContent: 思维链内容。用于展示模型思考过程，仅 Hunyuan-T1 系列模型可用。注意：在进行多轮对话时，请不要将此字段拼接到 messages 中。请求 messages 的请求参数中包含 reasoning_content，接口将报错。
        # @type ReasoningContent: String

        attr_accessor :Role, :Content, :ToolCalls, :ReasoningContent

        def initialize(role=nil, content=nil, toolcalls=nil, reasoningcontent=nil)
          @Role = role
          @Content = content
          @ToolCalls = toolcalls
          @ReasoningContent = reasoningcontent
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          unless params['ToolCalls'].nil?
            @ToolCalls = []
            params['ToolCalls'].each do |i|
              toolcall_tmp = ToolCall.new
              toolcall_tmp.deserialize(i)
              @ToolCalls << toolcall_tmp
            end
          end
          @ReasoningContent = params['ReasoningContent']
        end
      end

      # Embedding 信息。
      class EmbeddingData < TencentCloud::Common::AbstractModel
        # @param Embedding: Embedding 信息，目前为 1024 维浮点数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Embedding: Array
        # @param Index: 下标，目前不支持批量，因此固定为 0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Object: 目前固定为 "embedding"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Object: String

        attr_accessor :Embedding, :Index, :Object

        def initialize(embedding=nil, index=nil, object=nil)
          @Embedding = embedding
          @Index = index
          @Object = object
        end

        def deserialize(params)
          @Embedding = params['Embedding']
          @Index = params['Index']
          @Object = params['Object']
        end
      end

      # Token 使用计数。
      class EmbeddingUsage < TencentCloud::Common::AbstractModel
        # @param PromptTokens: 输入 Token 数。
        # @type PromptTokens: Integer
        # @param TotalTokens: 总 Token 数。
        # @type TotalTokens: Integer

        attr_accessor :PromptTokens, :TotalTokens

        def initialize(prompttokens=nil, totaltokens=nil)
          @PromptTokens = prompttokens
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @PromptTokens = params['PromptTokens']
          @TotalTokens = params['TotalTokens']
        end
      end

      # 运行时异常信息。
      class ErrorMsg < TencentCloud::Common::AbstractModel
        # @param Msg: 错误提示信息。
        # @type Msg: String
        # @param Code: 错误码。
        # 4000 服务内部异常。
        # 4001 请求模型超时。
        # @type Code: Integer

        attr_accessor :Msg, :Code

        def initialize(msg=nil, code=nil)
          @Msg = msg
          @Code = code
        end

        def deserialize(params)
          @Msg = params['Msg']
          @Code = params['Code']
        end
      end

      # 已上传的文件对象。
      class FileObject < TencentCloud::Common::AbstractModel
        # @param ID: 文件标识符，可在各个API中引用。
        # @type ID: String
        # @param Object: 对象类型，始终为 file。
        # @type Object: String
        # @param Bytes: 文件大小，单位为字节。
        # @type Bytes: Integer
        # @param CreatedAt: 文件创建时的 Unix 时间戳（秒）。
        # @type CreatedAt: Integer
        # @param Filename: 文件名。
        # @type Filename: String
        # @param Purpose: 上传文件的用途。
        # @type Purpose: String

        attr_accessor :ID, :Object, :Bytes, :CreatedAt, :Filename, :Purpose

        def initialize(id=nil, object=nil, bytes=nil, createdat=nil, filename=nil, purpose=nil)
          @ID = id
          @Object = object
          @Bytes = bytes
          @CreatedAt = createdat
          @Filename = filename
          @Purpose = purpose
        end

        def deserialize(params)
          @ID = params['ID']
          @Object = params['Object']
          @Bytes = params['Bytes']
          @CreatedAt = params['CreatedAt']
          @Filename = params['Filename']
          @Purpose = params['Purpose']
        end
      end

      # FilesDeletions请求参数结构体
      class FilesDeletionsRequest < TencentCloud::Common::AbstractModel
        # @param ID: 文件标识符。
        # @type ID: String

        attr_accessor :ID

        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # FilesDeletions返回参数结构体
      class FilesDeletionsResponse < TencentCloud::Common::AbstractModel
        # @param ID: 文件标识符。
        # @type ID: String
        # @param Object: 对象类型，始终为 file。
        # @type Object: String
        # @param Deleted: 是否删除成功。
        # @type Deleted: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :ID, :Object, :Deleted, :RequestId

        def initialize(id=nil, object=nil, deleted=nil, requestid=nil)
          @ID = id
          @Object = object
          @Deleted = deleted
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Object = params['Object']
          @Deleted = params['Deleted']
          @RequestId = params['RequestId']
        end
      end

      # FilesList请求参数结构体
      class FilesListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param Limit: 每页数量，最大 100。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit

        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # FilesList返回参数结构体
      class FilesListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 文件数量。
        # @type Total: Integer
        # @param Object: 对象类型，始终为 list。
        # @type Object: String
        # @param Data: FileObject 列表。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Total, :Object, :Data, :RequestId

        def initialize(total=nil, object=nil, data=nil, requestid=nil)
          @Total = total
          @Object = object
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Object = params['Object']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              fileobject_tmp = FileObject.new
              fileobject_tmp.deserialize(i)
              @Data << fileobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # FilesUploads请求参数结构体
      class FilesUploadsRequest < TencentCloud::Common::AbstractModel
        # @param Name: 文件名。
        # @type Name: String
        # @param URL: 文件链接。目前支持 csv, doc, docx, pdf, ppt, pptx, txt, xls, xlsx 格式，单文件大小限制为100M。
        # @type URL: String

        attr_accessor :Name, :URL

        def initialize(name=nil, url=nil)
          @Name = name
          @URL = url
        end

        def deserialize(params)
          @Name = params['Name']
          @URL = params['URL']
        end
      end

      # FilesUploads返回参数结构体
      class FilesUploadsResponse < TencentCloud::Common::AbstractModel
        # @param ID: 文件标识符，可在各个API中引用。
        # @type ID: String
        # @param Object: 对象类型，始终为 file。
        # @type Object: String
        # @param Bytes: 文件大小，单位为字节。
        # @type Bytes: Integer
        # @param CreatedAt: 文件创建时的 Unix 时间戳（秒）。
        # @type CreatedAt: Integer
        # @param Filename: 文件名。
        # @type Filename: String
        # @param Purpose: 上传文件的用途。
        # @type Purpose: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :ID, :Object, :Bytes, :CreatedAt, :Filename, :Purpose, :RequestId

        def initialize(id=nil, object=nil, bytes=nil, createdat=nil, filename=nil, purpose=nil, requestid=nil)
          @ID = id
          @Object = object
          @Bytes = bytes
          @CreatedAt = createdat
          @Filename = filename
          @Purpose = purpose
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Object = params['Object']
          @Bytes = params['Bytes']
          @CreatedAt = params['CreatedAt']
          @Filename = params['Filename']
          @Purpose = params['Purpose']
          @RequestId = params['RequestId']
        end
      end

      # GetEmbedding请求参数结构体
      class GetEmbeddingRequest < TencentCloud::Common::AbstractModel
        # @param Input: 输入文本。总长度不超过 1024 个 Token，超过则会截断最后面的内容。
        # @type Input: String
        # @param InputList: 输入文本数组。输入数组总长度不超过 50 。
        # @type InputList: Array

        attr_accessor :Input, :InputList

        def initialize(input=nil, inputlist=nil)
          @Input = input
          @InputList = inputlist
        end

        def deserialize(params)
          @Input = params['Input']
          @InputList = params['InputList']
        end
      end

      # GetEmbedding返回参数结构体
      class GetEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的 Embedding 信息。
        # @type Data: Array
        # @param Usage: Token 使用计数，按照总 Token 数量收费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.EmbeddingUsage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Usage, :RequestId

        def initialize(data=nil, usage=nil, requestid=nil)
          @Data = data
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              embeddingdata_tmp = EmbeddingData.new
              embeddingdata_tmp.deserialize(i)
              @Data << embeddingdata_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = EmbeddingUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetThreadMessageList请求参数结构体
      class GetThreadMessageListRequest < TencentCloud::Common::AbstractModel
        # @param ThreadID: 会话 ID
        # @type ThreadID: String
        # @param Limit: 返回的消息条数，1 - 100 条
        # @type Limit: Integer
        # @param Order: 排序方式，按创建时间升序（asc）或降序（desc），默认为 desc
        # @type Order: String

        attr_accessor :ThreadID, :Limit, :Order

        def initialize(threadid=nil, limit=nil, order=nil)
          @ThreadID = threadid
          @Limit = limit
          @Order = order
        end

        def deserialize(params)
          @ThreadID = params['ThreadID']
          @Limit = params['Limit']
          @Order = params['Order']
        end
      end

      # GetThreadMessageList返回参数结构体
      class GetThreadMessageListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 消息列表
        # @type Data: Array
        # @param FirstID: 第一条消息 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstID: String
        # @param LastID: 已废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastID: Integer
        # @param HasMore: 是否还有更多消息
        # @type HasMore: Boolean
        # @param Object: 对象类型
        # @type Object: String
        # @param FirstMsgID: 第一条消息 ID
        # @type FirstMsgID: String
        # @param LastMsgID: 最后一条消息 ID
        # @type LastMsgID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Data, :FirstID, :LastID, :HasMore, :Object, :FirstMsgID, :LastMsgID, :RequestId
        extend Gem::Deprecate
        deprecate :FirstID, :none, 2026, 2
        deprecate :FirstID=, :none, 2026, 2
        deprecate :LastID, :none, 2026, 2
        deprecate :LastID=, :none, 2026, 2

        def initialize(data=nil, firstid=nil, lastid=nil, hasmore=nil, object=nil, firstmsgid=nil, lastmsgid=nil, requestid=nil)
          @Data = data
          @FirstID = firstid
          @LastID = lastid
          @HasMore = hasmore
          @Object = object
          @FirstMsgID = firstmsgid
          @LastMsgID = lastmsgid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              threadmessage_tmp = ThreadMessage.new
              threadmessage_tmp.deserialize(i)
              @Data << threadmessage_tmp
            end
          end
          @FirstID = params['FirstID']
          @LastID = params['LastID']
          @HasMore = params['HasMore']
          @Object = params['Object']
          @FirstMsgID = params['FirstMsgID']
          @LastMsgID = params['LastMsgID']
          @RequestId = params['RequestId']
        end
      end

      # GetThreadMessage请求参数结构体
      class GetThreadMessageRequest < TencentCloud::Common::AbstractModel
        # @param ThreadID: 会话 ID
        # @type ThreadID: String
        # @param MessageID: 消息 ID
        # @type MessageID: String

        attr_accessor :ThreadID, :MessageID

        def initialize(threadid=nil, messageid=nil)
          @ThreadID = threadid
          @MessageID = messageid
        end

        def deserialize(params)
          @ThreadID = params['ThreadID']
          @MessageID = params['MessageID']
        end
      end

      # GetThreadMessage返回参数结构体
      class GetThreadMessageResponse < TencentCloud::Common::AbstractModel
        # @param ID: 消息 ID
        # @type ID: String
        # @param Object: 对象类型
        # @type Object: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: Integer
        # @param ThreadID: 会话 ID
        # @type ThreadID: String
        # @param Status: 状态，处理中 in_progress，已完成 completed，未完成 incomplete。
        # @type Status: String
        # @param InCompleteDetails: 未完成原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCompleteDetails: :class:`Tencentcloud::Hunyuan.v20230901.models.ThreadMessageInCompleteDetailsObject`
        # @param CompletedAt: 完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompletedAt: Integer
        # @param InCompleteAt: 未完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCompleteAt: Integer
        # @param Role: 角色
        # @type Role: String
        # @param Content: 内容
        # @type Content: String
        # @param AssistantID: 助手 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantID: String
        # @param RunID: 运行 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunID: String
        # @param Attachments: 附件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attachments: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :ID, :Object, :CreatedAt, :ThreadID, :Status, :InCompleteDetails, :CompletedAt, :InCompleteAt, :Role, :Content, :AssistantID, :RunID, :Attachments, :RequestId

        def initialize(id=nil, object=nil, createdat=nil, threadid=nil, status=nil, incompletedetails=nil, completedat=nil, incompleteat=nil, role=nil, content=nil, assistantid=nil, runid=nil, attachments=nil, requestid=nil)
          @ID = id
          @Object = object
          @CreatedAt = createdat
          @ThreadID = threadid
          @Status = status
          @InCompleteDetails = incompletedetails
          @CompletedAt = completedat
          @InCompleteAt = incompleteat
          @Role = role
          @Content = content
          @AssistantID = assistantid
          @RunID = runid
          @Attachments = attachments
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Object = params['Object']
          @CreatedAt = params['CreatedAt']
          @ThreadID = params['ThreadID']
          @Status = params['Status']
          unless params['InCompleteDetails'].nil?
            @InCompleteDetails = ThreadMessageInCompleteDetailsObject.new
            @InCompleteDetails.deserialize(params['InCompleteDetails'])
          end
          @CompletedAt = params['CompletedAt']
          @InCompleteAt = params['InCompleteAt']
          @Role = params['Role']
          @Content = params['Content']
          @AssistantID = params['AssistantID']
          @RunID = params['RunID']
          unless params['Attachments'].nil?
            @Attachments = []
            params['Attachments'].each do |i|
              threadmessageattachmentobject_tmp = ThreadMessageAttachmentObject.new
              threadmessageattachmentobject_tmp.deserialize(i)
              @Attachments << threadmessageattachmentobject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetThread请求参数结构体
      class GetThreadRequest < TencentCloud::Common::AbstractModel
        # @param ThreadID: 会话 ID
        # @type ThreadID: String

        attr_accessor :ThreadID

        def initialize(threadid=nil)
          @ThreadID = threadid
        end

        def deserialize(params)
          @ThreadID = params['ThreadID']
        end
      end

      # GetThread返回参数结构体
      class GetThreadResponse < TencentCloud::Common::AbstractModel
        # @param ID: 会话 ID
        # @type ID: String
        # @param Object: 对象类型
        # @type Object: String
        # @param CreatedAt: 创建时间，Unix 时间戳，单位为秒。
        # @type CreatedAt: Integer
        # @param ToolResources: 提供给工具的资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolResources: :class:`Tencentcloud::Hunyuan.v20230901.models.ThreadToolResources`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :ID, :Object, :CreatedAt, :ToolResources, :RequestId

        def initialize(id=nil, object=nil, createdat=nil, toolresources=nil, requestid=nil)
          @ID = id
          @Object = object
          @CreatedAt = createdat
          @ToolResources = toolresources
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Object = params['Object']
          @CreatedAt = params['CreatedAt']
          unless params['ToolResources'].nil?
            @ToolResources = ThreadToolResources.new
            @ToolResources.deserialize(params['ToolResources'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTokenCount请求参数结构体
      class GetTokenCountRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 输入文本
        # @type Prompt: String

        attr_accessor :Prompt

        def initialize(prompt=nil)
          @Prompt = prompt
        end

        def deserialize(params)
          @Prompt = params['Prompt']
        end
      end

      # GetTokenCount返回参数结构体
      class GetTokenCountResponse < TencentCloud::Common::AbstractModel
        # @param TokenCount: token计数
        # @type TokenCount: Integer
        # @param CharacterCount: 字符计数
        # @type CharacterCount: Integer
        # @param Tokens: 切分后的列表
        # @type Tokens: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TokenCount, :CharacterCount, :Tokens, :RequestId

        def initialize(tokencount=nil, charactercount=nil, tokens=nil, requestid=nil)
          @TokenCount = tokencount
          @CharacterCount = charactercount
          @Tokens = tokens
          @RequestId = requestid
        end

        def deserialize(params)
          @TokenCount = params['TokenCount']
          @CharacterCount = params['CharacterCount']
          @Tokens = params['Tokens']
          @RequestId = params['RequestId']
        end
      end

      # 术语库
      class Glossary < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库唯一 ID
        # @type GlossaryId: String
        # @param Name: 术语库名称
        # @type Name: String
        # @param Description: 术语库描述
        # @type Description: String
        # @param Source: 源语言代码
        # @type Source: String
        # @param Target: 目标语言代码
        # @type Target: String

        attr_accessor :GlossaryId, :Name, :Description, :Source, :Target

        def initialize(glossaryid=nil, name=nil, description=nil, source=nil, target=nil)
          @GlossaryId = glossaryid
          @Name = name
          @Description = description
          @Source = source
          @Target = target
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          @Name = params['Name']
          @Description = params['Description']
          @Source = params['Source']
          @Target = params['Target']
        end
      end

      # 术语条目
      class GlossaryEntry < TencentCloud::Common::AbstractModel
        # @param SourceTerm: 源语言术语，限制1000字符
        # @type SourceTerm: String
        # @param TargetTerm: 目标语言术语，限制1000字符
        # @type TargetTerm: String
        # @param EntryId: 术语条目 ID
        # @type EntryId: String

        attr_accessor :SourceTerm, :TargetTerm, :EntryId

        def initialize(sourceterm=nil, targetterm=nil, entryid=nil)
          @SourceTerm = sourceterm
          @TargetTerm = targetterm
          @EntryId = entryid
        end

        def deserialize(params)
          @SourceTerm = params['SourceTerm']
          @TargetTerm = params['TargetTerm']
          @EntryId = params['EntryId']
        end
      end

      # 术语条目
      class GlossaryEntryCreateItem < TencentCloud::Common::AbstractModel
        # @param SourceTerm: 源语言术语，限制1000字符
        # @type SourceTerm: String
        # @param TargetTerm: 目标语言术语，限制1000字符
        # @type TargetTerm: String

        attr_accessor :SourceTerm, :TargetTerm

        def initialize(sourceterm=nil, targetterm=nil)
          @SourceTerm = sourceterm
          @TargetTerm = targetterm
        end

        def deserialize(params)
          @SourceTerm = params['SourceTerm']
          @TargetTerm = params['TargetTerm']
        end
      end

      # 术语条目
      class GlossaryEntryDeleteItem < TencentCloud::Common::AbstractModel
        # @param EntryId: 术语条目 ID
        # @type EntryId: String

        attr_accessor :EntryId

        def initialize(entryid=nil)
          @EntryId = entryid
        end

        def deserialize(params)
          @EntryId = params['EntryId']
        end
      end

      # 术语条目
      class GlossaryEntryUpdateItem < TencentCloud::Common::AbstractModel
        # @param EntryId: 术语条目 ID
        # @type EntryId: String
        # @param SourceTerm: 源语言术语，限制1000字符
        # @type SourceTerm: String
        # @param TargetTerm: 目标语言术语，限制1000字符
        # @type TargetTerm: String

        attr_accessor :EntryId, :SourceTerm, :TargetTerm

        def initialize(entryid=nil, sourceterm=nil, targetterm=nil)
          @EntryId = entryid
          @SourceTerm = sourceterm
          @TargetTerm = targetterm
        end

        def deserialize(params)
          @EntryId = params['EntryId']
          @SourceTerm = params['SourceTerm']
          @TargetTerm = params['TargetTerm']
        end
      end

      # GroupChatCompletions请求参数结构体
      class GroupChatCompletionsRequest < TencentCloud::Common::AbstractModel
        # @param Model: 模型名称，可选值包括 hunyuan-large-role-group。各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。注意：不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param Messages: 聊天上下文信息。
        # @type Messages: Array
        # @param Stream: 流式调用开关。
        # 说明：
        # 1. 未传值时默认为非流式调用（false）。
        # 2. 流式调用时以 SSE 协议增量返回结果（返回值取 Choices[n].Delta 中的值，需要拼接增量数据才能获得完整结果）。
        # 3. 非流式调用时：
        # 调用方式与普通 HTTP 请求无异。
        # 接口响应耗时较长，**如需更低时延建议设置为 true**。
        # 只返回一次最终结果（返回值取 Choices[n].Message 中的值）。

        # 注意：
        # 通过 SDK 调用时，流式和非流式调用需用**不同的方式**获取返回值，具体参考 SDK 中的注释或示例（在各语言 SDK 代码仓库的 examples/hunyuan/v20230901/ 目录中）。
        # @type Stream: Boolean
        # @param TargetCharacterName: 目标人物名称
        # @type TargetCharacterName: String
        # @param GroupChatConfig: 角色描述
        # @type GroupChatConfig: :class:`Tencentcloud::Hunyuan.v20230901.models.GroupChatConfig`
        # @param UserId: 用户ID
        # @type UserId: String
        # @param SessionId: 对话接口
        # @type SessionId: String

        attr_accessor :Model, :Messages, :Stream, :TargetCharacterName, :GroupChatConfig, :UserId, :SessionId

        def initialize(model=nil, messages=nil, stream=nil, targetcharactername=nil, groupchatconfig=nil, userid=nil, sessionid=nil)
          @Model = model
          @Messages = messages
          @Stream = stream
          @TargetCharacterName = targetcharactername
          @GroupChatConfig = groupchatconfig
          @UserId = userid
          @SessionId = sessionid
        end

        def deserialize(params)
          @Model = params['Model']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              groupmessage_tmp = GroupMessage.new
              groupmessage_tmp.deserialize(i)
              @Messages << groupmessage_tmp
            end
          end
          @Stream = params['Stream']
          @TargetCharacterName = params['TargetCharacterName']
          unless params['GroupChatConfig'].nil?
            @GroupChatConfig = GroupChatConfig.new
            @GroupChatConfig.deserialize(params['GroupChatConfig'])
          end
          @UserId = params['UserId']
          @SessionId = params['SessionId']
        end
      end

      # GroupChatCompletions返回参数结构体
      class GroupChatCompletionsResponse < TencentCloud::Common::AbstractModel
        # @param Created: Unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: Token 统计信息。
        # 按照总 Token 数量计费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.Usage`
        # @param Note: 免责声明。
        # @type Note: String
        # @param Id: 本次请求的 RequestId。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param SearchInfo: 搜索结果信息
        # @type SearchInfo: :class:`Tencentcloud::Hunyuan.v20230901.models.SearchInfo`
        # @param Replaces: 多媒体信息。
        # 说明：
        # 1. 可以用多媒体信息替换回复内容里的占位符，得到完整的消息。
        # 2. 可能会出现回复内容里存在占位符，但是因为审核等原因没有返回多媒体信息。
        # @type Replaces: Array
        # @param RecommendedQuestions: 推荐问答。
        # @type RecommendedQuestions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Created, :Usage, :Note, :Id, :Choices, :ErrorMsg, :SearchInfo, :Replaces, :RecommendedQuestions, :RequestId

        def initialize(created=nil, usage=nil, note=nil, id=nil, choices=nil, errormsg=nil, searchinfo=nil, replaces=nil, recommendedquestions=nil, requestid=nil)
          @Created = created
          @Usage = usage
          @Note = note
          @Id = id
          @Choices = choices
          @ErrorMsg = errormsg
          @SearchInfo = searchinfo
          @Replaces = replaces
          @RecommendedQuestions = recommendedquestions
          @RequestId = requestid
        end

        def deserialize(params)
          @Created = params['Created']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @Note = params['Note']
          @Id = params['Id']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              choice_tmp = Choice.new
              choice_tmp.deserialize(i)
              @Choices << choice_tmp
            end
          end
          unless params['ErrorMsg'].nil?
            @ErrorMsg = ErrorMsg.new
            @ErrorMsg.deserialize(params['ErrorMsg'])
          end
          unless params['SearchInfo'].nil?
            @SearchInfo = SearchInfo.new
            @SearchInfo.deserialize(params['SearchInfo'])
          end
          unless params['Replaces'].nil?
            @Replaces = []
            params['Replaces'].each do |i|
              replace_tmp = Replace.new
              replace_tmp.deserialize(i)
              @Replaces << replace_tmp
            end
          end
          @RecommendedQuestions = params['RecommendedQuestions']
          @RequestId = params['RequestId']
        end
      end

      # 群聊配置
      class GroupChatConfig < TencentCloud::Common::AbstractModel
        # @param UserName: 人物名称
        # @type UserName: String
        # @param Description: ### 主题：\n武道修炼与科技创新的碰撞\n\n### 地点：\n布尔玛的实验室\n\n### 故事背景：\n布尔玛正在研发一种新型的龙珠雷达，旨在更精确地定位龙珠的位置。她邀请了孙悟空、天津饭、饺子和雅木茶前来测试新设备。然而，这些武道家们对科技的理解有限，导致了一系列有趣的误解和互动。\n\n### 人物关系：\n- **布尔玛**：天才科学家，负责研发和解释新设备。\n- **孙悟空**：纯粹的战斗狂，对科技一窍不通，但对新事物充满好奇。\n- **天津饭**：严肃自律的武道家，对科技持谨慎态度，但愿意尝试。\n- **饺子**：内向单纯，依赖天津饭，对科技感到困惑和害怕。\n- **雅木茶**：幽默自嘲的前沙漠强盗，对科技有一定了解，但更倾向于轻松调侃。\n\n### 人物目标：\n- **布尔玛**：希望新龙珠雷达能够得到有效测试，并得到反馈以改进。\n- **孙悟空**：希望通过新设备找到更强的对手进行战斗。\n- **天津饭**：希望通过测试新设备提升自己的武道修炼。\n- **饺子**：希望在不引起麻烦的情况下完成任务，并得到天津饭的认可。\n- **雅木茶**：希望通过参与测试证明自己的价值，同时享受与朋友们的互动。\n\n### 场景描述：\n布尔玛在实验室中展示她的新龙珠雷达，解释其工作原理和优势。孙悟空对设备的功能感到兴奋，但完全无法理解技术细节，不断提出天真的问题。天津饭则严肃地询问设备的安全性和可靠性，表现出对科技的谨慎态度。饺子对复杂的设备感到害怕，不断向天津饭寻求确认和安慰。雅木茶则在一旁调侃大家的反应，试图缓解紧张气氛。布尔玛在解释过程中不断被孙悟空的问题打断，感到无奈，但也被他的热情所感染。最终，大家决定一起外出测试新设备，展开一场充满欢笑和冒险的旅程。
        # @type Description: String
        # @param Characters: 角色描述
        # @type Characters: Array

        attr_accessor :UserName, :Description, :Characters

        def initialize(username=nil, description=nil, characters=nil)
          @UserName = username
          @Description = description
          @Characters = characters
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Description = params['Description']
          unless params['Characters'].nil?
            @Characters = []
            params['Characters'].each do |i|
              character_tmp = Character.new
              character_tmp.deserialize(i)
              @Characters << character_tmp
            end
          end
        end
      end

      # 群聊会话内容
      class GroupMessage < TencentCloud::Common::AbstractModel
        # @param Role: 角色，可选值包括 system、user、assistant、 tool。
        # @type Role: String
        # @param Content: 文本内容
        # @type Content: String
        # @param Name: 角色名称
        # @type Name: String

        attr_accessor :Role, :Content, :Name

        def initialize(role=nil, content=nil, name=nil)
          @Role = role
          @Content = content
          @Name = name
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          @Name = params['Name']
        end
      end

      # 混元生图多轮对话历史记录。
      class History < TencentCloud::Common::AbstractModel
        # @param ChatId: 对话的 ID，用于唯一标识一轮对话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChatId: String
        # @param Prompt: 原始输入的 Prompt 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prompt: String
        # @param RevisedPrompt: 扩写后的 Prompt 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RevisedPrompt: String
        # @param Seed: 生成图的随机种子
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seed: Integer

        attr_accessor :ChatId, :Prompt, :RevisedPrompt, :Seed

        def initialize(chatid=nil, prompt=nil, revisedprompt=nil, seed=nil)
          @ChatId = chatid
          @Prompt = prompt
          @RevisedPrompt = revisedprompt
          @Seed = seed
        end

        def deserialize(params)
          @ChatId = params['ChatId']
          @Prompt = params['Prompt']
          @RevisedPrompt = params['RevisedPrompt']
          @Seed = params['Seed']
        end
      end

      # 图片信息
      class Image < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片Url。
        # @type ImageUrl: String
        # @param ImageBase64: 图片Base64。
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64

        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # 拍照解题内容
      class ImageMessage < TencentCloud::Common::AbstractModel
        # @param Role: 角色，可选值包括 system、user、assistant。
        # @type Role: String
        # @param Content: 文本内容
        # @type Content: String
        # @param Contents: 多种类型内容（目前支持图片和文本），仅 hunyuan-vision 和 hunyuan-turbo-vision 模型支持
        # @type Contents: Array

        attr_accessor :Role, :Content, :Contents

        def initialize(role=nil, content=nil, contents=nil)
          @Role = role
          @Content = content
          @Contents = contents
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              content_tmp = Content.new
              content_tmp.deserialize(i)
              @Contents << content_tmp
            end
          end
        end
      end

      # ImageQuestion请求参数结构体
      class ImageQuestionRequest < TencentCloud::Common::AbstractModel
        # @param Model: 模型名称，可选值包括 hunyuan-vision-image-question。各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。注意：不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param Messages: 聊天上下文信息。说明：1. 长度最多为 40，按对话时间从旧到新在数组中排列。2. Message.Role 可选值：system、user、assistant。其中，system 角色可选，如存在则必须位于列表的最开始。user 和 assistant 需交替出现（一问一答），以 user 提问开始，user提问结束，且 Content 不能为空。Role 的顺序示例：[system（可选） user assistant user assistant user ...]。3. Messages 中 Content 总长度不能超过模型输入长度上限（可参考 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 文档），超过则会截断最前面的内容，只保留尾部内容。
        # @type Messages: Array
        # @param Stream: 流式调用开关。
        # 说明：
        # 1. 未传值时默认为非流式调用（false）。
        # 2. 流式调用时以 SSE 协议增量返回结果（返回值取 Choices[n].Delta 中的值，需要拼接增量数据才能获得完整结果）。
        # 3. 非流式调用时：
        # 调用方式与普通 HTTP 请求无异。
        # 接口响应耗时较长，**如需更低时延建议设置为 true**。
        # 只返回一次最终结果（返回值取 Choices[n].Message 中的值）。

        # 注意：
        # 通过 SDK 调用时，流式和非流式调用需用**不同的方式**获取返回值，具体参考 SDK 中的注释或示例（在各语言 SDK 代码仓库的 examples/hunyuan/v20230901/ 目录中）。
        # @type Stream: Boolean

        attr_accessor :Model, :Messages, :Stream

        def initialize(model=nil, messages=nil, stream=nil)
          @Model = model
          @Messages = messages
          @Stream = stream
        end

        def deserialize(params)
          @Model = params['Model']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              imagemessage_tmp = ImageMessage.new
              imagemessage_tmp.deserialize(i)
              @Messages << imagemessage_tmp
            end
          end
          @Stream = params['Stream']
        end
      end

      # ImageQuestion返回参数结构体
      class ImageQuestionResponse < TencentCloud::Common::AbstractModel
        # @param Created: Unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: Token 统计信息。
        # 按照总 Token 数量计费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.Usage`
        # @param Note: 免责声明。
        # @type Note: String
        # @param Id: 本次请求的 RequestId。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Created, :Usage, :Note, :Id, :Choices, :ErrorMsg, :RequestId

        def initialize(created=nil, usage=nil, note=nil, id=nil, choices=nil, errormsg=nil, requestid=nil)
          @Created = created
          @Usage = usage
          @Note = note
          @Id = id
          @Choices = choices
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Created = params['Created']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @Note = params['Note']
          @Id = params['Id']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              choice_tmp = Choice.new
              choice_tmp.deserialize(i)
              @Choices << choice_tmp
            end
          end
          unless params['ErrorMsg'].nil?
            @ErrorMsg = ErrorMsg.new
            @ErrorMsg.deserialize(params['ErrorMsg'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 具体的图片内容
      class ImageUrl < TencentCloud::Common::AbstractModel
        # @param Url: 图片的 Url（以 http:// 或 https:// 开头）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :Url

        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 外部知识
      class Knowledge < TencentCloud::Common::AbstractModel
        # @param Text: 表示具体的知识信息文本
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # ListGlossaryEntry请求参数结构体
      class ListGlossaryEntryRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID
        # @type GlossaryId: String
        # @param Page: 页码，默认 1
        # @type Page: Integer
        # @param PageSize: 每页数量，默认 10，最大200
        # @type PageSize: Integer

        attr_accessor :GlossaryId, :Page, :PageSize

        def initialize(glossaryid=nil, page=nil, pagesize=nil)
          @GlossaryId = glossaryid
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # ListGlossaryEntry返回参数结构体
      class ListGlossaryEntryResponse < TencentCloud::Common::AbstractModel
        # @param Entries: 术语条目列表
        # @type Entries: Array
        # @param Total: 条目总数量
        # @type Total: Integer
        # @param Page: 当前页码
        # @type Page: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Entries, :Total, :Page, :PageSize, :RequestId

        def initialize(entries=nil, total=nil, page=nil, pagesize=nil, requestid=nil)
          @Entries = entries
          @Total = total
          @Page = page
          @PageSize = pagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentry_tmp = GlossaryEntry.new
              glossaryentry_tmp.deserialize(i)
              @Entries << glossaryentry_tmp
            end
          end
          @Total = params['Total']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @RequestId = params['RequestId']
        end
      end

      # ListGlossary请求参数结构体
      class ListGlossaryRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页码，默认 1
        # @type Page: Integer
        # @param PageSize: 每页数量，默认 10，最大 100
        # @type PageSize: Integer

        attr_accessor :Page, :PageSize

        def initialize(page=nil, pagesize=nil)
          @Page = page
          @PageSize = pagesize
        end

        def deserialize(params)
          @Page = params['Page']
          @PageSize = params['PageSize']
        end
      end

      # ListGlossary返回参数结构体
      class ListGlossaryResponse < TencentCloud::Common::AbstractModel
        # @param Glossaries: 术语库列表
        # @type Glossaries: Array
        # @param Total: 术语库总数量
        # @type Total: Integer
        # @param Page: 当前页码
        # @type Page: Integer
        # @param PageSize: 每页数量
        # @type PageSize: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Glossaries, :Total, :Page, :PageSize, :RequestId

        def initialize(glossaries=nil, total=nil, page=nil, pagesize=nil, requestid=nil)
          @Glossaries = glossaries
          @Total = total
          @Page = page
          @PageSize = pagesize
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Glossaries'].nil?
            @Glossaries = []
            params['Glossaries'].each do |i|
              glossary_tmp = Glossary.new
              glossary_tmp.deserialize(i)
              @Glossaries << glossary_tmp
            end
          end
          @Total = params['Total']
          @Page = params['Page']
          @PageSize = params['PageSize']
          @RequestId = params['RequestId']
        end
      end

      # logo参数
      class LogoParam < TencentCloud::Common::AbstractModel
        # @param LogoUrl: 水印url
        # @type LogoUrl: String
        # @param LogoImage: 水印base64，url和base64二选一传入
        # @type LogoImage: String
        # @param LogoRect: 水印图片位于融合结果图中的坐标，将按照坐标对标识图片进行位置和大小的拉伸匹配
        # @type LogoRect: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoRect`

        attr_accessor :LogoUrl, :LogoImage, :LogoRect

        def initialize(logourl=nil, logoimage=nil, logorect=nil)
          @LogoUrl = logourl
          @LogoImage = logoimage
          @LogoRect = logorect
        end

        def deserialize(params)
          @LogoUrl = params['LogoUrl']
          @LogoImage = params['LogoImage']
          unless params['LogoRect'].nil?
            @LogoRect = LogoRect.new
            @LogoRect.deserialize(params['LogoRect'])
          end
        end
      end

      # 输入框
      class LogoRect < TencentCloud::Common::AbstractModel
        # @param X: 左上角X坐标
        # @type X: Integer
        # @param Y: 左上角Y坐标
        # @type Y: Integer
        # @param Width: 方框宽度
        # @type Width: Integer
        # @param Height: 方框高度
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height

        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 会话内容
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: 角色，可选值包括 system、user、assistant、 tool。
        # @type Role: String
        # @param Content: 文本内容
        # @type Content: String
        # @param Contents: 多种类型内容（目前支持文本、图片和视频），图片支持混元图生文系列模型，视频支持混元视频生文系列模型，详情参考[产品概述](https://cloud.tencent.com/document/product/1729/104753)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contents: Array
        # @param ToolCallId: 当role为tool时传入，标识具体的函数调用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCallId: String
        # @param ToolCalls: 模型生成的工具调用，仅 hunyuan-pro 或者 hunyuan-functioncall 模型支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCalls: Array
        # @param FileIDs: 文件标识符。单次最大 50 个文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileIDs: Array
        # @param ReasoningContent: 思维链内容。用于展示模型思考过程，仅 Hunyuan-T1 系列模型可用。注意：在进行多轮对话时，请**不要**将此字段拼接到 messages 中。请求 messages 的请求参数中包含 reasoning_content，接口将报错。
        # @type ReasoningContent: String

        attr_accessor :Role, :Content, :Contents, :ToolCallId, :ToolCalls, :FileIDs, :ReasoningContent

        def initialize(role=nil, content=nil, contents=nil, toolcallid=nil, toolcalls=nil, fileids=nil, reasoningcontent=nil)
          @Role = role
          @Content = content
          @Contents = contents
          @ToolCallId = toolcallid
          @ToolCalls = toolcalls
          @FileIDs = fileids
          @ReasoningContent = reasoningcontent
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              content_tmp = Content.new
              content_tmp.deserialize(i)
              @Contents << content_tmp
            end
          end
          @ToolCallId = params['ToolCallId']
          unless params['ToolCalls'].nil?
            @ToolCalls = []
            params['ToolCalls'].each do |i|
              toolcall_tmp = ToolCall.new
              toolcall_tmp.deserialize(i)
              @ToolCalls << toolcall_tmp
            end
          end
          @FileIDs = params['FileIDs']
          @ReasoningContent = params['ReasoningContent']
        end
      end

      # 脑图
      class Mindmap < TencentCloud::Common::AbstractModel
        # @param ThumbUrl: 脑图缩略图链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThumbUrl: String
        # @param Url: 脑图图片链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :ThumbUrl, :Url

        def initialize(thumburl=nil, url=nil)
          @ThumbUrl = thumburl
          @Url = url
        end

        def deserialize(params)
          @ThumbUrl = params['ThumbUrl']
          @Url = params['Url']
        end
      end

      # 多媒体详情
      class Multimedia < TencentCloud::Common::AbstractModel
        # @param Type: 多媒体类型，可选值包括 image、music、album、playlist。
        # 说明：
        # 1. image：图片；music：单曲，类型为单曲时，会返回详细歌手和歌曲信息；album：专辑；playlist：歌单。
        # 2. 当 type 为 music、album、playlist 时，需要配合 [QQ音乐SDK](https://developer.y.qq.com/) 使用。
        # @type Type: String
        # @param Url: 多媒体地址。
        # 说明：
        # 1. type 为 image 时，地址为图片的预览地址；其他类型时，地址为封面图地址。
        # @type Url: String
        # @param Width: 如果Url为图片地址，标识图片宽度。
        # @type Width: Integer
        # @param Height: 如果Url为图片地址，标识图片高度。
        # @type Height: Integer
        # @param JumpUrl: 多媒体详情地址。
        # 说明：
        # 1. 仅 type 为 image 时，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JumpUrl: String
        # @param ThumbURL: 缩略图地址。
        # @type ThumbURL: String
        # @param ThumbWidth: 缩略图宽度
        # @type ThumbWidth: Integer
        # @param ThumbHeight: 缩略图高度
        # @type ThumbHeight: Integer
        # @param Title: 名称。
        # 说明：
        # 1. type 为 image 时，该字段为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Desc: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Singer: 歌手名称。
        # 说明：
        # 1. 仅 type 为 music 时，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Singer: String
        # @param Ext: 歌曲详情。
        # 说明：
        # 1. 仅 type 为 music 时，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: :class:`Tencentcloud::Hunyuan.v20230901.models.SongExt`
        # @param PublishTime: 发布时间。
        # @type PublishTime: String
        # @param SiteName: 站点名称
        # @type SiteName: String
        # @param SiteIcon: 站点图标
        # @type SiteIcon: String

        attr_accessor :Type, :Url, :Width, :Height, :JumpUrl, :ThumbURL, :ThumbWidth, :ThumbHeight, :Title, :Desc, :Singer, :Ext, :PublishTime, :SiteName, :SiteIcon

        def initialize(type=nil, url=nil, width=nil, height=nil, jumpurl=nil, thumburl=nil, thumbwidth=nil, thumbheight=nil, title=nil, desc=nil, singer=nil, ext=nil, publishtime=nil, sitename=nil, siteicon=nil)
          @Type = type
          @Url = url
          @Width = width
          @Height = height
          @JumpUrl = jumpurl
          @ThumbURL = thumburl
          @ThumbWidth = thumbwidth
          @ThumbHeight = thumbheight
          @Title = title
          @Desc = desc
          @Singer = singer
          @Ext = ext
          @PublishTime = publishtime
          @SiteName = sitename
          @SiteIcon = siteicon
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          @Width = params['Width']
          @Height = params['Height']
          @JumpUrl = params['JumpUrl']
          @ThumbURL = params['ThumbURL']
          @ThumbWidth = params['ThumbWidth']
          @ThumbHeight = params['ThumbHeight']
          @Title = params['Title']
          @Desc = params['Desc']
          @Singer = params['Singer']
          unless params['Ext'].nil?
            @Ext = SongExt.new
            @Ext.deserialize(params['Ext'])
          end
          @PublishTime = params['PublishTime']
          @SiteName = params['SiteName']
          @SiteIcon = params['SiteIcon']
        end
      end

      # 大模型执行状态
      class Processes < TencentCloud::Common::AbstractModel
        # @param Message: 输出信息
        # @type Message: String
        # @param State: plan:开始获取资料…
        # recall:找到 n 篇相关资料
        # quote:引用 n 篇资料作为参考
        # @type State: String
        # @param Num: 当状态是recall和quote，会给出来相关数量
        # @type Num: Integer

        attr_accessor :Message, :State, :Num

        def initialize(message=nil, state=nil, num=nil)
          @Message = message
          @State = state
          @Num = num
        end

        def deserialize(params)
          @Message = params['Message']
          @State = params['State']
          @Num = params['Num']
        end
      end

      # 输入token的详细信息。
      class PromptTokensDetails < TencentCloud::Common::AbstractModel
        # @param CachedTokens: 缓存 token 的数量。
        # @type CachedTokens: String

        attr_accessor :CachedTokens

        def initialize(cachedtokens=nil)
          @CachedTokens = cachedtokens
        end

        def deserialize(params)
          @CachedTokens = params['CachedTokens']
        end
      end

      # QueryHunyuanImageChatJob请求参数结构体
      class QueryHunyuanImageChatJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryHunyuanImageChatJob返回参数结构体
      class QueryHunyuanImageChatJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 当前任务状态码：
        # 1：等待中、2：运行中、4：处理失败、5：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 当前任务状态：排队中、处理中、处理失败或者处理完成。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务处理失败错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务处理失败错误信息。
        # @type JobErrorMsg: String
        # @param ChatId: 本轮对话的 ChatId，ChatId 用于唯一标识一轮对话。
        # 一个对话组中，最多支持进行100轮对话。
        # 每轮对话数据有效期为7天，到期后 ChatId 失效，有效期内的历史对话数据可通过 History 查询，如有长期使用需求请及时保存输入输出数据。
        # @type ChatId: String
        # @param ResultImage: 生成图 URL 列表，有效期7天，请及时保存。
        # @type ResultImage: Array
        # @param ResultDetails: 结果 detail 数组，Success 代表成功。
        # @type ResultDetails: Array
        # @param History: 本轮对话前置的历史对话数据（不含生成图）。
        # @type History: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ChatId, :ResultImage, :ResultDetails, :History, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, chatid=nil, resultimage=nil, resultdetails=nil, history=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ChatId = chatid
          @ResultImage = resultimage
          @ResultDetails = resultdetails
          @History = history
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ChatId = params['ChatId']
          @ResultImage = params['ResultImage']
          @ResultDetails = params['ResultDetails']
          unless params['History'].nil?
            @History = []
            params['History'].each do |i|
              history_tmp = History.new
              history_tmp.deserialize(i)
              @History << history_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryHunyuanImageJob请求参数结构体
      class QueryHunyuanImageJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryHunyuanImageJob返回参数结构体
      class QueryHunyuanImageJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 当前任务状态码：
        # 1：等待中、2：运行中、4：处理失败、5：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 当前任务状态：排队中、处理中、处理失败或者处理完成。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务处理失败错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务处理失败错误信息。
        # @type JobErrorMsg: String
        # @param ResultImage: 生成图 URL 列表，有效期1小时，请及时保存。
        # @type ResultImage: Array
        # @param ResultDetails: 结果 detail 数组，Success 代表成功。
        # @type ResultDetails: Array
        # @param RevisedPrompt: 对应 SubmitHunyuanImageJob 接口中 Revise 参数。开启扩写时，返回扩写后的 prompt 文本。 如果关闭扩写，将直接返回原始输入的 prompt。
        # @type RevisedPrompt: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ResultImage, :ResultDetails, :RevisedPrompt, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, resultimage=nil, resultdetails=nil, revisedprompt=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultImage = resultimage
          @ResultDetails = resultdetails
          @RevisedPrompt = revisedprompt
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultImage = params['ResultImage']
          @ResultDetails = params['ResultDetails']
          @RevisedPrompt = params['RevisedPrompt']
          @RequestId = params['RequestId']
        end
      end

      # 翻译对话参考示例
      class Reference < TencentCloud::Common::AbstractModel
        # @param Type: 翻译文本类型，枚举"sentence"表示句子, "term"表示术语
        # @type Type: String
        # @param Text: 原文
        # @type Text: String
        # @param Translation: 译文
        # @type Translation: String

        attr_accessor :Type, :Text, :Translation

        def initialize(type=nil, text=nil, translation=nil)
          @Type = type
          @Text = text
          @Translation = translation
        end

        def deserialize(params)
          @Type = params['Type']
          @Text = params['Text']
          @Translation = params['Translation']
        end
      end

      # 相关组织及人物
      class RelevantEntity < TencentCloud::Common::AbstractModel
        # @param Name: 相关组织及人物名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Content: 相关组织及人物内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Reference: 相关事件引用文章标号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: Array

        attr_accessor :Name, :Content, :Reference

        def initialize(name=nil, content=nil, reference=nil)
          @Name = name
          @Content = content
          @Reference = reference
        end

        def deserialize(params)
          @Name = params['Name']
          @Content = params['Content']
          @Reference = params['Reference']
        end
      end

      # 相关事件
      class RelevantEvent < TencentCloud::Common::AbstractModel
        # @param Title: 相关事件标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Content: 相关事件内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Datetime: 相关事件时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Datetime: String
        # @param Reference: 相关事件引用文章标号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reference: Array

        attr_accessor :Title, :Content, :Datetime, :Reference

        def initialize(title=nil, content=nil, datetime=nil, reference=nil)
          @Title = title
          @Content = content
          @Datetime = datetime
          @Reference = reference
        end

        def deserialize(params)
          @Title = params['Title']
          @Content = params['Content']
          @Datetime = params['Datetime']
          @Reference = params['Reference']
        end
      end

      # 多媒体占位符替换信息
      class Replace < TencentCloud::Common::AbstractModel
        # @param Id: 占位符序号
        # @type Id: String
        # @param Multimedia: 多媒体详情
        # @type Multimedia: Array

        attr_accessor :Id, :Multimedia

        def initialize(id=nil, multimedia=nil)
          @Id = id
          @Multimedia = multimedia
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['Multimedia'].nil?
            @Multimedia = []
            params['Multimedia'].each do |i|
              multimedia_tmp = Multimedia.new
              multimedia_tmp.deserialize(i)
              @Multimedia << multimedia_tmp
            end
          end
        end
      end

      # RunThread请求参数结构体
      class RunThreadRequest < TencentCloud::Common::AbstractModel
        # @param ThreadID: 会话 ID
        # @type ThreadID: String
        # @param AssistantID: 助手 ID（目前未使用，留空）
        # @type AssistantID: String
        # @param Model: 模型名称，可选值包括 hunyuan-lite、hunyuan-standard、hunyuan-standard-256K、hunyuan-pro、 hunyuan-code、 hunyuan-role、 hunyuan-functioncall、 hunyuan-vision、 hunyuan-turbo。各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。注意：不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param AdditionalMessages: 附加消息
        # @type AdditionalMessages: Array
        # @param Temperature: 说明：1. 影响模型输出多样性，模型已有默认参数，不传值时使用各模型推荐值，不推荐用户修改。2. 取值区间为 [0.0, 2.0]。较高的数值会使输出更加多样化和不可预测，而较低的数值会使其更加集中和确定。
        # @type Temperature: Float
        # @param TopP: 说明：1. 影响输出文本的多样性。模型已有默认参数，不传值时使用各模型推荐值，不推荐用户修改。2. 取值区间为 [0.0, 1.0]。取值越大，生成文本的多样性越强。
        # @type TopP: Float
        # @param Stream: 是否流式输出，当前只允许 true
        # @type Stream: Boolean
        # @param MaxPromptTokens: 运行过程中可使用的 token 最大数量。
        # @type MaxPromptTokens: Integer
        # @param MaxCompletionTokens: 运行过程中可使用的完成 token 的最大数量。
        # @type MaxCompletionTokens: Integer
        # @param Tools: 可调用的工具列表，仅对 hunyuan-pro、hunyuan-turbo、hunyuan-functioncall 模型生效。
        # @type Tools: Array
        # @param ToolChoice: 工具使用选项，可选值包括 none、auto、custom。说明：1. 仅对 hunyuan-pro、hunyuan-turbo、hunyuan-functioncall 模型生效。2. none：不调用工具；auto：模型自行选择生成回复或调用工具；custom：强制模型调用指定的工具。3. 未设置时，默认值为auto
        # @type ToolChoice: String

        attr_accessor :ThreadID, :AssistantID, :Model, :AdditionalMessages, :Temperature, :TopP, :Stream, :MaxPromptTokens, :MaxCompletionTokens, :Tools, :ToolChoice

        def initialize(threadid=nil, assistantid=nil, model=nil, additionalmessages=nil, temperature=nil, topp=nil, stream=nil, maxprompttokens=nil, maxcompletiontokens=nil, tools=nil, toolchoice=nil)
          @ThreadID = threadid
          @AssistantID = assistantid
          @Model = model
          @AdditionalMessages = additionalmessages
          @Temperature = temperature
          @TopP = topp
          @Stream = stream
          @MaxPromptTokens = maxprompttokens
          @MaxCompletionTokens = maxcompletiontokens
          @Tools = tools
          @ToolChoice = toolchoice
        end

        def deserialize(params)
          @ThreadID = params['ThreadID']
          @AssistantID = params['AssistantID']
          @Model = params['Model']
          unless params['AdditionalMessages'].nil?
            @AdditionalMessages = []
            params['AdditionalMessages'].each do |i|
              threadadditionalmessage_tmp = ThreadAdditionalMessage.new
              threadadditionalmessage_tmp.deserialize(i)
              @AdditionalMessages << threadadditionalmessage_tmp
            end
          end
          @Temperature = params['Temperature']
          @TopP = params['TopP']
          @Stream = params['Stream']
          @MaxPromptTokens = params['MaxPromptTokens']
          @MaxCompletionTokens = params['MaxCompletionTokens']
          unless params['Tools'].nil?
            @Tools = []
            params['Tools'].each do |i|
              tool_tmp = Tool.new
              tool_tmp.deserialize(i)
              @Tools << tool_tmp
            end
          end
          @ToolChoice = params['ToolChoice']
        end
      end

      # RunThread返回参数结构体
      class RunThreadResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 搜索结果信息
      class SearchInfo < TencentCloud::Common::AbstractModel
        # @param SearchResults: 搜索引文信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchResults: Array
        # @param Mindmap: 脑图（回复中不一定存在，流式协议中，仅在最后一条流式数据中返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mindmap: :class:`Tencentcloud::Hunyuan.v20230901.models.Mindmap`
        # @param RelevantEvents: 相关事件（回复中不一定存在，流式协议中，仅在最后一条流式数据中返回，深度模式下返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantEvents: Array
        # @param RelevantEntities: 相关组织及人物（回复中不一定存在，流式协议中，仅在最后一条流式数据中返回，深度模式下返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantEntities: Array
        # @param Timeline: 时间线（回复中不一定存在，流式协议中，仅在最后一条流式数据中返回，深度模式下返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timeline: Array
        # @param SupportDeepSearch: 是否命中搜索深度模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportDeepSearch: Boolean
        # @param Outline: 搜索回复大纲（深度模式下返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Outline: Array

        attr_accessor :SearchResults, :Mindmap, :RelevantEvents, :RelevantEntities, :Timeline, :SupportDeepSearch, :Outline

        def initialize(searchresults=nil, mindmap=nil, relevantevents=nil, relevantentities=nil, timeline=nil, supportdeepsearch=nil, outline=nil)
          @SearchResults = searchresults
          @Mindmap = mindmap
          @RelevantEvents = relevantevents
          @RelevantEntities = relevantentities
          @Timeline = timeline
          @SupportDeepSearch = supportdeepsearch
          @Outline = outline
        end

        def deserialize(params)
          unless params['SearchResults'].nil?
            @SearchResults = []
            params['SearchResults'].each do |i|
              searchresult_tmp = SearchResult.new
              searchresult_tmp.deserialize(i)
              @SearchResults << searchresult_tmp
            end
          end
          unless params['Mindmap'].nil?
            @Mindmap = Mindmap.new
            @Mindmap.deserialize(params['Mindmap'])
          end
          unless params['RelevantEvents'].nil?
            @RelevantEvents = []
            params['RelevantEvents'].each do |i|
              relevantevent_tmp = RelevantEvent.new
              relevantevent_tmp.deserialize(i)
              @RelevantEvents << relevantevent_tmp
            end
          end
          unless params['RelevantEntities'].nil?
            @RelevantEntities = []
            params['RelevantEntities'].each do |i|
              relevantentity_tmp = RelevantEntity.new
              relevantentity_tmp.deserialize(i)
              @RelevantEntities << relevantentity_tmp
            end
          end
          unless params['Timeline'].nil?
            @Timeline = []
            params['Timeline'].each do |i|
              timeline_tmp = Timeline.new
              timeline_tmp.deserialize(i)
              @Timeline << timeline_tmp
            end
          end
          @SupportDeepSearch = params['SupportDeepSearch']
          @Outline = params['Outline']
        end
      end

      # 搜索引文信息
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param Index: 搜索引文序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Title: 搜索引文标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Url: 搜索引文链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Text: 搜索引文站点名
        # @type Text: String
        # @param Icon: 搜索引文图标
        # @type Icon: String

        attr_accessor :Index, :Title, :Url, :Text, :Icon

        def initialize(index=nil, title=nil, url=nil, text=nil, icon=nil)
          @Index = index
          @Title = title
          @Url = url
          @Text = text
          @Icon = icon
        end

        def deserialize(params)
          @Index = params['Index']
          @Title = params['Title']
          @Url = params['Url']
          @Text = params['Text']
          @Icon = params['Icon']
        end
      end

      # SetPayMode请求参数结构体
      class SetPayModeRequest < TencentCloud::Common::AbstractModel
        # @param PayMode: 设置后付费状态，0：后付费打开；1：后付费关闭
        # @type PayMode: Integer

        attr_accessor :PayMode

        def initialize(paymode=nil)
          @PayMode = paymode
        end

        def deserialize(params)
          @PayMode = params['PayMode']
        end
      end

      # SetPayMode返回参数结构体
      class SetPayModeResponse < TencentCloud::Common::AbstractModel
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

      # 歌曲详情。具体含义参考  [QQ音乐SDK](https://developer.y.qq.com/)
      class SongExt < TencentCloud::Common::AbstractModel
        # @param SongId: 歌曲id
        # @type SongId: Integer
        # @param SongMid: 歌曲mid
        # @type SongMid: String
        # @param Vip: 歌曲是否为vip。1：vip歌曲； 0：普通歌曲。
        # @type Vip: Integer

        attr_accessor :SongId, :SongMid, :Vip

        def initialize(songid=nil, songmid=nil, vip=nil)
          @SongId = songid
          @SongMid = songmid
          @Vip = vip
        end

        def deserialize(params)
          @SongId = params['SongId']
          @SongMid = params['SongMid']
          @Vip = params['Vip']
        end
      end

      # SubmitHunyuanImageChatJob请求参数结构体
      class SubmitHunyuanImageChatJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 本轮对话的文本描述。
        # 提交一个任务请求对应发起一轮生图对话，每轮对话中可输入一条 Prompt，生成一张图像，支持通过多轮输入 Prompt 来不断调整图像内容。
        # 推荐使用中文，最多可传1024个 utf-8 字符。
        # 输入示例：
        # <li> 第一轮对话：一颗红色的苹果 </li>
        # <li> 第二轮对话：将苹果改为绿色 </li>
        # <li> 第三轮对话：苹果放在桌子上 </li>
        # @type Prompt: String
        # @param ChatId: 上传上一轮对话的 ChatId，本轮对话将在指定的上一轮对话结果基础上继续生成图像。
        # 如果不传代表新建一个对话组，重新开启一轮新的对话。
        # 一个对话组中，最多支持进行100轮对话。
        # @type ChatId: String
        # @param LogoAdd: 为生成结果图添加显式水印标识的开关，默认为1。
        # 1：添加。
        # 0：不添加。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoParam`

        attr_accessor :Prompt, :ChatId, :LogoAdd, :LogoParam

        def initialize(prompt=nil, chatid=nil, logoadd=nil, logoparam=nil)
          @Prompt = prompt
          @ChatId = chatid
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @ChatId = params['ChatId']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitHunyuanImageChatJob返回参数结构体
      class SubmitHunyuanImageChatJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # SubmitHunyuanImageJob请求参数结构体
      class SubmitHunyuanImageJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。
        # 算法将根据输入的文本智能生成与之相关的图像。
        # 不能为空，推荐使用中文。最多可传1024个 utf-8 字符。
        # @type Prompt: String
        # @param NegativePrompt: 反向提示词。
        # 推荐使用中文。最多可传1024个 utf-8 字符。
        # @type NegativePrompt: String
        # @param Style: 绘画风格。
        # 请在 [混元生图风格列表](https://cloud.tencent.com/document/product/1729/105846) 中选择期望的风格，传入风格编号。
        # 不传默认不指定风格。
        # @type Style: String
        # @param Resolution: 生成图分辨率。
        # 支持生成以下分辨率的图片：768:768（1:1）、768:1024（3:4）、1024:768（4:3）、1024:1024（1:1）、720:1280（9:16）、1280:720（16:9）、768:1280（3:5）、1280:768（5:3），不传默认使用1024:1024。
        # 如果上传 ContentImage 参考图，分辨率仅支持：768:768（1:1）、768:1024（3:4）、1024:768（4:3）、1024:1024（1:1），不传将自动适配分辨率。如果参考图被用于做风格转换，将生成保持原图长宽比例且长边为1024的图片，指定的分辨率不生效。
        # @type Resolution: String
        # @param Num: 图片生成数量。
        # 支持1 ~ 4张，默认生成1张。
        # @type Num: Integer
        # @param Clarity: 超分选项，默认不做超分，可选开启。
        #  x2：2倍超分
        #  x4：4倍超分
        # 在 Resolution 的基础上按比例提高分辨率，例如1024:1024开启2倍超分后将得到2048:2048。
        # @type Clarity: String
        # @param ContentImage: 用于引导内容的参考图。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 8MB，格式支持 jpg、jpeg、png。
        # @type ContentImage: :class:`Tencentcloud::Hunyuan.v20230901.models.Image`
        # @param Revise: prompt 扩写开关。1为开启，0为关闭，不传默认开启。
        # 开启扩写后，将自动扩写原始输入的 prompt 并使用扩写后的 prompt 生成图片，返回生成图片结果时将一并返回扩写后的 prompt 文本。
        # 如果关闭扩写，将直接使用原始输入的 prompt 生成图片。如果上传了参考图，扩写关闭不生效，将保持开启。
        # 建议开启，在多数场景下可提升生成图片效果、丰富生成图片细节。
        # @type Revise: Integer
        # @param Seed: 随机种子，默认随机。
        # 不传：随机种子生成。
        # 正数：固定种子生成。
        # 扩写开启时固定种子不生效，将保持随机。
        # @type Seed: Integer
        # @param LogoAdd: 为生成结果图添加显式水印标识的开关，默认为1。
        # 1：添加。
        # 0：不添加。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoParam`

        attr_accessor :Prompt, :NegativePrompt, :Style, :Resolution, :Num, :Clarity, :ContentImage, :Revise, :Seed, :LogoAdd, :LogoParam

        def initialize(prompt=nil, negativeprompt=nil, style=nil, resolution=nil, num=nil, clarity=nil, contentimage=nil, revise=nil, seed=nil, logoadd=nil, logoparam=nil)
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Style = style
          @Resolution = resolution
          @Num = num
          @Clarity = clarity
          @ContentImage = contentimage
          @Revise = revise
          @Seed = seed
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @NegativePrompt = params['NegativePrompt']
          @Style = params['Style']
          @Resolution = params['Resolution']
          @Num = params['Num']
          @Clarity = params['Clarity']
          unless params['ContentImage'].nil?
            @ContentImage = Image.new
            @ContentImage.deserialize(params['ContentImage'])
          end
          @Revise = params['Revise']
          @Seed = params['Seed']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitHunyuanImageJob返回参数结构体
      class SubmitHunyuanImageJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # TextToImageLite请求参数结构体
      class TextToImageLiteRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。
        # 算法将根据输入的文本智能生成与之相关的图像。建议详细描述画面主体、细节、场景等，文本描述越丰富，生成效果越精美。
        # 不能为空，推荐使用中文。最多可传256个 utf-8 字符。
        # @type Prompt: String
        # @param NegativePrompt: 反向文本描述。
        # 用于一定程度上从反面引导模型生成的走向，减少生成结果中出现描述内容的可能，但不能完全杜绝。
        # 推荐使用中文。最多可传256个 utf-8 字符。
        # @type NegativePrompt: String
        # @param Style: 绘画风格。
        # 请在 [文生图轻量版风格列表](https://cloud.tencent.com/document/product/1729/108992) 中选择期望的风格，传入风格编号。不传默认使用201（日系动漫风格）。
        # @type Style: String
        # @param Resolution: 生成图分辨率。
        # 支持生成以下分辨率的图片：768:768（1:1）、768:1024（3:4）、1024:768（4:3）、1024:1024（1:1）、720:1280（9:16）、1280:720（16:9）、768:1280（3:5）、1280:768（5:3）、1080:1920（9:16）、1920:1080（16:9），不传默认使用768:768。
        # @type Resolution: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按0处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String

        attr_accessor :Prompt, :NegativePrompt, :Style, :Resolution, :LogoAdd, :LogoParam, :RspImgType

        def initialize(prompt=nil, negativeprompt=nil, style=nil, resolution=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Style = style
          @Resolution = resolution
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @NegativePrompt = params['NegativePrompt']
          @Style = params['Style']
          @Resolution = params['Resolution']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # TextToImageLite返回参数结构体
      class TextToImageLiteResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # 会话额外消息
      class ThreadAdditionalMessage < TencentCloud::Common::AbstractModel
        # @param Role: 角色
        # @type Role: String
        # @param Content: 内容
        # @type Content: String
        # @param Attachments: 附件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attachments: Array

        attr_accessor :Role, :Content, :Attachments

        def initialize(role=nil, content=nil, attachments=nil)
          @Role = role
          @Content = content
          @Attachments = attachments
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          unless params['Attachments'].nil?
            @Attachments = []
            params['Attachments'].each do |i|
              threadmessageattachmentobject_tmp = ThreadMessageAttachmentObject.new
              threadmessageattachmentobject_tmp.deserialize(i)
              @Attachments << threadmessageattachmentobject_tmp
            end
          end
        end
      end

      # 会话消息
      class ThreadMessage < TencentCloud::Common::AbstractModel
        # @param ID: 消息 ID
        # @type ID: String
        # @param Object: 对象类型
        # @type Object: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: Integer
        # @param ThreadID: 会话 ID
        # @type ThreadID: String
        # @param Status: 状态，处理中 in_progress，已完成 completed，未完成 incomplete。
        # @type Status: String
        # @param InCompleteDetails: 未完成原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCompleteDetails: :class:`Tencentcloud::Hunyuan.v20230901.models.ThreadMessageInCompleteDetailsObject`
        # @param CompletedAt: 完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompletedAt: Integer
        # @param InCompleteAt: 未完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InCompleteAt: Integer
        # @param Role: 角色
        # @type Role: String
        # @param Content: 内容
        # @type Content: String
        # @param AssistantID: 助手 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantID: String
        # @param RunID: 运行 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunID: String
        # @param Attachments: 附件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attachments: Array

        attr_accessor :ID, :Object, :CreatedAt, :ThreadID, :Status, :InCompleteDetails, :CompletedAt, :InCompleteAt, :Role, :Content, :AssistantID, :RunID, :Attachments

        def initialize(id=nil, object=nil, createdat=nil, threadid=nil, status=nil, incompletedetails=nil, completedat=nil, incompleteat=nil, role=nil, content=nil, assistantid=nil, runid=nil, attachments=nil)
          @ID = id
          @Object = object
          @CreatedAt = createdat
          @ThreadID = threadid
          @Status = status
          @InCompleteDetails = incompletedetails
          @CompletedAt = completedat
          @InCompleteAt = incompleteat
          @Role = role
          @Content = content
          @AssistantID = assistantid
          @RunID = runid
          @Attachments = attachments
        end

        def deserialize(params)
          @ID = params['ID']
          @Object = params['Object']
          @CreatedAt = params['CreatedAt']
          @ThreadID = params['ThreadID']
          @Status = params['Status']
          unless params['InCompleteDetails'].nil?
            @InCompleteDetails = ThreadMessageInCompleteDetailsObject.new
            @InCompleteDetails.deserialize(params['InCompleteDetails'])
          end
          @CompletedAt = params['CompletedAt']
          @InCompleteAt = params['InCompleteAt']
          @Role = params['Role']
          @Content = params['Content']
          @AssistantID = params['AssistantID']
          @RunID = params['RunID']
          unless params['Attachments'].nil?
            @Attachments = []
            params['Attachments'].each do |i|
              threadmessageattachmentobject_tmp = ThreadMessageAttachmentObject.new
              threadmessageattachmentobject_tmp.deserialize(i)
              @Attachments << threadmessageattachmentobject_tmp
            end
          end
        end
      end

      # 会话消息附件
      class ThreadMessageAttachmentObject < TencentCloud::Common::AbstractModel
        # @param FileID: 文件 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileID: String

        attr_accessor :FileID

        def initialize(fileid=nil)
          @FileID = fileid
        end

        def deserialize(params)
          @FileID = params['FileID']
        end
      end

      # 会话消息未完成原因
      class ThreadMessageInCompleteDetailsObject < TencentCloud::Common::AbstractModel
        # @param Reason: 会话消息未完成原因
        # @type Reason: String

        attr_accessor :Reason

        def initialize(reason=nil)
          @Reason = reason
        end

        def deserialize(params)
          @Reason = params['Reason']
        end
      end

      # 在会话中提供给助手工具的一系列资源。不同类型的工具会有各自对应的资源。比如代码解释器需要一个文件 ID 的列表，而文件搜索工具则需要一个向量存储 ID 的列表。
      class ThreadToolResources < TencentCloud::Common::AbstractModel
        # @param CodeInterpreter: 文件 ID 列表
        # @type CodeInterpreter: Array
        # @param VectorStoreIDs: 向量存储 ID 列表
        # @type VectorStoreIDs: Array

        attr_accessor :CodeInterpreter, :VectorStoreIDs

        def initialize(codeinterpreter=nil, vectorstoreids=nil)
          @CodeInterpreter = codeinterpreter
          @VectorStoreIDs = vectorstoreids
        end

        def deserialize(params)
          @CodeInterpreter = params['CodeInterpreter']
          @VectorStoreIDs = params['VectorStoreIDs']
        end
      end

      # 时间线
      class Timeline < TencentCloud::Common::AbstractModel
        # @param Title: 标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Datetime: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Datetime: String
        # @param Url: 相关网页链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :Title, :Datetime, :Url

        def initialize(title=nil, datetime=nil, url=nil)
          @Title = title
          @Datetime = datetime
          @Url = url
        end

        def deserialize(params)
          @Title = params['Title']
          @Datetime = params['Datetime']
          @Url = params['Url']
        end
      end

      # 用户指定模型使用的工具
      class Tool < TencentCloud::Common::AbstractModel
        # @param Type: 工具类型，当前只支持function
        # @type Type: String
        # @param Function: 具体要调用的function
        # @type Function: :class:`Tencentcloud::Hunyuan.v20230901.models.ToolFunction`

        attr_accessor :Type, :Function

        def initialize(type=nil, function=nil)
          @Type = type
          @Function = function
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Function'].nil?
            @Function = ToolFunction.new
            @Function.deserialize(params['Function'])
          end
        end
      end

      # 模型生成的工具调用
      class ToolCall < TencentCloud::Common::AbstractModel
        # @param Id: 工具调用id
        # @type Id: String
        # @param Type: 工具调用类型，当前只支持function
        # @type Type: String
        # @param Function: 具体的function调用
        # @type Function: :class:`Tencentcloud::Hunyuan.v20230901.models.ToolCallFunction`
        # @param Index: 索引值
        # @type Index: Integer

        attr_accessor :Id, :Type, :Function, :Index

        def initialize(id=nil, type=nil, function=nil, index=nil)
          @Id = id
          @Type = type
          @Function = function
          @Index = index
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          unless params['Function'].nil?
            @Function = ToolCallFunction.new
            @Function.deserialize(params['Function'])
          end
          @Index = params['Index']
        end
      end

      # 具体的function调用
      class ToolCallFunction < TencentCloud::Common::AbstractModel
        # @param Name: function名称
        # @type Name: String
        # @param Arguments: function参数，一般为json字符串
        # @type Arguments: String

        attr_accessor :Name, :Arguments

        def initialize(name=nil, arguments=nil)
          @Name = name
          @Arguments = arguments
        end

        def deserialize(params)
          @Name = params['Name']
          @Arguments = params['Arguments']
        end
      end

      # function定义
      class ToolFunction < TencentCloud::Common::AbstractModel
        # @param Name: function名称，只能包含a-z，A-Z，0-9，\_或-
        # @type Name: String
        # @param Parameters: function参数，一般为json字符串
        # @type Parameters: String
        # @param Description: function的简单描述
        # @type Description: String

        attr_accessor :Name, :Parameters, :Description

        def initialize(name=nil, parameters=nil, description=nil)
          @Name = name
          @Parameters = parameters
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Parameters = params['Parameters']
          @Description = params['Description']
        end
      end

      # 翻译接口返回的回复，支持多个
      class TranslationChoice < TencentCloud::Common::AbstractModel
        # @param FinishReason: 结束标志位，可能为 stop、 sensitive。
        # stop 表示输出正常结束。
        # sensitive 只在开启流式输出审核时会出现，表示安全审核未通过。
        # @type FinishReason: String
        # @param Index: 索引值，流式调用时使用该字段。
        # @type Index: Integer
        # @param Delta: 增量返回值，流式调用时使用该字段。
        # @type Delta: :class:`Tencentcloud::Hunyuan.v20230901.models.TranslationDelta`
        # @param Message: 返回值，非流式调用时使用该字段。
        # @type Message: :class:`Tencentcloud::Hunyuan.v20230901.models.TranslationMessage`

        attr_accessor :FinishReason, :Index, :Delta, :Message

        def initialize(finishreason=nil, index=nil, delta=nil, message=nil)
          @FinishReason = finishreason
          @Index = index
          @Delta = delta
          @Message = message
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          @Index = params['Index']
          unless params['Delta'].nil?
            @Delta = TranslationDelta.new
            @Delta.deserialize(params['Delta'])
          end
          unless params['Message'].nil?
            @Message = TranslationMessage.new
            @Message.deserialize(params['Message'])
          end
        end
      end

      # 翻译接口返回的内容（流式返回）
      class TranslationDelta < TencentCloud::Common::AbstractModel
        # @param Role: 角色名称。
        # @type Role: String
        # @param Content: 内容详情。
        # @type Content: String

        attr_accessor :Role, :Content

        def initialize(role=nil, content=nil)
          @Role = role
          @Content = content
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
        end
      end

      # 翻译接口会话内容
      class TranslationMessage < TencentCloud::Common::AbstractModel
        # @param Role: 角色，可选值包括 system、user、assistant、 tool。
        # @type Role: String
        # @param Content: 文本内容
        # @type Content: String

        attr_accessor :Role, :Content

        def initialize(role=nil, content=nil)
          @Role = role
          @Content = content
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
        end
      end

      # UpdateGlossaryEntry请求参数结构体
      class UpdateGlossaryEntryRequest < TencentCloud::Common::AbstractModel
        # @param GlossaryId: 术语库 ID
        # @type GlossaryId: String
        # @param Entries: 需要更新的术语条目列表，单次请求限制100个
        # @type Entries: Array

        attr_accessor :GlossaryId, :Entries

        def initialize(glossaryid=nil, entries=nil)
          @GlossaryId = glossaryid
          @Entries = entries
        end

        def deserialize(params)
          @GlossaryId = params['GlossaryId']
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentryupdateitem_tmp = GlossaryEntryUpdateItem.new
              glossaryentryupdateitem_tmp.deserialize(i)
              @Entries << glossaryentryupdateitem_tmp
            end
          end
        end
      end

      # UpdateGlossaryEntry返回参数结构体
      class UpdateGlossaryEntryResponse < TencentCloud::Common::AbstractModel
        # @param Entries: 成功更新的术语条目
        # @type Entries: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Entries, :RequestId

        def initialize(entries=nil, requestid=nil)
          @Entries = entries
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Entries'].nil?
            @Entries = []
            params['Entries'].each do |i|
              glossaryentry_tmp = GlossaryEntry.new
              glossaryentry_tmp.deserialize(i)
              @Entries << glossaryentry_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # Token 数量
      class Usage < TencentCloud::Common::AbstractModel
        # @param PromptTokens: 输入 Token 数量。
        # @type PromptTokens: Integer
        # @param CompletionTokens: 输出 Token 数量。
        # @type CompletionTokens: Integer
        # @param TotalTokens: 总 Token 数量。
        # @type TotalTokens: Integer
        # @param PromptTokensDetails: 输入 token 的详情。
        # @type PromptTokensDetails: :class:`Tencentcloud::Hunyuan.v20230901.models.PromptTokensDetails`

        attr_accessor :PromptTokens, :CompletionTokens, :TotalTokens, :PromptTokensDetails

        def initialize(prompttokens=nil, completiontokens=nil, totaltokens=nil, prompttokensdetails=nil)
          @PromptTokens = prompttokens
          @CompletionTokens = completiontokens
          @TotalTokens = totaltokens
          @PromptTokensDetails = prompttokensdetails
        end

        def deserialize(params)
          @PromptTokens = params['PromptTokens']
          @CompletionTokens = params['CompletionTokens']
          @TotalTokens = params['TotalTokens']
          unless params['PromptTokensDetails'].nil?
            @PromptTokensDetails = PromptTokensDetails.new
            @PromptTokensDetails.deserialize(params['PromptTokensDetails'])
          end
        end
      end

      # 用户位置详细信息
      class UserLocation < TencentCloud::Common::AbstractModel
        # @param Type: 表示位置类型
        # @type Type: String
        # @param Approximate: 用户近似位置的详细信息
        # @type Approximate: :class:`Tencentcloud::Hunyuan.v20230901.models.Approximate`

        attr_accessor :Type, :Approximate

        def initialize(type=nil, approximate=nil)
          @Type = type
          @Approximate = approximate
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Approximate'].nil?
            @Approximate = Approximate.new
            @Approximate.deserialize(params['Approximate'])
          end
        end
      end

      # 当type为video_frames时使用，标识具体的视频内图像帧内容
      class VideoFrames < TencentCloud::Common::AbstractModel
        # @param Frames: 视频图像帧列表，图像帧传url，最大支持传入数量为512帧
        # @type Frames: Array

        attr_accessor :Frames

        def initialize(frames=nil)
          @Frames = frames
        end

        def deserialize(params)
          @Frames = params['Frames']
        end
      end

      # 当type为video_url时使用，标识具体的视频链接内容
      class VideoUrl < TencentCloud::Common::AbstractModel
        # @param Url: 视频的url，如"https://your-video-path.mp4"，视频文件大小不超过100M。
        # @type Url: String
        # @param Fps: 控制视频抽帧频率，取值范围为 0.1 ~5，表示每隔 1/fps 秒抽取一帧，默认为 1s抽取一帧
        # @type Fps: Float

        attr_accessor :Url, :Fps

        def initialize(url=nil, fps=nil)
          @Url = url
          @Fps = fps
        end

        def deserialize(params)
          @Url = params['Url']
          @Fps = params['Fps']
        end
      end

      # 知识注入相关的参数信息
      class WebSearchOptions < TencentCloud::Common::AbstractModel
        # @param Knowledge: 表示用户注入的知识信息
        # @type Knowledge: Array
        # @param UserLocation: 用户位置详细信息
        # @type UserLocation: :class:`Tencentcloud::Hunyuan.v20230901.models.UserLocation`
        # @param Processes: 打开开关，会返回搜索状态
        # @type Processes: Boolean
        # @param EnableImage: 是否开启图文混排
        # @type EnableImage: Boolean
        # @param EnableMusic: 是否开启音乐
        # @type EnableMusic: Boolean

        attr_accessor :Knowledge, :UserLocation, :Processes, :EnableImage, :EnableMusic

        def initialize(knowledge=nil, userlocation=nil, processes=nil, enableimage=nil, enablemusic=nil)
          @Knowledge = knowledge
          @UserLocation = userlocation
          @Processes = processes
          @EnableImage = enableimage
          @EnableMusic = enablemusic
        end

        def deserialize(params)
          unless params['Knowledge'].nil?
            @Knowledge = []
            params['Knowledge'].each do |i|
              knowledge_tmp = Knowledge.new
              knowledge_tmp.deserialize(i)
              @Knowledge << knowledge_tmp
            end
          end
          unless params['UserLocation'].nil?
            @UserLocation = UserLocation.new
            @UserLocation.deserialize(params['UserLocation'])
          end
          @Processes = params['Processes']
          @EnableImage = params['EnableImage']
          @EnableMusic = params['EnableMusic']
        end
      end

    end
  end
end

