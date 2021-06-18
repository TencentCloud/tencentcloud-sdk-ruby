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
  module Soe
    module V20180724
      # InitOralProcess请求参数结构体
      class InitOralProcessRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 语音段唯一标识，一段语音一个SessionId
        # @type SessionId: String
        # @param RefText: 被评估语音对应的文本，句子模式下不超过个 20 单词或者中文文字，段落模式不超过 120 单词或者中文文字，中文评估使用 utf-8 编码，自由说模式该值传空。如需要在单词模式和句子模式下使用自定义音素，可以通过设置 TextMode 使用[音素标注](https://cloud.tencent.com/document/product/884/33698)。
        # @type RefText: String
        # @param WorkMode: 语音输入模式，0：流式分片，1：非流式一次性评估
        # @type WorkMode: Integer
        # @param EvalMode: 评估模式，0：词模式（中文评测模式下为文字模式），1：句子模式，2：段落模式，3：自由说模式，当为词模式评估时，能够提供每个音节的评估信息，当为句子模式时，能够提供完整度和流利度信息。4: 英文单词音素诊断评测模式，针对一个单词音素诊断评测。
        # @type EvalMode: Integer
        # @param ScoreCoeff: 评价苛刻指数，取值为[1.0 - 4.0]范围内的浮点数，用于平滑不同年龄段的分数，1.0为小年龄段，4.0为最高年龄段
        # @type ScoreCoeff: Float
        # @param SoeAppId: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数，新的 SoeAppId 可以在[控制台](https://console.cloud.tencent.com/soe)【应用管理】下新建。
        # @type SoeAppId: String
        # @param IsLongLifeSession: 长效session标识，当该参数为1时，session的持续时间为300s，但会一定程度上影响第一个数据包的返回速度，且TransmitOralProcess必须同时为1才可生效。
        # @type IsLongLifeSession: Integer
        # @param StorageMode: 音频存储模式，0：不存储，1：存储到公共对象存储，输出结果为该会话最后一个分片TransmitOralProcess 返回结果 AudioUrl 字段，2：永久存储音频，需要提工单申请，会产生一定存储费用，3：自定义存储，将音频存储到自定义的腾讯云[对象存储](https://cloud.tencent.com/product/cos)中，需要提工单登记存储信息。
        # @type StorageMode: Integer
        # @param SentenceInfoEnabled: 输出断句中间结果标识，0：不输出，1：输出，通过设置该参数，可以在评估过程中的分片传输请求中，返回已经评估断句的中间结果，中间结果可用于客户端 UI 更新，输出结果为TransmitOralProcess请求返回结果 SentenceInfoSet 字段。
        # @type SentenceInfoEnabled: Integer
        # @param ServerType: 评估语言，0：英文，1：中文。
        # @type ServerType: Integer
        # @param IsAsync: 异步模式标识，0：同步模式，1：异步模式，可选值参考[服务模式](https://cloud.tencent.com/document/product/884/33697)。
        # @type IsAsync: Integer
        # @param TextMode: 输入文本模式，0: 普通文本，1：[音素结构](https://cloud.tencent.com/document/product/884/33698)文本。2：音素注册模式（提工单注册需要使用音素的单词）。
        # @type TextMode: Integer

        attr_accessor :SessionId, :RefText, :WorkMode, :EvalMode, :ScoreCoeff, :SoeAppId, :IsLongLifeSession, :StorageMode, :SentenceInfoEnabled, :ServerType, :IsAsync, :TextMode
        
        def initialize(sessionid=nil, reftext=nil, workmode=nil, evalmode=nil, scorecoeff=nil, soeappid=nil, islonglifesession=nil, storagemode=nil, sentenceinfoenabled=nil, servertype=nil, isasync=nil, textmode=nil)
          @SessionId = sessionid
          @RefText = reftext
          @WorkMode = workmode
          @EvalMode = evalmode
          @ScoreCoeff = scorecoeff
          @SoeAppId = soeappid
          @IsLongLifeSession = islonglifesession
          @StorageMode = storagemode
          @SentenceInfoEnabled = sentenceinfoenabled
          @ServerType = servertype
          @IsAsync = isasync
          @TextMode = textmode
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @RefText = params['RefText']
          @WorkMode = params['WorkMode']
          @EvalMode = params['EvalMode']
          @ScoreCoeff = params['ScoreCoeff']
          @SoeAppId = params['SoeAppId']
          @IsLongLifeSession = params['IsLongLifeSession']
          @StorageMode = params['StorageMode']
          @SentenceInfoEnabled = params['SentenceInfoEnabled']
          @ServerType = params['ServerType']
          @IsAsync = params['IsAsync']
          @TextMode = params['TextMode']
        end
      end

      # InitOralProcess返回参数结构体
      class InitOralProcessResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 语音段唯一标识，一个完整语音一个SessionId
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 评测关键词
      class Keyword < TencentCloud::Common::AbstractModel
        # @param RefText: 被评估语音对应的文本，句子模式下不超过个 20 单词或者中文文字，段落模式不超过 120 单词或者中文文字，中文评估使用 utf-8 编码，自由说模式该值无效。如需要在单词模式和句子模式下使用自定义音素，可以通过设置 TextMode 使用[音素标注](https://cloud.tencent.com/document/product/884/33698)。
        # @type RefText: String
        # @param EvalMode: 评估模式，0：词模式（中文评测模式下为文字模式），1：句子模式，2：段落模式，3：自由说模式，当为词模式评估时，能够提供每个音节的评估信息，当为句子模式时，能够提供完整度和流利度信息。
        # @type EvalMode: Integer
        # @param ScoreCoeff: 评价苛刻指数，取值为[1.0 - 4.0]范围内的浮点数，用于平滑不同年龄段的分数，1.0为小年龄段，4.0为最高年龄段
        # @type ScoreCoeff: Float
        # @param ServerType: 评估语言，0：英文，1：中文。
        # @type ServerType: Integer
        # @param TextMode: 输入文本模式，0: 普通文本，1：[音素结构](https://cloud.tencent.com/document/product/884/33698)文本。
        # @type TextMode: Integer

        attr_accessor :RefText, :EvalMode, :ScoreCoeff, :ServerType, :TextMode
        
        def initialize(reftext=nil, evalmode=nil, scorecoeff=nil, servertype=nil, textmode=nil)
          @RefText = reftext
          @EvalMode = evalmode
          @ScoreCoeff = scorecoeff
          @ServerType = servertype
          @TextMode = textmode
        end

        def deserialize(params)
          @RefText = params['RefText']
          @EvalMode = params['EvalMode']
          @ScoreCoeff = params['ScoreCoeff']
          @ServerType = params['ServerType']
          @TextMode = params['TextMode']
        end
      end

      # KeywordEvaluate请求参数结构体
      class KeywordEvaluateRequest < TencentCloud::Common::AbstractModel
        # @param SeqId: 流式数据包的序号，从1开始，当IsEnd字段为1后后续序号无意义，当IsLongLifeSession不为1且为非流式模式时无意义。
        # @type SeqId: Integer
        # @param IsEnd: 是否传输完毕标志，若为0表示未完毕，若为1则传输完毕开始评估，非流式模式下无意义。
        # @type IsEnd: Integer
        # @param VoiceFileType: 语音文件类型 	1: raw, 2: wav, 3: mp3, 4: speex (语言文件格式目前仅支持 16k 采样率 16bit 编码单声道，如有不一致可能导致评估不准确或失败)。
        # @type VoiceFileType: Integer
        # @param VoiceEncodeType: 语音编码类型	1:pcm。
        # @type VoiceEncodeType: Integer
        # @param UserVoiceData: 当前数据包数据, 流式模式下数据包大小可以按需设置，在网络良好的情况下，建议设置为0.5k，且必须保证分片帧完整（16bit的数据必须保证音频长度为偶数），编码格式要求为BASE64。
        # @type UserVoiceData: String
        # @param SessionId: 语音段唯一标识，一个完整语音一个SessionId。
        # @type SessionId: String
        # @param Keywords: 关键词列表
        # @type Keywords: Array
        # @param SoeAppId: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数，新的 SoeAppId 可以在[控制台](https://console.cloud.tencent.com/soe)【应用管理】下新建。
        # @type SoeAppId: String
        # @param IsQuery: 查询标识，当该参数为1时，该请求为查询请求，请求返回该 Session 评估结果。
        # @type IsQuery: Integer

        attr_accessor :SeqId, :IsEnd, :VoiceFileType, :VoiceEncodeType, :UserVoiceData, :SessionId, :Keywords, :SoeAppId, :IsQuery
        
        def initialize(seqid=nil, isend=nil, voicefiletype=nil, voiceencodetype=nil, uservoicedata=nil, sessionid=nil, keywords=nil, soeappid=nil, isquery=nil)
          @SeqId = seqid
          @IsEnd = isend
          @VoiceFileType = voicefiletype
          @VoiceEncodeType = voiceencodetype
          @UserVoiceData = uservoicedata
          @SessionId = sessionid
          @Keywords = keywords
          @SoeAppId = soeappid
          @IsQuery = isquery
        end

        def deserialize(params)
          @SeqId = params['SeqId']
          @IsEnd = params['IsEnd']
          @VoiceFileType = params['VoiceFileType']
          @VoiceEncodeType = params['VoiceEncodeType']
          @UserVoiceData = params['UserVoiceData']
          @SessionId = params['SessionId']
          unless params['Keywords'].nil?
            @Keywords = []
            params['Keywords'].each do |i|
              @Keywords << Keyword.new.deserialize(i)
            end
          end
          @SoeAppId = params['SoeAppId']
          @IsQuery = params['IsQuery']
        end
      end

      # KeywordEvaluate返回参数结构体
      class KeywordEvaluateResponse < TencentCloud::Common::AbstractModel
        # @param KeywordScores: 关键词得分
        # @type KeywordScores: Array
        # @param SessionId: 语音段唯一标识，一段语音一个SessionId
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeywordScores, :SessionId, :RequestId
        
        def initialize(keywordscores=nil, sessionid=nil, requestid=nil)
          @KeywordScores = keywordscores
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeywordScores'].nil?
            @KeywordScores = []
            params['KeywordScores'].each do |i|
              @KeywordScores << KeywordScore.new.deserialize(i)
            end
          end
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # 关键词得分
      class KeywordScore < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键词
        # @type Keyword: String
        # @param PronAccuracy: 发音精准度，取值范围[-1, 100]，当取-1时指完全不匹配，当为句子模式时，是所有已识别单词准确度的加权平均值，在reftext中但未识别出来的词不计入分数中。当为流式模式且请求中IsEnd未置1时，取值无意义。
        # @type PronAccuracy: Float
        # @param PronFluency: 发音流利度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronFluency: Float
        # @param PronCompletion: 发音完整度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronCompletion: Float
        # @param Words: 详细发音评估结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Words: Array
        # @param SuggestedScore: 建议评分，取值范围[0,100]，评分方式为建议评分 = 准确度（PronAccuracyfloat）× 完整度（PronCompletionfloat）×（2 - 完整度（PronCompletionfloat）），如若评分策略不符合请参考Words数组中的详细分数自定义评分逻辑。
        # @type SuggestedScore: Float

        attr_accessor :Keyword, :PronAccuracy, :PronFluency, :PronCompletion, :Words, :SuggestedScore
        
        def initialize(keyword=nil, pronaccuracy=nil, pronfluency=nil, proncompletion=nil, words=nil, suggestedscore=nil)
          @Keyword = keyword
          @PronAccuracy = pronaccuracy
          @PronFluency = pronfluency
          @PronCompletion = proncompletion
          @Words = words
          @SuggestedScore = suggestedscore
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @PronAccuracy = params['PronAccuracy']
          @PronFluency = params['PronFluency']
          @PronCompletion = params['PronCompletion']
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              @Words << WordRsp.new.deserialize(i)
            end
          end
          @SuggestedScore = params['SuggestedScore']
        end
      end

      # 单音节评价结果
      class PhoneInfo < TencentCloud::Common::AbstractModel
        # @param MemBeginTime: 当前音节语音起始时间点，单位为ms
        # @type MemBeginTime: Integer
        # @param MemEndTime: 当前音节语音终止时间点，单位为ms
        # @type MemEndTime: Integer
        # @param PronAccuracy: 音节发音准确度，取值范围[-1, 100]，当取-1时指完全不匹配
        # @type PronAccuracy: Float
        # @param DetectedStress: 当前音节是否检测为重音
        # @type DetectedStress: Boolean
        # @param Phone: 当前音节，当前评测识别的音素
        # @type Phone: String
        # @param Stress: 当前音节是否应为重音
        # @type Stress: Boolean
        # @param ReferencePhone: 参考音素，在单词诊断模式下，代表标准音素
        # @type ReferencePhone: String
        # @param MatchTag: 当前词与输入语句的匹配情况，0：匹配单词、1：新增单词、2：缺少单词、3：错读的词、4：未录入单词。
        # @type MatchTag: Integer
        # @param ReferenceLetter: 参考字符，在单词诊断模式下，代表音素对应的原始文本
        # @type ReferenceLetter: String

        attr_accessor :MemBeginTime, :MemEndTime, :PronAccuracy, :DetectedStress, :Phone, :Stress, :ReferencePhone, :MatchTag, :ReferenceLetter
        
        def initialize(membegintime=nil, memendtime=nil, pronaccuracy=nil, detectedstress=nil, phone=nil, stress=nil, referencephone=nil, matchtag=nil, referenceletter=nil)
          @MemBeginTime = membegintime
          @MemEndTime = memendtime
          @PronAccuracy = pronaccuracy
          @DetectedStress = detectedstress
          @Phone = phone
          @Stress = stress
          @ReferencePhone = referencephone
          @MatchTag = matchtag
          @ReferenceLetter = referenceletter
        end

        def deserialize(params)
          @MemBeginTime = params['MemBeginTime']
          @MemEndTime = params['MemEndTime']
          @PronAccuracy = params['PronAccuracy']
          @DetectedStress = params['DetectedStress']
          @Phone = params['Phone']
          @Stress = params['Stress']
          @ReferencePhone = params['ReferencePhone']
          @MatchTag = params['MatchTag']
          @ReferenceLetter = params['ReferenceLetter']
        end
      end

      # 语音过程中断句的中间结果
      class SentenceInfo < TencentCloud::Common::AbstractModel
        # @param SentenceId: 句子序号，在段落、自由说模式下有效，表示断句序号，最后的综合结果的为-1.
        # @type SentenceId: Integer
        # @param Words: 详细发音评估结果
        # @type Words: Array
        # @param PronAccuracy: 发音精准度，取值范围[-1, 100]，当取-1时指完全不匹配，当为句子模式时，是所有已识别单词准确度的加权平均值，在reftext中但未识别出来的词不计入分数中。
        # @type PronAccuracy: Float
        # @param PronFluency: 发音流利度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronFluency: Float
        # @param PronCompletion: 发音完整度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronCompletion: Float
        # @param SuggestedScore: 建议评分，取值范围[0,100]，评分方式为建议评分 = 准确度（PronAccuracyfloat）* 完整度（PronCompletionfloat）*（2 - 完整度（PronCompletionfloat）），如若评分策略不符合请参考Words数组中的详细分数自定义评分逻辑。
        # @type SuggestedScore: Float

        attr_accessor :SentenceId, :Words, :PronAccuracy, :PronFluency, :PronCompletion, :SuggestedScore
        
        def initialize(sentenceid=nil, words=nil, pronaccuracy=nil, pronfluency=nil, proncompletion=nil, suggestedscore=nil)
          @SentenceId = sentenceid
          @Words = words
          @PronAccuracy = pronaccuracy
          @PronFluency = pronfluency
          @PronCompletion = proncompletion
          @SuggestedScore = suggestedscore
        end

        def deserialize(params)
          @SentenceId = params['SentenceId']
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              @Words << WordRsp.new.deserialize(i)
            end
          end
          @PronAccuracy = params['PronAccuracy']
          @PronFluency = params['PronFluency']
          @PronCompletion = params['PronCompletion']
          @SuggestedScore = params['SuggestedScore']
        end
      end

      # TransmitOralProcess请求参数结构体
      class TransmitOralProcessRequest < TencentCloud::Common::AbstractModel
        # @param SeqId: 流式数据包的序号，从1开始，当IsEnd字段为1后后续序号无意义，当IsLongLifeSession不为1且为非流式模式时无意义。
        # @type SeqId: Integer
        # @param IsEnd: 是否传输完毕标志，若为0表示未完毕，若为1则传输完毕开始评估，非流式模式下无意义。
        # @type IsEnd: Integer
        # @param VoiceFileType: 语音文件类型 	1:raw, 2:wav, 3:mp3(三种格式目前仅支持16k采样率16bit编码单声道，如有不一致可能导致评估不准确或失败)。
        # @type VoiceFileType: Integer
        # @param VoiceEncodeType: 语音编码类型	1:pcm。
        # @type VoiceEncodeType: Integer
        # @param UserVoiceData: 当前数据包数据, 流式模式下数据包大小可以按需设置，在网络稳定时，分片大小建议设置0.5k，且必须保证分片帧完整（16bit的数据必须保证音频长度为偶数），编码格式要求为BASE64。
        # @type UserVoiceData: String
        # @param SessionId: 语音段唯一标识，一个完整语音一个SessionId。
        # @type SessionId: String
        # @param SoeAppId: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数，新的 SoeAppId 可以在[控制台](https://console.cloud.tencent.com/soe)【应用管理】下新建。
        # @type SoeAppId: String
        # @param IsLongLifeSession: 长效session标识，当该参数为1时，session的持续时间为300s，但会一定程度上影响第一个数据包的返回速度。当InitOralProcess接口调用时此项为1时，此项必填1才可生效。
        # @type IsLongLifeSession: Integer
        # @param IsQuery: 查询标识，当该参数为1时，该请求为查询请求，请求返回该 Session 的评估结果。
        # @type IsQuery: Integer

        attr_accessor :SeqId, :IsEnd, :VoiceFileType, :VoiceEncodeType, :UserVoiceData, :SessionId, :SoeAppId, :IsLongLifeSession, :IsQuery
        
        def initialize(seqid=nil, isend=nil, voicefiletype=nil, voiceencodetype=nil, uservoicedata=nil, sessionid=nil, soeappid=nil, islonglifesession=nil, isquery=nil)
          @SeqId = seqid
          @IsEnd = isend
          @VoiceFileType = voicefiletype
          @VoiceEncodeType = voiceencodetype
          @UserVoiceData = uservoicedata
          @SessionId = sessionid
          @SoeAppId = soeappid
          @IsLongLifeSession = islonglifesession
          @IsQuery = isquery
        end

        def deserialize(params)
          @SeqId = params['SeqId']
          @IsEnd = params['IsEnd']
          @VoiceFileType = params['VoiceFileType']
          @VoiceEncodeType = params['VoiceEncodeType']
          @UserVoiceData = params['UserVoiceData']
          @SessionId = params['SessionId']
          @SoeAppId = params['SoeAppId']
          @IsLongLifeSession = params['IsLongLifeSession']
          @IsQuery = params['IsQuery']
        end
      end

      # TransmitOralProcess返回参数结构体
      class TransmitOralProcessResponse < TencentCloud::Common::AbstractModel
        # @param PronAccuracy: 发音精准度，取值范围[-1, 100]，当取-1时指完全不匹配，当为句子模式时，是所有已识别单词准确度的加权平均值，在reftext中但未识别出来的词不计入分数中。当为流式模式且请求中IsEnd未置1时，取值无意义。
        # @type PronAccuracy: Float
        # @param PronFluency: 发音流利度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronFluency: Float
        # @param PronCompletion: 发音完整度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronCompletion: Float
        # @param Words: 详细发音评估结果
        # @type Words: Array
        # @param SessionId: 语音段唯一标识，一段语音一个SessionId
        # @type SessionId: String
        # @param AudioUrl: 保存语音音频文件下载地址
        # @type AudioUrl: String
        # @param SentenceInfoSet: 断句中间结果，中间结果是局部最优而非全局最优的结果，所以中间结果有可能和最终整体结果对应部分不一致；中间结果的输出便于客户端UI更新；待用户发音完全结束后，系统会给出一个综合所有句子的整体结果。
        # @type SentenceInfoSet: Array
        # @param Status: 评估 session 状态，“Evaluating"：评估中、"Failed"：评估失败、"Finished"：评估完成
        # @type Status: String
        # @param SuggestedScore: 建议评分，取值范围[0,100]，评分方式为建议评分 = 准确度（PronAccuracyfloat）× 完整度（PronCompletionfloat）×（2 - 完整度（PronCompletionfloat）），如若评分策略不符合请参考Words数组中的详细分数自定义评分逻辑。
        # @type SuggestedScore: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PronAccuracy, :PronFluency, :PronCompletion, :Words, :SessionId, :AudioUrl, :SentenceInfoSet, :Status, :SuggestedScore, :RequestId
        
        def initialize(pronaccuracy=nil, pronfluency=nil, proncompletion=nil, words=nil, sessionid=nil, audiourl=nil, sentenceinfoset=nil, status=nil, suggestedscore=nil, requestid=nil)
          @PronAccuracy = pronaccuracy
          @PronFluency = pronfluency
          @PronCompletion = proncompletion
          @Words = words
          @SessionId = sessionid
          @AudioUrl = audiourl
          @SentenceInfoSet = sentenceinfoset
          @Status = status
          @SuggestedScore = suggestedscore
          @RequestId = requestid
        end

        def deserialize(params)
          @PronAccuracy = params['PronAccuracy']
          @PronFluency = params['PronFluency']
          @PronCompletion = params['PronCompletion']
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              @Words << WordRsp.new.deserialize(i)
            end
          end
          @SessionId = params['SessionId']
          @AudioUrl = params['AudioUrl']
          unless params['SentenceInfoSet'].nil?
            @SentenceInfoSet = []
            params['SentenceInfoSet'].each do |i|
              @SentenceInfoSet << SentenceInfo.new.deserialize(i)
            end
          end
          @Status = params['Status']
          @SuggestedScore = params['SuggestedScore']
          @RequestId = params['RequestId']
        end
      end

      # TransmitOralProcessWithInit请求参数结构体
      class TransmitOralProcessWithInitRequest < TencentCloud::Common::AbstractModel
        # @param SeqId: 流式数据包的序号，从1开始，当IsEnd字段为1后后续序号无意义，当IsLongLifeSession不为1且为非流式模式时无意义。
        # @type SeqId: Integer
        # @param IsEnd: 是否传输完毕标志，若为0表示未完毕，若为1则传输完毕开始评估，非流式模式下无意义。
        # @type IsEnd: Integer
        # @param VoiceFileType: 语音文件类型
        # 1: raw
        # 2: wav
        # 3: mp3
        # 4: speex
        # 语音文件格式目前仅支持 16k 采样率 16bit 编码单声道，如有不一致可能导致评估不准确或失败。
        # @type VoiceFileType: Integer
        # @param VoiceEncodeType: 语音编码类型
        # 1:pcm
        # @type VoiceEncodeType: Integer
        # @param UserVoiceData: 当前数据包数据, 流式模式下数据包大小可以按需设置，在网络良好的情况下，建议设置为1k，且必须保证分片帧完整（16bit的数据必须保证音频长度为偶数），编码格式要求为BASE64。
        # @type UserVoiceData: String
        # @param SessionId: 语音段唯一标识，一段完整语音使用一个SessionId，不同语音段的评测需要使用不同的SessionId。一般使用uuid(通用唯一识别码)来作为它的值，要尽量保证SessionId的唯一性。
        # @type SessionId: String
        # @param RefText: 被评估语音对应的文本，仅支持中文和英文。
        # 句子模式下不超过个 30 单词或者中文文字，段落模式不超过 120 单词或者中文文字，中文评估使用 utf-8 编码，自由说模式该值无效。
        # 关于RefText的文本键入要求，请参考[评测模式介绍](https://cloud.tencent.com/document/product/884/56131)。
        # 如需要在评测模式下使用自定义注音（支持中英文），可以通过设置「TextMode」参数实现，设置方式请参考[音素标注](https://cloud.tencent.com/document/product/884/33698)。
        # @type RefText: String
        # @param WorkMode: 语音输入模式
        # 0：流式分片
        # 1：非流式一次性评估
        # 推荐使用流式分片传输。
        # @type WorkMode: Integer
        # @param EvalMode: 评测模式
        # 0：单词/单字模式（中文评测模式下为单字模式）
        # 1：句子模式
        # 2：段落模式
        # 3：自由说模式
        # 4：单词音素纠错模式
        # 5：情景评测模式
        # 6：句子多分支评测模式
        # 7：单词实时评测模式
        # 8：拼音评测模式
        # 关于每种评测模式的详细介绍，以及适用场景，请参考[评测模式介绍](https://cloud.tencent.com/document/product/884/56131)。
        # @type EvalMode: Integer
        # @param ScoreCoeff: 评价苛刻指数。取值为[1.0 - 4.0]范围内的浮点数，用于平滑不同年龄段的分数。
        # 1.0：适用于最小年龄段用户，一般对应儿童应用场景；
        # 4.0：适用于最高年龄段用户，一般对应成人严格打分场景。
        # @type ScoreCoeff: Float
        # @param SoeAppId: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数，新的 SoeAppId 可以在[控制台](https://console.cloud.tencent.com/soe)【应用管理】下新建。如果没有新建SoeAppId，请勿填入该参数，否则会报欠费错误。
        # @type SoeAppId: String
        # @param StorageMode: 音频存储模式
        # 0：不存储
        # 1：存储到公共对象存储，不会产生费用，存储时间为一个月。输出结果为该会话最后一个分片TransmitOralProcess 返回结果 AudioUrl 字段；
        # 2：永久存储音频，需要提工单申请，会产生一定的存储费用；
        # 3：自定义存储，将音频存储到自定义的腾讯云[对象存储](https://cloud.tencent.com/product/cos)中，需要提工单登记存储信息。关于自定义存储cos基础设置的方式，请查看下文自定义存储cos基础设置流程。
        # 注：对可用性要求较高的用户建议自行存储至腾讯云COS。
        # @type StorageMode: Integer
        # @param SentenceInfoEnabled: 输出断句中间结果标识
        # 0：不输出
        # 1：输出，通过设置该参数
        # 可以在评估过程中的分片传输请求中，返回已经评估断句的中间结果，中间结果可用于客户端 UI 更新，输出结果为TransmitOralProcess请求返回结果 SentenceInfoSet 字段。
        # @type SentenceInfoEnabled: Integer
        # @param ServerType: 评估语言
        # 0：英文
        # 1：中文
        # @type ServerType: Integer
        # @param IsAsync: 异步模式标识
        # 0：同步模式
        # 1：异步模式（一般情况不建议使用异步模式）
        # 可选值参考[服务模式](https://cloud.tencent.com/document/product/884/33697)。
        # @type IsAsync: Integer
        # @param IsQuery: 查询标识，当该参数为1时，该请求为查询请求，请求返回该 Session 评估结果。
        # @type IsQuery: Integer
        # @param TextMode: 输入文本模式
        # 0: 普通文本
        # 1：[音素结构](https://cloud.tencent.com/document/product/884/33698)文本
        # 2：音素注册模式（提工单注册需要使用音素的单词）。
        # @type TextMode: Integer

        attr_accessor :SeqId, :IsEnd, :VoiceFileType, :VoiceEncodeType, :UserVoiceData, :SessionId, :RefText, :WorkMode, :EvalMode, :ScoreCoeff, :SoeAppId, :StorageMode, :SentenceInfoEnabled, :ServerType, :IsAsync, :IsQuery, :TextMode
        
        def initialize(seqid=nil, isend=nil, voicefiletype=nil, voiceencodetype=nil, uservoicedata=nil, sessionid=nil, reftext=nil, workmode=nil, evalmode=nil, scorecoeff=nil, soeappid=nil, storagemode=nil, sentenceinfoenabled=nil, servertype=nil, isasync=nil, isquery=nil, textmode=nil)
          @SeqId = seqid
          @IsEnd = isend
          @VoiceFileType = voicefiletype
          @VoiceEncodeType = voiceencodetype
          @UserVoiceData = uservoicedata
          @SessionId = sessionid
          @RefText = reftext
          @WorkMode = workmode
          @EvalMode = evalmode
          @ScoreCoeff = scorecoeff
          @SoeAppId = soeappid
          @StorageMode = storagemode
          @SentenceInfoEnabled = sentenceinfoenabled
          @ServerType = servertype
          @IsAsync = isasync
          @IsQuery = isquery
          @TextMode = textmode
        end

        def deserialize(params)
          @SeqId = params['SeqId']
          @IsEnd = params['IsEnd']
          @VoiceFileType = params['VoiceFileType']
          @VoiceEncodeType = params['VoiceEncodeType']
          @UserVoiceData = params['UserVoiceData']
          @SessionId = params['SessionId']
          @RefText = params['RefText']
          @WorkMode = params['WorkMode']
          @EvalMode = params['EvalMode']
          @ScoreCoeff = params['ScoreCoeff']
          @SoeAppId = params['SoeAppId']
          @StorageMode = params['StorageMode']
          @SentenceInfoEnabled = params['SentenceInfoEnabled']
          @ServerType = params['ServerType']
          @IsAsync = params['IsAsync']
          @IsQuery = params['IsQuery']
          @TextMode = params['TextMode']
        end
      end

      # TransmitOralProcessWithInit返回参数结构体
      class TransmitOralProcessWithInitResponse < TencentCloud::Common::AbstractModel
        # @param PronAccuracy: 发音精准度，取值范围[-1, 100]，当取-1时指完全不匹配，当为句子模式时，是所有已识别单词准确度的加权平均值，在reftext中但未识别出来的词不计入分数中。当为流式模式且请求中IsEnd未置1时，取值无意义。
        # @type PronAccuracy: Float
        # @param PronFluency: 发音流利度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronFluency: Float
        # @param PronCompletion: 发音完整度，取值范围[0, 1]，当为词模式时，取值无意义；当为流式模式且请求中IsEnd未置1时，取值无意义
        # @type PronCompletion: Float
        # @param Words: 详细发音评估结果
        # @type Words: Array
        # @param SessionId: 语音段唯一标识，一段语音一个SessionId
        # @type SessionId: String
        # @param AudioUrl: 保存语音音频文件下载地址
        # @type AudioUrl: String
        # @param SentenceInfoSet: 断句中间结果，中间结果是局部最优而非全局最优的结果，所以中间结果有可能和最终整体结果对应部分不一致；中间结果的输出便于客户端UI更新；待用户发音完全结束后，系统会给出一个综合所有句子的整体结果。
        # @type SentenceInfoSet: Array
        # @param Status: 评估 session 状态，“Evaluating"：评估中、"Failed"：评估失败、"Finished"：评估完成
        # @type Status: String
        # @param SuggestedScore: 建议评分，取值范围[0,100]，评分方式为建议评分 = 准确度（PronAccuracyfloat）× 完整度（PronCompletionfloat）×（2 - 完整度（PronCompletionfloat）），如若评分策略不符合请参考Words数组中的详细分数自定义评分逻辑。
        # @type SuggestedScore: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PronAccuracy, :PronFluency, :PronCompletion, :Words, :SessionId, :AudioUrl, :SentenceInfoSet, :Status, :SuggestedScore, :RequestId
        
        def initialize(pronaccuracy=nil, pronfluency=nil, proncompletion=nil, words=nil, sessionid=nil, audiourl=nil, sentenceinfoset=nil, status=nil, suggestedscore=nil, requestid=nil)
          @PronAccuracy = pronaccuracy
          @PronFluency = pronfluency
          @PronCompletion = proncompletion
          @Words = words
          @SessionId = sessionid
          @AudioUrl = audiourl
          @SentenceInfoSet = sentenceinfoset
          @Status = status
          @SuggestedScore = suggestedscore
          @RequestId = requestid
        end

        def deserialize(params)
          @PronAccuracy = params['PronAccuracy']
          @PronFluency = params['PronFluency']
          @PronCompletion = params['PronCompletion']
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              @Words << WordRsp.new.deserialize(i)
            end
          end
          @SessionId = params['SessionId']
          @AudioUrl = params['AudioUrl']
          unless params['SentenceInfoSet'].nil?
            @SentenceInfoSet = []
            params['SentenceInfoSet'].each do |i|
              @SentenceInfoSet << SentenceInfo.new.deserialize(i)
            end
          end
          @Status = params['Status']
          @SuggestedScore = params['SuggestedScore']
          @RequestId = params['RequestId']
        end
      end

      # 单词评分细则
      class WordRsp < TencentCloud::Common::AbstractModel
        # @param MemBeginTime: 当前单词语音起始时间点，单位为ms，该字段段落模式下无意义。
        # @type MemBeginTime: Integer
        # @param MemEndTime: 当前单词语音终止时间点，单位为ms，该字段段落模式下无意义。
        # @type MemEndTime: Integer
        # @param PronAccuracy: 单词发音准确度，取值范围[-1, 100]，当取-1时指完全不匹配
        # @type PronAccuracy: Float
        # @param PronFluency: 单词发音流利度，取值范围[0, 1]
        # @type PronFluency: Float
        # @param Word: 当前词
        # @type Word: String
        # @param MatchTag: 当前词与输入语句的匹配情况，0：匹配单词、1：新增单词、2：缺少单词、3：错读的词、4：未录入单词。
        # @type MatchTag: Integer
        # @param PhoneInfos: 音节评估详情
        # @type PhoneInfos: Array
        # @param ReferenceWord: 参考词，目前为保留字段。
        # @type ReferenceWord: String

        attr_accessor :MemBeginTime, :MemEndTime, :PronAccuracy, :PronFluency, :Word, :MatchTag, :PhoneInfos, :ReferenceWord
        
        def initialize(membegintime=nil, memendtime=nil, pronaccuracy=nil, pronfluency=nil, word=nil, matchtag=nil, phoneinfos=nil, referenceword=nil)
          @MemBeginTime = membegintime
          @MemEndTime = memendtime
          @PronAccuracy = pronaccuracy
          @PronFluency = pronfluency
          @Word = word
          @MatchTag = matchtag
          @PhoneInfos = phoneinfos
          @ReferenceWord = referenceword
        end

        def deserialize(params)
          @MemBeginTime = params['MemBeginTime']
          @MemEndTime = params['MemEndTime']
          @PronAccuracy = params['PronAccuracy']
          @PronFluency = params['PronFluency']
          @Word = params['Word']
          @MatchTag = params['MatchTag']
          unless params['PhoneInfos'].nil?
            @PhoneInfos = []
            params['PhoneInfos'].each do |i|
              @PhoneInfos << PhoneInfo.new.deserialize(i)
            end
          end
          @ReferenceWord = params['ReferenceWord']
        end
      end

    end
  end
end

