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
  module Vtc
    module V20240223
      # 文本片段及其时间戳
      class AsrTimestamps < TencentCloud::Common::AbstractModel
        # @param Text: 文本片段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param StartMs: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartMs: Integer
        # @param EndMs: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndMs: Integer

        attr_accessor :Text, :StartMs, :EndMs

        def initialize(text=nil, startms=nil, endms=nil)
          @Text = text
          @StartMs = startms
          @EndMs = endms
        end

        def deserialize(params)
          @Text = params['Text']
          @StartMs = params['StartMs']
          @EndMs = params['EndMs']
        end
      end

      # 音频翻译结果
      class AudioTranslateResult < TencentCloud::Common::AbstractModel
        # @param SourceText: 原文本
        # @type SourceText: String
        # @param TargetText: 目标文本
        # @type TargetText: String

        attr_accessor :SourceText, :TargetText

        def initialize(sourcetext=nil, targettext=nil)
          @SourceText = sourcetext
          @TargetText = targettext
        end

        def deserialize(params)
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
        end
      end

      # ConfirmVideoTranslateJob请求参数结构体
      class ConfirmVideoTranslateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 视频翻译任务 ID
        # @type JobId: String
        # @param TranslateResults: 待确认文本
        # @type TranslateResults: Array

        attr_accessor :JobId, :TranslateResults

        def initialize(jobid=nil, translateresults=nil)
          @JobId = jobid
          @TranslateResults = translateresults
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['TranslateResults'].nil?
            @TranslateResults = []
            params['TranslateResults'].each do |i|
              audiotranslateresult_tmp = AudioTranslateResult.new
              audiotranslateresult_tmp.deserialize(i)
              @TranslateResults << audiotranslateresult_tmp
            end
          end
        end
      end

      # ConfirmVideoTranslateJob返回参数结构体
      class ConfirmVideoTranslateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频翻译任务 ID
        # @type JobId: String
        # @param TaskId: 音频转换任务 ID
        # @type TaskId: String
        # @param SessionId: 音频翻译结果确认 session
        # @type SessionId: String
        # @param Status: 视频转译任务状态
        # @type Status: Integer
        # @param Message: 视频转译任务信息
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :TaskId, :SessionId, :Status, :Message, :RequestId

        def initialize(jobid=nil, taskid=nil, sessionid=nil, status=nil, message=nil, requestid=nil)
          @JobId = jobid
          @TaskId = taskid
          @SessionId = sessionid
          @Status = status
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
          @Status = params['Status']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoTranslateJob请求参数结构体
      class DescribeVideoTranslateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: JobId。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeVideoTranslateJob返回参数结构体
      class DescribeVideoTranslateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatus: 任务状态。 1：音频翻译中。 2：音频翻译失败。 3：音频翻译成功。 4：音频结果待确认。 5：音频结果已确认完毕。6：视频翻译中。 7：视频翻译失败。 8：视频翻译成功。
        # @type JobStatus: Integer
        # @param JobErrorCode: 任务错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务错误信息。
        # @type JobErrorMsg: String
        # @param ResultVideoUrl: 视频翻译结果。
        # @type ResultVideoUrl: String
        # @param TranslateResults: 音频翻译结果。
        # @type TranslateResults: Array
        # @param JobConfirm: 是否需要确认翻译结果。0：不需要，1：需要
        # @type JobConfirm: Integer
        # @param JobAudioTaskId: 音频任务 ID
        # @type JobAudioTaskId: String
        # @param JobVideoModerationId: 视频审核任务ID
        # @type JobVideoModerationId: String
        # @param JobVideoId: 视频生成任务 ID
        # @type JobVideoId: String
        # @param OriginalVideoUrl: 视频素材原始 URL
        # @type OriginalVideoUrl: String
        # @param AsrTimestamps: 文本片段及其时间戳
        # @type AsrTimestamps: Array
        # @param JobSubmitReqId: 提交视频翻译任务时的 requestId
        # @type JobSubmitReqId: String
        # @param JobAudioModerationId: 音频审核任务 ID
        # @type JobAudioModerationId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatus, :JobErrorCode, :JobErrorMsg, :ResultVideoUrl, :TranslateResults, :JobConfirm, :JobAudioTaskId, :JobVideoModerationId, :JobVideoId, :OriginalVideoUrl, :AsrTimestamps, :JobSubmitReqId, :JobAudioModerationId, :RequestId

        def initialize(jobstatus=nil, joberrorcode=nil, joberrormsg=nil, resultvideourl=nil, translateresults=nil, jobconfirm=nil, jobaudiotaskid=nil, jobvideomoderationid=nil, jobvideoid=nil, originalvideourl=nil, asrtimestamps=nil, jobsubmitreqid=nil, jobaudiomoderationid=nil, requestid=nil)
          @JobStatus = jobstatus
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultVideoUrl = resultvideourl
          @TranslateResults = translateresults
          @JobConfirm = jobconfirm
          @JobAudioTaskId = jobaudiotaskid
          @JobVideoModerationId = jobvideomoderationid
          @JobVideoId = jobvideoid
          @OriginalVideoUrl = originalvideourl
          @AsrTimestamps = asrtimestamps
          @JobSubmitReqId = jobsubmitreqid
          @JobAudioModerationId = jobaudiomoderationid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatus = params['JobStatus']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultVideoUrl = params['ResultVideoUrl']
          unless params['TranslateResults'].nil?
            @TranslateResults = []
            params['TranslateResults'].each do |i|
              translateresult_tmp = TranslateResult.new
              translateresult_tmp.deserialize(i)
              @TranslateResults << translateresult_tmp
            end
          end
          @JobConfirm = params['JobConfirm']
          @JobAudioTaskId = params['JobAudioTaskId']
          @JobVideoModerationId = params['JobVideoModerationId']
          @JobVideoId = params['JobVideoId']
          @OriginalVideoUrl = params['OriginalVideoUrl']
          unless params['AsrTimestamps'].nil?
            @AsrTimestamps = []
            params['AsrTimestamps'].each do |i|
              asrtimestamps_tmp = AsrTimestamps.new
              asrtimestamps_tmp.deserialize(i)
              @AsrTimestamps << asrtimestamps_tmp
            end
          end
          @JobSubmitReqId = params['JobSubmitReqId']
          @JobAudioModerationId = params['JobAudioModerationId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitVideoTranslateJob请求参数结构体
      class SubmitVideoTranslateJobRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 视频地址URL。
        # 格式要求：支持 mp4、mov 。
        # 时长要求：【10-300】秒。
        # fps 要求：【15-60】fps
        # 分辨率要求：单边像素要求在 【540~1920】 之间。
        # @type VideoUrl: String
        # @param SrcLang: 源语言：zh(中文), en(英文)
        # @type SrcLang: String
        # @param DstLang: 目标语种：
        # zh(简体中文)、en(英语)、ar(阿拉伯语)、de(德语)、es(西班牙语)、fr(法语)、id(印尼语)、it(意大利语)、ja(日语)、ko(韩语)、ms(马来语)、pt(葡萄牙语)、ru(俄语)、th(泰语)、tr(土耳其语)、vi(越南语)
        # 示例值：ar(阿拉伯语)
        # @type DstLang: String
        # @param AudioUrl: 当音频 URL 不为空时，默认以音频驱动视频任务口型。
        # 格式要求：支持 mp3、m4a、acc、wav 格式。
        # 时长要求：【10~300】秒
        # 大小要求：不超过 100M。
        # 示例值：http://xxx/audio.mp3
        # @type AudioUrl: String
        # @param RemoveVocal: 是否需要去除VideoUrl或AudioUrl中背景音，取值范围：0-不需要，1-需要，默认0 。
        # @type RemoveVocal: Integer
        # @param Confirm: 是否需要确认翻译结果0：不需要，1：需要
        # @type Confirm: Integer
        # @param LipSync: 是否开启口型驱动，0：不开启，1：开启。默认开启。
        # @type LipSync: Integer
        # @param VoiceType: 音色种别：一种音色种别对应一种不同区域的音色
        # 1）目标语种为小语种(非zh,en)时，该项为必填
        # 2）目标语种为zh,en时，该项为非必填，若填入，则对应填入的音色

        # 具体音色包含请见“支持音色种别列表”
        # @type VoiceType: String

        attr_accessor :VideoUrl, :SrcLang, :DstLang, :AudioUrl, :RemoveVocal, :Confirm, :LipSync, :VoiceType

        def initialize(videourl=nil, srclang=nil, dstlang=nil, audiourl=nil, removevocal=nil, confirm=nil, lipsync=nil, voicetype=nil)
          @VideoUrl = videourl
          @SrcLang = srclang
          @DstLang = dstlang
          @AudioUrl = audiourl
          @RemoveVocal = removevocal
          @Confirm = confirm
          @LipSync = lipsync
          @VoiceType = voicetype
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @SrcLang = params['SrcLang']
          @DstLang = params['DstLang']
          @AudioUrl = params['AudioUrl']
          @RemoveVocal = params['RemoveVocal']
          @Confirm = params['Confirm']
          @LipSync = params['LipSync']
          @VoiceType = params['VoiceType']
        end
      end

      # SubmitVideoTranslateJob返回参数结构体
      class SubmitVideoTranslateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频转译任务的Job id
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

      # 音频翻译结果。
      class TranslateResult < TencentCloud::Common::AbstractModel
        # @param SourceText: 翻译源文字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceText: String
        # @param TargetText: 翻译后文字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetText: String

        attr_accessor :SourceText, :TargetText

        def initialize(sourcetext=nil, targettext=nil)
          @SourceText = sourcetext
          @TargetText = targettext
        end

        def deserialize(params)
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
        end
      end

    end
  end
end

