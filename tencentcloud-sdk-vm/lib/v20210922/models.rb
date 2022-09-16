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
  module Vm
    module V20210922
      # 音频输出参数
      class AudioResult < TencentCloud::Common::AbstractModel
        # @param HitFlag: 该字段用于返回审核内容是否命中审核模型；取值：0（**未命中**）、1（**命中**）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示具体的后续建议操作。<br>
        # 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 该字段用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Text: 该字段用于返回音频文件经ASR识别后的文本信息。最长可识别**5小时**的音频文件，若超出时长限制，接口将会报错。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Url: 该字段用于返回音频片段存储的链接地址，该地址有效期为1天。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Duration: 该字段用于返回音频文件的时长，单位为毫秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: String
        # @param Extra: 该字段用于返回输入参数中的额外附加信息（Extra），如未配置则默认返回值为空。<br>备注：不同客户或Biztype下返回信息不同，如需配置该字段请提交工单咨询或联系售后专员处理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param TextResults: 该字段用于返回音频文件经ASR识别后产生的文本的详细审核结果。具体结果内容请参见AudioResultDetailLanguageResult数据结构的细节描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextResults: Array
        # @param MoanResults: 该字段用于返回音频文件呻吟检测的详细审核结果。具体结果内容请参见AudioResultDetailMoanResult数据结构的细节描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MoanResults: Array
        # @param LanguageResults: 该字段用于返回音频小语种检测的详细审核结果。具体结果内容请参见AudioResultDetailLanguageResult数据结构的细节描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LanguageResults: Array
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param RecognitionResults: 识别类标签结果信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecognitionResults: Array

        attr_accessor :HitFlag, :Label, :Suggestion, :Score, :Text, :Url, :Duration, :Extra, :TextResults, :MoanResults, :LanguageResults, :SubLabel, :RecognitionResults
        
        def initialize(hitflag=nil, label=nil, suggestion=nil, score=nil, text=nil, url=nil, duration=nil, extra=nil, textresults=nil, moanresults=nil, languageresults=nil, sublabel=nil, recognitionresults=nil)
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
        end
      end

      # 音频小语种检测结果
      class AudioResultDetailLanguageResult < TencentCloud::Common::AbstractModel
        # @param Label: 语种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Score: 得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Float
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Float
        # @param SubLabelCode: 子标签码
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Score: 该字段用于返回呻吟检测的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表音频越有可能属于呻吟内容。
        # @type Score: Integer
        # @param StartTime: 该字段用于返回对应呻吟标签的片段在音频文件内的开始时间，单位为毫秒。
        # @type StartTime: Float
        # @param EndTime: 该字段用于返回对应呻吟标签的片段在音频文件内的结束时间，单位为毫秒。
        # @type EndTime: Float
        # @param SubLabelCode: *内测中，敬请期待*
        # @type SubLabelCode: String
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # @type SubLabel: String
        # @param Suggestion: 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # @type Suggestion: String

        attr_accessor :Label, :Score, :StartTime, :EndTime, :SubLabelCode, :SubLabel, :Suggestion
        
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

      # 音频ASR文本审核结果
      class AudioResultDetailTextResult < TencentCloud::Common::AbstractModel
        # @param Label: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Keywords: 该字段用于返回ASR识别出的文本内容命中的关键词信息，用于标注内容违规的具体原因（如：加我微信）。该参数可能会有多个返回值，代表命中的多个关键词；若返回值为空，Score不为空，则代表识别结果所对应的恶意标签（Label）来自于语义模型判断的返回值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param LibId: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的ID，以方便自定义库管理和配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibId: String
        # @param LibName: 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的名称,以方便自定义库管理和配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param Score: 该字段用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param LibType: 该字段用于返回自定义关键词对应的词库类型，取值为**1**（黑白库）和**2**（自定义关键词库），若未配置自定义关键词库,则默认值为1（黑白库匹配）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibType: Integer
        # @param Suggestion: 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示具体的后续建议操作。<br>
        # 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param SubLabel: 该字段用于返回当前标签（Lable）下的二级标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String

        attr_accessor :Label, :Keywords, :LibId, :LibName, :Score, :LibType, :Suggestion, :SubLabel
        
        def initialize(label=nil, keywords=nil, libid=nil, libname=nil, score=nil, libtype=nil, suggestion=nil, sublabel=nil)
          @Label = label
          @Keywords = keywords
          @LibId = libid
          @LibName = libname
          @Score = score
          @LibType = libtype
          @Suggestion = suggestion
          @SubLabel = sublabel
        end

        def deserialize(params)
          @Label = params['Label']
          @Keywords = params['Keywords']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Score = params['Score']
          @LibType = params['LibType']
          @Suggestion = params['Suggestion']
          @SubLabel = params['SubLabel']
        end
      end

      # 声音段信息
      class AudioSegments < TencentCloud::Common::AbstractModel
        # @param OffsetTime: 截帧时间。
        # 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        # 直播流：该值为时间戳，例如：1594650717
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetTime: String
        # @param Result: 结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Vm.v20210922.models.AudioResult`

        attr_accessor :OffsetTime, :Result
        
        def initialize(offsettime=nil, result=nil)
          @OffsetTime = offsettime
          @Result = result
        end

        def deserialize(params)
          @OffsetTime = params['OffsetTime']
          unless params['Result'].nil?
            @Result = AudioResult.new
            @Result.deserialize(params['Result'])
          end
        end
      end

      # 文件桶信息
      # 参考腾讯云存储相关说明 https://cloud.tencent.com/document/product/436/44352
      class BucketInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: 腾讯云对象存储，存储桶名称
        # @type Bucket: String
        # @param Region: 地域
        # @type Region: String
        # @param Object: 对象Key
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
        # @param TaskId: 任务ID
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

      # CreateVideoModerationTask请求参数结构体
      class CreateVideoModerationTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 业务类型, 定义 模版策略，输出存储配置。如果没有BizType，可以先参考 【创建业务配置】接口进行创建
        # @type BizType: String
        # @param Type: 任务类型：可选VIDEO（点播视频），LIVE_VIDEO（直播视频）
        # @type Type: String
        # @param Tasks: 输入的任务信息，最多可以同时创建10个任务
        # @type Tasks: Array
        # @param Seed: 回调签名key，具体可以查看签名文档。
        # @type Seed: String
        # @param CallbackUrl: 接收审核信息回调地址，如果设置，则审核过程中产生的违规音频片段和画面截帧发送此接口
        # @type CallbackUrl: String
        # @param Priority: 审核排队优先级。当您有多个视频审核任务排队时，可以根据这个参数控制排队优先级。用于处理插队等逻辑。默认该参数为0
        # @type Priority: Integer

        attr_accessor :BizType, :Type, :Tasks, :Seed, :CallbackUrl, :Priority
        
        def initialize(biztype=nil, type=nil, tasks=nil, seed=nil, callbackurl=nil, priority=nil)
          @BizType = biztype
          @Type = type
          @Tasks = tasks
          @Seed = seed
          @CallbackUrl = callbackurl
          @Priority = priority
        end

        def deserialize(params)
          @BizType = params['BizType']
          @Type = params['Type']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinput_tmp = TaskInput.new
              taskinput_tmp.deserialize(i)
              @Tasks << taskinput_tmp
            end
          end
          @Seed = params['Seed']
          @CallbackUrl = params['CallbackUrl']
          @Priority = params['Priority']
        end
      end

      # CreateVideoModerationTask返回参数结构体
      class CreateVideoModerationTaskResponse < TencentCloud::Common::AbstractModel
        # @param Results: 任务创建结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param TaskId: 任务ID，创建任务后返回的TaskId字段
        # @type TaskId: String
        # @param ShowAllSegments: 是否展示所有分片，默认只展示命中规则的分片
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
        # @param TaskId: 该字段用于返回创建视频审核任务后返回的任务ID（在Results参数中），用于标识需要查询任务详情的审核任务。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param DataId: 该字段用于返回调用视频审核接口时传入的数据ID参数，方便数据的辨别和管理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param BizType: 该字段用于返回调用视频审核接口时传入的BizType参数，方便数据的辨别和管理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: String
        # @param Name: 该字段用于返回调用视频审核接口时传入的TaskInput参数中的任务名称，方便任务的识别与管理。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 该字段用于返回所查询内容的任务状态。
        # <br>取值：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Type: 该字段用于返回调用视频审核接口时输入的视频审核类型，取值为：**VIDEO**（点播视频）和**LIVE_VIDEO**（直播视频），默认值为VIDEO。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Suggestion: 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Labels: 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param MediaInfo: 该字段用于返回输入媒体文件的详细信息，包括编解码格式、分片时长等信息。详细内容敬请参考MediaInfo数据结构的描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfo: :class:`Tencentcloud::Vm.v20210922.models.MediaInfo`
        # @param InputInfo: 该字段用于返回审核服务的媒体内容信息，主要包括传入文件类型和访问地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputInfo: :class:`Tencentcloud::Vm.v20210922.models.InputInfo`
        # @param CreatedAt: 该字段用于返回被查询任务创建的时间，格式采用 ISO 8601标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 该字段用于返回被查询任务最后更新时间，格式采用 ISO 8601标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String
        # @param TryInSeconds: 在秒后重试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TryInSeconds: Integer
        # @param ImageSegments: 该字段用于返回视频中截帧审核的结果，详细返回内容敬请参考ImageSegments数据结构的描述。<br>备注：数据有效期为24小时，如需要延长存储时间，请在已配置的COS储存桶中设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSegments: Array
        # @param AudioSegments: 该字段用于返回视频中音频审核的结果，详细返回内容敬请参考AudioSegments数据结构的描述。<br>备注：数据有效期为24小时，如需要延长存储时间，请在已配置的COS储存桶中设置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioSegments: Array
        # @param ErrorType: 当任务状态为Error时，返回对应错误的类型，取值：**DECODE_ERROR**: 解码失败。（输入资源中可能包含无法解码的视频）
        # **URL_ERROR**：下载地址验证失败。
        # **TIMEOUT_ERROR**：处理超时。任务状态非Error时默认返回为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorType: String
        # @param ErrorDescription: 当任务状态为Error时，该字段用于返回对应错误的详细描述，任务状态非Error时默认返回为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorDescription: String
        # @param Label: 该字段用于返回检测结果所对应的标签。如果未命中恶意，返回Normal，如果命中恶意，则返回Labels中优先级最高的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param AudioText: 该字段用于返回音频文件识别出的对应文本内容，最大支持**前1000个字符**。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioText: String
        # @param Asrs: 该字段用于返回音频文件识别出的对应文本内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Asrs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :DataId, :BizType, :Name, :Status, :Type, :Suggestion, :Labels, :MediaInfo, :InputInfo, :CreatedAt, :UpdatedAt, :TryInSeconds, :ImageSegments, :AudioSegments, :ErrorType, :ErrorDescription, :Label, :AudioText, :Asrs, :RequestId
        
        def initialize(taskid=nil, dataid=nil, biztype=nil, name=nil, status=nil, type=nil, suggestion=nil, labels=nil, mediainfo=nil, inputinfo=nil, createdat=nil, updatedat=nil, tryinseconds=nil, imagesegments=nil, audiosegments=nil, errortype=nil, errordescription=nil, label=nil, audiotext=nil, asrs=nil, requestid=nil)
          @TaskId = taskid
          @DataId = dataid
          @BizType = biztype
          @Name = name
          @Status = status
          @Type = type
          @Suggestion = suggestion
          @Labels = labels
          @MediaInfo = mediainfo
          @InputInfo = inputinfo
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @TryInSeconds = tryinseconds
          @ImageSegments = imagesegments
          @AudioSegments = audiosegments
          @ErrorType = errortype
          @ErrorDescription = errordescription
          @Label = label
          @AudioText = audiotext
          @Asrs = asrs
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
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new
            @MediaInfo.deserialize(params['MediaInfo'])
          end
          unless params['InputInfo'].nil?
            @InputInfo = InputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @TryInSeconds = params['TryInSeconds']
          unless params['ImageSegments'].nil?
            @ImageSegments = []
            params['ImageSegments'].each do |i|
              imagesegments_tmp = ImageSegments.new
              imagesegments_tmp.deserialize(i)
              @ImageSegments << imagesegments_tmp
            end
          end
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
          @Label = params['Label']
          @AudioText = params['AudioText']
          unless params['Asrs'].nil?
            @Asrs = []
            params['Asrs'].each do |i|
              rcbasr_tmp = RcbAsr.new
              rcbasr_tmp.deserialize(i)
              @Asrs << rcbasr_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 该参数表示任务列表每页展示的任务条数，**默认值为10**（每页展示10条任务）。
        # @type Limit: Integer
        # @param Filter: 该参数表示任务筛选器的输入参数，可根据业务类型、审核文件类型、处理建议及任务状态筛选想要查看的审核任务，具体参数内容请参见TaskFilter数据结构的详细描述。
        # @type Filter: :class:`Tencentcloud::Vm.v20210922.models.TaskFilter`
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: String
        # @param Data: 该字段用于返回当前页的任务详细数据，具体输出内容请参见TaskData数据结构的详细描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param PageToken: 该字段用于返回翻页时使用的Token信息，由系统自动生成，并在翻页时向下一个生成的页面传递此参数，以方便快速翻页功能的实现。当到最后一页时，该字段为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # Result结果详情
      class ImageResult < TencentCloud::Common::AbstractModel
        # @param HitFlag: 违规标志
        # 0 未命中
        # 1 命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Label: 命中的标签
        # Porn 色情
        # Sexy 性感
        # Polity 政治
        # Illegal 违法
        # Abuse 谩骂
        # Terror 暴恐
        # Ad 广告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 审核建议，可选值：
        # Pass 通过，
        # Review 建议人审，
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Results: 画面截帧图片结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param Url: 图片URL地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Extra: 附加字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String

        attr_accessor :HitFlag, :Label, :Suggestion, :Score, :Results, :Url, :Extra
        
        def initialize(hitflag=nil, label=nil, suggestion=nil, score=nil, results=nil, url=nil, extra=nil)
          @HitFlag = hitflag
          @Label = label
          @Suggestion = suggestion
          @Score = score
          @Results = results
          @Url = url
          @Extra = extra
        end

        def deserialize(params)
          @HitFlag = params['HitFlag']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              imageresultresult_tmp = ImageResultResult.new
              imageresultresult_tmp.deserialize(i)
              @Results << imageresultresult_tmp
            end
          end
          @Url = params['Url']
          @Extra = params['Extra']
        end
      end

      # 图片输出结果的子结果
      class ImageResultResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景
        # Porn 色情
        # Sexy 性感
        # Polity 政治
        # Illegal 违法
        # Abuse 谩骂
        # Terror 暴恐
        # Ad 广告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scene: String
        # @param HitFlag: 是否命中
        # 0 未命中
        # 1 命中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HitFlag: Integer
        # @param Suggestion: 审核建议，可选值：
        # Pass 通过，
        # Review 建议人审，
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Label: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param SubLabel: 子标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Names: 如果命中场景为涉政，则该数据为人物姓名列表，否则null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Names: Array
        # @param Text: 图片OCR文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Details: 其他详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :HitFlag, :Suggestion, :Label, :SubLabel, :Score, :Names, :Text, :Details
        
        def initialize(scene=nil, hitflag=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, names=nil, text=nil, details=nil)
          @Scene = scene
          @HitFlag = hitflag
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Names = names
          @Text = text
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @HitFlag = params['HitFlag']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Names = params['Names']
          @Text = params['Text']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              imageresultsresultdetail_tmp = ImageResultsResultDetail.new
              imageresultsresultdetail_tmp.deserialize(i)
              @Details << imageresultsresultdetail_tmp
            end
          end
        end
      end

      # 具体场景下的图片识别结果
      class ImageResultsResultDetail < TencentCloud::Common::AbstractModel
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Text: OCR识别文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param Location: 位置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Vm.v20210922.models.ImageResultsResultDetailLocation`
        # @param Label: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param LibId: 库ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibId: String
        # @param LibName: 库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param Keywords: 命中的关键词
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param Suggestion: 建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 得分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param SubLabelCode: 子标签码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabelCode: String

        attr_accessor :Name, :Text, :Location, :Label, :LibId, :LibName, :Keywords, :Suggestion, :Score, :SubLabelCode
        
        def initialize(name=nil, text=nil, location=nil, label=nil, libid=nil, libname=nil, keywords=nil, suggestion=nil, score=nil, sublabelcode=nil)
          @Name = name
          @Text = text
          @Location = location
          @Label = label
          @LibId = libid
          @LibName = libname
          @Keywords = keywords
          @Suggestion = suggestion
          @Score = score
          @SubLabelCode = sublabelcode
        end

        def deserialize(params)
          @Name = params['Name']
          @Text = params['Text']
          unless params['Location'].nil?
            @Location = ImageResultsResultDetailLocation.new
            @Location.deserialize(params['Location'])
          end
          @Label = params['Label']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Keywords = params['Keywords']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
          @SubLabelCode = params['SubLabelCode']
        end
      end

      # 图片详情位置信息
      class ImageResultsResultDetailLocation < TencentCloud::Common::AbstractModel
        # @param X: x坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Float
        # @param Y: y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float
        # @param Width: 宽度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Rotate: 旋转角度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rotate: Float

        attr_accessor :X, :Y, :Width, :Height, :Rotate
        
        def initialize(x=nil, y=nil, width=nil, height=nil, rotate=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
          @Rotate = rotate
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
          @Rotate = params['Rotate']
        end
      end

      # 图片段信息
      class ImageSegments < TencentCloud::Common::AbstractModel
        # @param OffsetTime: 截帧时间。
        # 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        # 直播流：该值为时间戳，例如：1594650717
        # @type OffsetTime: String
        # @param Result: 画面截帧结果详情
        # @type Result: :class:`Tencentcloud::Vm.v20210922.models.ImageResult`

        attr_accessor :OffsetTime, :Result
        
        def initialize(offsettime=nil, result=nil)
          @OffsetTime = offsettime
          @Result = result
        end

        def deserialize(params)
          @OffsetTime = params['OffsetTime']
          unless params['Result'].nil?
            @Result = ImageResult.new
            @Result.deserialize(params['Result'])
          end
        end
      end

      # 输入信息详情
      class InputInfo < TencentCloud::Common::AbstractModel
        # @param Type: 传入的类型可选：URL，COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Url: Url地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param BucketInfo: 桶信息。当输入当时COS时，该字段不为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketInfo: String

        attr_accessor :Type, :Url, :BucketInfo
        
        def initialize(type=nil, url=nil, bucketinfo=nil)
          @Type = type
          @Url = url
          @BucketInfo = bucketinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          @BucketInfo = params['BucketInfo']
        end
      end

      # 媒体类型
      class MediaInfo < TencentCloud::Common::AbstractModel
        # @param Codecs: 编码格式
        # @type Codecs: String
        # @param Duration: 流检测时分片时长
        # 注意：此字段可能返回 0，表示取不到有效值。
        # @type Duration: Integer
        # @param Width: 宽，单位为像素
        # @type Width: Integer
        # @param Height: 高，单位为像素
        # @type Height: Integer
        # @param Thumbnail: 封面
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

      # 审核切片asr文本信息
      class RcbAsr < TencentCloud::Common::AbstractModel
        # @param Text: 该字段用于返回音频文件识别出的对应文本内容，最大支持**前1000个字符**。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param CreatedAt: 该字段用于返回被查询任务创建的时间，格式采用 ISO 8601标准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String

        attr_accessor :Text, :CreatedAt
        
        def initialize(text=nil, createdat=nil)
          @Text = text
          @CreatedAt = createdat
        end

        def deserialize(params)
          @Text = params['Text']
          @CreatedAt = params['CreatedAt']
        end
      end

      # 识别类标签结果信息
      class RecognitionResult < TencentCloud::Common::AbstractModel
        # @param Label: 可能的取值有：Teenager 、Gender
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Tags: 识别标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      #  数据存储信息
      class StorageInfo < TencentCloud::Common::AbstractModel
        # @param Type: 类型 可选：
        # URL 资源链接类型
        # COS 腾讯云对象存储类型
        # @type Type: String
        # @param Url: 资源链接
        # @type Url: String
        # @param BucketInfo: 腾讯云存储桶信息
        # @type BucketInfo: :class:`Tencentcloud::Vm.v20210922.models.BucketInfo`

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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Score: 置信分：0～100，数值越大表示置信度越高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param StartTime: 识别开始偏移时间，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Float
        # @param EndTime: 识别结束偏移时间，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param DataId: 输入的数据ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param BizType: 业务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizType: String
        # @param Name: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 状态，可选：PENDING，RUNNING，ERROR，FINISH，CANCELLED
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Type: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Suggestion: 处理建议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Labels: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param MediaInfo: 媒体信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfo: :class:`Tencentcloud::Vm.v20210922.models.MediaInfo`
        # @param InputInfo: 输入信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputInfo: :class:`Tencentcloud::Vm.v20210922.models.InputInfo`
        # @param CreatedAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param UpdatedAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedAt: String

        attr_accessor :TaskId, :DataId, :BizType, :Name, :Status, :Type, :Suggestion, :Labels, :MediaInfo, :InputInfo, :CreatedAt, :UpdatedAt
        
        def initialize(taskid=nil, dataid=nil, biztype=nil, name=nil, status=nil, type=nil, suggestion=nil, labels=nil, mediainfo=nil, inputinfo=nil, createdat=nil, updatedat=nil)
          @TaskId = taskid
          @DataId = dataid
          @BizType = biztype
          @Name = name
          @Status = status
          @Type = type
          @Suggestion = suggestion
          @Labels = labels
          @MediaInfo = mediainfo
          @InputInfo = inputinfo
          @CreatedAt = createdat
          @UpdatedAt = updatedat
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
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaInfo.new
            @MediaInfo.deserialize(params['MediaInfo'])
          end
          unless params['InputInfo'].nil?
            @InputInfo = InputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
        end
      end

      # Cos TaskFilter
      class TaskFilter < TencentCloud::Common::AbstractModel
        # @param BizType: 任务业务类型
        # @type BizType: String
        # @param Type: 任务类型，可选：VIDEO，AUDIO， LIVE_VIDEO, LIVE_AUDIO
        # @type Type: String
        # @param Suggestion: 建议，可选：Pass, Review,Block
        # @type Suggestion: String
        # @param TaskStatus: 状态，可选：PENDING，RUNNING，ERROR，FINISH，CANCELLED
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

      # 音视频任务结构
      class TaskInput < TencentCloud::Common::AbstractModel
        # @param DataId: 数据ID
        # @type DataId: String
        # @param Name: 任务名
        # @type Name: String
        # @param Input: 任务输入
        # @type Input: :class:`Tencentcloud::Vm.v20210922.models.StorageInfo`

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

      # 任务输出标签
      class TaskLabel < TencentCloud::Common::AbstractModel
        # @param Label: 命中的标签
        # Porn 色情
        # Sexy 性感
        # Polity 政治
        # Illegal 违法
        # Abuse 谩骂
        # Terror 暴恐
        # Ad 广告
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 审核建议，可选值：
        # Pass 通过，
        # Review 建议人审，
        # Block 确认违规
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Score: 得分，分数是 0 ～ 100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer

        attr_accessor :Label, :Suggestion, :Score
        
        def initialize(label=nil, suggestion=nil, score=nil)
          @Label = label
          @Suggestion = suggestion
          @Score = score
        end

        def deserialize(params)
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Score = params['Score']
        end
      end

      # 创建任务时的返回结果
      class TaskResult < TencentCloud::Common::AbstractModel
        # @param DataId: 请求时传入的DataId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataId: String
        # @param TaskId: TaskId，任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Code: 错误码。如果code为OK，则表示创建成功，其他则参考公共错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Message: 如果错误，该字段表示错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
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

    end
  end
end

