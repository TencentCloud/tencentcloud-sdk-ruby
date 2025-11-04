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
  module Asr
    module V20190614
      # [音频流异步识别](https://cloud.tencent.com/document/api/1093/37824#AsyncRecognitionTasks)任务信息
      class AsyncRecognitionTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param Url: 音频流Url
        # @type Url: String

        attr_accessor :TaskId, :Url

        def initialize(taskid=nil, url=nil)
          @TaskId = taskid
          @Url = url
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Url = params['Url']
        end
      end

      # [音频流异步识别任务列表](https://cloud.tencent.com/document/product/1093/52060#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)
      class AsyncRecognitionTasks < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array

        attr_accessor :Tasks

        def initialize(tasks=nil)
          @Tasks = tasks
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              asyncrecognitiontaskinfo_tmp = AsyncRecognitionTaskInfo.new
              asyncrecognitiontaskinfo_tmp.deserialize(i)
              @Tasks << asyncrecognitiontaskinfo_tmp
            end
          end
        end
      end

      # CloseAsyncRecognitionTask请求参数结构体
      class CloseAsyncRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 语音流异步识别任务的唯一标识，在创建任务时会返回
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CloseAsyncRecognitionTask返回参数结构体
      class CloseAsyncRecognitionTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateAsrKeyWordLib请求参数结构体
      class CreateAsrKeyWordLibRequest < TencentCloud::Common::AbstractModel
        # @param Name: 词表名称，长度在1-20之间
        # 仅限中英文数字-_
        # @type Name: String
        # @param KeyWordFile: 词文件（纯文本文件）的二进制base64编码，以行分隔
        # 格式要求：TXT
        # 每行只有一个词，不满足格式则报错无法上传
        # 每个词限制**5个汉字，15个字符**，单个词库最多不超过100个词
        # 注意不要有空行，尤其是最后一行
        # @type KeyWordFile: String

        attr_accessor :Name, :KeyWordFile

        def initialize(name=nil, keywordfile=nil)
          @Name = name
          @KeyWordFile = keywordfile
        end

        def deserialize(params)
          @Name = params['Name']
          @KeyWordFile = params['KeyWordFile']
        end
      end

      # CreateAsrKeyWordLib返回参数结构体
      class CreateAsrKeyWordLibResponse < TencentCloud::Common::AbstractModel
        # @param Data: 词表ID数据
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.KeyWordLibIdData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = KeyWordLibIdData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAsrVocab请求参数结构体
      class CreateAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param Name: 热词表名称，长度在1-255之间
        # @type Name: String
        # @param Description: 热词表描述，长度在0-1000之间
        # @type Description: String
        # @param WordWeights: 词权重数组，包含全部的热词和对应的权重。每个热词的长度不大于10个汉字或30个英文字符，权重为[1,11]之间整数或者100，数组长度不大于1000
        # 注意:
        # - 热词权重设置为11时，当前热词将升级为超级热词，建议仅将重要且必须生效的热词设置到11，设置过多权重为11的热词将影响整体字准率。
        # - 热词权重设置为100时，当前热词开启热词增强同音替换功能（仅支持8k_zh,16k_zh），举例：热词配置“蜜制|100”时，与“蜜制”同拼音（mizhi）的“秘制”的识别结果会被强制替换成“蜜制”。因此建议客户根据自己的实际情况开启该功能。建议仅将重要且必须生效的热词设置到100，设置过多权重为100的热词将影响整体字准率。
        # @type WordWeights: Array
        # @param WordWeightStr: 词权重文件（纯文本文件）的二进制base64编码，以行分隔，每行的格式为word|weight，即以英文符号|为分割，左边为词，右边为权重，如：你好|5。
        # 当用户传此参数（参数长度大于0），即以此参数解析词权重，WordWeights会被忽略
        # @type WordWeightStr: String

        attr_accessor :Name, :Description, :WordWeights, :WordWeightStr

        def initialize(name=nil, description=nil, wordweights=nil, wordweightstr=nil)
          @Name = name
          @Description = description
          @WordWeights = wordweights
          @WordWeightStr = wordweightstr
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          unless params['WordWeights'].nil?
            @WordWeights = []
            params['WordWeights'].each do |i|
              hotword_tmp = HotWord.new
              hotword_tmp.deserialize(i)
              @WordWeights << hotword_tmp
            end
          end
          @WordWeightStr = params['WordWeightStr']
        end
      end

      # CreateAsrVocab返回参数结构体
      class CreateAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 词表ID，可用于获取词表信息
        # @type VocabId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :RequestId

        def initialize(vocabid=nil, requestid=nil)
          @VocabId = vocabid
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAsyncRecognitionTask请求参数结构体
      class CreateAsyncRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param EngineType: 引擎模型类型。
        # • 16k_zh：中文普通话通用；
        # • 16k_en：英语；
        # • 16k_yue：粤语；
        # • 16k_id：印度尼西亚语；
        # • 16k_fil：菲律宾语；
        # • 16k_th：泰语；
        # • 16k_pt：葡萄牙语；
        # • 16k_tr：土耳其语；
        # • 16k_ar：阿拉伯语；
        # • 16k_es：西班牙语；
        # • 16k_hi：印地语；
        # • 16k_fr：法语；
        # • 16k_de：德语；
        # @type EngineType: String
        # @param Url: 语音流地址，支持rtmp、rtsp等流媒体协议，以及各类基于http协议的直播流(不支持hls, m3u8)
        # @type Url: String
        # @param CallbackUrl: 支持HTTP和HTTPS协议，用于接收识别结果，您需要自行搭建公网可调用的服务。回调格式&内容详见：[语音流异步识别回调说明](https://cloud.tencent.com/document/product/1093/52633)
        # @type CallbackUrl: String
        # @param SignToken: 用于生成回调通知中的签名
        # @type SignToken: String
        # @param FilterDirty: 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。默认值为 0
        # @type FilterDirty: Integer
        # @param FilterModal: 是否过滤语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。默认值为 0
        # @type FilterModal: Integer
        # @param FilterPunc: 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认为0
        # @type FilterPunc: Integer
        # @param ConvertNumMode: 是否进行阿拉伯数字智能转换。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字。默认值为1
        # @type ConvertNumMode: Integer
        # @param WordInfo: 是否显示词级别时间戳。0：不显示；1：显示，不包含标点时间戳，2：显示，包含标点时间戳。默认为0
        # @type WordInfo: Integer
        # @param HotwordId: 热词id。用于调用对应的热词表，如果在调用语音识别服务时，不进行单独的热词id设置，自动生效默认热词；如果进行了单独的热词id设置，那么将生效单独设置的热词id。
        # @type HotwordId: String
        # @param AudioData: 回调数据中，是否需要对应音频数据。
        # @type AudioData: Boolean

        attr_accessor :EngineType, :Url, :CallbackUrl, :SignToken, :FilterDirty, :FilterModal, :FilterPunc, :ConvertNumMode, :WordInfo, :HotwordId, :AudioData

        def initialize(enginetype=nil, url=nil, callbackurl=nil, signtoken=nil, filterdirty=nil, filtermodal=nil, filterpunc=nil, convertnummode=nil, wordinfo=nil, hotwordid=nil, audiodata=nil)
          @EngineType = enginetype
          @Url = url
          @CallbackUrl = callbackurl
          @SignToken = signtoken
          @FilterDirty = filterdirty
          @FilterModal = filtermodal
          @FilterPunc = filterpunc
          @ConvertNumMode = convertnummode
          @WordInfo = wordinfo
          @HotwordId = hotwordid
          @AudioData = audiodata
        end

        def deserialize(params)
          @EngineType = params['EngineType']
          @Url = params['Url']
          @CallbackUrl = params['CallbackUrl']
          @SignToken = params['SignToken']
          @FilterDirty = params['FilterDirty']
          @FilterModal = params['FilterModal']
          @FilterPunc = params['FilterPunc']
          @ConvertNumMode = params['ConvertNumMode']
          @WordInfo = params['WordInfo']
          @HotwordId = params['HotwordId']
          @AudioData = params['AudioData']
        end
      end

      # CreateAsyncRecognitionTask返回参数结构体
      class CreateAsyncRecognitionTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 请求返回结果，包含本次的任务ID(TaskId)
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.Task`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Task.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomization请求参数结构体
      class CreateCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelName: 自学习模型名称，需在1-20字符之间
        # @type ModelName: String
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param ModelType: 自学习模型类型，填写8k或者16k
        # @type ModelType: String
        # @param TagInfos: 标签信息
        # @type TagInfos: Array

        attr_accessor :ModelName, :TextUrl, :ModelType, :TagInfos
        extend Gem::Deprecate
        deprecate :TagInfos, :none, 2025, 11
        deprecate :TagInfos=, :none, 2025, 11

        def initialize(modelname=nil, texturl=nil, modeltype=nil, taginfos=nil)
          @ModelName = modelname
          @TextUrl = texturl
          @ModelType = modeltype
          @TagInfos = taginfos
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @TextUrl = params['TextUrl']
          @ModelType = params['ModelType']
          @TagInfos = params['TagInfos']
        end
      end

      # CreateCustomization返回参数结构体
      class CreateCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :RequestId

        def initialize(modelid=nil, requestid=nil)
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRecTask请求参数结构体
      class CreateRecTaskRequest < TencentCloud::Common::AbstractModel
        # @param EngineModelType: 引擎模型类型
        # 识别引擎采用分级计费方案，标记为“大模型版”的引擎适用大模型计费方案，[点击这里](https://cloud.tencent.com/document/product/1093/35686) 查看产品计费说明

        # 电话通讯场景引擎：
        # **注意：电话通讯场景，请务必使用以下8k引擎**
        # • 8k_zh：中文电话通讯；
        # • 8k_en：英文电话通讯；
        # • 8k_zh_large：中文电话场景专用大模型引擎【大模型版】。通过显著提升模型参数规模与语言建模能力，实现对电话音频中复杂场景（如口音干扰、背景噪声）的高精度识别，识别准确率较常规版本大幅提升。[点击这里](https://console.cloud.tencent.com/asr/demonstrate) 对比常规版本与普方大模型效果；

        # 注意：如您有电话通讯场景识别需求，但发现需求语种仅支持16k，可将8k音频传入下方16k引擎，亦能获取识别结果。但**16k引擎并非基于电话通讯数据训练，无法承诺此种调用方式的识别效果，需由您自行验证识别结果是否可用**

        # 通用场景引擎：
        # **注意：除电话通讯场景以外的其它识别场景，请务必使用以下16k引擎**
        # • **16k_zh_en**：中英粤+7种方言大模型引擎【大模型版】。当前模型同时支持中文、英语、粤语、四川、陕西、河南、上海、湖南、湖北和安徽方言识别，模型参数量极大，语言模型性能增强，针对噪声大、回音大、人声小、人声远等低质量音频的识别准确率极大提升;
        # • **16k_zh_large：**普方英大模型引擎【大模型版】。当前模型同时支持中文、英文、[多种中文方言](https://cloud.tencent.com/document/product/1093/35682)等语言的识别，模型参数量极大，语言模型性能增强，针对噪声大、回音大、人声小、人声远等低质量音频的识别准确率极大提升，[点击这里](https://console.cloud.tencent.com/asr/demonstrate) 对比中文普通话常规版本与普方英大模型版本的识别效果；
        # • **16k_multi_lang：**多语种大模型引擎【大模型版】。当前模型同时支持英语、日语、韩语、阿拉伯语、菲律宾语、法语、印地语、印尼语、马来语、葡萄牙语、西班牙语、泰语、土耳其语、越南语、德语的识别，可实现15个语种的自动识别(句子/段落级别)；
        # • **16k_zh：**中文普通话通用引擎，支持中文普通话和少量英语，使用丰富的中文普通话语料训练，覆盖场景广泛，适用于除电话通讯外的所有中文普通话识别场景；
        # • **16k_en：**英语；
        # • **16k_yue：**粤语；
        # • **16k_zh-PY：**中英粤混合引擎，使用一个引擎同时识别中文普通话、英语、粤语三个语言;
        # • **16k_zh-TW**：中文繁体；
        # • **16k_ja：**日语；
        # • **16k_ko：**韩语；
        # • **16k_vi：**越南语；
        # • **16k_ms：**马来语；
        # • **16k_id：**印度尼西亚语；
        # • **16k_fil：**菲律宾语；
        # • **16k_th：**泰语；
        # • **16k_pt：**葡萄牙语；
        # • **16k_tr：**土耳其语；
        # • **16k_ar：**阿拉伯语；
        # • **16k_es：**西班牙语；
        # • **16k_hi：**印地语；
        # • **16k_fr：**法语；
        # • **16k_zh_medical：**中文医疗引擎；
        # • **16k_de：**德语；
        # @type EngineModelType: String
        # @param ChannelNum: 识别声道数
        # 1：单声道（16k音频仅支持单声道，**请勿**设置为双声道）；
        # 2：双声道（仅支持8k电话音频，且双声道应分别为通话双方）

        # 注意：
        # • 16k音频：仅支持单声道识别，**需设置ChannelNum=1**；
        # • 8k电话音频：支持单声道、双声道识别，**建议设置ChannelNum=2，即双声道**。双声道能够物理区分说话人、避免说话双方重叠产生的识别错误，能达到最好的说话人分离效果和识别效果。设置双声道后，将自动区分说话人，因此**无需再开启说话人分离功能**，相关参数（**SpeakerDiarization、SpeakerNumber**）使用默认值即可，返回的ResultDetail中的speakerId的值为0代表左声道，值为1代表右声道。
        # @type ChannelNum: Integer
        # @param ResTextFormat: 识别结果返回样式
        # 0：基础识别结果（仅包含有效人声时间戳，无词粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)）；
        # 1：基础识别结果之上，增加词粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)（包含词级别时间戳、语速值，**不含标点**）；
        # 2：基础识别结果之上，增加词粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)（包含词级别时间戳、语速值和标点）；
        # 3：基础识别结果之上，增加词粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)（包含词级别时间戳、语速值和标点），且识别结果按标点符号分段，**适用字幕场景**；
        # 4：**【增值付费功能】**基础识别结果之上，增加词粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)（包含词级别时间戳、语速值和标点），且识别结果按nlp语义分段，**适用会议、庭审记录转写等场景**，仅支持8k_zh/16k_zh引擎
        # 5：**【增值付费功能】**基础识别结果之上，增加词粒度的[详细识别结果](https://cloud.tencent.com/document/api/1093/37824#SentenceDetail)（包含词级别时间戳、语速值和标点），并输出口语转书面语转写结果，该结果去除语气词、重复词、精简冗余表达，并修正发言人口误，实现口语转书面语的效果，**适用于线上、线下会议直接总结为书面会议纪要的场景**，仅支持8k_zh/16k_zh引擎

        # 注意：
        # 以下引擎仅支持参数值设置为0：16k_multi_lang、16k_ja、16k_ko、16k_vi、16k_ms、16k_id、16k_fil、16k_th、16k_pt、16k_tr、16k_ar、16k_es、16k_hi、16k_fr、16k_zh_medical、16k_de
        # 如果传入参数值4，需确保账号已购买[语义分段资源包](https://cloud.tencent.com/document/product/1093/35686#97ae4aa0-29a0-4066-9f07-ccaf8856a16b)，或账号开启后付费；**若当前账号已开启后付费功能，并传入参数值4，将[自动计费](https://cloud.tencent.com/document/product/1093/35686#d912167d-ffd5-41a9-8b1c-2e89845a6852)**
        # 如果传入参数值5，需确保账号已购买[口语转书面语资源包](https://cloud.tencent.com/document/product/1093/35686#97ae4aa0-29a0-4066-9f07-ccaf8856a16b)，或账号开启后付费；**若当前账号已开启后付费功能，并传入参数值5，将自动计费[自动计费](https://cloud.tencent.com/document/product/1093/35686#d912167d-ffd5-41a9-8b1c-2e89845a6852)**
        # @type ResTextFormat: Integer
        # @param SourceType: 音频数据来源
        # 0：音频URL；
        # 1：音频数据（post body）
        # @type SourceType: Integer
        # @param Data: 音频数据base64编码
        # **当 SourceType 值为 1 时须填写该字段，为 0 时不需要填写**

        # 注意：音频数据要小于5MB（含）
        # @type Data: String
        # @param DataLen: 数据长度（此数据长度为数据未进行base64编码时的长度）
        # @type DataLen: Integer
        # @param Url: 音频URL的地址（需要公网环境浏览器可下载）
        # **当 SourceType 值为 0 时须填写该字段，为 1 时不需要填写**

        # 注意：
        # 1. 请确保录音文件时长在5个小时（含）之内，否则可能识别失败；
        # 2. 请保证文件的下载速度，否则可能下载失败
        # @type Url: String
        # @param CallbackUrl: 回调 URL
        # 用户自行搭建的用于接收识别结果的服务URL
        # 回调格式和内容详见：[录音识别回调说明](https://cloud.tencent.com/document/product/1093/52632)

        # 注意：

        # - 如果用户使用轮询方式获取识别结果，则无需提交该参数
        # - 建议在回调URL中带上您的业务ID等信息，以便处理业务逻辑
        # @type CallbackUrl: String
        # @param SpeakerDiarization: 是否开启说话人分离
        # 0：不开启；
        # 1：开启（仅支持以下引擎：8k_zh/16k_zh/16k_ms/16k_en/16k_id/16k_zh_large/16k_zh_dialect/16k_zh_en，且ChannelNum=1时可用）；
        # 默认值为 0

        # 注意：
        # 8k双声道电话音频请按 **ChannelNum 识别声道数** 的参数描述使用默认值
        # @type SpeakerDiarization: Integer
        # @param SpeakerNumber: 说话人分离人数
        # **需配合开启说话人分离使用，不开启无效**，取值范围：0-10
        # 0：自动分离（最多分离出20个人）；
        # 1-10：指定人数分离；
        # 默认值为 0
        # 注:16k引擎不支持指定人数分离
        # @type SpeakerNumber: Integer
        # @param HotwordId: 热词表id
        # 如不设置该参数，将自动生效默认热词表；
        # 如设置该参数，将生效对应id的热词表；
        # 点击这里查看[热词表配置方法](https://cloud.tencent.com/document/product/1093/40996)
        # @type HotwordId: String
        # @param ReinforceHotword: 热词增强功能（目前仅支持8k_zh/16k_zh引擎）
        # 1：开启热词增强功能

        # 注意：热词增强功能开启后，将对传入的热词表id开启同音替换功能，可以在这里查看[热词表配置方法](https://cloud.tencent.com/document/product/1093/40996)。效果举例：在热词表中配置“蜜制”一词，并开启增强功能，与“蜜制”（mìzhì）同音同调的“秘制”（mìzhì）的识别结果会被强制替换成“蜜制”。**建议客户根据实际的业务需求开启该功能**
        # @type ReinforceHotword: Integer
        # @param CustomizationId: 自学习定制模型 id
        # 如设置了该参数，将生效对应id的自学习定制模型；
        # 点击这里查看[自学习定制模型配置方法](https://cloud.tencent.com/document/product/1093/38416)
        # @type CustomizationId: String
        # @param EmotionRecognition: **【增值付费功能】**情绪识别能力（目前仅支持16k_zh,8k_zh）
        # 0：不开启；
        # 1：开启情绪识别，但不在文本展示情绪标签；
        # 2：开启情绪识别，并且在文本展示情绪标签（**该功能需要设置ResTextFormat 大于0**）
        # 默认值为0
        # 支持的情绪分类为：高兴、伤心、愤怒

        # 注意：
        # 1. **本功能为增值服务**，需将参数设置为1或2时方可按对应方式生效；
        # 2. 如果传入参数值1或2，需确保账号已购买[情绪识别资源包](https://cloud.tencent.com/document/product/1093/35686#97ae4aa0-29a0-4066-9f07-ccaf8856a16b)，或账号开启后付费；**若当前账号已开启后付费功能，并传入参数值1或2，将[自动计费](https://cloud.tencent.com/document/product/1093/35686#d912167d-ffd5-41a9-8b1c-2e89845a6852)）**；
        # 3. 参数设置为0时，无需购买资源包，也不会消耗情绪识别对应资源
        # @type EmotionRecognition: Integer
        # @param EmotionalEnergy: 情绪能量值
        # 取值为音量分贝值/10，取值范围：[1,10]，值越高情绪越强烈
        # 0：不开启；
        # 1：开启；
        # 默认值为0
        # @type EmotionalEnergy: Integer
        # @param ConvertNumMode: 阿拉伯数字智能转换（目前支持中文普通话引擎）
        # 0：不转换，直接输出中文数字；
        # 1：根据场景智能转换为阿拉伯数字；
        # 3：打开数学相关数字转换（如：阿尔法转写为α）；
        # 默认值为 1
        # @type ConvertNumMode: Integer
        # @param FilterDirty: 脏词过滤（目前支持中文普通话引擎）
        # 0：不过滤脏词；
        # 1：过滤脏词；
        # 2：将脏词替换为 * ；
        # 默认值为 0
        # @type FilterDirty: Integer
        # @param FilterPunc: 标点符号过滤（目前支持中文普通话引擎）
        # 0：不过滤标点；
        # 1：过滤句末标点；
        # 2：过滤所有标点；
        # 默认值为 0
        # @type FilterPunc: Integer
        # @param FilterModal: 语气词过滤（目前支持中文普通话引擎）
        # 0：不过滤语气词；
        # 1：过滤部分语气词；
        # 2：严格过滤语气词；
        # 默认值为 0
        # @type FilterModal: Integer
        # @param SentenceMaxLength: 单标点最多字数（目前支持中文普通话引擎）
        # **可控制单行字幕最大字数，适用于字幕生成场景**，取值范围：[6，40]
        # 0：不开启该功能；
        # 默认值为0

        # 注意：需设置ResTextFormat为3，解析返回的ResultDetail列表，通过结构中FinalSentence获取单个标点断句结果
        # @type SentenceMaxLength: Integer
        # @param Extra: 附加参数**（该参数无意义，忽略即可）**
        # @type Extra: String
        # @param HotwordList: 临时热词表：该参数用于提升识别准确率。

        # - 单个热词限制："热词|权重"，单个热词不超过30个字符（最多10个汉字），权重[1-11]或者100，如：“腾讯云|5” 或“ASR|11”；

        # - 临时热词表限制：多个热词用英文逗号分割，最多支持128个热词，如：“腾讯云|10,语音识别|5,ASR|11”；

        # - 参数 hotword_id（热词表） 与 hotword_list（临时热词表） 区别：

        #     - hotword_id：热词表。需要先在控制台或接口创建热词表，获得对应hotword_id传入参数来使用热词功能；

        #     - hotword_list：临时热词表。每次请求时直接传入临时热词表来使用热词功能，云端不保留临时热词表。适用于有极大量热词需求的用户；

        # 注意：

        # - 如果同时传入了 hotword_id 和 hotword_list，只有hotword_list 生效；

        # - 热词权重设置为11时，当前热词将升级为超级热词，建议仅将重要且必须生效的热词设置到11，设置过多权重为11的热词将影响整体字准率。

        # - 热词权重设置为100时，当前热词开启热词增强同音替换功能（仅支持8k_zh,16k_zh），举例：热词配置“蜜制|100”时，与“蜜制”同拼音（mizhi）的“秘制”的识别结果会被强制替换成“蜜制”。因此建议客户根据自己的实际情况开启该功能。建议仅将重要且必须生效的热词设置到100，设置过多权重为100的热词将影响整体字准率。
        # @type HotwordList: String
        # @param KeyWordLibIdList: 关键词识别ID列表，默认空为不进行识别，最多10个
        # @type KeyWordLibIdList: Array
        # @param ReplaceTextId: 替换词汇表id,  适用于热词和自学习场景也无法解决的极端case词组,  会对识别结果强制替换。具体可参考[配置控制台](https://console.cloud.tencent.com/asr/replaceword);强制替换功能可能会影响正常识别结果，请谨慎使用

        # 注意：
        # 1. 本功能配置完成后，预计在10分钟后生效
        # @type ReplaceTextId: String

        attr_accessor :EngineModelType, :ChannelNum, :ResTextFormat, :SourceType, :Data, :DataLen, :Url, :CallbackUrl, :SpeakerDiarization, :SpeakerNumber, :HotwordId, :ReinforceHotword, :CustomizationId, :EmotionRecognition, :EmotionalEnergy, :ConvertNumMode, :FilterDirty, :FilterPunc, :FilterModal, :SentenceMaxLength, :Extra, :HotwordList, :KeyWordLibIdList, :ReplaceTextId
        extend Gem::Deprecate
        deprecate :ReinforceHotword, :none, 2025, 11
        deprecate :ReinforceHotword=, :none, 2025, 11

        def initialize(enginemodeltype=nil, channelnum=nil, restextformat=nil, sourcetype=nil, data=nil, datalen=nil, url=nil, callbackurl=nil, speakerdiarization=nil, speakernumber=nil, hotwordid=nil, reinforcehotword=nil, customizationid=nil, emotionrecognition=nil, emotionalenergy=nil, convertnummode=nil, filterdirty=nil, filterpunc=nil, filtermodal=nil, sentencemaxlength=nil, extra=nil, hotwordlist=nil, keywordlibidlist=nil, replacetextid=nil)
          @EngineModelType = enginemodeltype
          @ChannelNum = channelnum
          @ResTextFormat = restextformat
          @SourceType = sourcetype
          @Data = data
          @DataLen = datalen
          @Url = url
          @CallbackUrl = callbackurl
          @SpeakerDiarization = speakerdiarization
          @SpeakerNumber = speakernumber
          @HotwordId = hotwordid
          @ReinforceHotword = reinforcehotword
          @CustomizationId = customizationid
          @EmotionRecognition = emotionrecognition
          @EmotionalEnergy = emotionalenergy
          @ConvertNumMode = convertnummode
          @FilterDirty = filterdirty
          @FilterPunc = filterpunc
          @FilterModal = filtermodal
          @SentenceMaxLength = sentencemaxlength
          @Extra = extra
          @HotwordList = hotwordlist
          @KeyWordLibIdList = keywordlibidlist
          @ReplaceTextId = replacetextid
        end

        def deserialize(params)
          @EngineModelType = params['EngineModelType']
          @ChannelNum = params['ChannelNum']
          @ResTextFormat = params['ResTextFormat']
          @SourceType = params['SourceType']
          @Data = params['Data']
          @DataLen = params['DataLen']
          @Url = params['Url']
          @CallbackUrl = params['CallbackUrl']
          @SpeakerDiarization = params['SpeakerDiarization']
          @SpeakerNumber = params['SpeakerNumber']
          @HotwordId = params['HotwordId']
          @ReinforceHotword = params['ReinforceHotword']
          @CustomizationId = params['CustomizationId']
          @EmotionRecognition = params['EmotionRecognition']
          @EmotionalEnergy = params['EmotionalEnergy']
          @ConvertNumMode = params['ConvertNumMode']
          @FilterDirty = params['FilterDirty']
          @FilterPunc = params['FilterPunc']
          @FilterModal = params['FilterModal']
          @SentenceMaxLength = params['SentenceMaxLength']
          @Extra = params['Extra']
          @HotwordList = params['HotwordList']
          @KeyWordLibIdList = params['KeyWordLibIdList']
          @ReplaceTextId = params['ReplaceTextId']
        end
      end

      # CreateRecTask返回参数结构体
      class CreateRecTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 录音文件识别的请求返回结果，包含结果查询需要的TaskId。
        # **注意：TaskId有效期为24小时，不同日期可能出现重复TaskId，请不要依赖TaskId作为您业务系统里的唯一ID。**
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.Task`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Task.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAsrKeyWordLib请求参数结构体
      class DeleteAsrKeyWordLibRequest < TencentCloud::Common::AbstractModel
        # @param KeyWordLibId: 关键词表ID
        # @type KeyWordLibId: String

        attr_accessor :KeyWordLibId

        def initialize(keywordlibid=nil)
          @KeyWordLibId = keywordlibid
        end

        def deserialize(params)
          @KeyWordLibId = params['KeyWordLibId']
        end
      end

      # DeleteAsrKeyWordLib返回参数结构体
      class DeleteAsrKeyWordLibResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAsrVocab请求参数结构体
      class DeleteAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表Id
        # @type VocabId: String

        attr_accessor :VocabId

        def initialize(vocabid=nil)
          @VocabId = vocabid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
        end
      end

      # DeleteAsrVocab返回参数结构体
      class DeleteAsrVocabResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCustomization请求参数结构体
      class DeleteCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 要删除的模型ID
        # @type ModelId: String

        attr_accessor :ModelId

        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # DeleteCustomization返回参数结构体
      class DeleteCustomizationResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAsyncRecognitionTasks请求参数结构体
      class DescribeAsyncRecognitionTasksRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAsyncRecognitionTasks返回参数结构体
      class DescribeAsyncRecognitionTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.AsyncRecognitionTasks`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncRecognitionTasks.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 从CreateRecTask接口获取的TaskId，用于获取任务状态与结果。
        # **注意：TaskId有效期为24小时，超过24小时的TaskId请不要再查询。**
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 录音文件识别的请求返回结果。
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.TaskStatus`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskStatus.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DownloadAsrVocab请求参数结构体
      class DownloadAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 词表ID。
        # @type VocabId: String

        attr_accessor :VocabId

        def initialize(vocabid=nil)
          @VocabId = vocabid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
        end
      end

      # DownloadAsrVocab返回参数结构体
      class DownloadAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 词表ID。
        # @type VocabId: String
        # @param WordWeightStr: 词表权重文件形式的base64值。
        # @type WordWeightStr: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :WordWeightStr, :RequestId

        def initialize(vocabid=nil, wordweightstr=nil, requestid=nil)
          @VocabId = vocabid
          @WordWeightStr = wordweightstr
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @WordWeightStr = params['WordWeightStr']
          @RequestId = params['RequestId']
        end
      end

      # DownloadCustomization请求参数结构体
      class DownloadCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 自学习模型ID
        # @type ModelId: String

        attr_accessor :ModelId

        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # DownloadCustomization返回参数结构体
      class DownloadCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # GetAsrKeyWordLibList请求参数结构体
      class GetAsrKeyWordLibListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param SpecifyNames: 词库名称或者UIN检索
        # @type SpecifyNames: Array
        # @param OnlySelf: 只看用户自己创建的
        # @type OnlySelf: Boolean

        attr_accessor :Offset, :Limit, :SpecifyNames, :OnlySelf

        def initialize(offset=nil, limit=nil, specifynames=nil, onlyself=nil)
          @Offset = offset
          @Limit = limit
          @SpecifyNames = specifynames
          @OnlySelf = onlyself
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SpecifyNames = params['SpecifyNames']
          @OnlySelf = params['OnlySelf']
        end
      end

      # GetAsrKeyWordLibList返回参数结构体
      class GetAsrKeyWordLibListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 关键词列表返回数据
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.KeyWordLibListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = KeyWordLibListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetAsrVocabList请求参数结构体
      class GetAsrVocabListRequest < TencentCloud::Common::AbstractModel
        # @param TagInfos: 标签信息，格式为“$TagKey : $TagValue ”，中间分隔符为“空格”+“:”+“空格”
        # @type TagInfos: Array
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param Limit: 分页Limit
        # @type Limit: Integer

        attr_accessor :TagInfos, :Offset, :Limit
        extend Gem::Deprecate
        deprecate :TagInfos, :none, 2025, 11
        deprecate :TagInfos=, :none, 2025, 11

        def initialize(taginfos=nil, offset=nil, limit=nil)
          @TagInfos = taginfos
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TagInfos = params['TagInfos']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetAsrVocabList返回参数结构体
      class GetAsrVocabListResponse < TencentCloud::Common::AbstractModel
        # @param VocabList: 热词表列表
        # @type VocabList: Array
        # @param TotalCount: 热词列表总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabList, :TotalCount, :RequestId

        def initialize(vocablist=nil, totalcount=nil, requestid=nil)
          @VocabList = vocablist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VocabList'].nil?
            @VocabList = []
            params['VocabList'].each do |i|
              vocab_tmp = Vocab.new
              vocab_tmp.deserialize(i)
              @VocabList << vocab_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetAsrVocab请求参数结构体
      class GetAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String

        attr_accessor :VocabId

        def initialize(vocabid=nil)
          @VocabId = vocabid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
        end
      end

      # GetAsrVocab返回参数结构体
      class GetAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param Name: 热词表名称
        # @type Name: String
        # @param Description: 热词表描述
        # @type Description: String
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param WordWeights: 词权重列表
        # @type WordWeights: Array
        # @param CreateTime: 词表创建时间
        # @type CreateTime: String
        # @param UpdateTime: 词表更新时间
        # @type UpdateTime: String
        # @param State: 热词表状态，1为默认状态即在识别时默认加载该热词表进行识别，0为初始状态
        # @type State: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Description, :VocabId, :WordWeights, :CreateTime, :UpdateTime, :State, :RequestId

        def initialize(name=nil, description=nil, vocabid=nil, wordweights=nil, createtime=nil, updatetime=nil, state=nil, requestid=nil)
          @Name = name
          @Description = description
          @VocabId = vocabid
          @WordWeights = wordweights
          @CreateTime = createtime
          @UpdateTime = updatetime
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @VocabId = params['VocabId']
          unless params['WordWeights'].nil?
            @WordWeights = []
            params['WordWeights'].each do |i|
              hotword_tmp = HotWord.new
              hotword_tmp.deserialize(i)
              @WordWeights << hotword_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @State = params['State']
          @RequestId = params['RequestId']
        end
      end

      # GetCustomizationList请求参数结构体
      class GetCustomizationListRequest < TencentCloud::Common::AbstractModel
        # @param TagInfos: 标签信息，格式为“$TagKey : $TagValue ”，中间分隔符为“空格”+“:”+“空格”
        # @type TagInfos: Array
        # @param Limit: 分页大小，默认1000
        # @type Limit: Integer
        # @param Offset: 分页offset，默认0
        # @type Offset: Integer

        attr_accessor :TagInfos, :Limit, :Offset
        extend Gem::Deprecate
        deprecate :TagInfos, :none, 2025, 11
        deprecate :TagInfos=, :none, 2025, 11

        def initialize(taginfos=nil, limit=nil, offset=nil)
          @TagInfos = taginfos
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @TagInfos = params['TagInfos']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # GetCustomizationList返回参数结构体
      class GetCustomizationListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 自学习模型数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 自学习模型总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              model_tmp = Model.new
              model_tmp.deserialize(i)
              @Data << model_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetModelInfo请求参数结构体
      class GetModelInfoRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型id
        # @type ModelId: String

        attr_accessor :ModelId

        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # GetModelInfo返回参数结构体
      class GetModelInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 模型信息
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.Model`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = Model.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetUsageByDate请求参数结构体
      class GetUsageByDateRequest < TencentCloud::Common::AbstractModel
        # @param BizNameList: 需要查询的业务类型名字列表
        # - asr_rt 实时识别
        # - asr_rec 录音文件识别
        # @type BizNameList: Array
        # @param StartDate: 查询开始时间
        # 开始时间包含当天，支持 YYYY-MM-DD 日期以国内时区为准
        # 开始时间到结束时间需要在3个月以内
        # @type StartDate: String
        # @param EndDate: 查询结束时间
        # 结束时间包含当天，，支持 YYYY-MM-DD 日期以国内时区为准
        # 开始时间到结束时间需要在3个月以内
        # @type EndDate: String

        attr_accessor :BizNameList, :StartDate, :EndDate

        def initialize(biznamelist=nil, startdate=nil, enddate=nil)
          @BizNameList = biznamelist
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @BizNameList = params['BizNameList']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # GetUsageByDate返回参数结构体
      class GetUsageByDateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 用量次数
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.UsageByDateInfoData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UsageByDateInfoData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # [热词的词和权重](https://cloud.tencent.com/document/product/1093/41111#2.-.E8.BE.93.E5.85.A5.E5.8F.82.E6.95.B0)
      class HotWord < TencentCloud::Common::AbstractModel
        # @param Word: 热词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Word: String
        # @param Weight: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer

        attr_accessor :Word, :Weight

        def initialize(word=nil, weight=nil)
          @Word = word
          @Weight = weight
        end

        def deserialize(params)
          @Word = params['Word']
          @Weight = params['Weight']
        end
      end

      # 关键词表信息
      class KeyWordLib < TencentCloud::Common::AbstractModel
        # @param KeyWordLibId: 关键词表ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWordLibId: String
        # @param Name: 关键词表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param KeyWordList: 关键词列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWordList: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :KeyWordLibId, :Name, :KeyWordList, :CreateTime, :UpdateTime

        def initialize(keywordlibid=nil, name=nil, keywordlist=nil, createtime=nil, updatetime=nil)
          @KeyWordLibId = keywordlibid
          @Name = name
          @KeyWordList = keywordlist
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @KeyWordLibId = params['KeyWordLibId']
          @Name = params['Name']
          @KeyWordList = params['KeyWordList']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 关键词ID
      class KeyWordLibIdData < TencentCloud::Common::AbstractModel
        # @param KeyWordLibId: 关键词ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWordLibId: String

        attr_accessor :KeyWordLibId

        def initialize(keywordlibid=nil)
          @KeyWordLibId = keywordlibid
        end

        def deserialize(params)
          @KeyWordLibId = params['KeyWordLibId']
        end
      end

      # 查询列表返回数据
      class KeyWordLibListData < TencentCloud::Common::AbstractModel
        # @param KeyWordLibList: 关键词表列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWordLibList: Array
        # @param TotalCount: 关键词列表总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :KeyWordLibList, :TotalCount

        def initialize(keywordliblist=nil, totalcount=nil)
          @KeyWordLibList = keywordliblist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['KeyWordLibList'].nil?
            @KeyWordLibList = []
            params['KeyWordLibList'].each do |i|
              keywordlib_tmp = KeyWordLib.new
              keywordlib_tmp.deserialize(i)
              @KeyWordLibList << keywordlib_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 关键字识别结果
      class KeyWordResult < TencentCloud::Common::AbstractModel
        # @param KeyWordLibID: 关键词库ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWordLibID: String
        # @param KeyWordLibName: 关键词库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWordLibName: String
        # @param KeyWords: 匹配到的关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWords: Array

        attr_accessor :KeyWordLibID, :KeyWordLibName, :KeyWords

        def initialize(keywordlibid=nil, keywordlibname=nil, keywords=nil)
          @KeyWordLibID = keywordlibid
          @KeyWordLibName = keywordlibname
          @KeyWords = keywords
        end

        def deserialize(params)
          @KeyWordLibID = params['KeyWordLibID']
          @KeyWordLibName = params['KeyWordLibName']
          @KeyWords = params['KeyWords']
        end
      end

      # [自学习模型信息](https://cloud.tencent.com/document/product/1093/90813#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)
      class Model < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param DictName: 模型文件名称
        # @type DictName: String
        # @param ModelId: 模型Id
        # @type ModelId: String
        # @param ModelType: 模型类型，“8k”或者”16k“
        # @type ModelType: String
        # @param ServiceType: 服务类型
        # @type ServiceType: String
        # @param ModelState: 模型状态：
        # -2：模型训练失败；
        # -1：已下线；
        # 0：训练中；
        # 1：已上线；
        # 3：上线中；
        # 4：下线中；
        # @type ModelState: Integer
        # @param AtUpdated: 最后更新时间
        # @type AtUpdated: String
        # @param TagInfos: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInfos: Array

        attr_accessor :ModelName, :DictName, :ModelId, :ModelType, :ServiceType, :ModelState, :AtUpdated, :TagInfos
        extend Gem::Deprecate
        deprecate :TagInfos, :none, 2025, 11
        deprecate :TagInfos=, :none, 2025, 11

        def initialize(modelname=nil, dictname=nil, modelid=nil, modeltype=nil, servicetype=nil, modelstate=nil, atupdated=nil, taginfos=nil)
          @ModelName = modelname
          @DictName = dictname
          @ModelId = modelid
          @ModelType = modeltype
          @ServiceType = servicetype
          @ModelState = modelstate
          @AtUpdated = atupdated
          @TagInfos = taginfos
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @DictName = params['DictName']
          @ModelId = params['ModelId']
          @ModelType = params['ModelType']
          @ServiceType = params['ServiceType']
          @ModelState = params['ModelState']
          @AtUpdated = params['AtUpdated']
          @TagInfos = params['TagInfos']
        end
      end

      # ModifyCustomization请求参数结构体
      class ModifyCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 要修改的模型ID
        # @type ModelId: String
        # @param ModelName: 要修改的模型名称，长度需在1-20个字符之间
        # @type ModelName: String
        # @param ModelType: 要修改的模型类型，为8k或者16k
        # @type ModelType: String
        # @param TextUrl: 要修改的模型语料的下载地址，目前仅支持腾讯云cos
        # @type TextUrl: String

        attr_accessor :ModelId, :ModelName, :ModelType, :TextUrl

        def initialize(modelid=nil, modelname=nil, modeltype=nil, texturl=nil)
          @ModelId = modelid
          @ModelName = modelname
          @ModelType = modeltype
          @TextUrl = texturl
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ModelType = params['ModelType']
          @TextUrl = params['TextUrl']
        end
      end

      # ModifyCustomization返回参数结构体
      class ModifyCustomizationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCustomizationState请求参数结构体
      class ModifyCustomizationStateRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 自学习模型ID
        # @type ModelId: String
        # @param ToState: 想要变换的模型状态，-1代表下线，1代表上线
        # @type ToState: Integer

        attr_accessor :ModelId, :ToState

        def initialize(modelid=nil, tostate=nil)
          @ModelId = modelid
          @ToState = tostate
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ToState = params['ToState']
        end
      end

      # ModifyCustomizationState返回参数结构体
      class ModifyCustomizationStateResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 自学习模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :RequestId

        def initialize(modelid=nil, requestid=nil)
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # 单句的详细识别结果，包含单个词的时间偏移，一般用于生成字幕的场景。
      class SentenceDetail < TencentCloud::Common::AbstractModel
        # @param FinalSentence: 单句最终识别结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinalSentence: String
        # @param SliceSentence: 单句中间识别结果，使用空格拆分为多个词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SliceSentence: String
        # @param WrittenText: 口语转书面语结果，开启改功能才有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WrittenText: String
        # @param StartMs: 单句开始时间（毫秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartMs: Integer
        # @param EndMs: 单句结束时间（毫秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndMs: Integer
        # @param WordsNum: 单句中词个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordsNum: Integer
        # @param Words: 单句中词详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Words: Array
        # @param SpeechSpeed: 单句语速，单位：字数/秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeechSpeed: Float
        # @param SpeakerId: 声道或说话人 Id（请求中如果设置了 speaker_diarization或者ChannelNum为双声道，可区分说话人或声道）
        # 单声道话者分离时不同的值代表不同的说话人； 8k双声道话者分离时speakerId的值为0代表左声道，值为1代表右声道。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeakerId: Integer
        # @param EmotionalEnergy: 情绪能量值，取值为音量分贝值/10。取值范围：[1,10]。值越高情绪越强烈。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmotionalEnergy: Float
        # @param SilenceTime: 本句与上一句之间的静音时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SilenceTime: Integer
        # @param EmotionType: 情绪类型（可能为空，有2种情况 1、没有对应资源包；2、情绪跟语音效果相关，如果情绪不够强烈时可能无法识别）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmotionType: Array
        # @param KeyWordResults: 关键词识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyWordResults: Array

        attr_accessor :FinalSentence, :SliceSentence, :WrittenText, :StartMs, :EndMs, :WordsNum, :Words, :SpeechSpeed, :SpeakerId, :EmotionalEnergy, :SilenceTime, :EmotionType, :KeyWordResults

        def initialize(finalsentence=nil, slicesentence=nil, writtentext=nil, startms=nil, endms=nil, wordsnum=nil, words=nil, speechspeed=nil, speakerid=nil, emotionalenergy=nil, silencetime=nil, emotiontype=nil, keywordresults=nil)
          @FinalSentence = finalsentence
          @SliceSentence = slicesentence
          @WrittenText = writtentext
          @StartMs = startms
          @EndMs = endms
          @WordsNum = wordsnum
          @Words = words
          @SpeechSpeed = speechspeed
          @SpeakerId = speakerid
          @EmotionalEnergy = emotionalenergy
          @SilenceTime = silencetime
          @EmotionType = emotiontype
          @KeyWordResults = keywordresults
        end

        def deserialize(params)
          @FinalSentence = params['FinalSentence']
          @SliceSentence = params['SliceSentence']
          @WrittenText = params['WrittenText']
          @StartMs = params['StartMs']
          @EndMs = params['EndMs']
          @WordsNum = params['WordsNum']
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              sentencewords_tmp = SentenceWords.new
              sentencewords_tmp.deserialize(i)
              @Words << sentencewords_tmp
            end
          end
          @SpeechSpeed = params['SpeechSpeed']
          @SpeakerId = params['SpeakerId']
          @EmotionalEnergy = params['EmotionalEnergy']
          @SilenceTime = params['SilenceTime']
          @EmotionType = params['EmotionType']
          unless params['KeyWordResults'].nil?
            @KeyWordResults = []
            params['KeyWordResults'].each do |i|
              keywordresult_tmp = KeyWordResult.new
              keywordresult_tmp.deserialize(i)
              @KeyWordResults << keywordresult_tmp
            end
          end
        end
      end

      # SentenceRecognition请求参数结构体
      class SentenceRecognitionRequest < TencentCloud::Common::AbstractModel
        # @param EngSerViceType: 引擎模型类型。
        # 电话场景：
        # • 8k_zh：中文电话通用；
        # • 8k_en：英文电话通用；

        # 非电话场景：
        # • 16k_zh：中文通用；
        # • 16k_zh-PY：中英粤;
        # • 16k_zh_medical：中文医疗；
        # • 16k_en：英语；
        # • 16k_yue：粤语；
        # • 16k_ja：日语；
        # • 16k_ko：韩语；
        # • 16k_vi：越南语；
        # • 16k_ms：马来语；
        # • 16k_id：印度尼西亚语；
        # • 16k_fil：菲律宾语；
        # • 16k_th：泰语；
        # • 16k_pt：葡萄牙语；
        # • 16k_tr：土耳其语；
        # • 16k_ar：阿拉伯语；
        # • 16k_es：西班牙语；
        # • 16k_hi：印地语；
        # • 16k_fr：法语；
        # • 16k_de：德语；
        # • 16k_zh_dialect：多方言，支持23种方言（上海话、四川话、武汉话、贵阳话、昆明话、西安话、郑州话、太原话、兰州话、银川话、西宁话、南京话、合肥话、南昌话、长沙话、苏州话、杭州话、济南话、天津话、石家庄话、黑龙江话、吉林话、辽宁话）；
        # @type EngSerViceType: String
        # @param SourceType: 语音数据来源。0：语音 URL；1：语音数据（post body）。
        # @type SourceType: Integer
        # @param VoiceFormat: 识别音频的音频格式，支持wav、pcm、ogg-opus、speex、silk、mp3、m4a、aac、amr。
        # @type VoiceFormat: String
        # @param ProjectId: 腾讯云项目 ID，废弃参数，填写0即可。
        # @type ProjectId: Integer
        # @param SubServiceType: 子服务类型。2： 一句话识别。
        # @type SubServiceType: Integer
        # @param Url: 语音的URL地址，需要公网环境浏览器可下载。当 SourceType 值为 0时须填写该字段，为 1 时不填。音频时长不能超过60s，音频文件大小不能超过3MB。

        # 注意：推荐使用 [腾讯云COS](https://cloud.tencent.com/document/product/436/38484) 来存储音频、生成URL并提交请求，此种方式会走内网下载音频，极大降低整体请求时延；并且不会产生外网和流量下行费用，可节约成本（COS桶权限需要设置公有读私有写，或URL设置时效访问签名）
        # @type Url: String
        # @param UsrAudioKey: 废弃参数，填写任意字符串即可。
        # @type UsrAudioKey: String
        # @param Data: 语音数据，当SourceType 值为1（本地语音数据上传）时必须填写，当SourceType 值为0（语音 URL上传）可不写。要使用base64编码(采用python语言时注意读取文件应该为string而不是byte，以byte格式读取后要decode()。编码后的数据不可带有回车换行符)。音频时长不能超过60s，音频文件大小不能超过3MB（Base64后）。
        # @type Data: String
        # @param DataLen: 数据长度，单位为字节。当 SourceType 值为1（本地语音数据上传）时必须填写，当 SourceType 值为0（语音 URL上传）可不写（此数据长度为数据未进行base64编码时的数据长度）。
        # @type DataLen: Integer
        # @param WordInfo: 是否显示词级别时间戳。0：不显示；1：显示，不包含标点时间戳，2：显示，包含标点时间戳。默认值为 0。
        # @type WordInfo: Integer
        # @param FilterDirty: 是否过滤脏词（目前支持中文普通话引擎）。0：不过滤脏词；1：过滤脏词；2：将脏词替换为 * 。默认值为 0。
        # @type FilterDirty: Integer
        # @param FilterModal: 是否过滤语气词（目前支持中文普通话引擎）。0：不过滤语气词；1：部分过滤；2：严格过滤 。默认值为 0。
        # @type FilterModal: Integer
        # @param FilterPunc: 是否过滤标点符号（目前支持中文普通话引擎）。 0：不过滤，1：过滤句末标点，2：过滤所有标点。默认值为 0。
        # @type FilterPunc: Integer
        # @param ConvertNumMode: 是否进行阿拉伯数字智能转换。0：不转换，直接输出中文数字，1：根据场景智能转换为阿拉伯数字。默认值为1。
        # @type ConvertNumMode: Integer
        # @param HotwordId: 热词id。用于调用对应的热词表，如果在调用语音识别服务时，不进行单独的热词id设置，自动生效默认热词；如果进行了单独的热词id设置，那么将生效单独设置的热词id。
        # @type HotwordId: String
        # @param CustomizationId: 自学习模型 id。如设置了该参数，将生效对应的自学习模型。
        # @type CustomizationId: String
        # @param ReinforceHotword: 热词增强功能。1:开启后（仅支持8k_zh,16k_zh），将开启同音替换功能，同音字、词在热词中配置。举例：热词配置“蜜制”并开启增强功能后，与“蜜制”同拼音（mizhi）的“秘制”的识别结果会被强制替换成“蜜制”。因此建议客户根据自己的实际情况开启该功能。
        # @type ReinforceHotword: Integer
        # @param HotwordList: 临时热词表：该参数用于提升识别准确率。
        # 单个热词限制："热词|权重"，单个热词不超过30个字符（最多10个汉字），权重1-11或者100，如：“腾讯云|5” 或 “ASR|11”；
        # 临时热词表限制：多个热词用英文逗号分割，最多支持128个热词，如：“腾讯云|10,语音识别|5,ASR|11”；
        # 参数 hotword_list（临时热词表） 与 hotword_id（热词表） 区别：
        # hotword_id：热词表。需要先在控制台或接口创建热词表，获得对应hotword_id传入参数来使用热词功能；
        # hotword_list：临时热词表。每次请求时直接传入临时热词表来使用热词功能，云端不保留临时热词表。适用于有极大量热词需求的用户；
        # 注意：
        # • 如果同时传入了 hotword_id 和 hotword_list，会优先使用 hotword_list；
        # • 热词权重设置为11时，当前热词将升级为超级热词，建议仅将重要且必须生效的热词设置到11，设置过多权重为11的热词将影响整体字准率。
        # • 热词权重设置为100时，当前热词开启热词增强同音替换功能（仅支持8k_zh,16k_zh），举例：热词配置“蜜制|100”时，与“蜜制”同拼音（mizhi）的“秘制”的识别结果会被强制替换成“蜜制”。因此建议客户根据自己的实际情况开启该功能。建议仅将重要且必须生效的热词设置到100，设置过多权重为100的热词将影响整体字准率。
        # @type HotwordList: String
        # @param InputSampleRate: 支持pcm格式的8k音频在与引擎采样率不匹配的情况下升采样到16k后识别，能有效提升识别准确率。仅支持：8000。如：传入 8000 ，则pcm音频采样率为8k，当引擎选用16k_zh， 那么该8k采样率的pcm音频可以在16k_zh引擎下正常识别。 注：此参数仅适用于pcm格式音频，不传入值将维持默认状态，即默认调用的引擎采样率等于pcm音频采样率。
        # @type InputSampleRate: Integer

        attr_accessor :EngSerViceType, :SourceType, :VoiceFormat, :ProjectId, :SubServiceType, :Url, :UsrAudioKey, :Data, :DataLen, :WordInfo, :FilterDirty, :FilterModal, :FilterPunc, :ConvertNumMode, :HotwordId, :CustomizationId, :ReinforceHotword, :HotwordList, :InputSampleRate
        extend Gem::Deprecate
        deprecate :ProjectId, :none, 2025, 11
        deprecate :ProjectId=, :none, 2025, 11
        deprecate :SubServiceType, :none, 2025, 11
        deprecate :SubServiceType=, :none, 2025, 11
        deprecate :UsrAudioKey, :none, 2025, 11
        deprecate :UsrAudioKey=, :none, 2025, 11
        deprecate :ReinforceHotword, :none, 2025, 11
        deprecate :ReinforceHotword=, :none, 2025, 11

        def initialize(engservicetype=nil, sourcetype=nil, voiceformat=nil, projectid=nil, subservicetype=nil, url=nil, usraudiokey=nil, data=nil, datalen=nil, wordinfo=nil, filterdirty=nil, filtermodal=nil, filterpunc=nil, convertnummode=nil, hotwordid=nil, customizationid=nil, reinforcehotword=nil, hotwordlist=nil, inputsamplerate=nil)
          @EngSerViceType = engservicetype
          @SourceType = sourcetype
          @VoiceFormat = voiceformat
          @ProjectId = projectid
          @SubServiceType = subservicetype
          @Url = url
          @UsrAudioKey = usraudiokey
          @Data = data
          @DataLen = datalen
          @WordInfo = wordinfo
          @FilterDirty = filterdirty
          @FilterModal = filtermodal
          @FilterPunc = filterpunc
          @ConvertNumMode = convertnummode
          @HotwordId = hotwordid
          @CustomizationId = customizationid
          @ReinforceHotword = reinforcehotword
          @HotwordList = hotwordlist
          @InputSampleRate = inputsamplerate
        end

        def deserialize(params)
          @EngSerViceType = params['EngSerViceType']
          @SourceType = params['SourceType']
          @VoiceFormat = params['VoiceFormat']
          @ProjectId = params['ProjectId']
          @SubServiceType = params['SubServiceType']
          @Url = params['Url']
          @UsrAudioKey = params['UsrAudioKey']
          @Data = params['Data']
          @DataLen = params['DataLen']
          @WordInfo = params['WordInfo']
          @FilterDirty = params['FilterDirty']
          @FilterModal = params['FilterModal']
          @FilterPunc = params['FilterPunc']
          @ConvertNumMode = params['ConvertNumMode']
          @HotwordId = params['HotwordId']
          @CustomizationId = params['CustomizationId']
          @ReinforceHotword = params['ReinforceHotword']
          @HotwordList = params['HotwordList']
          @InputSampleRate = params['InputSampleRate']
        end
      end

      # SentenceRecognition返回参数结构体
      class SentenceRecognitionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 识别结果。
        # @type Result: String
        # @param AudioDuration: 请求的音频时长，单位为ms
        # @type AudioDuration: Integer
        # @param WordSize: 词时间戳列表的长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordSize: Integer
        # @param WordList: 词时间戳列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :AudioDuration, :WordSize, :WordList, :RequestId

        def initialize(result=nil, audioduration=nil, wordsize=nil, wordlist=nil, requestid=nil)
          @Result = result
          @AudioDuration = audioduration
          @WordSize = wordsize
          @WordList = wordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @AudioDuration = params['AudioDuration']
          @WordSize = params['WordSize']
          unless params['WordList'].nil?
            @WordList = []
            params['WordList'].each do |i|
              sentenceword_tmp = SentenceWord.new
              sentenceword_tmp.deserialize(i)
              @WordList << sentenceword_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # [一句话识别](https://cloud.tencent.com/document/product/1093/35646#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)返回的词时间戳
      class SentenceWord < TencentCloud::Common::AbstractModel
        # @param Word: 词结果
        # @type Word: String
        # @param StartTime: 词在音频中的开始时间
        # @type StartTime: Integer
        # @param EndTime: 词在音频中的结束时间
        # @type EndTime: Integer

        attr_accessor :Word, :StartTime, :EndTime

        def initialize(word=nil, starttime=nil, endtime=nil)
          @Word = word
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Word = params['Word']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 识别结果中词文本，以及对应时间偏移
      class SentenceWords < TencentCloud::Common::AbstractModel
        # @param Word: 词文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Word: String
        # @param OffsetStartMs: 在句子中的开始时间偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetStartMs: Integer
        # @param OffsetEndMs: 在句子中的结束时间偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetEndMs: Integer

        attr_accessor :Word, :OffsetStartMs, :OffsetEndMs

        def initialize(word=nil, offsetstartms=nil, offsetendms=nil)
          @Word = word
          @OffsetStartMs = offsetstartms
          @OffsetEndMs = offsetendms
        end

        def deserialize(params)
          @Word = params['Word']
          @OffsetStartMs = params['OffsetStartMs']
          @OffsetEndMs = params['OffsetEndMs']
        end
      end

      # SetVocabState请求参数结构体
      class SetVocabStateRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID。
        # @type VocabId: String
        # @param State: 热词表状态，1：设为默认状态；0：设为非默认状态。
        # @type State: Integer

        attr_accessor :VocabId, :State

        def initialize(vocabid=nil, state=nil)
          @VocabId = vocabid
          @State = state
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @State = params['State']
        end
      end

      # SetVocabState返回参数结构体
      class SetVocabStateResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :RequestId

        def initialize(vocabid=nil, requestid=nil)
          @VocabId = vocabid
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @RequestId = params['RequestId']
        end
      end

      # [录音文件识别](https://cloud.tencent.com/document/product/1093/37823#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)、[实时语音异步识别](https://cloud.tencent.com/document/product/1093/52061#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)请求的返回数据
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过此ID在轮询接口获取识别状态与结果。TaskId数据类型为**uint64**。
        # **注意：TaskId有效期为24小时，不同日期可能出现重复TaskId，请不要依赖TaskId作为您业务系统里的唯一ID。**
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # [获取录音识别结果的返回参数](https://cloud.tencent.com/document/product/1093/37822#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)
      class TaskStatus < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务标识。注意：TaskId数据类型为uint64。
        # @type TaskId: Integer
        # @param Status: 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        # @type Status: Integer
        # @param StatusStr: 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        # @type StatusStr: String
        # @param Result: 识别结果。
        # @type Result: String
        # @param ErrorMsg: 失败原因说明。
        # @type ErrorMsg: String
        # @param ResultDetail: 识别结果详情，包含每个句子中的词时间偏移，一般用于生成字幕的场景。(录音识别请求中ResTextFormat=1时该字段不为空)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultDetail: Array
        # @param AudioDuration: 音频时长(秒)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioDuration: Float

        attr_accessor :TaskId, :Status, :StatusStr, :Result, :ErrorMsg, :ResultDetail, :AudioDuration

        def initialize(taskid=nil, status=nil, statusstr=nil, result=nil, errormsg=nil, resultdetail=nil, audioduration=nil)
          @TaskId = taskid
          @Status = status
          @StatusStr = statusstr
          @Result = result
          @ErrorMsg = errormsg
          @ResultDetail = resultdetail
          @AudioDuration = audioduration
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @StatusStr = params['StatusStr']
          @Result = params['Result']
          @ErrorMsg = params['ErrorMsg']
          unless params['ResultDetail'].nil?
            @ResultDetail = []
            params['ResultDetail'].each do |i|
              sentencedetail_tmp = SentenceDetail.new
              sentencedetail_tmp.deserialize(i)
              @ResultDetail << sentencedetail_tmp
            end
          end
          @AudioDuration = params['AudioDuration']
        end
      end

      # UpdateAsrKeyWordLib请求参数结构体
      class UpdateAsrKeyWordLibRequest < TencentCloud::Common::AbstractModel
        # @param KeyWordLibId: 关键词表ID
        # @type KeyWordLibId: String
        # @param Name: 词表名称，长度在1-20之间
        # 仅限中英文数字-_
        # @type Name: String
        # @param KeyWordFile: - 词文件（纯文本文件）以行分隔 ，进行二进制base64编码
        # - 格式要求：TXT 每行只有一个词，不满足格式则报错无法上传
        # - 每个词最多5个汉字或15个字符，单个词库最多不超过100个词
        # - 此参数为空则只更新词表名称
        # @type KeyWordFile: String

        attr_accessor :KeyWordLibId, :Name, :KeyWordFile

        def initialize(keywordlibid=nil, name=nil, keywordfile=nil)
          @KeyWordLibId = keywordlibid
          @Name = name
          @KeyWordFile = keywordfile
        end

        def deserialize(params)
          @KeyWordLibId = params['KeyWordLibId']
          @Name = params['Name']
          @KeyWordFile = params['KeyWordFile']
        end
      end

      # UpdateAsrKeyWordLib返回参数结构体
      class UpdateAsrKeyWordLibResponse < TencentCloud::Common::AbstractModel
        # @param Data: 关键词表ID数据
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.KeyWordLibIdData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = KeyWordLibIdData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateAsrVocab请求参数结构体
      class UpdateAsrVocabRequest < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param Name: 热词表名称，长度在1-255之间
        # @type Name: String
        # @param WordWeights: 词权重数组，包含全部的热词和对应的权重。每个热词的长度不大于10个汉字或30个英文字符，权重为[1,11]之间整数或100，数组长度不大于1000 (注意：如果仅更新热词表名称或者描述字段，请求不用带本参数）
        # @type WordWeights: Array
        # @param WordWeightStr: 词权重文件（纯文本文件）的二进制base64编码，以行分隔，每行的格式为word|weight，即以英文符号|为分割，左边为词，右边为权重，如：你好|5。
        # 当用户传此参数（参数长度大于0），即以此参数解析词权重，WordWeights会被忽略
        #  (注意：如果仅更新热词表名称或者描述字段，请求不用带本参数）
        # @type WordWeightStr: String
        # @param Description: 热词表描述，长度在0-1000之间
        # @type Description: String

        attr_accessor :VocabId, :Name, :WordWeights, :WordWeightStr, :Description

        def initialize(vocabid=nil, name=nil, wordweights=nil, wordweightstr=nil, description=nil)
          @VocabId = vocabid
          @Name = name
          @WordWeights = wordweights
          @WordWeightStr = wordweightstr
          @Description = description
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @Name = params['Name']
          unless params['WordWeights'].nil?
            @WordWeights = []
            params['WordWeights'].each do |i|
              hotword_tmp = HotWord.new
              hotword_tmp.deserialize(i)
              @WordWeights << hotword_tmp
            end
          end
          @WordWeightStr = params['WordWeightStr']
          @Description = params['Description']
        end
      end

      # UpdateAsrVocab返回参数结构体
      class UpdateAsrVocabResponse < TencentCloud::Common::AbstractModel
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VocabId, :RequestId

        def initialize(vocabid=nil, requestid=nil)
          @VocabId = vocabid
          @RequestId = requestid
        end

        def deserialize(params)
          @VocabId = params['VocabId']
          @RequestId = params['RequestId']
        end
      end

      # 用户用量信息
      class UsageByDateInfo < TencentCloud::Common::AbstractModel
        # @param BizName: 业务类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizName: String
        # @param Count: 识别次数
        # 单位：次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param Duration: 识别时长
        # 单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer

        attr_accessor :BizName, :Count, :Duration

        def initialize(bizname=nil, count=nil, duration=nil)
          @BizName = bizname
          @Count = count
          @Duration = duration
        end

        def deserialize(params)
          @BizName = params['BizName']
          @Count = params['Count']
          @Duration = params['Duration']
        end
      end

      # 用户用量信息
      class UsageByDateInfoData < TencentCloud::Common::AbstractModel
        # @param UsageByDateInfoList: 用量信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsageByDateInfoList: Array

        attr_accessor :UsageByDateInfoList

        def initialize(usagebydateinfolist=nil)
          @UsageByDateInfoList = usagebydateinfolist
        end

        def deserialize(params)
          unless params['UsageByDateInfoList'].nil?
            @UsageByDateInfoList = []
            params['UsageByDateInfoList'].each do |i|
              usagebydateinfo_tmp = UsageByDateInfo.new
              usagebydateinfo_tmp.deserialize(i)
              @UsageByDateInfoList << usagebydateinfo_tmp
            end
          end
        end
      end

      # 声纹组对比结果top数据
      class VerifyTop < TencentCloud::Common::AbstractModel
        # @param Score: 相似度打分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: String
        # @param VoicePrintId: 说话人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoicePrintId: String
        # @param SpeakerId: 说话人昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeakerId: String

        attr_accessor :Score, :VoicePrintId, :SpeakerId

        def initialize(score=nil, voiceprintid=nil, speakerid=nil)
          @Score = score
          @VoicePrintId = voiceprintid
          @SpeakerId = speakerid
        end

        def deserialize(params)
          @Score = params['Score']
          @VoicePrintId = params['VoicePrintId']
          @SpeakerId = params['SpeakerId']
        end
      end

      # 说话人验证1:N返回结果
      class VerifyTopResult < TencentCloud::Common::AbstractModel
        # @param VerifyTops: 对比打分结果，按照打分降序排列返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyTops: Array

        attr_accessor :VerifyTops

        def initialize(verifytops=nil)
          @VerifyTops = verifytops
        end

        def deserialize(params)
          unless params['VerifyTops'].nil?
            @VerifyTops = []
            params['VerifyTops'].each do |i|
              verifytop_tmp = VerifyTop.new
              verifytop_tmp.deserialize(i)
              @VerifyTops << verifytop_tmp
            end
          end
        end
      end

      # [词表内容](https://cloud.tencent.com/document/product/1093/41484#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)
      class Vocab < TencentCloud::Common::AbstractModel
        # @param Name: 热词表名称
        # @type Name: String
        # @param Description: 热词表描述
        # @type Description: String
        # @param VocabId: 热词表ID
        # @type VocabId: String
        # @param WordWeights: 词权重列表
        # @type WordWeights: Array
        # @param CreateTime: 词表创建时间
        # @type CreateTime: String
        # @param UpdateTime: 词表更新时间
        # @type UpdateTime: String
        # @param State: 热词表状态，1为默认状态即在识别时默认加载该热词表进行识别，0为初始状态
        # @type State: Integer
        # @param TagInfos: 标签数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagInfos: Array

        attr_accessor :Name, :Description, :VocabId, :WordWeights, :CreateTime, :UpdateTime, :State, :TagInfos

        def initialize(name=nil, description=nil, vocabid=nil, wordweights=nil, createtime=nil, updatetime=nil, state=nil, taginfos=nil)
          @Name = name
          @Description = description
          @VocabId = vocabid
          @WordWeights = wordweights
          @CreateTime = createtime
          @UpdateTime = updatetime
          @State = state
          @TagInfos = taginfos
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @VocabId = params['VocabId']
          unless params['WordWeights'].nil?
            @WordWeights = []
            params['WordWeights'].each do |i|
              hotword_tmp = HotWord.new
              hotword_tmp.deserialize(i)
              @WordWeights << hotword_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @State = params['State']
          @TagInfos = params['TagInfos']
        end
      end

      # [说话人基础数据](https://cloud.tencent.com/document/product/1093/94483#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)，包括说话人id和说话人昵称
      class VoicePrintBaseData < TencentCloud::Common::AbstractModel
        # @param VoicePrintId: 说话人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoicePrintId: String
        # @param SpeakerNick: 说话人昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeakerNick: String

        attr_accessor :VoicePrintId, :SpeakerNick

        def initialize(voiceprintid=nil, speakernick=nil)
          @VoicePrintId = voiceprintid
          @SpeakerNick = speakernick
        end

        def deserialize(params)
          @VoicePrintId = params['VoicePrintId']
          @SpeakerNick = params['SpeakerNick']
        end
      end

      # 音频声纹比对结果，包含比对分数
      class VoicePrintCompareData < TencentCloud::Common::AbstractModel
        # @param Score: 匹配度 取值范围(0.0 - 100.0)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: String
        # @param Decision: 验证结果 0: 未通过 1: 通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Decision: Integer

        attr_accessor :Score, :Decision

        def initialize(score=nil, decision=nil)
          @Score = score
          @Decision = decision
        end

        def deserialize(params)
          @Score = params['Score']
          @Decision = params['Decision']
        end
      end

      # VoicePrintCompare请求参数结构体
      class VoicePrintCompareRequest < TencentCloud::Common::AbstractModel
        # @param VoiceFormat: 音频格式 0: pcm, 1: wav；pcm和wav音频无损压缩，识别准确度更高
        # @type VoiceFormat: Integer
        # @param SampleRate: 音频采样率，目前仅支持16k，请填写16000
        # @type SampleRate: Integer
        # @param SrcAudioData: 对比源音频数据, 音频要求：base64 编码,16k采样率， 16bit位深，pcm或者wav格式， 单声道，音频时长不超过30秒的音频，base64编码数据大小不超过2M
        # @type SrcAudioData: String
        # @param DestAudioData: 对比目标音频数据, 音频要求：base64 编码,16k采样率， 16bit位深，pcm或者wav格式， 单声道，音频时长不超过30秒的音频，base64编码数据大小不超过2M
        # @type DestAudioData: String

        attr_accessor :VoiceFormat, :SampleRate, :SrcAudioData, :DestAudioData

        def initialize(voiceformat=nil, samplerate=nil, srcaudiodata=nil, destaudiodata=nil)
          @VoiceFormat = voiceformat
          @SampleRate = samplerate
          @SrcAudioData = srcaudiodata
          @DestAudioData = destaudiodata
        end

        def deserialize(params)
          @VoiceFormat = params['VoiceFormat']
          @SampleRate = params['SampleRate']
          @SrcAudioData = params['SrcAudioData']
          @DestAudioData = params['DestAudioData']
        end
      end

      # VoicePrintCompare返回参数结构体
      class VoicePrintCompareResponse < TencentCloud::Common::AbstractModel
        # @param Data: 音频声纹比对结果，包含相似度打分
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.VoicePrintCompareData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoicePrintCompareData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 统计返回[说话人注册数量](https://cloud.tencent.com/document/product/1093/96061#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)
      class VoicePrintCountData < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param VoicePrintList: 说话人id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoicePrintList: Array

        attr_accessor :Total, :VoicePrintList

        def initialize(total=nil, voiceprintlist=nil)
          @Total = total
          @VoicePrintList = voiceprintlist
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['VoicePrintList'].nil?
            @VoicePrintList = []
            params['VoicePrintList'].each do |i|
              voiceprintbasedata_tmp = VoicePrintBaseData.new
              voiceprintbasedata_tmp.deserialize(i)
              @VoicePrintList << voiceprintbasedata_tmp
            end
          end
        end
      end

      # VoicePrintCount请求参数结构体
      class VoicePrintCountRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID,仅支持大小写字母和下划线的组合，不超过128个字符
        # @type GroupId: String
        # @param CountMod: 统计模式
        # 0: 统计所有声纹数量
        # 1: 统计指定分组下的声纹数量
        # @type CountMod: Integer

        attr_accessor :GroupId, :CountMod

        def initialize(groupid=nil, countmod=nil)
          @GroupId = groupid
          @CountMod = countmod
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @CountMod = params['CountMod']
        end
      end

      # VoicePrintCount返回参数结构体
      class VoicePrintCountResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计数据
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.VoicePrintCountData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoicePrintCountData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # VoicePrintDelete请求参数结构体
      class VoicePrintDeleteRequest < TencentCloud::Common::AbstractModel
        # @param VoicePrintId: 说话人id，说话人唯一标识
        # @type VoicePrintId: String
        # @param GroupId: 说话人分组ID,仅支持大小写字母和下划线的组合，不超过128个字符
        # @type GroupId: String
        # @param DelMod: 删除模式:
        # 0.默认值，删除该条声纹
        # 1.从分组中删除该条声纹，声纹本身不删除
        # 2.从声纹库中删除分组，仅删除分组信息，不会真正删除分组中的声纹
        # @type DelMod: Integer

        attr_accessor :VoicePrintId, :GroupId, :DelMod

        def initialize(voiceprintid=nil, groupid=nil, delmod=nil)
          @VoicePrintId = voiceprintid
          @GroupId = groupid
          @DelMod = delmod
        end

        def deserialize(params)
          @VoicePrintId = params['VoicePrintId']
          @GroupId = params['GroupId']
          @DelMod = params['DelMod']
        end
      end

      # VoicePrintDelete返回参数结构体
      class VoicePrintDeleteResponse < TencentCloud::Common::AbstractModel
        # @param Data: 说话人基本信息
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.VoicePrintBaseData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoicePrintBaseData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # VoicePrintEnroll请求参数结构体
      class VoicePrintEnrollRequest < TencentCloud::Common::AbstractModel
        # @param VoiceFormat: 音频格式 0: pcm, 1: wav
        # @type VoiceFormat: Integer
        # @param SampleRate: 音频采样率，目前支持16000，单位：Hz，必填
        # @type SampleRate: Integer
        # @param Data: 音频数据, base64 编码, 音频时长不能超过30s，数据大小不超过2M
        # @type Data: String
        # @param SpeakerNick: 说话人昵称  不超过32字节
        # @type SpeakerNick: String
        # @param GroupId: 分组id, 仅支持大小写字母和下划线的组合，不超过128个字符
        # @type GroupId: String

        attr_accessor :VoiceFormat, :SampleRate, :Data, :SpeakerNick, :GroupId

        def initialize(voiceformat=nil, samplerate=nil, data=nil, speakernick=nil, groupid=nil)
          @VoiceFormat = voiceformat
          @SampleRate = samplerate
          @Data = data
          @SpeakerNick = speakernick
          @GroupId = groupid
        end

        def deserialize(params)
          @VoiceFormat = params['VoiceFormat']
          @SampleRate = params['SampleRate']
          @Data = params['Data']
          @SpeakerNick = params['SpeakerNick']
          @GroupId = params['GroupId']
        end
      end

      # VoicePrintEnroll返回参数结构体
      class VoicePrintEnrollResponse < TencentCloud::Common::AbstractModel
        # @param Data: 说话人基本数据
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.VoicePrintBaseData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoicePrintBaseData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # VoicePrintGroupVerify请求参数结构体
      class VoicePrintGroupVerifyRequest < TencentCloud::Common::AbstractModel
        # @param VoiceFormat: 音频格式 0: pcm, 1: wav
        # @type VoiceFormat: Integer
        # @param SampleRate: 音频采样率，目前支持16000，单位：Hz，必填
        # @type SampleRate: Integer
        # @param Data: 音频数据, base64 编码, 音频时长不能超过30s，数据大小不超过2M
        # @type Data: String
        # @param GroupId: 分组id, 支持数字，字母，下划线，长度不超过128
        # @type GroupId: String
        # @param TopN: 返回打分结果降序排列topN, TopN大于0， 小于可创建声纹最大数量
        # @type TopN: Integer

        attr_accessor :VoiceFormat, :SampleRate, :Data, :GroupId, :TopN

        def initialize(voiceformat=nil, samplerate=nil, data=nil, groupid=nil, topn=nil)
          @VoiceFormat = voiceformat
          @SampleRate = samplerate
          @Data = data
          @GroupId = groupid
          @TopN = topn
        end

        def deserialize(params)
          @VoiceFormat = params['VoiceFormat']
          @SampleRate = params['SampleRate']
          @Data = params['Data']
          @GroupId = params['GroupId']
          @TopN = params['TopN']
        end
      end

      # VoicePrintGroupVerify返回参数结构体
      class VoicePrintGroupVerifyResponse < TencentCloud::Common::AbstractModel
        # @param Data: TopN 返回结果;系统建议打分70分以上为同一个人音色，评分也取决于音频质量、长度等其他原因影响，您可以按照业务需求适当提高或降低分数要求
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.VerifyTopResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VerifyTopResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # VoicePrintUpdate请求参数结构体
      class VoicePrintUpdateRequest < TencentCloud::Common::AbstractModel
        # @param VoiceFormat: 音频格式 0: pcm, 1: wav
        # @type VoiceFormat: Integer
        # @param SampleRate: 音频采样率 目前仅支持16000 单位Hz
        # @type SampleRate: Integer
        # @param VoicePrintId: 说话人id， 说话人唯一标识
        # @type VoicePrintId: String
        # @param Data: 音频数据, base64 编码, 音频时长不能超过30s，数据大小不超过2M
        # @type Data: String
        # @param SpeakerNick: 说话人昵称  不超过32字节
        # @type SpeakerNick: String

        attr_accessor :VoiceFormat, :SampleRate, :VoicePrintId, :Data, :SpeakerNick

        def initialize(voiceformat=nil, samplerate=nil, voiceprintid=nil, data=nil, speakernick=nil)
          @VoiceFormat = voiceformat
          @SampleRate = samplerate
          @VoicePrintId = voiceprintid
          @Data = data
          @SpeakerNick = speakernick
        end

        def deserialize(params)
          @VoiceFormat = params['VoiceFormat']
          @SampleRate = params['SampleRate']
          @VoicePrintId = params['VoicePrintId']
          @Data = params['Data']
          @SpeakerNick = params['SpeakerNick']
        end
      end

      # VoicePrintUpdate返回参数结构体
      class VoicePrintUpdateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 说话人基础数据
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.VoicePrintBaseData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoicePrintBaseData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # [说话人验证数据](https://cloud.tencent.com/document/product/1093/94481#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)
      class VoicePrintVerifyData < TencentCloud::Common::AbstractModel
        # @param VoicePrintId: 说话人id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoicePrintId: String
        # @param Score: 匹配度 取值范围(0.0 - 100.0)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: String
        # @param Decision: 验证结果 0: 未通过 1: 通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Decision: Integer

        attr_accessor :VoicePrintId, :Score, :Decision

        def initialize(voiceprintid=nil, score=nil, decision=nil)
          @VoicePrintId = voiceprintid
          @Score = score
          @Decision = decision
        end

        def deserialize(params)
          @VoicePrintId = params['VoicePrintId']
          @Score = params['Score']
          @Decision = params['Decision']
        end
      end

      # VoicePrintVerify请求参数结构体
      class VoicePrintVerifyRequest < TencentCloud::Common::AbstractModel
        # @param VoiceFormat: 音频格式 0: pcm, 1: wav
        # @type VoiceFormat: Integer
        # @param SampleRate: 音频采样率，目前支持16000，单位：Hz，必填
        # @type SampleRate: Integer
        # @param Data: 音频数据, base64 编码, 音频时长不能超过30s，数据大小不超过2M
        # @type Data: String
        # @param VoicePrintId: 说话人id, 说话人唯一标识
        # @type VoicePrintId: String

        attr_accessor :VoiceFormat, :SampleRate, :Data, :VoicePrintId

        def initialize(voiceformat=nil, samplerate=nil, data=nil, voiceprintid=nil)
          @VoiceFormat = voiceformat
          @SampleRate = samplerate
          @Data = data
          @VoicePrintId = voiceprintid
        end

        def deserialize(params)
          @VoiceFormat = params['VoiceFormat']
          @SampleRate = params['SampleRate']
          @Data = params['Data']
          @VoicePrintId = params['VoicePrintId']
        end
      end

      # VoicePrintVerify返回参数结构体
      class VoicePrintVerifyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 说话人验证数据
        # @type Data: :class:`Tencentcloud::Asr.v20190614.models.VoicePrintVerifyData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoicePrintVerifyData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

