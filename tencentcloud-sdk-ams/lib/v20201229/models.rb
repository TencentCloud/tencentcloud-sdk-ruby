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
  module Ams
    module V20201229
      # 音频审核输出参数
      class AudioResult < TencentCloud::Common::AbstractModel
        # @param HitFlag: 该字段用于返回审核内容是否命中审核模型；取值：0（**未命中**）、1（**命中**）。
        # @type HitFlag: Integer
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Suggestion: 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示具体的后续建议操作。<br>
        # 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Score: 该字段用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容。
        # @type Score: Integer
        # @param Text: 该字段用于返回音频文件经ASR识别后的文本信息。最长可识别**5小时**的音频文件，若超出时长限制，接口将会报错。
        # @type Text: String
        # @param Url: 该字段用于返回审核结果的访问链接（URL）。<br>备注：链接默认有效期为12小时。如果您需要更长时效的链接，请使用[COS预签名](https://cloud.tencent.com/document/product/1265/104001)功能更新签名时效。
        # @type Url: String
        # @param Duration: 该字段用于返回音频文件的时长，单位为毫秒。
        # @type Duration: String
        # @param Extra: 该字段用于返回额外附加信息，不同客户或Biztype下返回信息不同。
        # @type Extra: String
        # @param TextResults: 该字段用于返回音频文件经ASR识别后产生的文本的详细审核结果。具体结果内容请参见AudioResultDetailLanguageResult数据结构的细节描述。
        # @type TextResults: Array
        # @param MoanResults: 该字段用于返回音频文件呻吟检测的详细审核结果。具体结果内容请参见AudioResultDetailMoanResult数据结构的细节描述。
        # @type MoanResults: Array
        # @param LanguageResults: 该字段用于返回音频小语种检测的详细审核结果。具体结果内容请参见AudioResultDetailLanguageResult数据结构的细节描述。
        # @type LanguageResults: Array
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # @type SubLabel: String
        # @param RecognitionResults: 识别类标签结果信息列表
        # @type RecognitionResults: Array
        # @param SpeakerResults: 说话人结果
        # @type SpeakerResults: Array
        # @param LabelResults: 歌曲识别结果
        # @type LabelResults: Array
        # @param TravelResults: 出行结果
        # @type TravelResults: Array
        # @param SubTag: 三级标签
        # @type SubTag: String
        # @param SubTagCode: 三级标签码
        # @type SubTagCode: String
        # @param HitType: 审核检测类型
        # @type HitType: String

        attr_accessor :HitFlag, :Label, :Suggestion, :Score, :Text, :Url, :Duration, :Extra, :TextResults, :MoanResults, :LanguageResults, :SubLabel, :RecognitionResults, :SpeakerResults, :LabelResults, :TravelResults, :SubTag, :SubTagCode, :HitType

        def initialize(hitflag=nil, label=nil, suggestion=nil, score=nil, text=nil, url=nil, duration=nil, extra=nil, textresults=nil, moanresults=nil, languageresults=nil, sublabel=nil, recognitionresults=nil, speakerresults=nil, labelresults=nil, travelresults=nil, subtag=nil, subtagcode=nil, hittype=nil)
          @HitFlag = hitflag
          @Label = label
          @Suggestion = suggestion
          @Score = score
          @Text = text
          @Url = url
          @Duration = duration
          @Extra = extra
          @TextResults = textresults
          @MoanResults = moanresults
          @LanguageResults = languageresults
          @SubLabel = sublabel
          @RecognitionResults = recognitionresults
          @SpeakerResults = speakerresults
          @LabelResults = labelresults
          @TravelResults = travelresults
          @SubTag = subtag
          @SubTagCode = subtagcode
          @HitType = hittype
        end

        def deserialize(params)
          @HitFlag = params['HitFlag']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
          @Text = params['Text']
          @Url = params['Url']
          @Duration = params['Duration']
          @Extra = params['Extra']
          unless params['TextResults'].nil?
            @TextResults = []
            params['TextResults'].each do |i|
              audioresultdetailtextresult_tmp = AudioResultDetailTextResult.new
              audioresultdetailtextresult_tmp.deserialize(i)
              @TextResults << audioresultdetailtextresult_tmp
            end
          end
          unless params['MoanResults'].nil?
            @MoanResults = []
            params['MoanResults'].each do |i|
              audioresultdetailmoanresult_tmp = AudioResultDetailMoanResult.new
              audioresultdetailmoanresult_tmp.deserialize(i)
              @MoanResults << audioresultdetailmoanresult_tmp
            end
          end
          unless params['LanguageResults'].nil?
            @LanguageResults = []
            params['LanguageResults'].each do |i|
              audioresultdetaillanguageresult_tmp = AudioResultDetailLanguageResult.new
              audioresultdetaillanguageresult_tmp.deserialize(i)
              @LanguageResults << audioresultdetaillanguageresult_tmp
            end
          end
          @SubLabel = params['SubLabel']
          unless params['RecognitionResults'].nil?
            @RecognitionResults = []
            params['RecognitionResults'].each do |i|
              recognitionresult_tmp = RecognitionResult.new
              recognitionresult_tmp.deserialize(i)
              @RecognitionResults << recognitionresult_tmp
            end
          end
          unless params['SpeakerResults'].nil?
            @SpeakerResults = []
            params['SpeakerResults'].each do |i|
              speakerresults_tmp = SpeakerResults.new
              speakerresults_tmp.deserialize(i)
              @SpeakerResults << speakerresults_tmp
            end
          end
          unless params['LabelResults'].nil?
            @LabelResults = []
            params['LabelResults'].each do |i|
              labelresults_tmp = LabelResults.new
              labelresults_tmp.deserialize(i)
              @LabelResults << labelresults_tmp
            end
          end
          unless params['TravelResults'].nil?
            @TravelResults = []
            params['TravelResults'].each do |i|
              travelresults_tmp = TravelResults.new
              travelresults_tmp.deserialize(i)
              @TravelResults << travelresults_tmp
            end
          end
          @SubTag = params['SubTag']
          @SubTagCode = params['SubTagCode']
          @HitType = params['HitType']
        end
      end

      # 音频语言种类检测结果
      class AudioResultDetailLanguageResult < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回对应的语言种类信息。
        # @type Label: String
        # @param Score: 该参数用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表音频越有可能属于当前返回的语种标签；
        # @type Score: Integer
        # @param StartTime: 该参数用于返回对应语种标签的片段在音频文件内的开始时间，单位为秒。
        # @type StartTime: Float
        # @param EndTime: 该参数用于返回对应语种标签的片段在音频文件内的结束时间，单位为秒。
        # @type EndTime: Float
        # @param SubLabelCode: *内测中，敬请期待*
        # @type SubLabelCode: String

        attr_accessor :Label, :Score, :StartTime, :EndTime, :SubLabelCode

        def initialize(label=nil, score=nil, starttime=nil, endtime=nil, sublabelcode=nil)
          @Label = label
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
          @SubLabelCode = sublabelcode
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubLabelCode = params['SubLabelCode']
        end
      end

      # 音频呻吟审核结果
      class AudioResultDetailMoanResult < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回检测结果需要检测的内容类型，此处固定为**Moan**（呻吟）以调用呻吟检测功能。
        # @type Label: String
        # @param Score: 该字段用于返回呻吟检测的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表音频越有可能属于呻吟内容。
        # @type Score: Integer
        # @param StartTime: 该字段用于返回对应呻吟标签的片段在音频文件内的开始时间，单位为秒。
        # @type StartTime: Float
        # @param EndTime: 该字段用于返回对应呻吟标签的片段在音频文件内的结束时间，单位为秒。
        # @type EndTime: Float
        # @param SubLabelCode: *内测中，敬请期待*
        # @type SubLabelCode: String
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # @type SubLabel: String
        # @param Suggestion: 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String

        attr_accessor :Label, :Score, :StartTime, :EndTime, :SubLabelCode, :SubLabel, :Suggestion
        extend Gem::Deprecate
        deprecate :SubLabelCode, :none, 2025, 11
        deprecate :SubLabelCode=, :none, 2025, 11

        def initialize(label=nil, score=nil, starttime=nil, endtime=nil, sublabelcode=nil, sublabel=nil, suggestion=nil)
          @Label = label
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
          @SubLabelCode = sublabelcode
          @SubLabel = sublabel
          @Suggestion = suggestion
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubLabelCode = params['SubLabelCode']
          @SubLabel = params['SubLabel']
          @Suggestion = params['Suggestion']
        end
      end

      # 音频说话人声纹识别返回结果
      class AudioResultDetailSpeakerResult < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回检测结果需要检测的内容类型。
        # @type Label: String
        # @param Score: 该字段用于返回呻吟检测的置信度，取值范围：0（置信度最低）-100（置信度最高），越高代表音频越有可能属于说话人声纹。
        # @type Score: Integer
        # @param StartTime: 该字段用于返回对应说话人的片段在音频文件内的开始时间，单位为秒。
        # @type StartTime: Float
        # @param EndTime: 该字段用于返回对应说话人的片段在音频文件内的结束时间，单位为秒。
        # @type EndTime: Float

        attr_accessor :Label, :Score, :StartTime, :EndTime

        def initialize(label=nil, score=nil, starttime=nil, endtime=nil)
          @Label = label
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 音频ASR文本审核结果
      class AudioResultDetailTextResult < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Keywords: 该字段用于返回ASR识别出的文本内容命中的关键词信息，用于标注内容违规的具体原因（如：加我微信）。该参数可能会有多个返回值，代表命中的多个关键词；若返回值为空，Score不为空，则代表识别结果所对应的恶意标签（Label）来自于语义模型判断的返回值。
        # @type Keywords: Array
        # @param LibId: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的ID，以方便自定义库管理和配置。
        # @type LibId: String
        # @param LibName: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的名称,以方便自定义库管理和配置。
        # @type LibName: String
        # @param Score: 该字段用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容。
        # @type Score: Integer
        # @param Suggestion: 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示具体的后续建议操作。<br>
        # 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param LibType: 该字段用于返回自定义关键词对应的词库类型，取值为**1**（黑白库）和**2**（自定义关键词库），若未配置自定义关键词库,则默认值为1（黑白库匹配）。
        # @type LibType: Integer
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # @type SubLabel: String
        # @param HitInfos: 该字段用于命中的关键词信息
        # @type HitInfos: Array

        attr_accessor :Label, :Keywords, :LibId, :LibName, :Score, :Suggestion, :LibType, :SubLabel, :HitInfos

        def initialize(label=nil, keywords=nil, libid=nil, libname=nil, score=nil, suggestion=nil, libtype=nil, sublabel=nil, hitinfos=nil)
          @Label = label
          @Keywords = keywords
          @LibId = libid
          @LibName = libname
          @Score = score
          @Suggestion = suggestion
          @LibType = libtype
          @SubLabel = sublabel
          @HitInfos = hitinfos
        end

        def deserialize(params)
          @Label = params['Label']
          @Keywords = params['Keywords']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Score = params['Score']
          @Suggestion = params['Suggestion']
          @LibType = params['LibType']
          @SubLabel = params['SubLabel']
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

      # 表示该段声音的信息
      class AudioSegments < TencentCloud::Common::AbstractModel
        # @param OffsetTime: 该字段用于返回音频片段的开始时间，单位为秒。对于点播文件，该参数代表对应音频相对于完整音轨的偏移时间，如0（代表不偏移），5（音轨开始后5秒），10（音轨开始后10秒）；对于直播文件，该参数则返回对应音频片段开始时的Unix时间戳，如：1594650717。
        # @type OffsetTime: String
        # @param Result: 该字段用于返回音频片段的具体审核结果，详细内容敬请参考AudioResult数据结构的描述。
        # @type Result: :class:`Tencentcloud::Ams.v20201229.models.AudioResult`
        # @param CreatedAt: 入库时间
        # @type CreatedAt: String

        attr_accessor :OffsetTime, :Result, :CreatedAt

        def initialize(offsettime=nil, result=nil, createdat=nil)
          @OffsetTime = offsettime
          @Result = result
          @CreatedAt = createdat
        end

        def deserialize(params)
          @OffsetTime = params['OffsetTime']
          unless params['Result'].nil?
            @Result = AudioResult.new
            @Result.deserialize(params['Result'])
          end
          @CreatedAt = params['CreatedAt']
        end
      end

      # 文件桶信息
      # 参考腾讯云存储相关说明 https://cloud.tencent.com/document/product/436/44352
      class BucketInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: 该字段用于标识腾讯云对象存储的存储桶名称,关于文件桶的详细信息敬请参考 [腾讯云存储相关说明](https://cloud.tencent.com/document/product/436/44352)。
        # @type Bucket: String
        # @param Region: 该字段用于标识腾讯云对象存储的托管机房的分布地区，对象存储 COS 的数据存放在这些地域的存储桶中。
        # @type Region: String
        # @param Object: 该字段用于标识腾讯云对象存储的对象Key,对象作为基本单元被存放在存储桶中；用户可以通过腾讯云控制台、API、SDK 等多种方式管理对象。有关对象的详细描述敬请参阅相应 [产品文档](https://cloud.tencent.com/document/product/436/13324)。
        # @type Object: String

        attr_accessor :Bucket, :Region, :Object

        def initialize(bucket=nil, region=nil, object=nil)
          @Bucket = bucket
          @Region = region
          @Object = object
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Object = params['Object']
        end
      end

      # CancelTask请求参数结构体
      class CancelTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 该字段表示创建音频审核任务后返回的任务ID（在Results参数中），用于标识需要取消的审核任务。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CancelTask返回参数结构体
      class CancelTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateAudioModerationSyncTask请求参数结构体
      class CreateAudioModerationSyncTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizType: Biztype为策略的具体的编号，用于接口调度，在内容安全控制台中可配置。不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；调用时不传入Biztype代表采用默认的识别策略。
        # @type BizType: String
        # @param DataId: 数据标识，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # @type DataId: String
        # @param FileFormat: 音频文件资源格式，当前支持格式：wav、mp3、m4a，请按照实际文件格式填入。
        # @type FileFormat: String
        # @param Name: 文件名称，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # @type Name: String
        # @param FileContent: 数据Base64编码，短音频同步接口仅传入可音频内容；
        # 支持范围：文件大小不能超过5M，时长不可超过60s；
        # 支持格式：wav (PCM编码)、mp3、m4a (采样率：16kHz~48kHz，位深：16bit 小端，声道数：单声道/双声道，建议格式：16kHz/16bit/单声道)。
        # @type FileContent: String
        # @param FileUrl: 音频资源访问链接，与FileContent参数必须二选一输入；
        # 支持范围及格式：同FileContent；
        # @type FileUrl: String

        attr_accessor :BizType, :DataId, :FileFormat, :Name, :FileContent, :FileUrl

        def initialize(biztype=nil, dataid=nil, fileformat=nil, name=nil, filecontent=nil, fileurl=nil)
          @BizType = biztype
          @DataId = dataid
          @FileFormat = fileformat
          @Name = name
          @FileContent = filecontent
          @FileUrl = fileurl
        end

        def deserialize(params)
          @BizType = params['BizType']
          @DataId = params['DataId']
          @FileFormat = params['FileFormat']
          @Name = params['Name']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
        end
      end

      # CreateAudioModerationSyncTask返回参数结构体
      class CreateAudioModerationSyncTaskResponse < TencentCloud::Common::AbstractModel
        # @param DataId: 请求接口时传入的数据标识
        # @type DataId: String
        # @param Name: 文件名称，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param BizType: Biztype为策略的具体的编号，用于接口调度，在内容安全控制台中可配置。不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。Biztype仅为数字、字母与下划线的组合，长度为3-32个字符；调用时不传入Biztype代表采用默认的识别策略。
        # @type BizType: String
        # @param Suggestion: 智能审核服务对于内容违规类型的等级，可选值：
        # Pass 建议通过；
        # Reveiw 建议复审；
        # Block 建议屏蔽；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Label: 智能审核服务对于内容违规类型的判断，详见返回值列表
        # 如：Label：Porn（色情）；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param AsrText: 音频文本，备注：这里的文本最大只返回前1000个字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrText: String
        # @param TextResults: 音频中对话内容审核结果；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextResults: Array
        # @param MoanResults: 音频中低俗内容审核结果；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MoanResults: Array
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # 注意：此字段可能返回null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param LanguageResults: 该字段用于返回音频小语种检测的详细审核结果。具体结果内容请参见AudioResultDetailLanguageResult数据结构的细节描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanguageResults: Array
        # @param SpeakerResults: 音频中说话人识别返回结果；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpeakerResults: Array
        # @param RecognitionResults: 识别类标签结果信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecognitionResults: Array
        # @param Duration: 识别音频时长，单位为毫秒；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String
        # @param HitFlag: 是否命中(0:否, 1: 是)
        # @type HitFlag: Integer
        # @param Score: 得分
        # @type Score: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataId, :Name, :BizType, :Suggestion, :Label, :AsrText, :TextResults, :MoanResults, :SubLabel, :LanguageResults, :SpeakerResults, :RecognitionResults, :Duration, :HitFlag, :Score, :RequestId

        def initialize(dataid=nil, name=nil, biztype=nil, suggestion=nil, label=nil, asrtext=nil, textresults=nil, moanresults=nil, sublabel=nil, languageresults=nil, speakerresults=nil, recognitionresults=nil, duration=nil, hitflag=nil, score=nil, requestid=nil)
          @DataId = dataid
          @Name = name
          @BizType = biztype
          @Suggestion = suggestion
          @Label = label
          @AsrText = asrtext
          @TextResults = textresults
          @MoanResults = moanresults
          @SubLabel = sublabel
          @LanguageResults = languageresults
          @SpeakerResults = speakerresults
          @RecognitionResults = recognitionresults
          @Duration = duration
          @HitFlag = hitflag
          @Score = score
          @RequestId = requestid
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Name = params['Name']
          @BizType = params['BizType']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @AsrText = params['AsrText']
          unless params['TextResults'].nil?
            @TextResults = []
            params['TextResults'].each do |i|
              textresult_tmp = TextResult.new
              textresult_tmp.deserialize(i)
              @TextResults << textresult_tmp
            end
          end
          unless params['MoanResults'].nil?
            @MoanResults = []
            params['MoanResults'].each do |i|
              moanresult_tmp = MoanResult.new
              moanresult_tmp.deserialize(i)
              @MoanResults << moanresult_tmp
            end
          end
          @SubLabel = params['SubLabel']
          unless params['LanguageResults'].nil?
            @LanguageResults = []
            params['LanguageResults'].each do |i|
              audioresultdetaillanguageresult_tmp = AudioResultDetailLanguageResult.new
              audioresultdetaillanguageresult_tmp.deserialize(i)
              @LanguageResults << audioresultdetaillanguageresult_tmp
            end
          end
          unless params['SpeakerResults'].nil?
            @SpeakerResults = []
            params['SpeakerResults'].each do |i|
              audioresultdetailspeakerresult_tmp = AudioResultDetailSpeakerResult.new
              audioresultdetailspeakerresult_tmp.deserialize(i)
              @SpeakerResults << audioresultdetailspeakerresult_tmp
            end
          end
          unless params['RecognitionResults'].nil?
            @RecognitionResults = []
            params['RecognitionResults'].each do |i|
              recognitionresult_tmp = RecognitionResult.new
              recognitionresult_tmp.deserialize(i)
              @RecognitionResults << recognitionresult_tmp
            end
          end
          @Duration = params['Duration']
          @HitFlag = params['HitFlag']
          @Score = params['Score']
          @RequestId = params['RequestId']
        end
      end

      # CreateAudioModerationTask请求参数结构体
      class CreateAudioModerationTaskRequest < TencentCloud::Common::AbstractModel
        # @param Tasks: 该字段表示输入的音频审核任务信息，具体输入内容请参见TaskInput数据结构的详细描述。<br> 备注：最多同时可创建**10个任务**。
        # @type Tasks: Array
        # @param BizType: 该字段表示使用的策略的具体编号，该字段需要先在[内容安全控制台](https://console.cloud.tencent.com/cms/clouds/manage)中配置。
        # 备注：不同Biztype关联不同的业务场景与识别能力策略，调用前请确认正确的Biztype。
        # @type BizType: String
        # @param Type: 该字段表示输入的音频审核类型，取值含：**AUDIO**（点播音频）、**LIVE_AUDIO**（直播音频）、**AUDIO_AIGC**（AI生成识别）三种，默认值为AUDIO。
        # @type Type: String
        # @param Seed: 可选参数，该字段表示回调签名的key信息，用于保证数据的安全性。 签名方法为在返回的HTTP头部添加 X-Signature 的字段，值为： seed + body 的 SHA256 编码和Hex字符串，在收到回调数据后，可以根据返回的body，用 **sha256(seed + body)**, 计算出 `X-Signature` 进行验证。<br>具体使用实例可参考 [回调签名示例](https://cloud.tencent.com/document/product/1219/104000#42dd87d2-580f-46cf-a953-639a787d1eda)。
        # @type Seed: String
        # @param CallbackUrl: 接收审核信息回调地址。如果设置了该字段，在审核过程中发现违规音频片段结果将发送至该接口。更多详情请参阅[回调配置说明](https://cloud.tencent.com/document/product/1219/104000)。
        # @type CallbackUrl: String
        # @param User: 该字段表示待检测对象对应的用户相关信息，若填入则可甄别相应违规风险用户
        # @type User: :class:`Tencentcloud::Ams.v20201229.models.User`

        attr_accessor :Tasks, :BizType, :Type, :Seed, :CallbackUrl, :User

        def initialize(tasks=nil, biztype=nil, type=nil, seed=nil, callbackurl=nil, user=nil)
          @Tasks = tasks
          @BizType = biztype
          @Type = type
          @Seed = seed
          @CallbackUrl = callbackurl
          @User = user
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinput_tmp = TaskInput.new
              taskinput_tmp.deserialize(i)
              @Tasks << taskinput_tmp
            end
          end
          @BizType = params['BizType']
          @Type = params['Type']
          @Seed = params['Seed']
          @CallbackUrl = params['CallbackUrl']
          unless params['User'].nil?
            @User = User.new
            @User.deserialize(params['User'])
          end
        end
      end

      # CreateAudioModerationTask返回参数结构体
      class CreateAudioModerationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Results: 该字段用于返回任务创建的结果，具体输出内容请参见TaskResult数据结构的详细描述。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId

        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              taskresult_tmp = TaskResult.new
              taskresult_tmp.deserialize(i)
              @Results << taskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 该字段表示创建音频审核任务后返回的任务ID（在Results参数中），用于标识需要查询任务详情的审核任务。
        # <br>备注：查询接口单次最大查询量为**20条每次**。
        # @type TaskId: String
        # @param ShowAllSegments: 该布尔字段表示是否展示全部的音频片段，取值：True(展示全部的音频分片)、False(只展示命中审核规则的音频分片)；默认值为False。
        # @type ShowAllSegments: Boolean

        attr_accessor :TaskId, :ShowAllSegments

        def initialize(taskid=nil, showallsegments=nil)
          @TaskId = taskid
          @ShowAllSegments = showallsegments
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ShowAllSegments = params['ShowAllSegments']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 该字段用于返回创建音频审核任务后返回的任务ID（在Results参数中），用于标识需要查询任务详情的审核任务。
        # @type TaskId: String
        # @param DataId: 该字段用于返回调用音频审核接口时在Tasks参数内传入的数据ID参数，方便数据的辨别和管理。
        # @type DataId: String
        # @param BizType: 该字段用于返回调用音频审核接口时传入的BizType参数，方便数据的辨别和管理。
        # @type BizType: String
        # @param Name: 该字段用于返回调用音频审核接口时传入的TaskInput参数中的任务名称，方便任务的识别与管理。
        # @type Name: String
        # @param Status: 该字段用于返回所查询内容的任务状态。
        # <br>取值：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。
        # @type Status: String
        # @param Type: 该字段用于返回调用音频审核接口时输入的音频审核类型，取值为：**AUDIO**（点播音频）和**LIVE_AUDIO**（直播音频），默认值为AUDIO。
        # @type Type: String
        # @param Suggestion: 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Labels: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Labels: Array
        # @param InputInfo: 该字段用于返回审核服务的媒体内容信息，主要包括传入文件类型和访问地址。
        # @type InputInfo: :class:`Tencentcloud::Ams.v20201229.models.InputInfo`
        # @param AudioText: 该字段用于返回音频文件识别出的对应文本内容，最大支持**前1000个字符**。
        # @type AudioText: String
        # @param AudioSegments: 该字段用于返回音频片段的审核结果，主要包括开始时间和音频审核的相应结果。<br>具体输出内容请参见AudioSegments及AudioResult数据结构的详细描述。
        # @type AudioSegments: Array
        # @param ErrorType: 当任务状态为Error时，该字段用于返回对应错误的类型；任务状态非Error时，默认返回为空。
        # @type ErrorType: String
        # @param ErrorDescription: 当任务状态为Error时，该字段用于返回对应错误的详细描述，任务状态非Error时默认返回为空。
        # @type ErrorDescription: String
        # @param CreatedAt: 该字段用于返回被查询任务创建的时间，格式采用 ISO 8601标准。
        # @type CreatedAt: String
        # @param UpdatedAt: 该字段用于返回被查询任务最后更新时间，格式采用 ISO 8601标准。
        # @type UpdatedAt: String
        # @param Label: 该字段用于返回检测结果所对应的标签。如果未命中恶意，返回Normal，如果命中恶意，则返回Labels中优先级最高的标签
        # @type Label: String
        # @param MediaInfo: 媒体信息
        # @type MediaInfo: :class:`Tencentcloud::Ams.v20201229.models.MediaInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :DataId, :BizType, :Name, :Status, :Type, :Suggestion, :Labels, :InputInfo, :AudioText, :AudioSegments, :ErrorType, :ErrorDescription, :CreatedAt, :UpdatedAt, :Label, :MediaInfo, :RequestId

        def initialize(taskid=nil, dataid=nil, biztype=nil, name=nil, status=nil, type=nil, suggestion=nil, labels=nil, inputinfo=nil, audiotext=nil, audiosegments=nil, errortype=nil, errordescription=nil, createdat=nil, updatedat=nil, label=nil, mediainfo=nil, requestid=nil)
          @TaskId = taskid
          @DataId = dataid
          @BizType = biztype
          @Name = name
          @Status = status
          @Type = type
          @Suggestion = suggestion
          @Labels = labels
          @InputInfo = inputinfo
          @AudioText = audiotext
          @AudioSegments = audiosegments
          @ErrorType = errortype
          @ErrorDescription = errordescription
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Label = label
          @MediaInfo = mediainfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DataId = params['DataId']
          @BizType = params['BizType']
          @Name = params['Name']
          @Status = params['Status']
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              tasklabel_tmp = TaskLabel.new
              tasklabel_tmp.deserialize(i)
              @Labels << tasklabel_tmp
            end
          end
          unless params['InputInfo'].nil?
            @InputInfo = InputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          @AudioText = params['AudioText']
          unless params['AudioSegments'].nil?
            @AudioSegments = []
            params['AudioSegments'].each do |i|
              audiosegments_tmp = AudioSegments.new
              audiosegments_tmp.deserialize(i)
              @AudioSegments << audiosegments_tmp
            end
          end
          @ErrorType = params['ErrorType']
          @ErrorDescription = params['ErrorDescription']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @Label = params['Label']
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new
            @MediaInfo.deserialize(params['MediaInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 该参数表示任务列表每页展示的任务条数，**默认值为10**（每页展示10条任务）。
        # @type Limit: Integer
        # @param Filter: 该参数表示任务筛选器的输入参数，可根据业务类型、审核文件类型、处理建议及任务状态筛选想要查看的审核任务，具体参数内容请参见TaskFilter数据结构的详细描述。
        # @type Filter: :class:`Tencentcloud::Ams.v20201229.models.TaskFilter`
        # @param PageToken: 该参数表示翻页时使用的Token信息，由系统自动生成，并在翻页时向下一个生成的页面传递此参数，以方便快速翻页功能的实现。当到最后一页时，该字段为空。
        # @type PageToken: String
        # @param StartTime: 该参数表示任务列表的开始时间，格式为ISO8601标准的时间戳。**默认值为最近3天**，若传入该参数，则在这一时间到EndTime之间的任务将会被筛选出来。<br>备注：该参数与Filter共同起到任务筛选作用，二者作用无先后顺序。
        # @type StartTime: String
        # @param EndTime: 该参数表示任务列表的结束时间，格式为ISO8601标准的时间戳。**默认值为空**，若传入该参数，则在这StartTime到这一时间之间的任务将会被筛选出来。<br>备注：该参数与Filter共同起到任务筛选作用，二者作用无先后顺序。
        # @type EndTime: String

        attr_accessor :Limit, :Filter, :PageToken, :StartTime, :EndTime

        def initialize(limit=nil, filter=nil, pagetoken=nil, starttime=nil, endtime=nil)
          @Limit = limit
          @Filter = filter
          @PageToken = pagetoken
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Limit = params['Limit']
          unless params['Filter'].nil?
            @Filter = TaskFilter.new
            @Filter.deserialize(params['Filter'])
          end
          @PageToken = params['PageToken']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param Total: 该字段用于返回当前查询的任务总量，格式为int字符串。
        # @type Total: String
        # @param Data: 该字段用于返回当前页的任务详细数据，具体输出内容请参见TaskData数据结构的详细描述。
        # @type Data: Array
        # @param PageToken: 该字段用于返回翻页时使用的Token信息，由系统自动生成，并在翻页时向下一个生成的页面传递此参数，以方便快速翻页功能的实现。当到最后一页时，该字段为空。
        # @type PageToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :PageToken, :RequestId

        def initialize(total=nil, data=nil, pagetoken=nil, requestid=nil)
          @Total = total
          @Data = data
          @PageToken = pagetoken
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              taskdata_tmp = TaskData.new
              taskdata_tmp.deserialize(i)
              @Data << taskdata_tmp
            end
          end
          @PageToken = params['PageToken']
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
        # @param Positions: 	位置信息
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
              position_tmp = Position.new
              position_tmp.deserialize(i)
              @Positions << position_tmp
            end
          end
        end
      end

      # 输入信息详情
      class InputInfo < TencentCloud::Common::AbstractModel
        # @param Type: 该字段表示文件访问类型，取值为**URL**（资源链接）和**COS** (腾讯云对象存储)。
        # @type Type: String
        # @param Url: 该字段表示文件访问的链接地址，格式为标准URL格式。<br> 备注：当Type为URL时此字段不为空。
        # @type Url: String
        # @param BucketInfo: 该字段表示文件访问的腾讯云存储桶信息。<br> 备注：当Type为COS时此字段不为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketInfo: :class:`Tencentcloud::Ams.v20201229.models.BucketInfo`

        attr_accessor :Type, :Url, :BucketInfo

        def initialize(type=nil, url=nil, bucketinfo=nil)
          @Type = type
          @Url = url
          @BucketInfo = bucketinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          unless params['BucketInfo'].nil?
            @BucketInfo = BucketInfo.new
            @BucketInfo.deserialize(params['BucketInfo'])
          end
        end
      end

      # 歌曲识别结果
      class LabelResults < TencentCloud::Common::AbstractModel
        # @param Scene: 场景
        # @type Scene: String
        # @param Suggestion: 建议值
        # @type Suggestion: Integer
        # @param Label: 标签
        # @type Label: String
        # @param Name: 名称：歌曲名，语种名，说话人名 等
        # @type Name: String
        # @param Score: 得分
        # @type Score: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Float
        # @param EndTime: 结束时间
        # @type EndTime: Float

        attr_accessor :Scene, :Suggestion, :Label, :Name, :Score, :StartTime, :EndTime

        def initialize(scene=nil, suggestion=nil, label=nil, name=nil, score=nil, starttime=nil, endtime=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @Name = name
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @Name = params['Name']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 媒体类型
      class MediaInfo < TencentCloud::Common::AbstractModel
        # @param Codecs: 该字段用于返回传入的媒体文件的编码格式，如wav、mp3、aac、flac、amr、3gp、 m4a、wma、ogg、ape等。
        # @type Codecs: String
        # @param Duration: 该字段用于返回对传入的流媒体文件进行分片的片段时长，单位为毫秒。**默认值为15秒**，支持用户自定义配置。
        # @type Duration: Integer
        # @param Width: *内测中，敬请期待*
        # @type Width: Integer
        # @param Height: *内测中，敬请期待*
        # @type Height: Integer
        # @param Thumbnail: *内测中，敬请期待*
        # @type Thumbnail: String

        attr_accessor :Codecs, :Duration, :Width, :Height, :Thumbnail

        def initialize(codecs=nil, duration=nil, width=nil, height=nil, thumbnail=nil)
          @Codecs = codecs
          @Duration = duration
          @Width = width
          @Height = height
          @Thumbnail = thumbnail
        end

        def deserialize(params)
          @Codecs = params['Codecs']
          @Duration = params['Duration']
          @Width = params['Width']
          @Height = params['Height']
          @Thumbnail = params['Thumbnail']
        end
      end

      # 呻吟低俗检测结果
      class MoanResult < TencentCloud::Common::AbstractModel
        # @param Label: 固定取值为Moan（呻吟/娇喘），如音频中无复杂类型「MoanResult」的返回则代表该音频中无呻吟/娇喘相关违规内容；
        # @type Label: String
        # @param Score: 机器判断当前分类的置信度，取值范围：0~100。分数越高，表示越有可能属于当前分类。
        # （如：Moan 99，则该样本属于呻吟/娇喘的置信度非常高。）
        # @type Score: Integer
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param StartTime: 违规事件开始时间，单位为秒（s）；
        # @type StartTime: Float
        # @param EndTime: 违规事件结束时间，单位为秒（s）；
        # @type EndTime: Float
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # @type SubLabel: String

        attr_accessor :Label, :Score, :Suggestion, :StartTime, :EndTime, :SubLabel

        def initialize(label=nil, score=nil, suggestion=nil, starttime=nil, endtime=nil, sublabel=nil)
          @Label = label
          @Score = score
          @Suggestion = suggestion
          @StartTime = starttime
          @EndTime = endtime
          @SubLabel = sublabel
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @Suggestion = params['Suggestion']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubLabel = params['SubLabel']
        end
      end

      # 标识命中的违规关键词位置信息
      class Position < TencentCloud::Common::AbstractModel
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

      # 识别类标签结果信息
      class RecognitionResult < TencentCloud::Common::AbstractModel
        # @param Label: 可能的取值有：Teenager 、Gender
        # @type Label: String
        # @param Tags: 识别标签列表
        # @type Tags: Array

        attr_accessor :Label, :Tags

        def initialize(label=nil, tags=nil)
          @Label = label
          @Tags = tags
        end

        def deserialize(params)
          @Label = params['Label']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 说话人结果
      class SpeakerResults < TencentCloud::Common::AbstractModel
        # @param Label: 标签
        # @type Label: String
        # @param Score: 得分
        # @type Score: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Float
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Label, :Score, :StartTime, :EndTime

        def initialize(label=nil, score=nil, starttime=nil, endtime=nil)
          @Label = label
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Label = params['Label']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 用于表示数据存储的相关信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param Type: 该字段表示文件访问类型，取值为**URL**（资源链接）和**COS** (腾讯云对象存储)；该字段应当与传入的访问类型相对应，可用于强校验并方便系统快速识别访问地址；若不传入此参数，则默认值为URL，此时系统将自动判定访问地址类型。
        # @type Type: String
        # @param Url: 该字段表示文件访问的链接地址，格式为标准URL格式。<br> 备注：当Type为URL时此字段不为空，该参数与BucketInfo参数须传入其中之一
        # @type Url: String
        # @param BucketInfo: 该字段表示文件访问的腾讯云存储桶信息。<br> 备注：当Type为COS时此字段不为空，该参数与Url参数须传入其中之一。
        # @type BucketInfo: :class:`Tencentcloud::Ams.v20201229.models.BucketInfo`

        attr_accessor :Type, :Url, :BucketInfo

        def initialize(type=nil, url=nil, bucketinfo=nil)
          @Type = type
          @Url = url
          @BucketInfo = bucketinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          unless params['BucketInfo'].nil?
            @BucketInfo = BucketInfo.new
            @BucketInfo.deserialize(params['BucketInfo'])
          end
        end
      end

      # 音频切片识别标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Name: 根据Label字段确定具体名称：
        # 当Label 为Teenager 时 Name可能取值有：Teenager
        # 当Label 为Gender 时 Name可能取值有：Male 、Female
        # @type Name: String
        # @param Score: 置信分：0～100，数值越大表示置信度越高
        # @type Score: Integer
        # @param StartTime: 识别开始偏移时间，单位：毫秒
        # @type StartTime: Float
        # @param EndTime: 识别结束偏移时间，单位：毫秒
        # @type EndTime: Float

        attr_accessor :Name, :Score, :StartTime, :EndTime

        def initialize(name=nil, score=nil, starttime=nil, endtime=nil)
          @Name = name
          @Score = score
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Name = params['Name']
          @Score = params['Score']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 任务数据
      class TaskData < TencentCloud::Common::AbstractModel
        # @param DataId: 该字段用于返回音频审核任务数据所对应的数据ID，方便后续查询和管理审核任务。
        # @type DataId: String
        # @param TaskId: 该字段用于返回音频审核任务所生成的任务ID，用于标识具体审核任务，方便后续查询和管理。
        # @type TaskId: String
        # @param Status: 该字段用于返回所查询内容的任务状态。
        # <br>取值：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。
        # @type Status: String
        # @param Name: 该字段用于返回音频审核任务所对应的任务名称，方便后续查询和管理审核任务。
        # @type Name: String
        # @param BizType: 该字段用于返回调用音频审核接口时传入的BizType参数，方便数据的辨别和管理。
        # @type BizType: String
        # @param Type: 该字段用于返回调用音频审核接口时输入的音频审核类型，取值为：**AUDIO**（点播音频）和**LIVE_AUDIO**（直播音频），默认值为AUDIO。
        # @type Type: String
        # @param Suggestion: 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param MediaInfo: 输入信息
        # @type MediaInfo: :class:`Tencentcloud::Ams.v20201229.models.MediaInfo`
        # @param Labels: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Labels: Array
        # @param CreatedAt: 该字段用于返回被查询任务创建的时间，格式采用 ISO 8601标准。
        # @type CreatedAt: String
        # @param UpdatedAt: 该字段用于返回被查询任务最后更新时间，格式采用 ISO 8601标准。
        # @type UpdatedAt: String
        # @param InputInfo: 任务信息
        # @type InputInfo: :class:`Tencentcloud::Ams.v20201229.models.InputInfo`

        attr_accessor :DataId, :TaskId, :Status, :Name, :BizType, :Type, :Suggestion, :MediaInfo, :Labels, :CreatedAt, :UpdatedAt, :InputInfo

        def initialize(dataid=nil, taskid=nil, status=nil, name=nil, biztype=nil, type=nil, suggestion=nil, mediainfo=nil, labels=nil, createdat=nil, updatedat=nil, inputinfo=nil)
          @DataId = dataid
          @TaskId = taskid
          @Status = status
          @Name = name
          @BizType = biztype
          @Type = type
          @Suggestion = suggestion
          @MediaInfo = mediainfo
          @Labels = labels
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @InputInfo = inputinfo
        end

        def deserialize(params)
          @DataId = params['DataId']
          @TaskId = params['TaskId']
          @Status = params['Status']
          @Name = params['Name']
          @BizType = params['BizType']
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new
            @MediaInfo.deserialize(params['MediaInfo'])
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              tasklabel_tmp = TaskLabel.new
              tasklabel_tmp.deserialize(i)
              @Labels << tasklabel_tmp
            end
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          unless params['InputInfo'].nil?
            @InputInfo = InputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
        end
      end

      # 任务筛选器
      class TaskFilter < TencentCloud::Common::AbstractModel
        # @param BizType: 该字段用于传入任务对应的业务类型供筛选器进行筛选。Biztype为策略的具体的编号，用于接口调度，在内容安全控制台中可配置。不同Biztype关联不同的业务场景与审核策略，调用前请确认正确的Biztype。Biztype仅为**数字、字母与下划线的组合**，长度为3-32个字符。<br>备注：在不传入该参数时筛选器默认不筛选业务类型。
        # @type BizType: String
        # @param Type: 该字段用于传入音频审核对应的任务类型供筛选器进行筛选，取值为：**VIDEO**（点播视频审核），**AUDIO**（点播音频审核）， **LIVE_VIDEO**（直播视频审核）, **LIVE_AUDIO**（直播音频审核）。<br>备注：在不传入该参数时筛选器默认不筛选任务类型。
        # @type Type: String
        # @param Suggestion: 该字段用于传入音频审核对应的建议操作供筛选器进行筛选，取值为：**Block**：建议屏蔽，**Review**：建议人工复审，**Pass**：建议通过。<br>备注：在不传入该参数时筛选器默认不筛选建议操作。
        # @type Suggestion: String
        # @param TaskStatus: 该字段用于传入审核任务的任务状态供筛选器进行筛选，取值为：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。<br>备注：在不传入该参数时筛选器默认不筛选任务状态。
        # @type TaskStatus: String

        attr_accessor :BizType, :Type, :Suggestion, :TaskStatus

        def initialize(biztype=nil, type=nil, suggestion=nil, taskstatus=nil)
          @BizType = biztype
          @Type = type
          @Suggestion = suggestion
          @TaskStatus = taskstatus
        end

        def deserialize(params)
          @BizType = params['BizType']
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          @TaskStatus = params['TaskStatus']
        end
      end

      # 音视频任务数据结构
      class TaskInput < TencentCloud::Common::AbstractModel
        # @param DataId: 选填参数，该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。<br>取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**。
        # @type DataId: String
        # @param Name: 选填参数，该字段表示音频审核任务所对应的任务名称，方便后续查询和管理审核任务。
        # @type Name: String
        # @param Input: 必填参数，该字段表示审核文件的访问参数，用于获取审核媒体文件，该参数内包括访问类型和访问地址。
        # @type Input: :class:`Tencentcloud::Ams.v20201229.models.StorageInfo`

        attr_accessor :DataId, :Name, :Input

        def initialize(dataid=nil, name=nil, input=nil)
          @DataId = dataid
          @Name = name
          @Input = input
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Name = params['Name']
          unless params['Input'].nil?
            @Input = StorageInfo.new
            @Input.deserialize(params['Input'])
          end
        end
      end

      # 用于返回审核任务输出的标签
      class TaskLabel < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Suggestion: 该字段用于返回当前标签对应的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String
        # @param Score: 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容。
        # @type Score: Integer
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # @type SubLabel: String

        attr_accessor :Label, :Suggestion, :Score, :SubLabel

        def initialize(label=nil, suggestion=nil, score=nil, sublabel=nil)
          @Label = label
          @Suggestion = suggestion
          @Score = score
          @SubLabel = sublabel
        end

        def deserialize(params)
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
          @SubLabel = params['SubLabel']
        end
      end

      # 创建任务时的返回结果
      class TaskResult < TencentCloud::Common::AbstractModel
        # @param DataId: 该字段用于返回创建音频审核任务时在TaskInput结构内传入的DataId，用于标识具体审核任务。
        # @type DataId: String
        # @param TaskId: 该字段用于返回音频审核任务所生成的任务ID，用于标识具体审核任务，方便后续查询和管理。
        # @type TaskId: String
        # @param Code: 该字段用于返回任务创建的状态，如返回OK则代表任务创建成功，其他返回值可参考公共错误码。
        # @type Code: String
        # @param Message: **仅在Code的返回值为错误码时生效**，用于返回错误的详情内容。
        # @type Message: String

        attr_accessor :DataId, :TaskId, :Code, :Message

        def initialize(dataid=nil, taskid=nil, code=nil, message=nil)
          @DataId = dataid
          @TaskId = taskid
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @DataId = params['DataId']
          @TaskId = params['TaskId']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 音频文本内容审核结果
      class TextResult < TencentCloud::Common::AbstractModel
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告。
        # 以及其他令人反感、不安全或不适宜的内容类型。

        # 如音频中无复杂类型「TextResults」的返回则代表该音频中无相关违规内容；
        # @type Label: String
        # @param Keywords: 命中的关键词，为空则代表该违规内容出自于模型的判断；
        # @type Keywords: Array
        # @param LibId: 命中关键词库的库标识；
        # @type LibId: String
        # @param LibName: 命中关键词库的名字；
        # @type LibName: String
        # @param Score: 机器判断当前分类的置信度，取值范围：0~100。分数越高，表示越有可能属于当前分类。
        # （如：Porn 99，则该样本属于色情的置信度非常高。）
        # @type Score: Integer
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param LibType: 自定义词库的类型，自定义词库相关的信息可登录控制台中查看；
        # 1：自定义黑白库；
        # 2：公库；
        # @type LibType: Integer
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # @type SubLabel: String
        # @param HitInfos: 该字段用于返回违规文本命中信息
        # @type HitInfos: Array

        attr_accessor :Label, :Keywords, :LibId, :LibName, :Score, :Suggestion, :LibType, :SubLabel, :HitInfos

        def initialize(label=nil, keywords=nil, libid=nil, libname=nil, score=nil, suggestion=nil, libtype=nil, sublabel=nil, hitinfos=nil)
          @Label = label
          @Keywords = keywords
          @LibId = libid
          @LibName = libname
          @Score = score
          @Suggestion = suggestion
          @LibType = libtype
          @SubLabel = sublabel
          @HitInfos = hitinfos
        end

        def deserialize(params)
          @Label = params['Label']
          @Keywords = params['Keywords']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Score = params['Score']
          @Suggestion = params['Suggestion']
          @LibType = params['LibType']
          @SubLabel = params['SubLabel']
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

      # 出行结果
      class TravelResults < TencentCloud::Common::AbstractModel
        # @param Label: 一级标签
        # @type Label: String
        # @param SubLabel: 二级标签
        # @type SubLabel: String
        # @param RiskLevel: 风险等级
        # @type RiskLevel: String
        # @param AudioRole: 出行音频角色
        # @type AudioRole: String
        # @param AudioText: 出行语音文本
        # @type AudioText: String
        # @param StartTime: 开始时间
        # @type StartTime: Float
        # @param EndTime: 结束时间
        # @type EndTime: Float

        attr_accessor :Label, :SubLabel, :RiskLevel, :AudioRole, :AudioText, :StartTime, :EndTime

        def initialize(label=nil, sublabel=nil, risklevel=nil, audiorole=nil, audiotext=nil, starttime=nil, endtime=nil)
          @Label = label
          @SubLabel = sublabel
          @RiskLevel = risklevel
          @AudioRole = audiorole
          @AudioText = audiotext
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @RiskLevel = params['RiskLevel']
          @AudioRole = params['AudioRole']
          @AudioText = params['AudioText']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # User结果
      class User < TencentCloud::Common::AbstractModel
        # @param Level: 用户等级，默认0 未知 1 低 2 中 3 高
        # @type Level: Integer
        # @param Gender: 性别 默认0 未知 1 男性 2 女性
        # @type Gender: Integer
        # @param Age: 年龄 默认0 未知
        # @type Age: Integer
        # @param UserId: 业务用户ID 如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        # @type UserId: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param AccountType: 业务用户ID类型 "1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        # @type AccountType: String
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param HeadUrl: 用户头像图片链接
        # @type HeadUrl: String
        # @param Desc: 用户简介，长度不超过5000字
        # @type Desc: String
        # @param RoomId: 群聊场景房间ID
        # @type RoomId: String
        # @param GroupId: 群聊场景群ID
        # @type GroupId: String
        # @param GroupSize: 群聊场景群用户数
        # @type GroupSize: Integer
        # @param ReceiverId: 消息接收者ID
        # @type ReceiverId: String
        # @param SendTime: 消息生成时间，毫秒
        # @type SendTime: String

        attr_accessor :Level, :Gender, :Age, :UserId, :Phone, :AccountType, :Nickname, :HeadUrl, :Desc, :RoomId, :GroupId, :GroupSize, :ReceiverId, :SendTime

        def initialize(level=nil, gender=nil, age=nil, userid=nil, phone=nil, accounttype=nil, nickname=nil, headurl=nil, desc=nil, roomid=nil, groupid=nil, groupsize=nil, receiverid=nil, sendtime=nil)
          @Level = level
          @Gender = gender
          @Age = age
          @UserId = userid
          @Phone = phone
          @AccountType = accounttype
          @Nickname = nickname
          @HeadUrl = headurl
          @Desc = desc
          @RoomId = roomid
          @GroupId = groupid
          @GroupSize = groupsize
          @ReceiverId = receiverid
          @SendTime = sendtime
        end

        def deserialize(params)
          @Level = params['Level']
          @Gender = params['Gender']
          @Age = params['Age']
          @UserId = params['UserId']
          @Phone = params['Phone']
          @AccountType = params['AccountType']
          @Nickname = params['Nickname']
          @HeadUrl = params['HeadUrl']
          @Desc = params['Desc']
          @RoomId = params['RoomId']
          @GroupId = params['GroupId']
          @GroupSize = params['GroupSize']
          @ReceiverId = params['ReceiverId']
          @SendTime = params['SendTime']
        end
      end

    end
  end
end

