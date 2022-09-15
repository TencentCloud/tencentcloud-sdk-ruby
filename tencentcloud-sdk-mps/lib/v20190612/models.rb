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
  module Mps
    module V20190612
      # AI 智能分析模板详情
      class AIAnalysisTemplateItem < TencentCloud::Common::AbstractModel
        # @param Definition: 智能分析模板唯一标识。
        # @type Definition: Integer
        # @param Name: 智能分析模板名称。
        # @type Name: String
        # @param Comment: 智能分析模板描述信息。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationConfigure: :class:`Tencentcloud::Mps.v20190612.models.ClassificationConfigureInfo`
        # @param TagConfigure: 智能标签任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagConfigure: :class:`Tencentcloud::Mps.v20190612.models.TagConfigureInfo`
        # @param CoverConfigure: 智能封面任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverConfigure: :class:`Tencentcloud::Mps.v20190612.models.CoverConfigureInfo`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagConfigure: :class:`Tencentcloud::Mps.v20190612.models.FrameTagConfigureInfo`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param Type: 模板类型，取值范围：
        # * Preset：系统预置模板；
        # * Custom：用户自定义模板。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Definition, :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure, :CreateTime, :UpdateTime, :Type
        
        def initialize(definition=nil, name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil, createtime=nil, updatetime=nil, type=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Type = type
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['ClassificationConfigure'].nil?
            @ClassificationConfigure = ClassificationConfigureInfo.new
            @ClassificationConfigure.deserialize(params['ClassificationConfigure'])
          end
          unless params['TagConfigure'].nil?
            @TagConfigure = TagConfigureInfo.new
            @TagConfigure.deserialize(params['TagConfigure'])
          end
          unless params['CoverConfigure'].nil?
            @CoverConfigure = CoverConfigureInfo.new
            @CoverConfigure.deserialize(params['CoverConfigure'])
          end
          unless params['FrameTagConfigure'].nil?
            @FrameTagConfigure = FrameTagConfigureInfo.new
            @FrameTagConfigure.deserialize(params['FrameTagConfigure'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Type = params['Type']
        end
      end

      # 视频内容识别模板详情
      class AIRecognitionTemplateItem < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param Name: 视频内容识别模板名称。
        # @type Name: String
        # @param Comment: 视频内容识别模板描述信息。
        # @type Comment: String
        # @param FaceConfigure: 人脸识别控制参数。
        # @type FaceConfigure: :class:`Tencentcloud::Mps.v20190612.models.FaceConfigureInfo`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Mps.v20190612.models.OcrFullTextConfigureInfo`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Mps.v20190612.models.OcrWordsConfigureInfo`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Mps.v20190612.models.AsrFullTextConfigureInfo`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Mps.v20190612.models.AsrWordsConfigureInfo`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param Type: 模板类型，取值范围：
        # * Preset：系统预置模板；
        # * Custom：用户自定义模板。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Definition, :Name, :Comment, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure, :CreateTime, :UpdateTime, :Type
        
        def initialize(definition=nil, name=nil, comment=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil, createtime=nil, updatetime=nil, type=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Type = type
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['FaceConfigure'].nil?
            @FaceConfigure = FaceConfigureInfo.new
            @FaceConfigure.deserialize(params['FaceConfigure'])
          end
          unless params['OcrFullTextConfigure'].nil?
            @OcrFullTextConfigure = OcrFullTextConfigureInfo.new
            @OcrFullTextConfigure.deserialize(params['OcrFullTextConfigure'])
          end
          unless params['OcrWordsConfigure'].nil?
            @OcrWordsConfigure = OcrWordsConfigureInfo.new
            @OcrWordsConfigure.deserialize(params['OcrWordsConfigure'])
          end
          unless params['AsrFullTextConfigure'].nil?
            @AsrFullTextConfigure = AsrFullTextConfigureInfo.new
            @AsrFullTextConfigure.deserialize(params['AsrFullTextConfigure'])
          end
          unless params['AsrWordsConfigure'].nil?
            @AsrWordsConfigure = AsrWordsConfigureInfo.new
            @AsrWordsConfigure.deserialize(params['AsrWordsConfigure'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Type = params['Type']
        end
      end

      # 动作识别参数配置
      class ActionConfigInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 动作识别任务开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 编排子任务输出
      class ActivityResItem < TencentCloud::Common::AbstractModel
        # @param TranscodeTask: 转码任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskTranscodeResult`
        # @param AnimatedGraphicTask: 转动图任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnimatedGraphicTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskAnimatedGraphicResult`
        # @param SnapshotByTimeOffsetTask: 时间点截图任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskSampleSnapshotResult`
        # @param SampleSnapshotTask: 采样截图任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleSnapshotTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskSampleSnapshotResult`
        # @param ImageSpriteTask: 雪碧图任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSpriteTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskImageSpriteResult`
        # @param AdaptiveDynamicStreamingTask: 自适应码流任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdaptiveDynamicStreamingTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskAdaptiveDynamicStreamingResult`
        # @param RecognitionTask: 识别任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecognitionTask: :class:`Tencentcloud::Mps.v20190612.models.ScheduleRecognitionTaskResult`
        # @param ReviewTask: 审核任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReviewTask: :class:`Tencentcloud::Mps.v20190612.models.ScheduleReviewTaskResult`
        # @param AnalysisTask: 分析任务输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnalysisTask: :class:`Tencentcloud::Mps.v20190612.models.ScheduleAnalysisTaskResult`

        attr_accessor :TranscodeTask, :AnimatedGraphicTask, :SnapshotByTimeOffsetTask, :SampleSnapshotTask, :ImageSpriteTask, :AdaptiveDynamicStreamingTask, :RecognitionTask, :ReviewTask, :AnalysisTask
        
        def initialize(transcodetask=nil, animatedgraphictask=nil, snapshotbytimeoffsettask=nil, samplesnapshottask=nil, imagespritetask=nil, adaptivedynamicstreamingtask=nil, recognitiontask=nil, reviewtask=nil, analysistask=nil)
          @TranscodeTask = transcodetask
          @AnimatedGraphicTask = animatedgraphictask
          @SnapshotByTimeOffsetTask = snapshotbytimeoffsettask
          @SampleSnapshotTask = samplesnapshottask
          @ImageSpriteTask = imagespritetask
          @AdaptiveDynamicStreamingTask = adaptivedynamicstreamingtask
          @RecognitionTask = recognitiontask
          @ReviewTask = reviewtask
          @AnalysisTask = analysistask
        end

        def deserialize(params)
          unless params['TranscodeTask'].nil?
            @TranscodeTask = MediaProcessTaskTranscodeResult.new
            @TranscodeTask.deserialize(params['TranscodeTask'])
          end
          unless params['AnimatedGraphicTask'].nil?
            @AnimatedGraphicTask = MediaProcessTaskAnimatedGraphicResult.new
            @AnimatedGraphicTask.deserialize(params['AnimatedGraphicTask'])
          end
          unless params['SnapshotByTimeOffsetTask'].nil?
            @SnapshotByTimeOffsetTask = MediaProcessTaskSampleSnapshotResult.new
            @SnapshotByTimeOffsetTask.deserialize(params['SnapshotByTimeOffsetTask'])
          end
          unless params['SampleSnapshotTask'].nil?
            @SampleSnapshotTask = MediaProcessTaskSampleSnapshotResult.new
            @SampleSnapshotTask.deserialize(params['SampleSnapshotTask'])
          end
          unless params['ImageSpriteTask'].nil?
            @ImageSpriteTask = MediaProcessTaskImageSpriteResult.new
            @ImageSpriteTask.deserialize(params['ImageSpriteTask'])
          end
          unless params['AdaptiveDynamicStreamingTask'].nil?
            @AdaptiveDynamicStreamingTask = MediaProcessTaskAdaptiveDynamicStreamingResult.new
            @AdaptiveDynamicStreamingTask.deserialize(params['AdaptiveDynamicStreamingTask'])
          end
          unless params['RecognitionTask'].nil?
            @RecognitionTask = ScheduleRecognitionTaskResult.new
            @RecognitionTask.deserialize(params['RecognitionTask'])
          end
          unless params['ReviewTask'].nil?
            @ReviewTask = ScheduleReviewTaskResult.new
            @ReviewTask.deserialize(params['ReviewTask'])
          end
          unless params['AnalysisTask'].nil?
            @AnalysisTask = ScheduleAnalysisTaskResult.new
            @AnalysisTask.deserialize(params['AnalysisTask'])
          end
        end
      end

      # 编排任务输出
      class ActivityResult < TencentCloud::Common::AbstractModel
        # @param ActivityType: 原子任务类型。
        # <li>Transcode：转码。</li>
        # <li>SampleSnapshot：采样截图。</li>
        # <li>AnimatedGraphics：转动图。</li>
        # <li>SnapshotByTimeOffset：时间点截图。</li>
        # <li>ImageSprites：雪碧图。</li>
        # <li>AdaptiveDynamicStreaming：自适应码流。</li>
        # <li>AiContentReview：内容审核。</li>
        # <li>AIRecognition：智能识别。</li>
        # <li>AIAnalysis：智能分析。</li>
        # @type ActivityType: String
        # @param ActivityResItem: 原子任务输出。
        # @type ActivityResItem: :class:`Tencentcloud::Mps.v20190612.models.ActivityResItem`

        attr_accessor :ActivityType, :ActivityResItem
        
        def initialize(activitytype=nil, activityresitem=nil)
          @ActivityType = activitytype
          @ActivityResItem = activityresitem
        end

        def deserialize(params)
          @ActivityType = params['ActivityType']
          unless params['ActivityResItem'].nil?
            @ActivityResItem = ActivityResItem.new
            @ActivityResItem.deserialize(params['ActivityResItem'])
          end
        end
      end

      # 转自适应码流信息
      class AdaptiveDynamicStreamingInfoItem < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流规格。
        # @type Definition: Integer
        # @param Package: 打包格式，可能为 HLS和 MPEG-DASH 两种。
        # @type Package: String
        # @param Path: 播放路径。
        # @type Path: String
        # @param Storage: 自适应码流文件的存储位置。
        # @type Storage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`

        attr_accessor :Definition, :Package, :Path, :Storage
        
        def initialize(definition=nil, package=nil, path=nil, storage=nil)
          @Definition = definition
          @Package = package
          @Path = path
          @Storage = storage
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Package = params['Package']
          @Path = params['Path']
          unless params['Storage'].nil?
            @Storage = TaskOutputStorage.new
            @Storage.deserialize(params['Storage'])
          end
        end
      end

      # 对视频转自适应码流的输入参数类型
      class AdaptiveDynamicStreamingTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array
        # @param OutputStorage: 转自适应码流后文件的目标存储，不填则继承上层的 OutputStorage 值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputObjectPath: 转自适应码流后，manifest 文件的输出路径，可以为相对路径或者绝对路径。如果不填，则默认为相对路径：`{inputName}_adaptiveDynamicStreaming_{definition}.{format}`。
        # @type OutputObjectPath: String
        # @param SubStreamObjectName: 转自适应码流后，子流文件的输出路径，只能为相对路径。如果不填，则默认为相对路径：`{inputName}_adaptiveDynamicStreaming_{definition}_{subStreamNumber}.{format}`。
        # @type SubStreamObjectName: String
        # @param SegmentObjectName: 转自适应码流（仅 HLS）后，分片文件的输出路径，只能为相对路径。如果不填，则默认为相对路径：`{inputName}_adaptiveDynamicStreaming_{definition}_{subStreamNumber}_{segmentNumber}.{format}`。
        # @type SegmentObjectName: String

        attr_accessor :Definition, :WatermarkSet, :OutputStorage, :OutputObjectPath, :SubStreamObjectName, :SegmentObjectName
        
        def initialize(definition=nil, watermarkset=nil, outputstorage=nil, outputobjectpath=nil, substreamobjectname=nil, segmentobjectname=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
          @OutputStorage = outputstorage
          @OutputObjectPath = outputobjectpath
          @SubStreamObjectName = substreamobjectname
          @SegmentObjectName = segmentobjectname
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['WatermarkSet'].nil?
            @WatermarkSet = []
            params['WatermarkSet'].each do |i|
              watermarkinput_tmp = WatermarkInput.new
              watermarkinput_tmp.deserialize(i)
              @WatermarkSet << watermarkinput_tmp
            end
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputObjectPath = params['OutputObjectPath']
          @SubStreamObjectName = params['SubStreamObjectName']
          @SegmentObjectName = params['SegmentObjectName']
        end
      end

      # 转自适应码流模板详情
      class AdaptiveDynamicStreamingTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 转自适应码流模板名称。
        # @type Name: String
        # @param Comment: 转自适应码流模板描述信息。
        # @type Comment: String
        # @param Format: 转自适应码流格式，取值范围：
        # <li>HLS，</li>
        # <li>MPEG-DASH。</li>
        # @type Format: String
        # @param StreamInfos: 转自适应码流输入流参数信息，最多输入10路流。
        # @type StreamInfos: Array
        # @param DisableHigherVideoBitrate: 是否禁止视频低码率转高码率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoBitrate: Integer
        # @param DisableHigherVideoResolution: 是否禁止视频分辨率转高分辨率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoResolution: Integer
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Format, :StreamInfos, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, format=nil, streaminfos=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Format = format
          @StreamInfos = streaminfos
          @DisableHigherVideoBitrate = disablehighervideobitrate
          @DisableHigherVideoResolution = disablehighervideoresolution
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Format = params['Format']
          unless params['StreamInfos'].nil?
            @StreamInfos = []
            params['StreamInfos'].each do |i|
              adaptivestreamtemplate_tmp = AdaptiveStreamTemplate.new
              adaptivestreamtemplate_tmp.deserialize(i)
              @StreamInfos << adaptivestreamtemplate_tmp
            end
          end
          @DisableHigherVideoBitrate = params['DisableHigherVideoBitrate']
          @DisableHigherVideoResolution = params['DisableHigherVideoResolution']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 自适应转码流参数模板
      class AdaptiveStreamTemplate < TencentCloud::Common::AbstractModel
        # @param Video: 视频参数信息。
        # @type Video: :class:`Tencentcloud::Mps.v20190612.models.VideoTemplateInfo`
        # @param Audio: 音频参数信息。
        # @type Audio: :class:`Tencentcloud::Mps.v20190612.models.AudioTemplateInfo`
        # @param RemoveAudio: 是否移除音频流，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type RemoveAudio: Integer
        # @param RemoveVideo: 是否移除视频流，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type RemoveVideo: Integer

        attr_accessor :Video, :Audio, :RemoveAudio, :RemoveVideo
        
        def initialize(video=nil, audio=nil, removeaudio=nil, removevideo=nil)
          @Video = video
          @Audio = audio
          @RemoveAudio = removeaudio
          @RemoveVideo = removevideo
        end

        def deserialize(params)
          unless params['Video'].nil?
            @Video = VideoTemplateInfo.new
            @Video.deserialize(params['Video'])
          end
          unless params['Audio'].nil?
            @Audio = AudioTemplateInfo.new
            @Audio.deserialize(params['Audio'])
          end
          @RemoveAudio = params['RemoveAudio']
          @RemoveVideo = params['RemoveVideo']
        end
      end

      # 智能分析结果
      class AiAnalysisResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Classification：智能分类</li>
        # <li>Cover：智能封面</li>
        # <li>Tag：智能标签</li>
        # <li>FrameTag：智能按帧标签</li>
        # <li>Highlight：智能精彩集锦</li>
        # @type Type: String
        # @param ClassificationTask: 视频内容分析智能分类任务的查询结果，当任务类型为 Classification 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskClassificationResult`
        # @param CoverTask: 视频内容分析智能封面任务的查询结果，当任务类型为 Cover 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskCoverResult`
        # @param TagTask: 视频内容分析智能标签任务的查询结果，当任务类型为 Tag 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskTagResult`
        # @param FrameTagTask: 视频内容分析智能按帧标签任务的查询结果，当任务类型为 FrameTag 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskFrameTagResult`

        attr_accessor :Type, :ClassificationTask, :CoverTask, :TagTask, :FrameTagTask
        
        def initialize(type=nil, classificationtask=nil, covertask=nil, tagtask=nil, frametagtask=nil)
          @Type = type
          @ClassificationTask = classificationtask
          @CoverTask = covertask
          @TagTask = tagtask
          @FrameTagTask = frametagtask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['ClassificationTask'].nil?
            @ClassificationTask = AiAnalysisTaskClassificationResult.new
            @ClassificationTask.deserialize(params['ClassificationTask'])
          end
          unless params['CoverTask'].nil?
            @CoverTask = AiAnalysisTaskCoverResult.new
            @CoverTask.deserialize(params['CoverTask'])
          end
          unless params['TagTask'].nil?
            @TagTask = AiAnalysisTaskTagResult.new
            @TagTask.deserialize(params['TagTask'])
          end
          unless params['FrameTagTask'].nil?
            @FrameTagTask = AiAnalysisTaskFrameTagResult.new
            @FrameTagTask.deserialize(params['FrameTagTask'])
          end
        end
      end

      # 智能分类任务输入类型
      class AiAnalysisTaskClassificationInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能分类模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能分类结果信息
      class AiAnalysisTaskClassificationOutput < TencentCloud::Common::AbstractModel
        # @param ClassificationSet: 视频智能分类列表。
        # @type ClassificationSet: Array

        attr_accessor :ClassificationSet
        
        def initialize(classificationset=nil)
          @ClassificationSet = classificationset
        end

        def deserialize(params)
          unless params['ClassificationSet'].nil?
            @ClassificationSet = []
            params['ClassificationSet'].each do |i|
              mediaaianalysisclassificationitem_tmp = MediaAiAnalysisClassificationItem.new
              mediaaianalysisclassificationitem_tmp.deserialize(i)
              @ClassificationSet << mediaaianalysisclassificationitem_tmp
            end
          end
        end
      end

      # 智能分类任务结果类型
      class AiAnalysisTaskClassificationResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能分类任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskClassificationInput`
        # @param Output: 智能分类任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskClassificationOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskClassificationInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskClassificationOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 智能分类任务输入类型
      class AiAnalysisTaskCoverInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能封面模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能封面结果信息
      class AiAnalysisTaskCoverOutput < TencentCloud::Common::AbstractModel
        # @param CoverSet: 智能封面列表。
        # @type CoverSet: Array
        # @param OutputStorage: 智能封面的存储位置。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`

        attr_accessor :CoverSet, :OutputStorage
        
        def initialize(coverset=nil, outputstorage=nil)
          @CoverSet = coverset
          @OutputStorage = outputstorage
        end

        def deserialize(params)
          unless params['CoverSet'].nil?
            @CoverSet = []
            params['CoverSet'].each do |i|
              mediaaianalysiscoveritem_tmp = MediaAiAnalysisCoverItem.new
              mediaaianalysiscoveritem_tmp.deserialize(i)
              @CoverSet << mediaaianalysiscoveritem_tmp
            end
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
        end
      end

      # 智能封面结果类型
      class AiAnalysisTaskCoverResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能封面任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskCoverInput`
        # @param Output: 智能封面任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskCoverOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskCoverInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskCoverOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 智能按帧标签任务输入类型
      class AiAnalysisTaskFrameTagInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能按帧标签模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能按帧标签结果信息
      class AiAnalysisTaskFrameTagOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 视频按帧标签列表。
        # @type SegmentSet: Array

        attr_accessor :SegmentSet
        
        def initialize(segmentset=nil)
          @SegmentSet = segmentset
        end

        def deserialize(params)
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediaaianalysisframetagsegmentitem_tmp = MediaAiAnalysisFrameTagSegmentItem.new
              mediaaianalysisframetagsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediaaianalysisframetagsegmentitem_tmp
            end
          end
        end
      end

      # 智能按帧标签结果类型
      class AiAnalysisTaskFrameTagResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能按帧标签任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskFrameTagInput`
        # @param Output: 智能按帧标签任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskFrameTagOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskFrameTagInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskFrameTagOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # AI 视频智能分析输入参数类型
      class AiAnalysisTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能标签任务输入类型
      class AiAnalysisTaskTagInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能标签模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能标签结果信息
      class AiAnalysisTaskTagOutput < TencentCloud::Common::AbstractModel
        # @param TagSet: 视频智能标签列表。
        # @type TagSet: Array

        attr_accessor :TagSet
        
        def initialize(tagset=nil)
          @TagSet = tagset
        end

        def deserialize(params)
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              mediaaianalysistagitem_tmp = MediaAiAnalysisTagItem.new
              mediaaianalysistagitem_tmp.deserialize(i)
              @TagSet << mediaaianalysistagitem_tmp
            end
          end
        end
      end

      # 智能标签结果类型
      class AiAnalysisTaskTagResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能标签任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskTagInput`
        # @param Output: 智能标签任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskTagOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskTagInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskTagOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核结果
      class AiContentReviewResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Porn：图片鉴黄</li>
        # <li>Terrorism：图片敏感</li>
        # <li>Political：图片敏感</li>
        # <li>Porn.Asr：Asr 文字鉴黄</li>
        # <li>Porn.Ocr：Ocr 文字鉴黄</li>
        # <li>Political.Asr：Asr 文字敏感</li>
        # <li>Political.Ocr：Ocr 文字敏感</li>
        # <li>Terrorism.Ocr：Ocr 文字敏感</li>
        # <li>Prohibited.Asr：Asr 文字鉴违禁</li>
        # <li>Prohibited.Ocr：Ocr 文字鉴违禁</li>
        # @type Type: String
        # @param SampleRate: 采样频率，即对视频每秒截取进行审核的帧数。
        # @type SampleRate: Float
        # @param Duration: 审核的视频时长，单位：秒。
        # @type Duration: Float
        # @param PornTask: 视频内容审核智能画面鉴黄任务的查询结果，当任务类型为 Porn 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskPornResult`
        # @param TerrorismTask: 视频内容审核智能画面敏感任务的查询结果，当任务类型为 Terrorism 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskTerrorismResult`
        # @param PoliticalTask: 视频内容审核智能画面敏感任务的查询结果，当任务类型为 Political 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskPoliticalResult`
        # @param PornAsrTask: 视频内容审核 Asr 文字鉴黄任务的查询结果，当任务类型为 Porn.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornAsrTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskPornAsrResult`
        # @param PornOcrTask: 视频内容审核 Ocr 文字鉴黄任务的查询结果，当任务类型为 Porn.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornOcrTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskPornOcrResult`
        # @param PoliticalAsrTask: 视频内容审核 Asr 文字敏感任务的查询结果，当任务类型为 Political.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalAsrTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskPoliticalAsrResult`
        # @param PoliticalOcrTask: 视频内容审核 Ocr 文字敏感任务的查询结果，当任务类型为 Political.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalOcrTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskPoliticalOcrResult`
        # @param TerrorismOcrTask: 视频内容审核 Ocr 文字敏感任务的查询结果，当任务类型为 Terrorism.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismOcrTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskTerrorismOcrResult`
        # @param ProhibitedAsrTask: 视频内容审核 Asr 文字鉴违禁任务的查询结果，当任务类型为 Prohibited.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedAsrTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskProhibitedAsrResult`
        # @param ProhibitedOcrTask: 视频内容审核 Ocr 文字鉴违禁任务的查询结果，当任务类型为 Prohibited.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedOcrTask: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTaskProhibitedOcrResult`

        attr_accessor :Type, :SampleRate, :Duration, :PornTask, :TerrorismTask, :PoliticalTask, :PornAsrTask, :PornOcrTask, :PoliticalAsrTask, :PoliticalOcrTask, :TerrorismOcrTask, :ProhibitedAsrTask, :ProhibitedOcrTask
        
        def initialize(type=nil, samplerate=nil, duration=nil, porntask=nil, terrorismtask=nil, politicaltask=nil, pornasrtask=nil, pornocrtask=nil, politicalasrtask=nil, politicalocrtask=nil, terrorismocrtask=nil, prohibitedasrtask=nil, prohibitedocrtask=nil)
          @Type = type
          @SampleRate = samplerate
          @Duration = duration
          @PornTask = porntask
          @TerrorismTask = terrorismtask
          @PoliticalTask = politicaltask
          @PornAsrTask = pornasrtask
          @PornOcrTask = pornocrtask
          @PoliticalAsrTask = politicalasrtask
          @PoliticalOcrTask = politicalocrtask
          @TerrorismOcrTask = terrorismocrtask
          @ProhibitedAsrTask = prohibitedasrtask
          @ProhibitedOcrTask = prohibitedocrtask
        end

        def deserialize(params)
          @Type = params['Type']
          @SampleRate = params['SampleRate']
          @Duration = params['Duration']
          unless params['PornTask'].nil?
            @PornTask = AiReviewTaskPornResult.new
            @PornTask.deserialize(params['PornTask'])
          end
          unless params['TerrorismTask'].nil?
            @TerrorismTask = AiReviewTaskTerrorismResult.new
            @TerrorismTask.deserialize(params['TerrorismTask'])
          end
          unless params['PoliticalTask'].nil?
            @PoliticalTask = AiReviewTaskPoliticalResult.new
            @PoliticalTask.deserialize(params['PoliticalTask'])
          end
          unless params['PornAsrTask'].nil?
            @PornAsrTask = AiReviewTaskPornAsrResult.new
            @PornAsrTask.deserialize(params['PornAsrTask'])
          end
          unless params['PornOcrTask'].nil?
            @PornOcrTask = AiReviewTaskPornOcrResult.new
            @PornOcrTask.deserialize(params['PornOcrTask'])
          end
          unless params['PoliticalAsrTask'].nil?
            @PoliticalAsrTask = AiReviewTaskPoliticalAsrResult.new
            @PoliticalAsrTask.deserialize(params['PoliticalAsrTask'])
          end
          unless params['PoliticalOcrTask'].nil?
            @PoliticalOcrTask = AiReviewTaskPoliticalOcrResult.new
            @PoliticalOcrTask.deserialize(params['PoliticalOcrTask'])
          end
          unless params['TerrorismOcrTask'].nil?
            @TerrorismOcrTask = AiReviewTaskTerrorismOcrResult.new
            @TerrorismOcrTask.deserialize(params['TerrorismOcrTask'])
          end
          unless params['ProhibitedAsrTask'].nil?
            @ProhibitedAsrTask = AiReviewTaskProhibitedAsrResult.new
            @ProhibitedAsrTask.deserialize(params['ProhibitedAsrTask'])
          end
          unless params['ProhibitedOcrTask'].nil?
            @ProhibitedOcrTask = AiReviewTaskProhibitedOcrResult.new
            @ProhibitedOcrTask.deserialize(params['ProhibitedOcrTask'])
          end
        end
      end

      # 智能内容审核任务类型
      class AiContentReviewTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容审核模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能识别结果。
      class AiRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，取值范围：
        # <li>FaceRecognition：人脸识别，</li>
        # <li>AsrWordsRecognition：语音关键词识别，</li>
        # <li>OcrWordsRecognition：文本关键词识别，</li>
        # <li>AsrFullTextRecognition：语音全文识别，</li>
        # <li>OcrFullTextRecognition：文本全文识别。</li>
        # @type Type: String
        # @param FaceTask: 人脸识别结果，当 Type 为
        #  FaceRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskFaceResult`
        # @param AsrWordsTask: 语音关键词识别结果，当 Type 为
        #  AsrWordsRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrWordsTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskAsrWordsResult`
        # @param AsrFullTextTask: 语音全文识别结果，当 Type 为
        #  AsrFullTextRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrFullTextTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskAsrFullTextResult`
        # @param OcrWordsTask: 文本关键词识别结果，当 Type 为
        #  OcrWordsRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrWordsTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskOcrWordsResult`
        # @param OcrFullTextTask: 文本全文识别结果，当 Type 为
        #  OcrFullTextRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrFullTextTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskOcrFullTextResult`

        attr_accessor :Type, :FaceTask, :AsrWordsTask, :AsrFullTextTask, :OcrWordsTask, :OcrFullTextTask
        
        def initialize(type=nil, facetask=nil, asrwordstask=nil, asrfulltexttask=nil, ocrwordstask=nil, ocrfulltexttask=nil)
          @Type = type
          @FaceTask = facetask
          @AsrWordsTask = asrwordstask
          @AsrFullTextTask = asrfulltexttask
          @OcrWordsTask = ocrwordstask
          @OcrFullTextTask = ocrfulltexttask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['FaceTask'].nil?
            @FaceTask = AiRecognitionTaskFaceResult.new
            @FaceTask.deserialize(params['FaceTask'])
          end
          unless params['AsrWordsTask'].nil?
            @AsrWordsTask = AiRecognitionTaskAsrWordsResult.new
            @AsrWordsTask.deserialize(params['AsrWordsTask'])
          end
          unless params['AsrFullTextTask'].nil?
            @AsrFullTextTask = AiRecognitionTaskAsrFullTextResult.new
            @AsrFullTextTask.deserialize(params['AsrFullTextTask'])
          end
          unless params['OcrWordsTask'].nil?
            @OcrWordsTask = AiRecognitionTaskOcrWordsResult.new
            @OcrWordsTask.deserialize(params['OcrWordsTask'])
          end
          unless params['OcrFullTextTask'].nil?
            @OcrFullTextTask = AiRecognitionTaskOcrFullTextResult.new
            @OcrFullTextTask.deserialize(params['OcrFullTextTask'])
          end
        end
      end

      # 语音全文识别结果。
      class AiRecognitionTaskAsrFullTextResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 语音全文识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskAsrFullTextResultInput`
        # @param Output: 语音全文识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskAsrFullTextResultOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskAsrFullTextResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskAsrFullTextResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 语音全文识别的输入。
      class AiRecognitionTaskAsrFullTextResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 语音全文识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 语音全文识别结果。
      class AiRecognitionTaskAsrFullTextResultOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 语音全文识别片段列表。
        # @type SegmentSet: Array
        # @param SubtitlePath: 字幕文件地址。
        # @type SubtitlePath: String
        # @param OutputStorage: 字幕文件存储位置。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`

        attr_accessor :SegmentSet, :SubtitlePath, :OutputStorage
        
        def initialize(segmentset=nil, subtitlepath=nil, outputstorage=nil)
          @SegmentSet = segmentset
          @SubtitlePath = subtitlepath
          @OutputStorage = outputstorage
        end

        def deserialize(params)
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              airecognitiontaskasrfulltextsegmentitem_tmp = AiRecognitionTaskAsrFullTextSegmentItem.new
              airecognitiontaskasrfulltextsegmentitem_tmp.deserialize(i)
              @SegmentSet << airecognitiontaskasrfulltextsegmentitem_tmp
            end
          end
          @SubtitlePath = params['SubtitlePath']
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
        end
      end

      # 语音全文识别片段。
      class AiRecognitionTaskAsrFullTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Text: 识别文本。
        # @type Text: String

        attr_accessor :Confidence, :StartTimeOffset, :EndTimeOffset, :Text
        
        def initialize(confidence=nil, starttimeoffset=nil, endtimeoffset=nil, text=nil)
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Text = text
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Text = params['Text']
        end
      end

      # 语音关键词识别结果。
      class AiRecognitionTaskAsrWordsResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 语音关键词识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskAsrWordsResultInput`
        # @param Output: 语音关键词识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskAsrWordsResultOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskAsrWordsResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskAsrWordsResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 语音关键词识别输入。
      class AiRecognitionTaskAsrWordsResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 语音关键词识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 语音关键词识别结果。
      class AiRecognitionTaskAsrWordsResultItem < TencentCloud::Common::AbstractModel
        # @param Word: 语音关键词。
        # @type Word: String
        # @param SegmentSet: 语音关键词出现的时间片段列表。
        # @type SegmentSet: Array

        attr_accessor :Word, :SegmentSet
        
        def initialize(word=nil, segmentset=nil)
          @Word = word
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Word = params['Word']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              airecognitiontaskasrwordssegmentitem_tmp = AiRecognitionTaskAsrWordsSegmentItem.new
              airecognitiontaskasrwordssegmentitem_tmp.deserialize(i)
              @SegmentSet << airecognitiontaskasrwordssegmentitem_tmp
            end
          end
        end
      end

      # 语音关键词识别输出。
      class AiRecognitionTaskAsrWordsResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 语音关键词识别结果集。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          unless params['ResultSet'].nil?
            @ResultSet = []
            params['ResultSet'].each do |i|
              airecognitiontaskasrwordsresultitem_tmp = AiRecognitionTaskAsrWordsResultItem.new
              airecognitiontaskasrwordsresultitem_tmp.deserialize(i)
              @ResultSet << airecognitiontaskasrwordsresultitem_tmp
            end
          end
        end
      end

      # 语音识别片段。
      class AiRecognitionTaskAsrWordsSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
        end
      end

      # 人脸识别结果。
      class AiRecognitionTaskFaceResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 人脸识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskFaceResultInput`
        # @param Output: 人脸识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskFaceResultOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskFaceResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskFaceResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 人脸识别输入。
      class AiRecognitionTaskFaceResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 人脸识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 人脸识别结果
      class AiRecognitionTaskFaceResultItem < TencentCloud::Common::AbstractModel
        # @param Id: 人物唯一标识 ID。
        # @type Id: String
        # @param Type: 人物库类型，表示识别出的人物来自哪个人物库：
        # <li>Default：默认人物库；</li>
        # <li>UserDefine：用户自定义人物库。</li>
        # @type Type: String
        # @param Name: 人物名称。
        # @type Name: String
        # @param SegmentSet: 人物出现的片段结果集。
        # @type SegmentSet: Array
        # @param Gender: 人物性别：
        # <li>Male：男性；</li>
        # <li>Female：女性。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gender: String
        # @param Birthday: 人物出生日期。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Birthday: String
        # @param Profession: 人物职业或者职务。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Profession: String
        # @param SchoolOfGraduation: 人物毕业院校。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchoolOfGraduation: String
        # @param Abstract: 人物简介。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Abstract: String
        # @param PlaceOfBirth: 人物出生地或者籍贯。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlaceOfBirth: String
        # @param PersonType: 人物类型：
        # <li>Politician：官员；</li>
        # <li>Artist：艺人。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonType: String
        # @param Remark: 敏感度标注：
        # <li>Normal：正常；</li>
        # <li>Sensitive：敏感。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Url: 截图链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :Id, :Type, :Name, :SegmentSet, :Gender, :Birthday, :Profession, :SchoolOfGraduation, :Abstract, :PlaceOfBirth, :PersonType, :Remark, :Url
        
        def initialize(id=nil, type=nil, name=nil, segmentset=nil, gender=nil, birthday=nil, profession=nil, schoolofgraduation=nil, abstract=nil, placeofbirth=nil, persontype=nil, remark=nil, url=nil)
          @Id = id
          @Type = type
          @Name = name
          @SegmentSet = segmentset
          @Gender = gender
          @Birthday = birthday
          @Profession = profession
          @SchoolOfGraduation = schoolofgraduation
          @Abstract = abstract
          @PlaceOfBirth = placeofbirth
          @PersonType = persontype
          @Remark = remark
          @Url = url
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              airecognitiontaskfacesegmentitem_tmp = AiRecognitionTaskFaceSegmentItem.new
              airecognitiontaskfacesegmentitem_tmp.deserialize(i)
              @SegmentSet << airecognitiontaskfacesegmentitem_tmp
            end
          end
          @Gender = params['Gender']
          @Birthday = params['Birthday']
          @Profession = params['Profession']
          @SchoolOfGraduation = params['SchoolOfGraduation']
          @Abstract = params['Abstract']
          @PlaceOfBirth = params['PlaceOfBirth']
          @PersonType = params['PersonType']
          @Remark = params['Remark']
          @Url = params['Url']
        end
      end

      # 智能人脸识别输出。
      class AiRecognitionTaskFaceResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 智能人脸识别结果集。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          unless params['ResultSet'].nil?
            @ResultSet = []
            params['ResultSet'].each do |i|
              airecognitiontaskfaceresultitem_tmp = AiRecognitionTaskFaceResultItem.new
              airecognitiontaskfaceresultitem_tmp.deserialize(i)
              @ResultSet << airecognitiontaskfaceresultitem_tmp
            end
          end
        end
      end

      # 人脸识别结果片段
      class AiRecognitionTaskFaceSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :AreaCoordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, areacoordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 视频内容识别输入参数类型
      class AiRecognitionTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能识别模板 ID 。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 文本全文识别结果。
      class AiRecognitionTaskOcrFullTextResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 文本全文识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskOcrFullTextResultInput`
        # @param Output: 文本全文识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskOcrFullTextResultOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskOcrFullTextResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskOcrFullTextResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 文本全文识别输入。
      class AiRecognitionTaskOcrFullTextResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 文本全文识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 文本全文识别输出。
      class AiRecognitionTaskOcrFullTextResultOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 文本全文识别结果集。
        # @type SegmentSet: Array

        attr_accessor :SegmentSet
        
        def initialize(segmentset=nil)
          @SegmentSet = segmentset
        end

        def deserialize(params)
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              airecognitiontaskocrfulltextsegmentitem_tmp = AiRecognitionTaskOcrFullTextSegmentItem.new
              airecognitiontaskocrfulltextsegmentitem_tmp.deserialize(i)
              @SegmentSet << airecognitiontaskocrfulltextsegmentitem_tmp
            end
          end
        end
      end

      # 文本全文识别片段。
      class AiRecognitionTaskOcrFullTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param TextSet: 识别片段结果集。
        # @type TextSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :TextSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, textset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @TextSet = textset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          unless params['TextSet'].nil?
            @TextSet = []
            params['TextSet'].each do |i|
              airecognitiontaskocrfulltextsegmenttextitem_tmp = AiRecognitionTaskOcrFullTextSegmentTextItem.new
              airecognitiontaskocrfulltextsegmenttextitem_tmp.deserialize(i)
              @TextSet << airecognitiontaskocrfulltextsegmenttextitem_tmp
            end
          end
        end
      end

      # 文本全文识别片段。
      class AiRecognitionTaskOcrFullTextSegmentTextItem < TencentCloud::Common::AbstractModel
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array
        # @param Text: 识别文本。
        # @type Text: String

        attr_accessor :Confidence, :AreaCoordSet, :Text
        
        def initialize(confidence=nil, areacoordset=nil, text=nil)
          @Confidence = confidence
          @AreaCoordSet = areacoordset
          @Text = text
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
          @Text = params['Text']
        end
      end

      # 文本关键识别结果。
      class AiRecognitionTaskOcrWordsResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 文本关键词识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskOcrWordsResultInput`
        # @param Output: 文本关键词识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskOcrWordsResultOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskOcrWordsResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskOcrWordsResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 文本关键词识别输入。
      class AiRecognitionTaskOcrWordsResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 文本关键词识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 文本关键词识别结果。
      class AiRecognitionTaskOcrWordsResultItem < TencentCloud::Common::AbstractModel
        # @param Word: 文本关键词。
        # @type Word: String
        # @param SegmentSet: 文本关键出现的片段列表。
        # @type SegmentSet: Array

        attr_accessor :Word, :SegmentSet
        
        def initialize(word=nil, segmentset=nil)
          @Word = word
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Word = params['Word']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              airecognitiontaskocrwordssegmentitem_tmp = AiRecognitionTaskOcrWordsSegmentItem.new
              airecognitiontaskocrwordssegmentitem_tmp.deserialize(i)
              @SegmentSet << airecognitiontaskocrwordssegmentitem_tmp
            end
          end
        end
      end

      # 文本关键词识别输出。
      class AiRecognitionTaskOcrWordsResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 文本关键词识别结果集。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          unless params['ResultSet'].nil?
            @ResultSet = []
            params['ResultSet'].each do |i|
              airecognitiontaskocrwordsresultitem_tmp = AiRecognitionTaskOcrWordsResultItem.new
              airecognitiontaskocrwordsresultitem_tmp.deserialize(i)
              @ResultSet << airecognitiontaskocrwordsresultitem_tmp
            end
          end
        end
      end

      # 文本识别片段。
      class AiRecognitionTaskOcrWordsSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :AreaCoordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, areacoordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 内容审核 Asr 文字敏感任务输入参数类型
      class AiReviewPoliticalAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字敏感信息
      class AiReviewPoliticalAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字敏感评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字敏感结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字敏感嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewasrtextsegmentitem_tmp = MediaContentReviewAsrTextSegmentItem.new
              mediacontentreviewasrtextsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewasrtextsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核 Ocr 文字敏感任务输入参数类型
      class AiReviewPoliticalOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字敏感信息
      class AiReviewPoliticalOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字敏感评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字敏感结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有敏感嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewocrtextsegmentitem_tmp = MediaContentReviewOcrTextSegmentItem.new
              mediacontentreviewocrtextsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewocrtextsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核敏感任务输入参数类型
      class AiReviewPoliticalTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 涉敏信息
      class AiReviewPoliticalTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频涉敏评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 涉敏结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频涉敏结果标签。内容审核模板[画面涉敏任务控制参数](https://cloud.tencent.com/document/api/862/37615#AiReviewPoliticalTaskOutput)里 LabelSet 参数与此参数取值范围的对应关系：
        # violation_photo：
        # <li>violation_photo：违规图标。</li>
        # 其他（即 politician/entertainment/sport/entrepreneur/scholar/celebrity/military）：
        # <li>politician：涉敏人物。</li>
        # @type Label: String
        # @param SegmentSet: 有涉敏嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewpoliticalsegmentitem_tmp = MediaContentReviewPoliticalSegmentItem.new
              mediacontentreviewpoliticalsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewpoliticalsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核 Asr 文字鉴黄任务输入参数类型
      class AiReviewPornAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴黄模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字涉黄信息
      class AiReviewPornAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字涉黄评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉黄嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewasrtextsegmentitem_tmp = MediaContentReviewAsrTextSegmentItem.new
              mediacontentreviewasrtextsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewasrtextsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核 Ocr 文字鉴黄任务输入参数类型
      class AiReviewPornOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴黄模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉黄信息
      class AiReviewPornOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉黄评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉黄嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewocrtextsegmentitem_tmp = MediaContentReviewOcrTextSegmentItem.new
              mediacontentreviewocrtextsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewocrtextsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核鉴黄任务输入参数类型
      class AiReviewPornTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴黄模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 鉴黄结果信息
      class AiReviewPornTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频鉴黄评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 鉴黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频鉴黄结果标签，取值范围：
        # <li>porn：色情。</li>
        # <li>sexy：性感。</li>
        # <li>vulgar：低俗。</li>
        # <li>intimacy：亲密行为。</li>
        # @type Label: String
        # @param SegmentSet: 有涉黄嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewsegmentitem_tmp = MediaContentReviewSegmentItem.new
              mediacontentreviewsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核 Asr 文字鉴违禁任务输入参数类型
      class AiReviewProhibitedAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴违禁模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字涉违禁信息
      class AiReviewProhibitedAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字涉违禁评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉违禁结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉违禁嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewasrtextsegmentitem_tmp = MediaContentReviewAsrTextSegmentItem.new
              mediacontentreviewasrtextsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewasrtextsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核 Ocr 文字鉴违禁任务输入参数类型
      class AiReviewProhibitedOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴违禁模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉违禁信息
      class AiReviewProhibitedOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉违禁评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉违禁结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉违禁嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewocrtextsegmentitem_tmp = MediaContentReviewOcrTextSegmentItem.new
              mediacontentreviewocrtextsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewocrtextsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核 Asr 文字敏感任务结果类型
      class AiReviewTaskPoliticalAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Asr 文字敏感任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPoliticalAsrTaskInput`
        # @param Output: 内容审核 Asr 文字敏感任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPoliticalAsrTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPoliticalAsrTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewPoliticalAsrTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核 Ocr 文字敏感任务结果类型
      class AiReviewTaskPoliticalOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS，FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字敏感任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPoliticalOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字敏感任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPoliticalOcrTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPoliticalOcrTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewPoliticalOcrTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核涉敏任务结果类型
      class AiReviewTaskPoliticalResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核涉敏任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPoliticalTaskInput`
        # @param Output: 内容审核涉敏任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPoliticalTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPoliticalTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewPoliticalTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核 Asr 文字鉴黄任务结果类型
      class AiReviewTaskPornAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Asr 文字鉴黄任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPornAsrTaskInput`
        # @param Output: 内容审核 Asr 文字鉴黄任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPornAsrTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPornAsrTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewPornAsrTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核 Ocr 文字鉴黄任务结果类型
      class AiReviewTaskPornOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字鉴黄任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPornOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字鉴黄任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPornOcrTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPornOcrTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewPornOcrTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核鉴黄任务结果类型
      class AiReviewTaskPornResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核鉴黄任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPornTaskInput`
        # @param Output: 内容审核鉴黄任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewPornTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPornTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewPornTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核 Asr 文字鉴任违禁务结果类型
      class AiReviewTaskProhibitedAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Asr 文字鉴违禁任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewProhibitedAsrTaskInput`
        # @param Output: 内容审核 Asr 文字鉴违禁任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewProhibitedAsrTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewProhibitedAsrTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewProhibitedAsrTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核 Ocr 文字鉴任违禁务结果类型
      class AiReviewTaskProhibitedOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字鉴违禁任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewProhibitedOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字鉴违禁任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewProhibitedOcrTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewProhibitedOcrTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewProhibitedOcrTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核 Ocr 文字敏感任务结果类型
      class AiReviewTaskTerrorismOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字敏感任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTerrorismOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字敏感任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTerrorismOcrTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewTerrorismOcrTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewTerrorismOcrTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核涉敏任务结果类型
      class AiReviewTaskTerrorismResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核涉敏任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTerrorismTaskInput`
        # @param Output: 内容审核涉敏任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AiReviewTerrorismTaskOutput`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewTerrorismTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiReviewTerrorismTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 内容审核 Ocr 文字敏感任务输入参数类型
      class AiReviewTerrorismOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉敏信息
      class AiReviewTerrorismOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉敏评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉敏结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉敏嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewocrtextsegmentitem_tmp = MediaContentReviewOcrTextSegmentItem.new
              mediacontentreviewocrtextsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewocrtextsegmentitem_tmp
            end
          end
        end
      end

      # 内容审核涉敏任务输入参数类型
      class AiReviewTerrorismTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 涉敏信息
      class AiReviewTerrorismTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频涉敏评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 涉敏结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频涉敏结果标签，取值范围：
        # <li>guns：武器枪支。</li>
        # <li>crowd：人群聚集。</li>
        # <li>police：警察部队。</li>
        # <li>bloody：血腥画面。</li>
        # <li>banners：涉敏旗帜。</li>
        # <li>militant：武装分子。</li>
        # <li>explosion：爆炸火灾。</li>
        # <li>terrorists：涉敏人物。</li>
        # <li>scenario：涉敏画面。</li>
        # @type Label: String
        # @param SegmentSet: 有涉敏嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              mediacontentreviewsegmentitem_tmp = MediaContentReviewSegmentItem.new
              mediacontentreviewsegmentitem_tmp.deserialize(i)
              @SegmentSet << mediacontentreviewsegmentitem_tmp
            end
          end
        end
      end

      # AI 样本管理，人脸信息。
      class AiSampleFaceInfo < TencentCloud::Common::AbstractModel
        # @param FaceId: 人脸图片 ID。
        # @type FaceId: String
        # @param Url: 人脸图片地址。
        # @type Url: String

        attr_accessor :FaceId, :Url
        
        def initialize(faceid=nil, url=nil)
          @FaceId = faceid
          @Url = url
        end

        def deserialize(params)
          @FaceId = params['FaceId']
          @Url = params['Url']
        end
      end

      # AI 样本管理，人脸数据操作。
      class AiSampleFaceOperation < TencentCloud::Common::AbstractModel
        # @param Type: 操作类型，可选值：add（添加）、delete（删除）、reset（重置）。重置操作将清空该人物已有人脸数据，并添加 FaceContents 指定人脸数据。
        # @type Type: String
        # @param FaceIds: 人脸 ID 集合，当 Type为delete 时，该字段必填。
        # @type FaceIds: Array
        # @param FaceContents: 人脸图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串集合。
        # <li>当 Type为add 或 reset 时，该字段必填；</li>
        # <li>数组长度限制：5 张图片。</li>
        # 注意：图片必须是单人像正面人脸较清晰的照片，像素不低于 200*200。
        # @type FaceContents: Array

        attr_accessor :Type, :FaceIds, :FaceContents
        
        def initialize(type=nil, faceids=nil, facecontents=nil)
          @Type = type
          @FaceIds = faceids
          @FaceContents = facecontents
        end

        def deserialize(params)
          @Type = params['Type']
          @FaceIds = params['FaceIds']
          @FaceContents = params['FaceContents']
        end
      end

      # AI 样本管理，处理失败的人脸信息
      class AiSampleFailFaceInfo < TencentCloud::Common::AbstractModel
        # @param Index: 对应入参 FaceContents 中错误图片下标，从 0 开始。
        # @type Index: Integer
        # @param ErrCode: 错误码，取值：
        # <li>0：成功；</li>
        # <li>其他：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误描述。
        # @type Message: String

        attr_accessor :Index, :ErrCode, :Message
        
        def initialize(index=nil, errcode=nil, message=nil)
          @Index = index
          @ErrCode = errcode
          @Message = message
        end

        def deserialize(params)
          @Index = params['Index']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
        end
      end

      # AI 样本管理，人物信息。
      class AiSamplePerson < TencentCloud::Common::AbstractModel
        # @param PersonId: 人物 ID。
        # @type PersonId: String
        # @param Name: 人物名称。
        # @type Name: String
        # @param Description: 人物描述。
        # @type Description: String
        # @param FaceInfoSet: 人脸信息。
        # @type FaceInfoSet: Array
        # @param TagSet: 人物标签。
        # @type TagSet: Array
        # @param UsageSet: 应用场景。
        # @type UsageSet: Array
        # @param CreateTime: 创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String

        attr_accessor :PersonId, :Name, :Description, :FaceInfoSet, :TagSet, :UsageSet, :CreateTime, :UpdateTime
        
        def initialize(personid=nil, name=nil, description=nil, faceinfoset=nil, tagset=nil, usageset=nil, createtime=nil, updatetime=nil)
          @PersonId = personid
          @Name = name
          @Description = description
          @FaceInfoSet = faceinfoset
          @TagSet = tagset
          @UsageSet = usageset
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['FaceInfoSet'].nil?
            @FaceInfoSet = []
            params['FaceInfoSet'].each do |i|
              aisamplefaceinfo_tmp = AiSampleFaceInfo.new
              aisamplefaceinfo_tmp.deserialize(i)
              @FaceInfoSet << aisamplefaceinfo_tmp
            end
          end
          @TagSet = params['TagSet']
          @UsageSet = params['UsageSet']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # AI 样本管理，标签操作。
      class AiSampleTagOperation < TencentCloud::Common::AbstractModel
        # @param Type: 操作类型，可选值：add（添加）、delete（删除）、reset（重置）。
        # @type Type: String
        # @param Tags: 标签，长度限制：128 个字符。
        # @type Tags: Array

        attr_accessor :Type, :Tags
        
        def initialize(type=nil, tags=nil)
          @Type = type
          @Tags = tags
        end

        def deserialize(params)
          @Type = params['Type']
          @Tags = params['Tags']
        end
      end

      # AI 样本管理，关键词输出信息。
      class AiSampleWord < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键词。
        # @type Keyword: String
        # @param TagSet: 关键词标签。
        # @type TagSet: Array
        # @param UsageSet: 关键词应用场景。
        # @type UsageSet: Array
        # @param CreateTime: 创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String

        attr_accessor :Keyword, :TagSet, :UsageSet, :CreateTime, :UpdateTime
        
        def initialize(keyword=nil, tagset=nil, usageset=nil, createtime=nil, updatetime=nil)
          @Keyword = keyword
          @TagSet = tagset
          @UsageSet = usageset
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @TagSet = params['TagSet']
          @UsageSet = params['UsageSet']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # AI 样本管理，关键词输入信息。
      class AiSampleWordInfo < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键词，长度限制：20 个字符。
        # @type Keyword: String
        # @param Tags: 关键词标签
        # <li>数组长度限制：20 个标签；</li>
        # <li>单个标签长度限制：128 个字符。</li>
        # @type Tags: Array

        attr_accessor :Keyword, :Tags
        
        def initialize(keyword=nil, tags=nil)
          @Keyword = keyword
          @Tags = tags
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @Tags = params['Tags']
        end
      end

      # 转动图任务类型。
      class AnimatedGraphicTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频转动图模板 ID。
        # @type Definition: Integer
        # @param StartTimeOffset: 动图在视频中的开始时间，单位为秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 动图在视频中的结束时间，单位为秒。
        # @type EndTimeOffset: Float
        # @param OutputStorage: 转动图后文件的目标存储，不填则继承上层的 OutputStorage 值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputObjectPath: 转动图后文件的输出路径，可以为相对路径或者绝对路径。如果不填，则默认为相对路径：`{inputName}_animatedGraphic_{definition}.{format}`。
        # @type OutputObjectPath: String

        attr_accessor :Definition, :StartTimeOffset, :EndTimeOffset, :OutputStorage, :OutputObjectPath
        
        def initialize(definition=nil, starttimeoffset=nil, endtimeoffset=nil, outputstorage=nil, outputobjectpath=nil)
          @Definition = definition
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @OutputStorage = outputstorage
          @OutputObjectPath = outputobjectpath
        end

        def deserialize(params)
          @Definition = params['Definition']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputObjectPath = params['OutputObjectPath']
        end
      end

      # 转动图模板详情。
      class AnimatedGraphicsTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 转动图模板名称。
        # @type Name: String
        # @param Comment: 转动图模板描述。
        # @type Comment: String
        # @param Width: 动图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 动图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 动图格式。
        # @type Format: String
        # @param Fps: 帧率。
        # @type Fps: Integer
        # @param Quality: 图片质量。
        # @type Quality: Float
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Width, :Height, :ResolutionAdaptive, :Format, :Fps, :Quality, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, fps=nil, quality=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Fps = fps
          @Quality = quality
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Fps = params['Fps']
          @Quality = params['Quality']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 去伪影（毛刺）配置
      class ArtifactRepairConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Type: 类型，可选值：
        # <li>weak</li>
        # <li>strong</li>
        # 默认值：weak。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Switch, :Type
        
        def initialize(switch=nil, type=nil)
          @Switch = switch
          @Type = type
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Type = params['Type']
        end
      end

      # 语音全文识别任务控制参数
      class AsrFullTextConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音全文识别任务开关，可选值：
        # <li>ON：开启智能语音全文识别任务；</li>
        # <li>OFF：关闭智能语音全文识别任务。</li>
        # @type Switch: String
        # @param SubtitleFormat: 生成的字幕文件格式，不填或者填空字符串表示不生成字幕文件，可选值：
        # <li>vtt：生成 WebVTT 字幕文件。</li>
        # @type SubtitleFormat: String

        attr_accessor :Switch, :SubtitleFormat
        
        def initialize(switch=nil, subtitleformat=nil)
          @Switch = switch
          @SubtitleFormat = subtitleformat
        end

        def deserialize(params)
          @Switch = params['Switch']
          @SubtitleFormat = params['SubtitleFormat']
        end
      end

      # 语音全文识别任务控制参数
      class AsrFullTextConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音全文识别任务开关，可选值：
        # <li>ON：开启智能语音全文识别任务；</li>
        # <li>OFF：关闭智能语音全文识别任务。</li>
        # @type Switch: String
        # @param SubtitleFormat: 生成的字幕文件格式，填空字符串表示不生成字幕文件，可选值：
        # <li>vtt：生成 WebVTT 字幕文件。</li>
        # @type SubtitleFormat: String

        attr_accessor :Switch, :SubtitleFormat
        
        def initialize(switch=nil, subtitleformat=nil)
          @Switch = switch
          @SubtitleFormat = subtitleformat
        end

        def deserialize(params)
          @Switch = params['Switch']
          @SubtitleFormat = params['SubtitleFormat']
        end
      end

      # 语音关键词识别控制参数。
      class AsrWordsConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音关键词识别任务开关，可选值：
        # <li>ON：开启语音关键词识别任务；</li>
        # <li>OFF：关闭语音关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 语音关键词识别控制参数。
      class AsrWordsConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音关键词识别任务开关，可选值：
        # <li>ON：开启语音关键词识别任务；</li>
        # <li>OFF：关闭语音关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 音频流配置参数
      class AudioTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Codec: 音频流的编码格式。
        # 当外层参数 Container 为 mp3 时，可选值为：
        # <li>libmp3lame。</li>
        # 当外层参数 Container 为 ogg 或 flac 时，可选值为：
        # <li>flac。</li>
        # 当外层参数 Container 为 m4a 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame；</li>
        # <li>ac3。</li>
        # 当外层参数 Container 为 mp4 或 flv 时，可选值为：
        # <li>libfdk_aac：更适合 mp4；</li>
        # <li>libmp3lame：更适合 flv。</li>
        # 当外层参数 Container 为 hls 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame。</li>
        # @type Codec: String
        # @param Bitrate: 音频流的码率，取值范围：0 和 [26, 256]，单位：kbps。
        # 当取值为 0，表示音频码率和原始音频保持一致。
        # @type Bitrate: Integer
        # @param SampleRate: 音频流的采样率，可选值：
        # <li>32000</li>
        # <li>44100</li>
        # <li>48000</li>
        # 单位：Hz。
        # @type SampleRate: Integer
        # @param AudioChannel: 音频通道方式，可选值：
        # <li>1：单通道</li>
        # <li>2：双通道</li>
        # <li>6：立体声</li>
        # 当媒体的封装格式是音频格式时（flac，ogg，mp3，m4a）时，声道数不允许设为立体声。
        # 默认值：2。
        # @type AudioChannel: Integer

        attr_accessor :Codec, :Bitrate, :SampleRate, :AudioChannel
        
        def initialize(codec=nil, bitrate=nil, samplerate=nil, audiochannel=nil)
          @Codec = codec
          @Bitrate = bitrate
          @SampleRate = samplerate
          @AudioChannel = audiochannel
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Bitrate = params['Bitrate']
          @SampleRate = params['SampleRate']
          @AudioChannel = params['AudioChannel']
        end
      end

      # 音频流配置参数
      class AudioTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Codec: 音频流的编码格式。
        # 当外层参数 Container 为 mp3 时，可选值为：
        # <li>libmp3lame。</li>
        # 当外层参数 Container 为 ogg 或 flac 时，可选值为：
        # <li>flac。</li>
        # 当外层参数 Container 为 m4a 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame；</li>
        # <li>ac3。</li>
        # 当外层参数 Container 为 mp4 或 flv 时，可选值为：
        # <li>libfdk_aac：更适合 mp4；</li>
        # <li>libmp3lame：更适合 flv；</li>
        # <li>mp2。</li>
        # 当外层参数 Container 为 hls 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame。</li>
        # @type Codec: String
        # @param Bitrate: 音频流的码率，取值范围：0 和 [26, 256]，单位：kbps。 当取值为 0，表示音频码率和原始音频保持一致。
        # @type Bitrate: Integer
        # @param SampleRate: 音频流的采样率，可选值：
        # <li>32000</li>
        # <li>44100</li>
        # <li>48000</li>
        # 单位：Hz。
        # @type SampleRate: Integer
        # @param AudioChannel: 音频通道方式，可选值：
        # <li>1：单通道</li>
        # <li>2：双通道</li>
        # <li>6：立体声</li>
        # 当媒体的封装格式是音频格式时（flac，ogg，mp3，m4a）时，声道数不允许设为立体声。
        # @type AudioChannel: Integer

        attr_accessor :Codec, :Bitrate, :SampleRate, :AudioChannel
        
        def initialize(codec=nil, bitrate=nil, samplerate=nil, audiochannel=nil)
          @Codec = codec
          @Bitrate = bitrate
          @SampleRate = samplerate
          @AudioChannel = audiochannel
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Bitrate = params['Bitrate']
          @SampleRate = params['SampleRate']
          @AudioChannel = params['AudioChannel']
        end
      end

      # 智能分类任务控制参数
      class ClassificationConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能分类任务开关，可选值：
        # <li>ON：开启智能分类任务；</li>
        # <li>OFF：关闭智能分类任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能分类任务控制参数
      class ClassificationConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能分类任务开关，可选值：
        # <li>ON：开启智能分类任务；</li>
        # <li>OFF：关闭智能分类任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 色彩增强配置
      class ColorEnhanceConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Type: 类型，可选值：
        # <li>weak</li>
        # <li>normal</li>
        # <li>strong</li>
        # 默认值：weak。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Switch, :Type
        
        def initialize(switch=nil, type=nil)
          @Switch = switch
          @Type = type
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Type = params['Type']
        end
      end

      # 内容审核模板详情
      class ContentReviewTemplateItem < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 鉴黄控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornConfigure: :class:`Tencentcloud::Mps.v20190612.models.PornConfigureInfo`
        # @param TerrorismConfigure: 涉敏控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismConfigure: :class:`Tencentcloud::Mps.v20190612.models.TerrorismConfigureInfo`
        # @param PoliticalConfigure: 涉敏控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalConfigure: :class:`Tencentcloud::Mps.v20190612.models.PoliticalConfigureInfo`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedConfigure: :class:`Tencentcloud::Mps.v20190612.models.ProhibitedConfigureInfo`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefineConfigure: :class:`Tencentcloud::Mps.v20190612.models.UserDefineConfigureInfo`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param Type: 模板类型，取值范围：
        # * Preset：系统预置模板；
        # * Custom：用户自定义模板。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Definition, :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure, :CreateTime, :UpdateTime, :Type
        
        def initialize(definition=nil, name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil, createtime=nil, updatetime=nil, type=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Type = type
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['PornConfigure'].nil?
            @PornConfigure = PornConfigureInfo.new
            @PornConfigure.deserialize(params['PornConfigure'])
          end
          unless params['TerrorismConfigure'].nil?
            @TerrorismConfigure = TerrorismConfigureInfo.new
            @TerrorismConfigure.deserialize(params['TerrorismConfigure'])
          end
          unless params['PoliticalConfigure'].nil?
            @PoliticalConfigure = PoliticalConfigureInfo.new
            @PoliticalConfigure.deserialize(params['PoliticalConfigure'])
          end
          unless params['ProhibitedConfigure'].nil?
            @ProhibitedConfigure = ProhibitedConfigureInfo.new
            @ProhibitedConfigure.deserialize(params['ProhibitedConfigure'])
          end
          unless params['UserDefineConfigure'].nil?
            @UserDefineConfigure = UserDefineConfigureInfo.new
            @UserDefineConfigure.deserialize(params['UserDefineConfigure'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Type = params['Type']
        end
      end

      # 绑定到 COS 的输入规则。
      class CosFileUploadTrigger < TencentCloud::Common::AbstractModel
        # @param Bucket: 工作流绑定的 COS Bucket 名，如 TopRankVideo-125xxx88。
        # @type Bucket: String
        # @param Region: 工作流绑定的 COS Bucket 所属园区，如 ap-chongiqng。
        # @type Region: String
        # @param Dir: 工作流绑定的输入路径目录，必须为绝对路径，即以 `/` 开头和结尾。如`/movie/201907/`，不填代表根目录`/`。
        # @type Dir: String
        # @param Formats: 工作流允许触发的文件格式列表，如 ["mp4", "flv", "mov"]。不填代表所有格式的文件都可以触发工作流。
        # @type Formats: Array

        attr_accessor :Bucket, :Region, :Dir, :Formats
        
        def initialize(bucket=nil, region=nil, dir=nil, formats=nil)
          @Bucket = bucket
          @Region = region
          @Dir = dir
          @Formats = formats
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Dir = params['Dir']
          @Formats = params['Formats']
        end
      end

      # 媒体处理 COS 对象信息。
      class CosInputInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: 媒体处理对象文件所在的 COS Bucket 名，如 TopRankVideo-125xxx88。
        # @type Bucket: String
        # @param Region: 媒体处理对象文件所在的 COS Bucket 所属园区，如 ap-chongqing。
        # @type Region: String
        # @param Object: 媒体处理对象文件的输入路径，如`/movie/201907/WildAnimal.mov`。
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

      # 媒体处理 COS 输出对象信息。
      class CosOutputStorage < TencentCloud::Common::AbstractModel
        # @param Bucket: 媒体处理生成的文件输出的目标 Bucket 名，如 TopRankVideo-125xxx88。如果不填，表示继承上层。
        # @type Bucket: String
        # @param Region: 媒体处理生成的文件输出的目标 Bucket 的园区，如 ap-chongqing。如果不填，表示继承上层。
        # @type Region: String

        attr_accessor :Bucket, :Region
        
        def initialize(bucket=nil, region=nil)
          @Bucket = bucket
          @Region = region
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
        end
      end

      # 智能封面任务控制参数
      class CoverConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能封面任务开关，可选值：
        # <li>ON：开启智能封面任务；</li>
        # <li>OFF：关闭智能封面任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能封面任务控制参数
      class CoverConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能封面任务开关，可选值：
        # <li>ON：开启智能封面任务；</li>
        # <li>OFF：关闭智能封面任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # CreateAIAnalysisTemplate请求参数结构体
      class CreateAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 视频内容分析模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容分析模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # @type ClassificationConfigure: :class:`Tencentcloud::Mps.v20190612.models.ClassificationConfigureInfo`
        # @param TagConfigure: 智能标签任务控制参数。
        # @type TagConfigure: :class:`Tencentcloud::Mps.v20190612.models.TagConfigureInfo`
        # @param CoverConfigure: 智能封面任务控制参数。
        # @type CoverConfigure: :class:`Tencentcloud::Mps.v20190612.models.CoverConfigureInfo`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # @type FrameTagConfigure: :class:`Tencentcloud::Mps.v20190612.models.FrameTagConfigureInfo`

        attr_accessor :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure
        
        def initialize(name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil)
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['ClassificationConfigure'].nil?
            @ClassificationConfigure = ClassificationConfigureInfo.new
            @ClassificationConfigure.deserialize(params['ClassificationConfigure'])
          end
          unless params['TagConfigure'].nil?
            @TagConfigure = TagConfigureInfo.new
            @TagConfigure.deserialize(params['TagConfigure'])
          end
          unless params['CoverConfigure'].nil?
            @CoverConfigure = CoverConfigureInfo.new
            @CoverConfigure.deserialize(params['CoverConfigure'])
          end
          unless params['FrameTagConfigure'].nil?
            @FrameTagConfigure = FrameTagConfigureInfo.new
            @FrameTagConfigure.deserialize(params['FrameTagConfigure'])
          end
        end
      end

      # CreateAIAnalysisTemplate返回参数结构体
      class CreateAIAnalysisTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateAIRecognitionTemplate请求参数结构体
      class CreateAIRecognitionTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 视频内容识别模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容识别模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FaceConfigure: 人脸识别控制参数。
        # @type FaceConfigure: :class:`Tencentcloud::Mps.v20190612.models.FaceConfigureInfo`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Mps.v20190612.models.OcrFullTextConfigureInfo`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Mps.v20190612.models.OcrWordsConfigureInfo`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Mps.v20190612.models.AsrFullTextConfigureInfo`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Mps.v20190612.models.AsrWordsConfigureInfo`

        attr_accessor :Name, :Comment, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure
        
        def initialize(name=nil, comment=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil)
          @Name = name
          @Comment = comment
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['FaceConfigure'].nil?
            @FaceConfigure = FaceConfigureInfo.new
            @FaceConfigure.deserialize(params['FaceConfigure'])
          end
          unless params['OcrFullTextConfigure'].nil?
            @OcrFullTextConfigure = OcrFullTextConfigureInfo.new
            @OcrFullTextConfigure.deserialize(params['OcrFullTextConfigure'])
          end
          unless params['OcrWordsConfigure'].nil?
            @OcrWordsConfigure = OcrWordsConfigureInfo.new
            @OcrWordsConfigure.deserialize(params['OcrWordsConfigure'])
          end
          unless params['AsrFullTextConfigure'].nil?
            @AsrFullTextConfigure = AsrFullTextConfigureInfo.new
            @AsrFullTextConfigure.deserialize(params['AsrFullTextConfigure'])
          end
          unless params['AsrWordsConfigure'].nil?
            @AsrWordsConfigure = AsrWordsConfigureInfo.new
            @AsrWordsConfigure.deserialize(params['AsrWordsConfigure'])
          end
        end
      end

      # CreateAIRecognitionTemplate返回参数结构体
      class CreateAIRecognitionTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateAdaptiveDynamicStreamingTemplate请求参数结构体
      class CreateAdaptiveDynamicStreamingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Format: 自适应转码格式，取值范围：
        # <li>HLS，</li>
        # <li>MPEG-DASH。</li>
        # @type Format: String
        # @param StreamInfos: 转自适应码流输出子流参数信息，最多输出10路子流。
        # 注意：各个子流的帧率必须保持一致；如果不一致，采用第一个子流的帧率作为输出帧率。
        # @type StreamInfos: Array
        # @param Name: 模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param DisableHigherVideoBitrate: 是否禁止视频低码率转高码率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # 默认为否。
        # @type DisableHigherVideoBitrate: Integer
        # @param DisableHigherVideoResolution: 是否禁止视频分辨率转高分辨率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # 默认为否。
        # @type DisableHigherVideoResolution: Integer
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Format, :StreamInfos, :Name, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :Comment
        
        def initialize(format=nil, streaminfos=nil, name=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, comment=nil)
          @Format = format
          @StreamInfos = streaminfos
          @Name = name
          @DisableHigherVideoBitrate = disablehighervideobitrate
          @DisableHigherVideoResolution = disablehighervideoresolution
          @Comment = comment
        end

        def deserialize(params)
          @Format = params['Format']
          unless params['StreamInfos'].nil?
            @StreamInfos = []
            params['StreamInfos'].each do |i|
              adaptivestreamtemplate_tmp = AdaptiveStreamTemplate.new
              adaptivestreamtemplate_tmp.deserialize(i)
              @StreamInfos << adaptivestreamtemplate_tmp
            end
          end
          @Name = params['Name']
          @DisableHigherVideoBitrate = params['DisableHigherVideoBitrate']
          @DisableHigherVideoResolution = params['DisableHigherVideoResolution']
          @Comment = params['Comment']
        end
      end

      # CreateAdaptiveDynamicStreamingTemplate返回参数结构体
      class CreateAdaptiveDynamicStreamingTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 自适应转码模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateAnimatedGraphicsTemplate请求参数结构体
      class CreateAnimatedGraphicsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Fps: 帧率，取值范围：[1, 30]，单位：Hz。
        # @type Fps: Integer
        # @param Width: 动图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 动图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 动图格式，取值为 gif 和 webp。默认为 gif。
        # @type Format: String
        # @param Quality: 图片质量，取值范围：[1, 100]，默认值为 75。
        # @type Quality: Float
        # @param Name: 转动图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Fps, :Width, :Height, :ResolutionAdaptive, :Format, :Quality, :Name, :Comment
        
        def initialize(fps=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, quality=nil, name=nil, comment=nil)
          @Fps = fps
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Quality = quality
          @Name = name
          @Comment = comment
        end

        def deserialize(params)
          @Fps = params['Fps']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Quality = params['Quality']
          @Name = params['Name']
          @Comment = params['Comment']
        end
      end

      # CreateAnimatedGraphicsTemplate返回参数结构体
      class CreateAnimatedGraphicsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateContentReviewTemplate请求参数结构体
      class CreateContentReviewTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 令人反感的信息的控制参数。
        # @type PornConfigure: :class:`Tencentcloud::Mps.v20190612.models.PornConfigureInfo`
        # @param TerrorismConfigure: 令人不安全的信息的控制参数。
        # @type TerrorismConfigure: :class:`Tencentcloud::Mps.v20190612.models.TerrorismConfigureInfo`
        # @param PoliticalConfigure: 令人不适宜的信息的控制参数。
        # @type PoliticalConfigure: :class:`Tencentcloud::Mps.v20190612.models.PoliticalConfigureInfo`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # 注意：此参数尚未支持。
        # @type ProhibitedConfigure: :class:`Tencentcloud::Mps.v20190612.models.ProhibitedConfigureInfo`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # @type UserDefineConfigure: :class:`Tencentcloud::Mps.v20190612.models.UserDefineConfigureInfo`

        attr_accessor :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure
        
        def initialize(name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil)
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['PornConfigure'].nil?
            @PornConfigure = PornConfigureInfo.new
            @PornConfigure.deserialize(params['PornConfigure'])
          end
          unless params['TerrorismConfigure'].nil?
            @TerrorismConfigure = TerrorismConfigureInfo.new
            @TerrorismConfigure.deserialize(params['TerrorismConfigure'])
          end
          unless params['PoliticalConfigure'].nil?
            @PoliticalConfigure = PoliticalConfigureInfo.new
            @PoliticalConfigure.deserialize(params['PoliticalConfigure'])
          end
          unless params['ProhibitedConfigure'].nil?
            @ProhibitedConfigure = ProhibitedConfigureInfo.new
            @ProhibitedConfigure.deserialize(params['ProhibitedConfigure'])
          end
          unless params['UserDefineConfigure'].nil?
            @UserDefineConfigure = UserDefineConfigureInfo.new
            @UserDefineConfigure.deserialize(params['UserDefineConfigure'])
          end
        end
      end

      # CreateContentReviewTemplate返回参数结构体
      class CreateContentReviewTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateImageSpriteTemplate请求参数结构体
      class CreateImageSpriteTemplateRequest < TencentCloud::Common::AbstractModel
        # @param SampleType: 采样类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param RowCount: 雪碧图中小图的行数。
        # @type RowCount: Integer
        # @param ColumnCount: 雪碧图中小图的列数。
        # @type ColumnCount: Integer
        # @param Name: 雪碧图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 雪碧图中小图的宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 雪碧图中小图的高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :SampleType, :SampleInterval, :RowCount, :ColumnCount, :Name, :Width, :Height, :ResolutionAdaptive, :FillType, :Comment
        
        def initialize(sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, filltype=nil, comment=nil)
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @RowCount = rowcount
          @ColumnCount = columncount
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @FillType = filltype
          @Comment = comment
        end

        def deserialize(params)
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @FillType = params['FillType']
          @Comment = params['Comment']
        end
      end

      # CreateImageSpriteTemplate返回参数结构体
      class CreateImageSpriteTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreatePersonSample请求参数结构体
      class CreatePersonSampleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 素材名称，长度限制：20 个字符。
        # @type Name: String
        # @param Usages: 素材应用场景，可选值：
        # 1. Recognition：用于内容识别，等价于 Recognition.Face。
        # 2. Review：用于不适宜内容识别，等价于 Review.Face。
        # 3. All：包含以上全部，等价于 1+2。
        # @type Usages: Array
        # @param Description: 素材描述，长度限制：1024 个字符。
        # @type Description: String
        # @param FaceContents: 素材图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串，仅支持 jpeg、png 图片格式。数组长度限制：5 张图片。
        # 注意：图片必须是单人像五官较清晰的照片，像素不低于 200*200。
        # @type FaceContents: Array
        # @param Tags: 素材标签
        # <li>数组长度限制：20 个标签；</li>
        # <li>单个标签长度限制：128 个字符。</li>
        # @type Tags: Array

        attr_accessor :Name, :Usages, :Description, :FaceContents, :Tags
        
        def initialize(name=nil, usages=nil, description=nil, facecontents=nil, tags=nil)
          @Name = name
          @Usages = usages
          @Description = description
          @FaceContents = facecontents
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Usages = params['Usages']
          @Description = params['Description']
          @FaceContents = params['FaceContents']
          @Tags = params['Tags']
        end
      end

      # CreatePersonSample返回参数结构体
      class CreatePersonSampleResponse < TencentCloud::Common::AbstractModel
        # @param Person: 素材信息。
        # @type Person: :class:`Tencentcloud::Mps.v20190612.models.AiSamplePerson`
        # @param FailFaceInfoSet: 处理失败的五官定位信息。
        # @type FailFaceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Person, :FailFaceInfoSet, :RequestId
        
        def initialize(person=nil, failfaceinfoset=nil, requestid=nil)
          @Person = person
          @FailFaceInfoSet = failfaceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Person'].nil?
            @Person = AiSamplePerson.new
            @Person.deserialize(params['Person'])
          end
          unless params['FailFaceInfoSet'].nil?
            @FailFaceInfoSet = []
            params['FailFaceInfoSet'].each do |i|
              aisamplefailfaceinfo_tmp = AiSampleFailFaceInfo.new
              aisamplefailfaceinfo_tmp.deserialize(i)
              @FailFaceInfoSet << aisamplefailfaceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSampleSnapshotTemplate请求参数结构体
      class CreateSampleSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param SampleType: 采样截图类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param Name: 采样截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式，取值为 jpg 和 png。默认为 jpg。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :SampleType, :SampleInterval, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :FillType
        
        def initialize(sampletype=nil, sampleinterval=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, filltype=nil)
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Comment = comment
          @FillType = filltype
        end

        def deserialize(params)
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Comment = params['Comment']
          @FillType = params['FillType']
        end
      end

      # CreateSampleSnapshotTemplate返回参数结构体
      class CreateSampleSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateSnapshotByTimeOffsetTemplate请求参数结构体
      class CreateSnapshotByTimeOffsetTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 指定时间点截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式，取值可以为 jpg 和 png。默认为 jpg。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :FillType
        
        def initialize(name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, filltype=nil)
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Comment = comment
          @FillType = filltype
        end

        def deserialize(params)
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Comment = params['Comment']
          @FillType = params['FillType']
        end
      end

      # CreateSnapshotByTimeOffsetTemplate返回参数结构体
      class CreateSnapshotByTimeOffsetTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateTranscodeTemplate请求参数结构体
      class CreateTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Container: 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        # @type Container: String
        # @param Name: 转码模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param RemoveVideo: 是否去除视频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # 默认值：0。
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # 默认值：0。
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数，当 RemoveVideo 为 0，该字段必填。
        # @type VideoTemplate: :class:`Tencentcloud::Mps.v20190612.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，当 RemoveAudio 为 0，该字段必填。
        # @type AudioTemplate: :class:`Tencentcloud::Mps.v20190612.models.AudioTemplateInfo`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Mps.v20190612.models.TEHDConfig`
        # @param EnhanceConfig: 音视频增强配置。
        # @type EnhanceConfig: :class:`Tencentcloud::Mps.v20190612.models.EnhanceConfig`

        attr_accessor :Container, :Name, :Comment, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig, :EnhanceConfig
        
        def initialize(container=nil, name=nil, comment=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil, enhanceconfig=nil)
          @Container = container
          @Name = name
          @Comment = comment
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
          @EnhanceConfig = enhanceconfig
        end

        def deserialize(params)
          @Container = params['Container']
          @Name = params['Name']
          @Comment = params['Comment']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfo.new
            @VideoTemplate.deserialize(params['VideoTemplate'])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfo.new
            @AudioTemplate.deserialize(params['AudioTemplate'])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfig.new
            @TEHDConfig.deserialize(params['TEHDConfig'])
          end
          unless params['EnhanceConfig'].nil?
            @EnhanceConfig = EnhanceConfig.new
            @EnhanceConfig.deserialize(params['EnhanceConfig'])
          end
        end
      end

      # CreateTranscodeTemplate返回参数结构体
      class CreateTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateWatermarkTemplate请求参数结构体
      class CreateWatermarkTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Type: 水印类型，可选值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印；</li>
        # <li>svg：SVG 水印。</li>
        # @type Type: String
        # @param Name: 水印模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param CoordinateOrigin: 原点位置，可选值：
        # <li>TopLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        # <li>TopRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        # <li>BottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        # <li>BottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下角。</li>
        # 默认值：TopLeft。
        # @type CoordinateOrigin: String
        # @param XPos: 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param ImageTemplate: 图片水印模板，仅当 Type 为 image，该字段必填且有效。
        # @type ImageTemplate: :class:`Tencentcloud::Mps.v20190612.models.ImageWatermarkInput`
        # @param TextTemplate: 文字水印模板，仅当 Type 为 text，该字段必填且有效。
        # @type TextTemplate: :class:`Tencentcloud::Mps.v20190612.models.TextWatermarkTemplateInput`
        # @param SvgTemplate: SVG 水印模板，仅当 Type 为 svg，该字段必填且有效。
        # @type SvgTemplate: :class:`Tencentcloud::Mps.v20190612.models.SvgWatermarkInput`

        attr_accessor :Type, :Name, :Comment, :CoordinateOrigin, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate
        
        def initialize(type=nil, name=nil, comment=nil, coordinateorigin=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil)
          @Type = type
          @Name = name
          @Comment = comment
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @ImageTemplate = imagetemplate
          @TextTemplate = texttemplate
          @SvgTemplate = svgtemplate
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          unless params['ImageTemplate'].nil?
            @ImageTemplate = ImageWatermarkInput.new
            @ImageTemplate.deserialize(params['ImageTemplate'])
          end
          unless params['TextTemplate'].nil?
            @TextTemplate = TextWatermarkTemplateInput.new
            @TextTemplate.deserialize(params['TextTemplate'])
          end
          unless params['SvgTemplate'].nil?
            @SvgTemplate = SvgWatermarkInput.new
            @SvgTemplate.deserialize(params['SvgTemplate'])
          end
        end
      end

      # CreateWatermarkTemplate返回参数结构体
      class CreateWatermarkTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer
        # @param ImageUrl: 水印图片地址，仅当 Type 为 image，该字段有效。
        # @type ImageUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :ImageUrl, :RequestId
        
        def initialize(definition=nil, imageurl=nil, requestid=nil)
          @Definition = definition
          @ImageUrl = imageurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @ImageUrl = params['ImageUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateWordSamples请求参数结构体
      class CreateWordSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Usages: <b>关键词应用场景，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行不适宜内容识别；
        # 4. Review.Asr：通过音频识别技术，进行不适宜内容识别；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜内容识别，等价于 3+4；
        # 7. All：通过光学字符识别技术、音频识别技术，进行内容识别、不适宜内容识别，等价于 1+2+3+4。
        # @type Usages: Array
        # @param Words: 关键词，数组长度限制：100。
        # @type Words: Array

        attr_accessor :Usages, :Words
        
        def initialize(usages=nil, words=nil)
          @Usages = usages
          @Words = words
        end

        def deserialize(params)
          @Usages = params['Usages']
          unless params['Words'].nil?
            @Words = []
            params['Words'].each do |i|
              aisamplewordinfo_tmp = AiSampleWordInfo.new
              aisamplewordinfo_tmp.deserialize(i)
              @Words << aisamplewordinfo_tmp
            end
          end
        end
      end

      # CreateWordSamples返回参数结构体
      class CreateWordSamplesResponse < TencentCloud::Common::AbstractModel
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

      # CreateWorkflow请求参数结构体
      class CreateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称，最多128字符。同一个用户该名称唯一。
        # @type WorkflowName: String
        # @param Trigger: 工作流绑定的触发规则，当上传视频命中该规则到该对象时即触发工作流。
        # @type Trigger: :class:`Tencentcloud::Mps.v20190612.models.WorkflowTrigger`
        # @param OutputStorage: 媒体处理的文件输出存储位置。不填则继承 Trigger 中的存储位置。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputDir: 媒体处理生成的文件输出的目标目录，如`/movie/201907/`。如果不填，表示与触发文件所在的目录一致。
        # @type OutputDir: String
        # @param MediaProcessTask: 媒体处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Mps.v20190612.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 视频内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskInput`
        # @param TaskNotifyConfig: 任务的事件通知配置，不填代表不获取事件通知。
        # @type TaskNotifyConfig: :class:`Tencentcloud::Mps.v20190612.models.TaskNotifyConfig`
        # @param TaskPriority: 工作流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TaskPriority: Integer

        attr_accessor :WorkflowName, :Trigger, :OutputStorage, :OutputDir, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TaskNotifyConfig, :TaskPriority
        
        def initialize(workflowname=nil, trigger=nil, outputstorage=nil, outputdir=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, tasknotifyconfig=nil, taskpriority=nil)
          @WorkflowName = workflowname
          @Trigger = trigger
          @OutputStorage = outputstorage
          @OutputDir = outputdir
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TaskNotifyConfig = tasknotifyconfig
          @TaskPriority = taskpriority
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          unless params['Trigger'].nil?
            @Trigger = WorkflowTrigger.new
            @Trigger.deserialize(params['Trigger'])
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputDir = params['OutputDir']
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new
            @MediaProcessTask.deserialize(params['MediaProcessTask'])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new
            @AiContentReviewTask.deserialize(params['AiContentReviewTask'])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new
            @AiAnalysisTask.deserialize(params['AiAnalysisTask'])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new
            @AiRecognitionTask.deserialize(params['AiRecognitionTask'])
          end
          unless params['TaskNotifyConfig'].nil?
            @TaskNotifyConfig = TaskNotifyConfig.new
            @TaskNotifyConfig.deserialize(params['TaskNotifyConfig'])
          end
          @TaskPriority = params['TaskPriority']
        end
      end

      # CreateWorkflow返回参数结构体
      class CreateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流 ID。
        # @type WorkflowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkflowId, :RequestId
        
        def initialize(workflowid=nil, requestid=nil)
          @WorkflowId = workflowid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAIAnalysisTemplate请求参数结构体
      class DeleteAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteAIAnalysisTemplate返回参数结构体
      class DeleteAIAnalysisTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAIRecognitionTemplate请求参数结构体
      class DeleteAIRecognitionTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteAIRecognitionTemplate返回参数结构体
      class DeleteAIRecognitionTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAdaptiveDynamicStreamingTemplate请求参数结构体
      class DeleteAdaptiveDynamicStreamingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 自适应转码模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteAdaptiveDynamicStreamingTemplate返回参数结构体
      class DeleteAdaptiveDynamicStreamingTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAnimatedGraphicsTemplate请求参数结构体
      class DeleteAnimatedGraphicsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteAnimatedGraphicsTemplate返回参数结构体
      class DeleteAnimatedGraphicsTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteContentReviewTemplate请求参数结构体
      class DeleteContentReviewTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteContentReviewTemplate返回参数结构体
      class DeleteContentReviewTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImageSpriteTemplate请求参数结构体
      class DeleteImageSpriteTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteImageSpriteTemplate返回参数结构体
      class DeleteImageSpriteTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeletePersonSample请求参数结构体
      class DeletePersonSampleRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 素材 ID。
        # @type PersonId: String

        attr_accessor :PersonId
        
        def initialize(personid=nil)
          @PersonId = personid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
        end
      end

      # DeletePersonSample返回参数结构体
      class DeletePersonSampleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSampleSnapshotTemplate请求参数结构体
      class DeleteSampleSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteSampleSnapshotTemplate返回参数结构体
      class DeleteSampleSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSnapshotByTimeOffsetTemplate请求参数结构体
      class DeleteSnapshotByTimeOffsetTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteSnapshotByTimeOffsetTemplate返回参数结构体
      class DeleteSnapshotByTimeOffsetTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTranscodeTemplate请求参数结构体
      class DeleteTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteTranscodeTemplate返回参数结构体
      class DeleteTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWatermarkTemplate请求参数结构体
      class DeleteWatermarkTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # DeleteWatermarkTemplate返回参数结构体
      class DeleteWatermarkTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWordSamples请求参数结构体
      class DeleteWordSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Keywords: 关键词，数组长度限制：100 个词。
        # @type Keywords: Array

        attr_accessor :Keywords
        
        def initialize(keywords=nil)
          @Keywords = keywords
        end

        def deserialize(params)
          @Keywords = params['Keywords']
        end
      end

      # DeleteWordSamples返回参数结构体
      class DeleteWordSamplesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWorkflow请求参数结构体
      class DeleteWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流 ID。
        # @type WorkflowId: Integer

        attr_accessor :WorkflowId
        
        def initialize(workflowid=nil)
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
        end
      end

      # DeleteWorkflow返回参数结构体
      class DeleteWorkflowResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAIAnalysisTemplates请求参数结构体
      class DescribeAIAnalysisTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 视频内容分析模板唯一标识过滤条件，数组长度限制：10。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，不填则返回所有，可选值：
        # * Preset：系统预置模板；
        # * Custom：用户自定义模板。
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeAIAnalysisTemplates返回参数结构体
      class DescribeAIAnalysisTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AIAnalysisTemplateSet: 视频内容分析模板详情列表。
        # @type AIAnalysisTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AIAnalysisTemplateSet, :RequestId
        
        def initialize(totalcount=nil, aianalysistemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AIAnalysisTemplateSet = aianalysistemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AIAnalysisTemplateSet'].nil?
            @AIAnalysisTemplateSet = []
            params['AIAnalysisTemplateSet'].each do |i|
              aianalysistemplateitem_tmp = AIAnalysisTemplateItem.new
              aianalysistemplateitem_tmp.deserialize(i)
              @AIAnalysisTemplateSet << aianalysistemplateitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIRecognitionTemplates请求参数结构体
      class DescribeAIRecognitionTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 视频内容识别模板唯一标识过滤条件，数组长度限制：10。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：50。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，不填则返回所有，可选值：
        # * Preset：系统预置模板；
        # * Custom：用户自定义模板。
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeAIRecognitionTemplates返回参数结构体
      class DescribeAIRecognitionTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AIRecognitionTemplateSet: 视频内容识别模板详情列表。
        # @type AIRecognitionTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AIRecognitionTemplateSet, :RequestId
        
        def initialize(totalcount=nil, airecognitiontemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AIRecognitionTemplateSet = airecognitiontemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AIRecognitionTemplateSet'].nil?
            @AIRecognitionTemplateSet = []
            params['AIRecognitionTemplateSet'].each do |i|
              airecognitiontemplateitem_tmp = AIRecognitionTemplateItem.new
              airecognitiontemplateitem_tmp.deserialize(i)
              @AIRecognitionTemplateSet << airecognitiontemplateitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAdaptiveDynamicStreamingTemplates请求参数结构体
      class DescribeAdaptiveDynamicStreamingTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 转自适应码流模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeAdaptiveDynamicStreamingTemplates返回参数结构体
      class DescribeAdaptiveDynamicStreamingTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AdaptiveDynamicStreamingTemplateSet: 转自适应码流模板详情列表。
        # @type AdaptiveDynamicStreamingTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AdaptiveDynamicStreamingTemplateSet, :RequestId
        
        def initialize(totalcount=nil, adaptivedynamicstreamingtemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AdaptiveDynamicStreamingTemplateSet = adaptivedynamicstreamingtemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AdaptiveDynamicStreamingTemplateSet'].nil?
            @AdaptiveDynamicStreamingTemplateSet = []
            params['AdaptiveDynamicStreamingTemplateSet'].each do |i|
              adaptivedynamicstreamingtemplate_tmp = AdaptiveDynamicStreamingTemplate.new
              adaptivedynamicstreamingtemplate_tmp.deserialize(i)
              @AdaptiveDynamicStreamingTemplateSet << adaptivedynamicstreamingtemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAnimatedGraphicsTemplates请求参数结构体
      class DescribeAnimatedGraphicsTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 转动图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeAnimatedGraphicsTemplates返回参数结构体
      class DescribeAnimatedGraphicsTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AnimatedGraphicsTemplateSet: 转动图模板详情列表。
        # @type AnimatedGraphicsTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AnimatedGraphicsTemplateSet, :RequestId
        
        def initialize(totalcount=nil, animatedgraphicstemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AnimatedGraphicsTemplateSet = animatedgraphicstemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AnimatedGraphicsTemplateSet'].nil?
            @AnimatedGraphicsTemplateSet = []
            params['AnimatedGraphicsTemplateSet'].each do |i|
              animatedgraphicstemplate_tmp = AnimatedGraphicsTemplate.new
              animatedgraphicstemplate_tmp.deserialize(i)
              @AnimatedGraphicsTemplateSet << animatedgraphicstemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContentReviewTemplates请求参数结构体
      class DescribeContentReviewTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 智能审核模板唯一标识过滤条件，数组长度限制：50。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：50。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，不填则返回所有，可选值：
        # * Preset：系统预置模板；
        # * Custom：用户自定义模板。
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeContentReviewTemplates返回参数结构体
      class DescribeContentReviewTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param ContentReviewTemplateSet: 内容审核模板详情列表。
        # @type ContentReviewTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ContentReviewTemplateSet, :RequestId
        
        def initialize(totalcount=nil, contentreviewtemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ContentReviewTemplateSet = contentreviewtemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ContentReviewTemplateSet'].nil?
            @ContentReviewTemplateSet = []
            params['ContentReviewTemplateSet'].each do |i|
              contentreviewtemplateitem_tmp = ContentReviewTemplateItem.new
              contentreviewtemplateitem_tmp.deserialize(i)
              @ContentReviewTemplateSet << contentreviewtemplateitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageSpriteTemplates请求参数结构体
      class DescribeImageSpriteTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 雪碧图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeImageSpriteTemplates返回参数结构体
      class DescribeImageSpriteTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param ImageSpriteTemplateSet: 雪碧图模板详情列表。
        # @type ImageSpriteTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageSpriteTemplateSet, :RequestId
        
        def initialize(totalcount=nil, imagespritetemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageSpriteTemplateSet = imagespritetemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ImageSpriteTemplateSet'].nil?
            @ImageSpriteTemplateSet = []
            params['ImageSpriteTemplateSet'].each do |i|
              imagespritetemplate_tmp = ImageSpriteTemplate.new
              imagespritetemplate_tmp.deserialize(i)
              @ImageSpriteTemplateSet << imagespritetemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaMetaData请求参数结构体
      class DescribeMediaMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param InputInfo: 需要获取元信息的文件输入信息。
        # @type InputInfo: :class:`Tencentcloud::Mps.v20190612.models.MediaInputInfo`

        attr_accessor :InputInfo
        
        def initialize(inputinfo=nil)
          @InputInfo = inputinfo
        end

        def deserialize(params)
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
        end
      end

      # DescribeMediaMetaData返回参数结构体
      class DescribeMediaMetaDataResponse < TencentCloud::Common::AbstractModel
        # @param MetaData: 媒体元信息。
        # @type MetaData: :class:`Tencentcloud::Mps.v20190612.models.MediaMetaData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MetaData, :RequestId
        
        def initialize(metadata=nil, requestid=nil)
          @MetaData = metadata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonSamples请求参数结构体
      class DescribePersonSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Type: 拉取的素材类型，可选值：
        # <li>UserDefine：用户自定义素材库；</li>
        # <li>Default：系统默认素材库。</li>

        # 默认值：UserDefine，拉取用户自定义素材库素材。
        # 说明：如果是拉取系统默认素材库，只能使用素材名字或者素材 ID + 素材名字的方式进行拉取，且人脸图片只返回一张。
        # @type Type: String
        # @param PersonIds: 素材 ID，数组长度限制：100。
        # @type PersonIds: Array
        # @param Names: 素材名称，数组长度限制：20。
        # @type Names: Array
        # @param Tags: 素材标签，数组长度限制：20。
        # @type Tags: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：100，最大值：100。
        # @type Limit: Integer

        attr_accessor :Type, :PersonIds, :Names, :Tags, :Offset, :Limit
        
        def initialize(type=nil, personids=nil, names=nil, tags=nil, offset=nil, limit=nil)
          @Type = type
          @PersonIds = personids
          @Names = names
          @Tags = tags
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Type = params['Type']
          @PersonIds = params['PersonIds']
          @Names = params['Names']
          @Tags = params['Tags']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePersonSamples返回参数结构体
      class DescribePersonSamplesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param PersonSet: 素材信息。
        # @type PersonSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PersonSet, :RequestId
        
        def initialize(totalcount=nil, personset=nil, requestid=nil)
          @TotalCount = totalcount
          @PersonSet = personset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PersonSet'].nil?
            @PersonSet = []
            params['PersonSet'].each do |i|
              aisampleperson_tmp = AiSamplePerson.new
              aisampleperson_tmp.deserialize(i)
              @PersonSet << aisampleperson_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleSnapshotTemplates请求参数结构体
      class DescribeSampleSnapshotTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 采样截图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeSampleSnapshotTemplates返回参数结构体
      class DescribeSampleSnapshotTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param SampleSnapshotTemplateSet: 采样截图模板详情列表。
        # @type SampleSnapshotTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SampleSnapshotTemplateSet, :RequestId
        
        def initialize(totalcount=nil, samplesnapshottemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @SampleSnapshotTemplateSet = samplesnapshottemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SampleSnapshotTemplateSet'].nil?
            @SampleSnapshotTemplateSet = []
            params['SampleSnapshotTemplateSet'].each do |i|
              samplesnapshottemplate_tmp = SampleSnapshotTemplate.new
              samplesnapshottemplate_tmp.deserialize(i)
              @SampleSnapshotTemplateSet << samplesnapshottemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshotByTimeOffsetTemplates请求参数结构体
      class DescribeSnapshotByTimeOffsetTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 指定时间点截图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String

        attr_accessor :Definitions, :Offset, :Limit, :Type
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeSnapshotByTimeOffsetTemplates返回参数结构体
      class DescribeSnapshotByTimeOffsetTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param SnapshotByTimeOffsetTemplateSet: 指定时间点截图模板详情列表。
        # @type SnapshotByTimeOffsetTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SnapshotByTimeOffsetTemplateSet, :RequestId
        
        def initialize(totalcount=nil, snapshotbytimeoffsettemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @SnapshotByTimeOffsetTemplateSet = snapshotbytimeoffsettemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SnapshotByTimeOffsetTemplateSet'].nil?
            @SnapshotByTimeOffsetTemplateSet = []
            params['SnapshotByTimeOffsetTemplateSet'].each do |i|
              snapshotbytimeoffsettemplate_tmp = SnapshotByTimeOffsetTemplate.new
              snapshotbytimeoffsettemplate_tmp.deserialize(i)
              @SnapshotByTimeOffsetTemplateSet << snapshotbytimeoffsettemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频处理任务的任务 ID。
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，目前取值有：
        # <li>WorkflowTask：视频工作流处理任务。</li>
        # <li>EditMediaTask：视频编辑任务。</li>
        # <li>LiveStreamProcessTask：直播流处理任务。</li>
        # <li>ScheduleTask：编排处理任务。</li>
        # @type TaskType: String
        # @param Status: 任务状态，取值：
        # <li>WAITING：等待中；</li>
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param CreateTime: 任务的创建时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param BeginProcessTime: 任务开始执行的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type BeginProcessTime: String
        # @param FinishTime: 任务执行完毕的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type FinishTime: String
        # @param EditMediaTask: 视频编辑任务信息，仅当 TaskType 为 EditMediaTask，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditMediaTask: :class:`Tencentcloud::Mps.v20190612.models.EditMediaTask`
        # @param WorkflowTask: 视频处理任务信息，仅当 TaskType 为 WorkflowTask，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTask: :class:`Tencentcloud::Mps.v20190612.models.WorkflowTask`
        # @param LiveStreamProcessTask: 直播流处理任务信息，仅当 TaskType 为 LiveStreamProcessTask，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveStreamProcessTask: :class:`Tencentcloud::Mps.v20190612.models.LiveStreamProcessTask`
        # @param TaskNotifyConfig: 任务的事件通知信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskNotifyConfig: :class:`Tencentcloud::Mps.v20190612.models.TaskNotifyConfig`
        # @param TasksPriority: 任务流的优先级，取值范围为 [-10, 10]。
        # @type TasksPriority: Integer
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长50个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长1000个字符。
        # @type SessionContext: String
        # @param ExtInfo: 扩展信息字段，仅用于特定场景。
        # @type ExtInfo: String
        # @param ScheduleTask: 编排处理任务信息，仅当 TaskType 为 ScheduleTask，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTask: :class:`Tencentcloud::Mps.v20190612.models.ScheduleTask`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskType, :Status, :CreateTime, :BeginProcessTime, :FinishTime, :EditMediaTask, :WorkflowTask, :LiveStreamProcessTask, :TaskNotifyConfig, :TasksPriority, :SessionId, :SessionContext, :ExtInfo, :ScheduleTask, :RequestId
        
        def initialize(tasktype=nil, status=nil, createtime=nil, beginprocesstime=nil, finishtime=nil, editmediatask=nil, workflowtask=nil, livestreamprocesstask=nil, tasknotifyconfig=nil, taskspriority=nil, sessionid=nil, sessioncontext=nil, extinfo=nil, scheduletask=nil, requestid=nil)
          @TaskType = tasktype
          @Status = status
          @CreateTime = createtime
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
          @EditMediaTask = editmediatask
          @WorkflowTask = workflowtask
          @LiveStreamProcessTask = livestreamprocesstask
          @TaskNotifyConfig = tasknotifyconfig
          @TasksPriority = taskspriority
          @SessionId = sessionid
          @SessionContext = sessioncontext
          @ExtInfo = extinfo
          @ScheduleTask = scheduletask
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
          unless params['EditMediaTask'].nil?
            @EditMediaTask = EditMediaTask.new
            @EditMediaTask.deserialize(params['EditMediaTask'])
          end
          unless params['WorkflowTask'].nil?
            @WorkflowTask = WorkflowTask.new
            @WorkflowTask.deserialize(params['WorkflowTask'])
          end
          unless params['LiveStreamProcessTask'].nil?
            @LiveStreamProcessTask = LiveStreamProcessTask.new
            @LiveStreamProcessTask.deserialize(params['LiveStreamProcessTask'])
          end
          unless params['TaskNotifyConfig'].nil?
            @TaskNotifyConfig = TaskNotifyConfig.new
            @TaskNotifyConfig.deserialize(params['TaskNotifyConfig'])
          end
          @TasksPriority = params['TasksPriority']
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
          @ExtInfo = params['ExtInfo']
          unless params['ScheduleTask'].nil?
            @ScheduleTask = ScheduleTask.new
            @ScheduleTask.deserialize(params['ScheduleTask'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Status: 过滤条件：任务状态，可选值：WAITING（等待中）、PROCESSING（处理中）、FINISH（已完成）。
        # @type Status: String
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param ScrollToken: 翻页标识，分批拉取时使用：当单次请求无法拉取所有数据，接口将会返回 ScrollToken，下一次请求携带该 Token，将会从下一条记录开始获取。
        # @type ScrollToken: String

        attr_accessor :Status, :Limit, :ScrollToken
        
        def initialize(status=nil, limit=nil, scrolltoken=nil)
          @Status = status
          @Limit = limit
          @ScrollToken = scrolltoken
        end

        def deserialize(params)
          @Status = params['Status']
          @Limit = params['Limit']
          @ScrollToken = params['ScrollToken']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务概要列表。
        # @type TaskSet: Array
        # @param ScrollToken: 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 ID。当该字段为空字符串，说明已无更多数据。
        # @type ScrollToken: String
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :ScrollToken, :TotalCount, :RequestId
        
        def initialize(taskset=nil, scrolltoken=nil, totalcount=nil, requestid=nil)
          @TaskSet = taskset
          @ScrollToken = scrolltoken
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              tasksimpleinfo_tmp = TaskSimpleInfo.new
              tasksimpleinfo_tmp.deserialize(i)
              @TaskSet << tasksimpleinfo_tmp
            end
          end
          @ScrollToken = params['ScrollToken']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTranscodeTemplates请求参数结构体
      class DescribeTranscodeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 转码模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param ContainerType: 封装格式过滤条件，可选值：
        # <li>Video：视频格式，可以同时包含视频流和音频流的封装格式板；</li>
        # <li>PureAudio：纯音频格式，只能包含音频流的封装格式。</li>
        # @type ContainerType: String
        # @param TEHDType: 极速高清过滤条件，用于过滤普通转码或极速高清转码模板，可选值：
        # <li>Common：普通转码模板；</li>
        # <li>TEHD：极速高清模板。</li>
        # @type TEHDType: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param TranscodeType: 模板类型（替换旧版本 TEHDType），可选值：
        # <li>Common：普通转码模板；</li>
        # <li>TEHD：极速高清模板。</li>
        # <li>Enhance：音视频增强模板。</li>
        # 默认空，不限制类型。
        # @type TranscodeType: String

        attr_accessor :Definitions, :Type, :ContainerType, :TEHDType, :Offset, :Limit, :TranscodeType
        
        def initialize(definitions=nil, type=nil, containertype=nil, tehdtype=nil, offset=nil, limit=nil, transcodetype=nil)
          @Definitions = definitions
          @Type = type
          @ContainerType = containertype
          @TEHDType = tehdtype
          @Offset = offset
          @Limit = limit
          @TranscodeType = transcodetype
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Type = params['Type']
          @ContainerType = params['ContainerType']
          @TEHDType = params['TEHDType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TranscodeType = params['TranscodeType']
        end
      end

      # DescribeTranscodeTemplates返回参数结构体
      class DescribeTranscodeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param TranscodeTemplateSet: 转码模板详情列表。
        # @type TranscodeTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TranscodeTemplateSet, :RequestId
        
        def initialize(totalcount=nil, transcodetemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @TranscodeTemplateSet = transcodetemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TranscodeTemplateSet'].nil?
            @TranscodeTemplateSet = []
            params['TranscodeTemplateSet'].each do |i|
              transcodetemplate_tmp = TranscodeTemplate.new
              transcodetemplate_tmp.deserialize(i)
              @TranscodeTemplateSet << transcodetemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWatermarkTemplates请求参数结构体
      class DescribeWatermarkTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 水印模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Type: 水印类型过滤条件，可选值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印。</li>
        # @type Type: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数
        # <li>默认值：10；</li>
        # <li>最大值：100。</li>
        # @type Limit: Integer

        attr_accessor :Definitions, :Type, :Offset, :Limit
        
        def initialize(definitions=nil, type=nil, offset=nil, limit=nil)
          @Definitions = definitions
          @Type = type
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeWatermarkTemplates返回参数结构体
      class DescribeWatermarkTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param WatermarkTemplateSet: 水印模板详情列表。
        # @type WatermarkTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WatermarkTemplateSet, :RequestId
        
        def initialize(totalcount=nil, watermarktemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @WatermarkTemplateSet = watermarktemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WatermarkTemplateSet'].nil?
            @WatermarkTemplateSet = []
            params['WatermarkTemplateSet'].each do |i|
              watermarktemplate_tmp = WatermarkTemplate.new
              watermarktemplate_tmp.deserialize(i)
              @WatermarkTemplateSet << watermarktemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWordSamples请求参数结构体
      class DescribeWordSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Keywords: 关键词过滤条件，数组长度限制：100 个词。
        # @type Keywords: Array
        # @param Usages: <b>关键词应用场景过滤条件，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行不适宜内容的识别；
        # 4. Review.Asr：通过音频识别技术，进行不适宜内容的识别；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜内容的识别，等价于 3+4；
        # 可多选，元素间关系为 or，即关键词的应用场景包含该字段集合中任意元素的记录，均符合该条件。
        # @type Usages: Array
        # @param Tags: 标签过滤条件，数组长度限制：20 个词。
        # @type Tags: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：100，最大值：100。
        # @type Limit: Integer

        attr_accessor :Keywords, :Usages, :Tags, :Offset, :Limit
        
        def initialize(keywords=nil, usages=nil, tags=nil, offset=nil, limit=nil)
          @Keywords = keywords
          @Usages = usages
          @Tags = tags
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @Usages = params['Usages']
          @Tags = params['Tags']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeWordSamples返回参数结构体
      class DescribeWordSamplesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param WordSet: 关键词信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WordSet, :RequestId
        
        def initialize(totalcount=nil, wordset=nil, requestid=nil)
          @TotalCount = totalcount
          @WordSet = wordset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WordSet'].nil?
            @WordSet = []
            params['WordSet'].each do |i|
              aisampleword_tmp = AiSampleWord.new
              aisampleword_tmp.deserialize(i)
              @WordSet << aisampleword_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkflows请求参数结构体
      class DescribeWorkflowsRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowIds: 工作流 ID 过滤条件，数组长度限制：100。
        # @type WorkflowIds: Array
        # @param Status: 工作流状态，取值范围：
        # <li>Enabled：已启用，</li>
        # <li>Disabled：已禁用。</li>
        # 不填此参数，则不区分工作流状态。
        # @type Status: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer

        attr_accessor :WorkflowIds, :Status, :Offset, :Limit
        
        def initialize(workflowids=nil, status=nil, offset=nil, limit=nil)
          @WorkflowIds = workflowids
          @Status = status
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @WorkflowIds = params['WorkflowIds']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeWorkflows返回参数结构体
      class DescribeWorkflowsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param WorkflowInfoSet: 工作流信息数组。
        # @type WorkflowInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WorkflowInfoSet, :RequestId
        
        def initialize(totalcount=nil, workflowinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @WorkflowInfoSet = workflowinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WorkflowInfoSet'].nil?
            @WorkflowInfoSet = []
            params['WorkflowInfoSet'].each do |i|
              workflowinfo_tmp = WorkflowInfo.new
              workflowinfo_tmp.deserialize(i)
              @WorkflowInfoSet << workflowinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableWorkflow请求参数结构体
      class DisableWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流 ID。
        # @type WorkflowId: Integer

        attr_accessor :WorkflowId
        
        def initialize(workflowid=nil)
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
        end
      end

      # DisableWorkflow返回参数结构体
      class DisableWorkflowResponse < TencentCloud::Common::AbstractModel
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

      # 编辑点播视频文件信息
      class EditMediaFileInfo < TencentCloud::Common::AbstractModel
        # @param InputInfo: 视频的输入信息。
        # @type InputInfo: :class:`Tencentcloud::Mps.v20190612.models.MediaInputInfo`
        # @param StartTimeOffset: 视频剪辑的起始时间偏移，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 视频剪辑的结束时间偏移，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :InputInfo, :StartTimeOffset, :EndTimeOffset
        
        def initialize(inputinfo=nil, starttimeoffset=nil, endtimeoffset=nil)
          @InputInfo = inputinfo
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 编辑视频的结果文件输出配置。
      class EditMediaOutputConfig < TencentCloud::Common::AbstractModel
        # @param Container: 封装格式，可选值：mp4、hls、mov、flv、avi。默认是 mp4。
        # @type Container: String
        # @param Type: 剪辑模式，可选值 normal、fast。默认是精确剪辑 normal
        # @type Type: String

        attr_accessor :Container, :Type
        
        def initialize(container=nil, type=nil)
          @Container = container
          @Type = type
        end

        def deserialize(params)
          @Container = params['Container']
          @Type = params['Type']
        end
      end

      # EditMedia请求参数结构体
      class EditMediaRequest < TencentCloud::Common::AbstractModel
        # @param FileInfos: 输入的视频文件信息。
        # @type FileInfos: Array
        # @param OutputStorage: 媒体处理输出文件的目标存储。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputObjectPath: 媒体处理输出文件的目标路径。
        # @type OutputObjectPath: String
        # @param OutputConfig: 编辑后生成的文件配置。
        # @type OutputConfig: :class:`Tencentcloud::Mps.v20190612.models.EditMediaOutputConfig`
        # @param TaskNotifyConfig: 任务的事件通知信息，不填代表不获取事件通知。
        # @type TaskNotifyConfig: :class:`Tencentcloud::Mps.v20190612.models.TaskNotifyConfig`
        # @param TasksPriority: 任务优先级，数值越大优先级越高，取值范围是-10到 10，不填代表0。
        # @type TasksPriority: Integer
        # @param SessionId: 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String

        attr_accessor :FileInfos, :OutputStorage, :OutputObjectPath, :OutputConfig, :TaskNotifyConfig, :TasksPriority, :SessionId, :SessionContext
        
        def initialize(fileinfos=nil, outputstorage=nil, outputobjectpath=nil, outputconfig=nil, tasknotifyconfig=nil, taskspriority=nil, sessionid=nil, sessioncontext=nil)
          @FileInfos = fileinfos
          @OutputStorage = outputstorage
          @OutputObjectPath = outputobjectpath
          @OutputConfig = outputconfig
          @TaskNotifyConfig = tasknotifyconfig
          @TasksPriority = taskspriority
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              editmediafileinfo_tmp = EditMediaFileInfo.new
              editmediafileinfo_tmp.deserialize(i)
              @FileInfos << editmediafileinfo_tmp
            end
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputObjectPath = params['OutputObjectPath']
          unless params['OutputConfig'].nil?
            @OutputConfig = EditMediaOutputConfig.new
            @OutputConfig.deserialize(params['OutputConfig'])
          end
          unless params['TaskNotifyConfig'].nil?
            @TaskNotifyConfig = TaskNotifyConfig.new
            @TaskNotifyConfig.deserialize(params['TaskNotifyConfig'])
          end
          @TasksPriority = params['TasksPriority']
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # EditMedia返回参数结构体
      class EditMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑视频的任务 ID，可以通过该 ID 查询编辑任务的状态。
        # @type TaskId: String
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

      # 编辑视频任务信息
      class EditMediaTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 视频编辑任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.EditMediaTaskInput`
        # @param Output: 视频编辑任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.EditMediaTaskOutput`

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = EditMediaTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = EditMediaTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 编辑视频任务的输入。
      class EditMediaTaskInput < TencentCloud::Common::AbstractModel
        # @param FileInfoSet: 输入的视频文件信息。
        # @type FileInfoSet: Array

        attr_accessor :FileInfoSet
        
        def initialize(fileinfoset=nil)
          @FileInfoSet = fileinfoset
        end

        def deserialize(params)
          unless params['FileInfoSet'].nil?
            @FileInfoSet = []
            params['FileInfoSet'].each do |i|
              editmediafileinfo_tmp = EditMediaFileInfo.new
              editmediafileinfo_tmp.deserialize(i)
              @FileInfoSet << editmediafileinfo_tmp
            end
          end
        end
      end

      # 编辑视频任务的输出
      class EditMediaTaskOutput < TencentCloud::Common::AbstractModel
        # @param OutputStorage: 编辑后文件的目标存储。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param Path: 编辑后的视频文件路径。
        # @type Path: String

        attr_accessor :OutputStorage, :Path
        
        def initialize(outputstorage=nil, path=nil)
          @OutputStorage = outputstorage
          @Path = path
        end

        def deserialize(params)
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @Path = params['Path']
        end
      end

      # EnableWorkflow请求参数结构体
      class EnableWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流 ID。
        # @type WorkflowId: Integer

        attr_accessor :WorkflowId
        
        def initialize(workflowid=nil)
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
        end
      end

      # EnableWorkflow返回参数结构体
      class EnableWorkflowResponse < TencentCloud::Common::AbstractModel
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

      # 音视频增强配置
      class EnhanceConfig < TencentCloud::Common::AbstractModel
        # @param VideoEnhance: 视频增强配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoEnhance: :class:`Tencentcloud::Mps.v20190612.models.VideoEnhanceConfig`

        attr_accessor :VideoEnhance
        
        def initialize(videoenhance=nil)
          @VideoEnhance = videoenhance
        end

        def deserialize(params)
          unless params['VideoEnhance'].nil?
            @VideoEnhance = VideoEnhanceConfig.new
            @VideoEnhance.deserialize(params['VideoEnhance'])
          end
        end
      end

      # ExecuteFunction请求参数结构体
      class ExecuteFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 调用后端接口名称。
        # @type FunctionName: String
        # @param FunctionArg: 接口参数，具体参数格式调用时与后端协调。
        # @type FunctionArg: String

        attr_accessor :FunctionName, :FunctionArg
        
        def initialize(functionname=nil, functionarg=nil)
          @FunctionName = functionname
          @FunctionArg = functionarg
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @FunctionArg = params['FunctionArg']
        end
      end

      # ExecuteFunction返回参数结构体
      class ExecuteFunctionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 处理结果打包后的字符串，具体与后台一同协调。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 表情识别参数配置
      class ExpressionConfigInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 表情识别任务开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 人脸识别任务控制参数
      class FaceConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 人脸识别任务开关，可选值：
        # <li>ON：开启智能人脸识别任务；</li>
        # <li>OFF：关闭智能人脸识别任务。</li>
        # @type Switch: String
        # @param Score: 人脸识别过滤分数，当识别结果达到该分数以上，返回识别结果。默认 95 分。取值范围：0 - 100。
        # @type Score: Float
        # @param DefaultLibraryLabelSet: 默认人物过滤标签，指定需要返回的默认人物的标签。如果未填或者为空，则全部默认人物结果都返回。标签可选值：
        # <li>entertainment：娱乐明星；</li>
        # <li>sport：体育明星；</li>
        # <li>politician：敏感人物。</li>
        # @type DefaultLibraryLabelSet: Array
        # @param UserDefineLibraryLabelSet: 用户自定义人物过滤标签，指定需要返回的用户自定义人物的标签。如果未填或者为空，则全部自定义人物结果都返回。
        # 标签个数最多 100 个，每个标签长度最多 16 个字符。
        # @type UserDefineLibraryLabelSet: Array
        # @param FaceLibrary: 人物库选择，可选值：
        # <li>Default：使用默认人物库；</li>
        # <li>UserDefine：使用用户自定义人物库。</li>
        # <li>All：同时使用默认人物库和用户自定义人物库。</li>
        # 默认值：All，使用系统默认人物库及用户自定义人物库。
        # @type FaceLibrary: String

        attr_accessor :Switch, :Score, :DefaultLibraryLabelSet, :UserDefineLibraryLabelSet, :FaceLibrary
        
        def initialize(switch=nil, score=nil, defaultlibrarylabelset=nil, userdefinelibrarylabelset=nil, facelibrary=nil)
          @Switch = switch
          @Score = score
          @DefaultLibraryLabelSet = defaultlibrarylabelset
          @UserDefineLibraryLabelSet = userdefinelibrarylabelset
          @FaceLibrary = facelibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Score = params['Score']
          @DefaultLibraryLabelSet = params['DefaultLibraryLabelSet']
          @UserDefineLibraryLabelSet = params['UserDefineLibraryLabelSet']
          @FaceLibrary = params['FaceLibrary']
        end
      end

      # 人脸识别任务控制参数
      class FaceConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 人脸识别任务开关，可选值：
        # <li>ON：开启智能人脸识别任务；</li>
        # <li>OFF：关闭智能人脸识别任务。</li>
        # @type Switch: String
        # @param Score: 人脸识别过滤分数，当识别结果达到该分数以上，返回识别结果。取值范围：0-100。
        # @type Score: Float
        # @param DefaultLibraryLabelSet: 默认人物过滤标签，指定需要返回的默认人物的标签。如果未填或者为空，则全部默认人物结果都返回。标签可选值：
        # <li>entertainment：娱乐明星；</li>
        # <li>sport：体育明星；</li>
        # <li>politician：敏感人物。</li>
        # @type DefaultLibraryLabelSet: Array
        # @param UserDefineLibraryLabelSet: 用户自定义人物过滤标签，指定需要返回的用户自定义人物的标签。如果未填或者为空，则全部自定义人物结果都返回。
        # 标签个数最多 100 个，每个标签长度最多 16 个字符。
        # @type UserDefineLibraryLabelSet: Array
        # @param FaceLibrary: 人物库选择，可选值：
        # <li>Default：使用默认人物库；</li>
        # <li>UserDefine：使用用户自定义人物库。</li>
        # <li>All：同时使用默认人物库和用户自定义人物库。</li>
        # @type FaceLibrary: String

        attr_accessor :Switch, :Score, :DefaultLibraryLabelSet, :UserDefineLibraryLabelSet, :FaceLibrary
        
        def initialize(switch=nil, score=nil, defaultlibrarylabelset=nil, userdefinelibrarylabelset=nil, facelibrary=nil)
          @Switch = switch
          @Score = score
          @DefaultLibraryLabelSet = defaultlibrarylabelset
          @UserDefineLibraryLabelSet = userdefinelibrarylabelset
          @FaceLibrary = facelibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Score = params['Score']
          @DefaultLibraryLabelSet = params['DefaultLibraryLabelSet']
          @UserDefineLibraryLabelSet = params['UserDefineLibraryLabelSet']
          @FaceLibrary = params['FaceLibrary']
        end
      end

      # 人脸增强配置
      class FaceEnhanceConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Intensity: 强度，取值范围：0.0~1.0。
        # 默认：0.0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intensity: Float

        attr_accessor :Switch, :Intensity
        
        def initialize(switch=nil, intensity=nil)
          @Switch = switch
          @Intensity = intensity
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Intensity = params['Intensity']
        end
      end

      # 插帧帧率配置
      class FrameRateConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Fps: 帧率，取值范围：[0, 100]，单位：Hz。
        # 默认值 0。
        # 注意：对于转码，该参数会覆盖 VideoTemplate 内部的 Fps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fps: Integer

        attr_accessor :Switch, :Fps
        
        def initialize(switch=nil, fps=nil)
          @Switch = switch
          @Fps = fps
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Fps = params['Fps']
        end
      end

      # 智能按帧标签任务控制参数
      class FrameTagConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能按帧标签任务开关，可选值：
        # <li>ON：开启智能按帧标签任务；</li>
        # <li>OFF：关闭智能按帧标签任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能按帧标签任务控制参数
      class FrameTagConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能按帧标签任务开关，可选值：
        # <li>ON：开启智能按帧标签任务；</li>
        # <li>OFF：关闭智能按帧标签任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # HDR配置
      class HdrConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Type: 类型，可选值：
        # <li>HDR10</li>
        # <li>HLG</li>
        # 默认值：HDR10。
        # 注意：video的编码方式需要为libx265；
        # 注意：视频编码位深为10。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Switch, :Type
        
        def initialize(switch=nil, type=nil)
          @Switch = switch
          @Type = type
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Type = params['Type']
        end
      end

      # 片头片尾参数
      class HeadTailParameter < TencentCloud::Common::AbstractModel
        # @param HeadSet: 片头列表。
        # @type HeadSet: Array
        # @param TailSet: 片尾列表。
        # @type TailSet: Array

        attr_accessor :HeadSet, :TailSet
        
        def initialize(headset=nil, tailset=nil)
          @HeadSet = headset
          @TailSet = tailset
        end

        def deserialize(params)
          unless params['HeadSet'].nil?
            @HeadSet = []
            params['HeadSet'].each do |i|
              mediainputinfo_tmp = MediaInputInfo.new
              mediainputinfo_tmp.deserialize(i)
              @HeadSet << mediainputinfo_tmp
            end
          end
          unless params['TailSet'].nil?
            @TailSet = []
            params['TailSet'].each do |i|
              mediainputinfo_tmp = MediaInputInfo.new
              mediainputinfo_tmp.deserialize(i)
              @TailSet << mediainputinfo_tmp
            end
          end
        end
      end

      # 综合增强配置
      class ImageQualityEnhanceConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Type: 类型，可选值：
        # <li>weak</li>
        # <li>normal</li>
        # <li>strong</li>
        # 默认值：weak。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Switch, :Type
        
        def initialize(switch=nil, type=nil)
          @Switch = switch
          @Type = type
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Type = params['Type']
        end
      end

      # 对视频截雪碧图任务输入参数类型
      class ImageSpriteTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板 ID。
        # @type Definition: Integer
        # @param OutputStorage: 截取雪碧图后文件的目标存储，不填则继承上层的 OutputStorage 值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputObjectPath: 截取雪碧图后，雪碧图图片文件的输出路径，可以为相对路径或者绝对路径。如果不填，则默认为相对路径：`{inputName}_imageSprite_{definition}_{number}.{format}`。
        # @type OutputObjectPath: String
        # @param WebVttObjectName: 截取雪碧图后，Web VTT 文件的输出路径，只能为相对路径。如果不填，则默认为相对路径：`{inputName}_imageSprite_{definition}.{format}`。
        # @type WebVttObjectName: String
        # @param ObjectNumberFormat: 截取雪碧图后输出路径中的`{number}`变量的规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectNumberFormat: :class:`Tencentcloud::Mps.v20190612.models.NumberFormat`

        attr_accessor :Definition, :OutputStorage, :OutputObjectPath, :WebVttObjectName, :ObjectNumberFormat
        
        def initialize(definition=nil, outputstorage=nil, outputobjectpath=nil, webvttobjectname=nil, objectnumberformat=nil)
          @Definition = definition
          @OutputStorage = outputstorage
          @OutputObjectPath = outputobjectpath
          @WebVttObjectName = webvttobjectname
          @ObjectNumberFormat = objectnumberformat
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputObjectPath = params['OutputObjectPath']
          @WebVttObjectName = params['WebVttObjectName']
          unless params['ObjectNumberFormat'].nil?
            @ObjectNumberFormat = NumberFormat.new
            @ObjectNumberFormat.deserialize(params['ObjectNumberFormat'])
          end
        end
      end

      # 雪碧图模板详情
      class ImageSpriteTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 雪碧图模板名称。
        # @type Name: String
        # @param Width: 雪碧图中小图的宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 雪碧图中小图的高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param SampleType: 采样类型。
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # @type SampleInterval: Integer
        # @param RowCount: 雪碧图中小图的行数。
        # @type RowCount: Integer
        # @param ColumnCount: 雪碧图中小图的列数。
        # @type ColumnCount: Integer
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String
        # @param Comment: 模板描述信息。
        # @type Comment: String

        attr_accessor :Definition, :Type, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :RowCount, :ColumnCount, :CreateTime, :UpdateTime, :FillType, :Comment
        
        def initialize(definition=nil, type=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, createtime=nil, updatetime=nil, filltype=nil, comment=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @RowCount = rowcount
          @ColumnCount = columncount
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FillType = filltype
          @Comment = comment
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FillType = params['FillType']
          @Comment = params['Comment']
        end
      end

      # 图片水印模板输入参数
      class ImageWatermarkInput < TencentCloud::Common::AbstractModel
        # @param ImageContent: 水印图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串。支持 jpeg、png 图片格式。
        # @type ImageContent: String
        # @param Width: 水印的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。取值范围为[8, 4096]。</li>
        # 默认值：10%。
        # @type Width: String
        # @param Height: 水印的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素。取值范围为0或[8, 4096]。</li>
        # 默认值：0px，表示 Height 按照原始水印图片的宽高比缩放。
        # @type Height: String
        # @param RepeatType: 水印重复类型。使用场景：水印为动态图像。取值范围：
        # <li>once：动态水印播放完后，不再出现；</li>
        # <li>repeat_last_frame：水印播放完后，停留在最后一帧；</li>
        # <li>repeat：水印循环播放，直到视频结束（默认值）。</li>
        # @type RepeatType: String

        attr_accessor :ImageContent, :Width, :Height, :RepeatType
        
        def initialize(imagecontent=nil, width=nil, height=nil, repeattype=nil)
          @ImageContent = imagecontent
          @Width = width
          @Height = height
          @RepeatType = repeattype
        end

        def deserialize(params)
          @ImageContent = params['ImageContent']
          @Width = params['Width']
          @Height = params['Height']
          @RepeatType = params['RepeatType']
        end
      end

      # 图片水印模板输入参数
      class ImageWatermarkInputForUpdate < TencentCloud::Common::AbstractModel
        # @param ImageContent: 水印图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串。支持 jpeg、png 图片格式。
        # @type ImageContent: String
        # @param Width: 水印的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。取值范围为[8, 4096]。</li>
        # @type Width: String
        # @param Height: 水印的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素。取值范围为0或[8, 4096]。</li>
        # 默认值：0px，表示 Height 按照原始水印图片的宽高比缩放。
        # @type Height: String
        # @param RepeatType: 水印重复类型。使用场景：水印为动态图像。取值范围：
        # <li>once：动态水印播放完后，不再出现；</li>
        # <li>repeat_last_frame：水印播放完后，停留在最后一帧；</li>
        # <li>repeat：水印循环播放，直到视频结束。</li>
        # @type RepeatType: String

        attr_accessor :ImageContent, :Width, :Height, :RepeatType
        
        def initialize(imagecontent=nil, width=nil, height=nil, repeattype=nil)
          @ImageContent = imagecontent
          @Width = width
          @Height = height
          @RepeatType = repeattype
        end

        def deserialize(params)
          @ImageContent = params['ImageContent']
          @Width = params['Width']
          @Height = params['Height']
          @RepeatType = params['RepeatType']
        end
      end

      # 图片水印模板
      class ImageWatermarkTemplate < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 水印图片地址。
        # @type ImageUrl: String
        # @param Width: 水印的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # @type Width: String
        # @param Height: 水印的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素；</li>
        # 0px：表示 Height 按照 Width 对视频宽度的比例缩放。
        # @type Height: String
        # @param RepeatType: 水印重复类型。使用场景：水印为动态图像。取值范围：
        # <li>once：动态水印播放完后，不再出现；</li>
        # <li>repeat_last_frame：水印播放完后，停留在最后一帧；</li>
        # <li>repeat：水印循环播放，直到视频结束。</li>
        # @type RepeatType: String

        attr_accessor :ImageUrl, :Width, :Height, :RepeatType
        
        def initialize(imageurl=nil, width=nil, height=nil, repeattype=nil)
          @ImageUrl = imageurl
          @Width = width
          @Height = height
          @RepeatType = repeattype
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @Width = params['Width']
          @Height = params['Height']
          @RepeatType = params['RepeatType']
        end
      end

      # 直播流 AI 识别结果
      class LiveStreamAiRecognitionResultInfo < TencentCloud::Common::AbstractModel
        # @param ResultSet: 内容识别结果列表。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          unless params['ResultSet'].nil?
            @ResultSet = []
            params['ResultSet'].each do |i|
              livestreamairecognitionresultitem_tmp = LiveStreamAiRecognitionResultItem.new
              livestreamairecognitionresultitem_tmp.deserialize(i)
              @ResultSet << livestreamairecognitionresultitem_tmp
            end
          end
        end
      end

      # 直播流 AI 识别结果
      class LiveStreamAiRecognitionResultItem < TencentCloud::Common::AbstractModel
        # @param Type: 结果的类型，取值范围：
        # <li>FaceRecognition：人脸识别，</li>
        # <li>AsrWordsRecognition：语音关键词识别，</li>
        # <li>OcrWordsRecognition：文本关键词识别，</li>
        # <li>AsrFullTextRecognition：语音全文识别，</li>
        # <li>OcrFullTextRecognition：文本全文识别。</li>
        # @type Type: String
        # @param FaceRecognitionResultSet: 人脸识别结果，当 Type 为
        # FaceRecognition 时有效。
        # @type FaceRecognitionResultSet: Array
        # @param AsrWordsRecognitionResultSet: 语音关键词识别结果，当 Type 为
        # AsrWordsRecognition 时有效。
        # @type AsrWordsRecognitionResultSet: Array
        # @param OcrWordsRecognitionResultSet: 文本关键词识别结果，当 Type 为
        # OcrWordsRecognition 时有效。
        # @type OcrWordsRecognitionResultSet: Array
        # @param AsrFullTextRecognitionResultSet: 语音全文识别结果，当 Type 为
        # AsrFullTextRecognition 时有效。
        # @type AsrFullTextRecognitionResultSet: Array
        # @param OcrFullTextRecognitionResultSet: 文本全文识别结果，当 Type 为
        # OcrFullTextRecognition 时有效。
        # @type OcrFullTextRecognitionResultSet: Array

        attr_accessor :Type, :FaceRecognitionResultSet, :AsrWordsRecognitionResultSet, :OcrWordsRecognitionResultSet, :AsrFullTextRecognitionResultSet, :OcrFullTextRecognitionResultSet
        
        def initialize(type=nil, facerecognitionresultset=nil, asrwordsrecognitionresultset=nil, ocrwordsrecognitionresultset=nil, asrfulltextrecognitionresultset=nil, ocrfulltextrecognitionresultset=nil)
          @Type = type
          @FaceRecognitionResultSet = facerecognitionresultset
          @AsrWordsRecognitionResultSet = asrwordsrecognitionresultset
          @OcrWordsRecognitionResultSet = ocrwordsrecognitionresultset
          @AsrFullTextRecognitionResultSet = asrfulltextrecognitionresultset
          @OcrFullTextRecognitionResultSet = ocrfulltextrecognitionresultset
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['FaceRecognitionResultSet'].nil?
            @FaceRecognitionResultSet = []
            params['FaceRecognitionResultSet'].each do |i|
              livestreamfacerecognitionresult_tmp = LiveStreamFaceRecognitionResult.new
              livestreamfacerecognitionresult_tmp.deserialize(i)
              @FaceRecognitionResultSet << livestreamfacerecognitionresult_tmp
            end
          end
          unless params['AsrWordsRecognitionResultSet'].nil?
            @AsrWordsRecognitionResultSet = []
            params['AsrWordsRecognitionResultSet'].each do |i|
              livestreamasrwordsrecognitionresult_tmp = LiveStreamAsrWordsRecognitionResult.new
              livestreamasrwordsrecognitionresult_tmp.deserialize(i)
              @AsrWordsRecognitionResultSet << livestreamasrwordsrecognitionresult_tmp
            end
          end
          unless params['OcrWordsRecognitionResultSet'].nil?
            @OcrWordsRecognitionResultSet = []
            params['OcrWordsRecognitionResultSet'].each do |i|
              livestreamocrwordsrecognitionresult_tmp = LiveStreamOcrWordsRecognitionResult.new
              livestreamocrwordsrecognitionresult_tmp.deserialize(i)
              @OcrWordsRecognitionResultSet << livestreamocrwordsrecognitionresult_tmp
            end
          end
          unless params['AsrFullTextRecognitionResultSet'].nil?
            @AsrFullTextRecognitionResultSet = []
            params['AsrFullTextRecognitionResultSet'].each do |i|
              livestreamasrfulltextrecognitionresult_tmp = LiveStreamAsrFullTextRecognitionResult.new
              livestreamasrfulltextrecognitionresult_tmp.deserialize(i)
              @AsrFullTextRecognitionResultSet << livestreamasrfulltextrecognitionresult_tmp
            end
          end
          unless params['OcrFullTextRecognitionResultSet'].nil?
            @OcrFullTextRecognitionResultSet = []
            params['OcrFullTextRecognitionResultSet'].each do |i|
              livestreamocrfulltextrecognitionresult_tmp = LiveStreamOcrFullTextRecognitionResult.new
              livestreamocrfulltextrecognitionresult_tmp.deserialize(i)
              @OcrFullTextRecognitionResultSet << livestreamocrfulltextrecognitionresult_tmp
            end
          end
        end
      end

      # 直播 AI 内容审核图片敏感结果
      class LiveStreamAiReviewImagePoliticalResult < TencentCloud::Common::AbstractModel
        # @param StartPtsTime: 嫌疑片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 嫌疑片段结束的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 嫌疑片段敏感分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段鉴黄结果建议，取值范围：
        # <li>pass</li>
        # <li>review</li>
        # <li>block</li>
        # @type Suggestion: String
        # @param Label: 视频敏感结果标签，取值范围：
        # <li>politician：敏感人物。</li>
        # <li>violation_photo：违规图标。</li>
        # @type Label: String
        # @param Name: 敏感人物、违规图标名字。
        # @type Name: String
        # @param AreaCoordSet: 敏感人物、违规图标出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        # PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartPtsTime, :EndPtsTime, :Confidence, :Suggestion, :Label, :Name, :AreaCoordSet, :Url, :PicUrlExpireTime
        
        def initialize(startptstime=nil, endptstime=nil, confidence=nil, suggestion=nil, label=nil, name=nil, areacoordset=nil, url=nil, picurlexpiretime=nil)
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @Name = name
          @AreaCoordSet = areacoordset
          @Url = url
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @Name = params['Name']
          @AreaCoordSet = params['AreaCoordSet']
          @Url = params['Url']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 直播 AI 内容审核图片鉴黄结果
      class LiveStreamAiReviewImagePornResult < TencentCloud::Common::AbstractModel
        # @param StartPtsTime: 嫌疑片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 嫌疑片段结束的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 嫌疑片段涉黄分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段鉴黄结果建议，取值范围：
        # <li>pass</li>
        # <li>review</li>
        # <li>block</li>
        # @type Suggestion: String
        # @param Label: 视频鉴黄结果标签，取值范围：
        # <li>porn：色情。</li>
        # <li>sexy：性感。</li>
        # <li>vulgar：低俗。</li>
        # <li>intimacy：亲密行为。</li>
        # @type Label: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        # PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartPtsTime, :EndPtsTime, :Confidence, :Suggestion, :Label, :Url, :PicUrlExpireTime
        
        def initialize(startptstime=nil, endptstime=nil, confidence=nil, suggestion=nil, label=nil, url=nil, picurlexpiretime=nil)
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @Url = url
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @Url = params['Url']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 直播 AI 内容审核图片涉敏结果
      class LiveStreamAiReviewImageTerrorismResult < TencentCloud::Common::AbstractModel
        # @param StartPtsTime: 嫌疑片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 嫌疑片段结束的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 嫌疑片段涉敏分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段涉敏结果建议，取值范围：
        # <li>pass</li>
        # <li>review</li>
        # <li>block</li>
        # @type Suggestion: String
        # @param Label: 视频涉敏结果标签，取值范围：
        # <li>guns：武器枪支。</li>
        # <li>crowd：人群聚集。</li>
        # <li>police：警察部队。</li>
        # <li>bloody：血腥画面。</li>
        # <li>banners：涉敏旗帜。</li>
        # <li>militant：武装分子。</li>
        # <li>explosion：爆炸火灾。</li>
        # <li>terrorists：涉敏人物。</li>
        # @type Label: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        # PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartPtsTime, :EndPtsTime, :Confidence, :Suggestion, :Label, :Url, :PicUrlExpireTime
        
        def initialize(startptstime=nil, endptstime=nil, confidence=nil, suggestion=nil, label=nil, url=nil, picurlexpiretime=nil)
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @Url = url
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @Url = params['Url']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 直播流 AI 审核结果
      class LiveStreamAiReviewResultInfo < TencentCloud::Common::AbstractModel
        # @param ResultSet: 内容审核结果列表。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          unless params['ResultSet'].nil?
            @ResultSet = []
            params['ResultSet'].each do |i|
              livestreamaireviewresultitem_tmp = LiveStreamAiReviewResultItem.new
              livestreamaireviewresultitem_tmp.deserialize(i)
              @ResultSet << livestreamaireviewresultitem_tmp
            end
          end
        end
      end

      # 直播流 AI 审核结果
      class LiveStreamAiReviewResultItem < TencentCloud::Common::AbstractModel
        # @param Type: 审核结果的类型，可以取的值有：
        # <li>ImagePorn：图片鉴黄</li>
        # <li>ImageTerrorism：图片涉敏</li>
        # <li>ImagePolitical：图片涉敏</li>
        # <li>PornVoice：声音鉴黄</li>
        # @type Type: String
        # @param ImagePornResultSet: 图片鉴黄的结果，当 Type 为 ImagePorn 时有效。
        # @type ImagePornResultSet: Array
        # @param ImageTerrorismResultSet: 图片涉敏的结果，当 Type 为 ImageTerrorism 时有效。
        # @type ImageTerrorismResultSet: Array
        # @param ImagePoliticalResultSet: 图片涉敏的结果，当 Type 为 ImagePolitical 时有效。
        # @type ImagePoliticalResultSet: Array
        # @param VoicePornResultSet: 声音鉴黄的结果，当 Type 为 PornVoice 时有效。
        # @type VoicePornResultSet: Array

        attr_accessor :Type, :ImagePornResultSet, :ImageTerrorismResultSet, :ImagePoliticalResultSet, :VoicePornResultSet
        
        def initialize(type=nil, imagepornresultset=nil, imageterrorismresultset=nil, imagepoliticalresultset=nil, voicepornresultset=nil)
          @Type = type
          @ImagePornResultSet = imagepornresultset
          @ImageTerrorismResultSet = imageterrorismresultset
          @ImagePoliticalResultSet = imagepoliticalresultset
          @VoicePornResultSet = voicepornresultset
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['ImagePornResultSet'].nil?
            @ImagePornResultSet = []
            params['ImagePornResultSet'].each do |i|
              livestreamaireviewimagepornresult_tmp = LiveStreamAiReviewImagePornResult.new
              livestreamaireviewimagepornresult_tmp.deserialize(i)
              @ImagePornResultSet << livestreamaireviewimagepornresult_tmp
            end
          end
          unless params['ImageTerrorismResultSet'].nil?
            @ImageTerrorismResultSet = []
            params['ImageTerrorismResultSet'].each do |i|
              livestreamaireviewimageterrorismresult_tmp = LiveStreamAiReviewImageTerrorismResult.new
              livestreamaireviewimageterrorismresult_tmp.deserialize(i)
              @ImageTerrorismResultSet << livestreamaireviewimageterrorismresult_tmp
            end
          end
          unless params['ImagePoliticalResultSet'].nil?
            @ImagePoliticalResultSet = []
            params['ImagePoliticalResultSet'].each do |i|
              livestreamaireviewimagepoliticalresult_tmp = LiveStreamAiReviewImagePoliticalResult.new
              livestreamaireviewimagepoliticalresult_tmp.deserialize(i)
              @ImagePoliticalResultSet << livestreamaireviewimagepoliticalresult_tmp
            end
          end
          unless params['VoicePornResultSet'].nil?
            @VoicePornResultSet = []
            params['VoicePornResultSet'].each do |i|
              livestreamaireviewvoicepornresult_tmp = LiveStreamAiReviewVoicePornResult.new
              livestreamaireviewvoicepornresult_tmp.deserialize(i)
              @VoicePornResultSet << livestreamaireviewvoicepornresult_tmp
            end
          end
        end
      end

      # 直播 AI 内容审核声音鉴黄结果
      class LiveStreamAiReviewVoicePornResult < TencentCloud::Common::AbstractModel
        # @param StartPtsTime: 嫌疑片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 嫌疑片段结束的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 嫌疑片段涉黄分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段鉴黄结果建议，取值范围：
        # <li>pass</li>
        # <li>review</li>
        # <li>block</li>
        # @type Suggestion: String
        # @param Label: 视频鉴黄结果标签，取值范围：
        # <li>sexual_moan：呻吟。</li>
        # @type Label: String

        attr_accessor :StartPtsTime, :EndPtsTime, :Confidence, :Suggestion, :Label
        
        def initialize(startptstime=nil, endptstime=nil, confidence=nil, suggestion=nil, label=nil)
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
        end

        def deserialize(params)
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
        end
      end

      # 直播识别 Asr 全文识别
      class LiveStreamAsrFullTextRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Text: 识别文本。
        # @type Text: String
        # @param StartPtsTime: 识别片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 识别片段终止的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float

        attr_accessor :Text, :StartPtsTime, :EndPtsTime, :Confidence
        
        def initialize(text=nil, startptstime=nil, endptstime=nil, confidence=nil)
          @Text = text
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
        end

        def deserialize(params)
          @Text = params['Text']
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
        end
      end

      # 直播 AI Asr 单词识别结果
      class LiveStreamAsrWordsRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Word: 语音关键词。
        # @type Word: String
        # @param StartPtsTime: 识别片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 识别片段终止的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float

        attr_accessor :Word, :StartPtsTime, :EndPtsTime, :Confidence
        
        def initialize(word=nil, startptstime=nil, endptstime=nil, confidence=nil)
          @Word = word
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
        end

        def deserialize(params)
          @Word = params['Word']
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
        end
      end

      # 直播 AI 人脸识别结果
      class LiveStreamFaceRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Id: 人物唯一标识 ID。
        # @type Id: String
        # @param Name: 人物名称。
        # @type Name: String
        # @param Type: 人物库类型，表示识别出的人物来自哪个人物库：
        # <li>Default：默认人物库；</li><li>UserDefine：用户自定义人物库。</li>
        # @type Type: String
        # @param StartPtsTime: 识别片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 识别片段终止的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array

        attr_accessor :Id, :Name, :Type, :StartPtsTime, :EndPtsTime, :Confidence, :AreaCoordSet
        
        def initialize(id=nil, name=nil, type=nil, startptstime=nil, endptstime=nil, confidence=nil, areacoordset=nil)
          @Id = id
          @Name = name
          @Type = type
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 直播识别 Ocr 全文识别
      class LiveStreamOcrFullTextRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Text: 语音文本。
        # @type Text: String
        # @param StartPtsTime: 识别片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 识别片段终止的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array

        attr_accessor :Text, :StartPtsTime, :EndPtsTime, :Confidence, :AreaCoordSet
        
        def initialize(text=nil, startptstime=nil, endptstime=nil, confidence=nil, areacoordset=nil)
          @Text = text
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @Text = params['Text']
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 直播 AI Ocr 单词识别结果
      class LiveStreamOcrWordsRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Word: 文本关键词。
        # @type Word: String
        # @param StartPtsTime: 识别片段起始的 PTS 时间，单位：秒。
        # @type StartPtsTime: Float
        # @param EndPtsTime: 识别片段终止的 PTS 时间，单位：秒。
        # @type EndPtsTime: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoords: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoords: Array

        attr_accessor :Word, :StartPtsTime, :EndPtsTime, :Confidence, :AreaCoords
        
        def initialize(word=nil, startptstime=nil, endptstime=nil, confidence=nil, areacoords=nil)
          @Word = word
          @StartPtsTime = startptstime
          @EndPtsTime = endptstime
          @Confidence = confidence
          @AreaCoords = areacoords
        end

        def deserialize(params)
          @Word = params['Word']
          @StartPtsTime = params['StartPtsTime']
          @EndPtsTime = params['EndPtsTime']
          @Confidence = params['Confidence']
          @AreaCoords = params['AreaCoords']
        end
      end

      # 直播流处理错误信息
      class LiveStreamProcessErrorInfo < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码：
        # <li>0表示没有错误；</li>
        # <li>非0表示错误，请参考 Message 错误信息。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String

        attr_accessor :ErrCode, :Message
        
        def initialize(errcode=nil, message=nil)
          @ErrCode = errcode
          @Message = message
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @Message = params['Message']
        end
      end

      # 直播处理任务信息
      class LiveStreamProcessTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 媒体处理任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Url: 直播流 URL。
        # @type Url: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :Url
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, url=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Url = url
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @Url = params['Url']
        end
      end

      # 任务处理的事件通知配置。
      class LiveStreamTaskNotifyConfig < TencentCloud::Common::AbstractModel
        # @param CmqModel: CMQ 的模型，有 Queue 和 Topic 两种，目前仅支持 Queue。
        # @type CmqModel: String
        # @param CmqRegion: CMQ 的园区，如 sh，bj 等。
        # @type CmqRegion: String
        # @param QueueName: 当模型为 Queue 时有效，表示接收事件通知的 CMQ 的队列名。
        # @type QueueName: String
        # @param TopicName: 当模型为 Topic 时有效，表示接收事件通知的 CMQ 的主题名。
        # @type TopicName: String
        # @param NotifyType: 通知类型，默认CMQ，指定URL时HTTP回调推送到 NotifyUrl 指定的地址。
        # @type NotifyType: String
        # @param NotifyUrl: HTTP回调地址，NotifyType为URL时必填。
        # @type NotifyUrl: String

        attr_accessor :CmqModel, :CmqRegion, :QueueName, :TopicName, :NotifyType, :NotifyUrl
        
        def initialize(cmqmodel=nil, cmqregion=nil, queuename=nil, topicname=nil, notifytype=nil, notifyurl=nil)
          @CmqModel = cmqmodel
          @CmqRegion = cmqregion
          @QueueName = queuename
          @TopicName = topicname
          @NotifyType = notifytype
          @NotifyUrl = notifyurl
        end

        def deserialize(params)
          @CmqModel = params['CmqModel']
          @CmqRegion = params['CmqRegion']
          @QueueName = params['QueueName']
          @TopicName = params['TopicName']
          @NotifyType = params['NotifyType']
          @NotifyUrl = params['NotifyUrl']
        end
      end

      # 低光照增强配置
      class LowLightEnhanceConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Type: 类型，可选值：
        # <li>normal</li>
        # 默认值：normal。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Switch, :Type
        
        def initialize(switch=nil, type=nil)
          @Switch = switch
          @Type = type
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Type = params['Type']
        end
      end

      # ManageTask请求参数结构体
      class ManageTaskRequest < TencentCloud::Common::AbstractModel
        # @param OperationType: 操作类型，取值范围：
        # <ul>
        # <li>Abort：终止任务。使用说明：
        # <ul><li>若 [任务类型](/document/product/862/37614#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0) 为直播流处理任务（LiveStreamProcessTask），支持终止 [任务状态](/document/product/862/37614#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0) 为等待中（WAITING）或处理中（PROCESSING）的任务；</li>
        # <li>否则，对于其他 [任务类型](/document/product/862/37614#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0)，只支持终止 [任务状态](/document/product/862/37614#3.-.E8.BE.93.E5.87.BA.E5.8F.82.E6.95.B0) 为等待中（WAITING）的任务。</li></ul>
        # </li></ul>
        # @type OperationType: String
        # @param TaskId: 视频处理的任务 ID。
        # @type TaskId: String

        attr_accessor :OperationType, :TaskId
        
        def initialize(operationtype=nil, taskid=nil)
          @OperationType = operationtype
          @TaskId = taskid
        end

        def deserialize(params)
          @OperationType = params['OperationType']
          @TaskId = params['TaskId']
        end
      end

      # ManageTask返回参数结构体
      class ManageTaskResponse < TencentCloud::Common::AbstractModel
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

      # 智能分类结果
      class MediaAiAnalysisClassificationItem < TencentCloud::Common::AbstractModel
        # @param Classification: 智能分类的类别名称。
        # @type Classification: String
        # @param Confidence: 智能分类的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Classification, :Confidence
        
        def initialize(classification=nil, confidence=nil)
          @Classification = classification
          @Confidence = confidence
        end

        def deserialize(params)
          @Classification = params['Classification']
          @Confidence = params['Confidence']
        end
      end

      # 智能封面信息
      class MediaAiAnalysisCoverItem < TencentCloud::Common::AbstractModel
        # @param CoverPath: 智能封面存储路径。
        # @type CoverPath: String
        # @param Confidence: 智能封面的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :CoverPath, :Confidence
        
        def initialize(coverpath=nil, confidence=nil)
          @CoverPath = coverpath
          @Confidence = confidence
        end

        def deserialize(params)
          @CoverPath = params['CoverPath']
          @Confidence = params['Confidence']
        end
      end

      # 智能按帧标签结果信息
      class MediaAiAnalysisFrameTagItem < TencentCloud::Common::AbstractModel
        # @param Tag: 按帧标签名称。
        # @type Tag: String
        # @param CategorySet: 按帧标签名称的分类列表，CategorySet.N 表示第 N+1级分类。
        # 比如 Tag 为“塔楼”时，CategorySet 包含两个元素：CategorySet.0 为“场景”，CategorySet.1为 “建筑”，表示按帧标签为“塔楼”，且第1级分类是“场景”，第2级分类是“建筑”。
        # @type CategorySet: Array
        # @param Confidence: 按帧标签的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Tag, :CategorySet, :Confidence
        
        def initialize(tag=nil, categoryset=nil, confidence=nil)
          @Tag = tag
          @CategorySet = categoryset
          @Confidence = confidence
        end

        def deserialize(params)
          @Tag = params['Tag']
          @CategorySet = params['CategorySet']
          @Confidence = params['Confidence']
        end
      end

      # 按帧标签片段列表
      class MediaAiAnalysisFrameTagSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 按帧标签起始的偏移时间。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 按帧标签结束的偏移时间。
        # @type EndTimeOffset: Float
        # @param TagSet: 时间片段内的标签列表。
        # @type TagSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :TagSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, tagset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @TagSet = tagset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              mediaaianalysisframetagitem_tmp = MediaAiAnalysisFrameTagItem.new
              mediaaianalysisframetagitem_tmp.deserialize(i)
              @TagSet << mediaaianalysisframetagitem_tmp
            end
          end
        end
      end

      # 智能标签结果信息
      class MediaAiAnalysisTagItem < TencentCloud::Common::AbstractModel
        # @param Tag: 标签名称。
        # @type Tag: String
        # @param Confidence: 标签的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Tag, :Confidence
        
        def initialize(tag=nil, confidence=nil)
          @Tag = tag
          @Confidence = confidence
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Confidence = params['Confidence']
        end
      end

      # 视频转动图结果信息
      class MediaAnimatedGraphicsItem < TencentCloud::Common::AbstractModel
        # @param Storage: 转动图文件的存储位置。
        # @type Storage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param Path: 转动图的文件路径。
        # @type Path: String
        # @param Definition: 转动图模板 ID，参见[转动图参数模板](https://cloud.tencent.com/document/product/862/37042#.E9.A2.84.E7.BD.AE.E8.BD.AC.E5.8A.A8.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param Container: 动图格式，如 gif。
        # @type Container: String
        # @param Height: 动图的高度，单位：px。
        # @type Height: Integer
        # @param Width: 动图的宽度，单位：px。
        # @type Width: Integer
        # @param Bitrate: 动图码率，单位：bps。
        # @type Bitrate: Integer
        # @param Size: 动图大小，单位：字节。
        # @type Size: Integer
        # @param Md5: 动图的md5值。
        # @type Md5: String
        # @param StartTimeOffset: 动图在视频中的起始时间偏移，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 动图在视频中的结束时间偏移，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :Storage, :Path, :Definition, :Container, :Height, :Width, :Bitrate, :Size, :Md5, :StartTimeOffset, :EndTimeOffset
        
        def initialize(storage=nil, path=nil, definition=nil, container=nil, height=nil, width=nil, bitrate=nil, size=nil, md5=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Storage = storage
          @Path = path
          @Definition = definition
          @Container = container
          @Height = height
          @Width = width
          @Bitrate = bitrate
          @Size = size
          @Md5 = md5
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          unless params['Storage'].nil?
            @Storage = TaskOutputStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @Path = params['Path']
          @Definition = params['Definition']
          @Container = params['Container']
          @Height = params['Height']
          @Width = params['Width']
          @Bitrate = params['Bitrate']
          @Size = params['Size']
          @Md5 = params['Md5']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 点播文件音频流信息
      class MediaAudioStreamItem < TencentCloud::Common::AbstractModel
        # @param Bitrate: 音频流的码率，单位：bps。
        # @type Bitrate: Integer
        # @param SamplingRate: 音频流的采样率，单位：hz。
        # @type SamplingRate: Integer
        # @param Codec: 音频流的编码格式，例如 aac。
        # @type Codec: String
        # @param Channel: 音频声道数，例如 2。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Channel: Integer

        attr_accessor :Bitrate, :SamplingRate, :Codec, :Channel
        
        def initialize(bitrate=nil, samplingrate=nil, codec=nil, channel=nil)
          @Bitrate = bitrate
          @SamplingRate = samplingrate
          @Codec = codec
          @Channel = channel
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @SamplingRate = params['SamplingRate']
          @Codec = params['Codec']
          @Channel = params['Channel']
        end
      end

      # 内容审核 Asr 文字审核嫌疑片段
      class MediaContentReviewAsrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段审核结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param KeywordSet: 嫌疑关键词列表。
        # @type KeywordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :KeywordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, keywordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @KeywordSet = keywordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @KeywordSet = params['KeywordSet']
        end
      end

      # 内容审核 Ocr 文字审核嫌疑片段
      class MediaContentReviewOcrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段审核结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param KeywordSet: 嫌疑关键词列表。
        # @type KeywordSet: Array
        # @param AreaCoordSet: 嫌疑文字出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        # PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :KeywordSet, :AreaCoordSet, :Url, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, keywordset=nil, areacoordset=nil, url=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @KeywordSet = keywordset
          @AreaCoordSet = areacoordset
          @Url = url
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @KeywordSet = params['KeywordSet']
          @AreaCoordSet = params['AreaCoordSet']
          @Url = params['Url']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 内容审核涉敏嫌疑片段
      class MediaContentReviewPoliticalSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉敏分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段涉敏结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Name: 涉敏人物、违规图标名字。
        # @type Name: String
        # @param Label: 嫌疑片段涉敏结果标签。内容审核模板[画面涉敏任务控制参数](https://cloud.tencent.com/document/api/862/37615#PoliticalImgReviewTemplateInfo)里 LabelSet 参数与此参数取值范围的对应关系：
        # violation_photo：
        # <li>violation_photo：违规图标。</li>
        # politician：
        # <li>nation_politician：国家领导人；</li>
        # <li>province_politician: 省部级领导人；</li>
        # <li>bureau_politician：厅局级领导人；</li>
        # <li>county_politician：县处级领导人；</li>
        # <li>rural_politician：乡科级领导人；</li>
        # <li>sensitive_politician：涉敏人物；</li>
        # <li>foreign_politician：国外领导人。</li>
        # entertainment：
        # <li>sensitive_entertainment：敏感娱乐人物。</li>
        # sport：
        # <li>sensitive_sport：敏感体育人物。</li>
        # entrepreneur：
        # <li>sensitive_entrepreneur：敏感商业人物。</li>
        # scholar：
        # <li>sensitive_scholar：敏感教育学者。</li>
        # celebrity：
        # <li>sensitive_celebrity：敏感知名人物；</li>
        # <li>historical_celebrity：历史知名人物。</li>
        # military：
        # <li>sensitive_military：敏感军事人物。</li>
        # @type Label: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        #  PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param AreaCoordSet: 涉敏人物、违规图标出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :Name, :Label, :Url, :AreaCoordSet, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, name=nil, label=nil, url=nil, areacoordset=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @Name = name
          @Label = label
          @Url = url
          @AreaCoordSet = areacoordset
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Name = params['Name']
          @Label = params['Label']
          @Url = params['Url']
          @AreaCoordSet = params['AreaCoordSet']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 内容审核涉黄/涉敏嫌疑片段
      class MediaContentReviewSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉黄分数。
        # @type Confidence: Float
        # @param Label: 嫌疑片段鉴黄结果标签。
        # @type Label: String
        # @param Suggestion: 嫌疑片段鉴黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        #  PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Label, :Suggestion, :Url, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, label=nil, suggestion=nil, url=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Label = label
          @Suggestion = suggestion
          @Url = url
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Url = params['Url']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 雪碧图信息
      class MediaImageSpriteItem < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图规格，参见[雪碧图参数模板](https://cloud.tencent.com/document/product/266/33480#.E9.9B.AA.E7.A2.A7.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param Height: 雪碧图小图的高度。
        # @type Height: Integer
        # @param Width: 雪碧图小图的宽度。
        # @type Width: Integer
        # @param TotalCount: 每一张雪碧图大图里小图的数量。
        # @type TotalCount: Integer
        # @param ImagePathSet: 每一张雪碧图大图的路径。
        # @type ImagePathSet: Array
        # @param WebVttPath: 雪碧图子图位置与时间关系的 WebVtt 文件路径。WebVtt 文件表明了各个雪碧图小图对应的时间点，以及在雪碧大图里的坐标位置，一般被播放器用于实现预览。
        # @type WebVttPath: String
        # @param Storage: 雪碧图文件的存储位置。
        # @type Storage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`

        attr_accessor :Definition, :Height, :Width, :TotalCount, :ImagePathSet, :WebVttPath, :Storage
        
        def initialize(definition=nil, height=nil, width=nil, totalcount=nil, imagepathset=nil, webvttpath=nil, storage=nil)
          @Definition = definition
          @Height = height
          @Width = width
          @TotalCount = totalcount
          @ImagePathSet = imagepathset
          @WebVttPath = webvttpath
          @Storage = storage
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Height = params['Height']
          @Width = params['Width']
          @TotalCount = params['TotalCount']
          @ImagePathSet = params['ImagePathSet']
          @WebVttPath = params['WebVttPath']
          unless params['Storage'].nil?
            @Storage = TaskOutputStorage.new
            @Storage.deserialize(params['Storage'])
          end
        end
      end

      # 媒体处理的输入对象信息。
      class MediaInputInfo < TencentCloud::Common::AbstractModel
        # @param Type: 输入来源对象的类型，支持 COS 和 URL 两种。
        # @type Type: String
        # @param CosInputInfo: 当 Type 为 COS 时有效，则该项为必填，表示媒体处理 COS 对象信息。
        # @type CosInputInfo: :class:`Tencentcloud::Mps.v20190612.models.CosInputInfo`
        # @param UrlInputInfo: 当 Type 为 URL 时有效，则该项为必填，表示媒体处理 URL 对象信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrlInputInfo: :class:`Tencentcloud::Mps.v20190612.models.UrlInputInfo`

        attr_accessor :Type, :CosInputInfo, :UrlInputInfo
        
        def initialize(type=nil, cosinputinfo=nil, urlinputinfo=nil)
          @Type = type
          @CosInputInfo = cosinputinfo
          @UrlInputInfo = urlinputinfo
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CosInputInfo'].nil?
            @CosInputInfo = CosInputInfo.new
            @CosInputInfo.deserialize(params['CosInputInfo'])
          end
          unless params['UrlInputInfo'].nil?
            @UrlInputInfo = UrlInputInfo.new
            @UrlInputInfo.deserialize(params['UrlInputInfo'])
          end
        end
      end

      # 点播媒体文件元信息
      class MediaMetaData < TencentCloud::Common::AbstractModel
        # @param Size: 上传的媒体文件大小（视频为 HLS 时，大小是 m3u8 和 ts 文件大小的总和），单位：字节。
        # @type Size: Integer
        # @param Container: 容器类型，例如 m4a，mp4 等。
        # @type Container: String
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和，单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer
        # @param Duration: 视频时长，单位：秒。
        # @type Duration: Float
        # @param Rotate: 视频拍摄时的选择角度，单位：度。
        # @type Rotate: Integer
        # @param VideoStreamSet: 视频流信息。
        # @type VideoStreamSet: Array
        # @param AudioStreamSet: 音频流信息。
        # @type AudioStreamSet: Array
        # @param VideoDuration: 视频时长，单位：秒。
        # @type VideoDuration: Float
        # @param AudioDuration: 音频时长，单位：秒。
        # @type AudioDuration: Float

        attr_accessor :Size, :Container, :Bitrate, :Height, :Width, :Duration, :Rotate, :VideoStreamSet, :AudioStreamSet, :VideoDuration, :AudioDuration
        
        def initialize(size=nil, container=nil, bitrate=nil, height=nil, width=nil, duration=nil, rotate=nil, videostreamset=nil, audiostreamset=nil, videoduration=nil, audioduration=nil)
          @Size = size
          @Container = container
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Duration = duration
          @Rotate = rotate
          @VideoStreamSet = videostreamset
          @AudioStreamSet = audiostreamset
          @VideoDuration = videoduration
          @AudioDuration = audioduration
        end

        def deserialize(params)
          @Size = params['Size']
          @Container = params['Container']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Duration = params['Duration']
          @Rotate = params['Rotate']
          unless params['VideoStreamSet'].nil?
            @VideoStreamSet = []
            params['VideoStreamSet'].each do |i|
              mediavideostreamitem_tmp = MediaVideoStreamItem.new
              mediavideostreamitem_tmp.deserialize(i)
              @VideoStreamSet << mediavideostreamitem_tmp
            end
          end
          unless params['AudioStreamSet'].nil?
            @AudioStreamSet = []
            params['AudioStreamSet'].each do |i|
              mediaaudiostreamitem_tmp = MediaAudioStreamItem.new
              mediaaudiostreamitem_tmp.deserialize(i)
              @AudioStreamSet << mediaaudiostreamitem_tmp
            end
          end
          @VideoDuration = params['VideoDuration']
          @AudioDuration = params['AudioDuration']
        end
      end

      # 对视频转自适应码流任务结果类型
      class MediaProcessTaskAdaptiveDynamicStreamingResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频转自适应码流任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AdaptiveDynamicStreamingTaskInput`
        # @param Output: 对视频转自适应码流任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.AdaptiveDynamicStreamingInfoItem`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AdaptiveDynamicStreamingTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AdaptiveDynamicStreamingInfoItem.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 转动图任务结果类型
      class MediaProcessTaskAnimatedGraphicResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 转动图任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AnimatedGraphicTaskInput`
        # @param Output: 转动图任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.MediaAnimatedGraphicsItem`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AnimatedGraphicTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = MediaAnimatedGraphicsItem.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 对视频截雪碧图任务结果类型
      class MediaProcessTaskImageSpriteResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频截雪碧图任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.ImageSpriteTaskInput`
        # @param Output: 对视频截雪碧图任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.MediaImageSpriteItem`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = ImageSpriteTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = MediaImageSpriteItem.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 媒体处理任务类型
      class MediaProcessTaskInput < TencentCloud::Common::AbstractModel
        # @param TranscodeTaskSet: 视频转码任务列表。
        # @type TranscodeTaskSet: Array
        # @param AnimatedGraphicTaskSet: 视频转动图任务列表。
        # @type AnimatedGraphicTaskSet: Array
        # @param SnapshotByTimeOffsetTaskSet: 对视频按时间点截图任务列表。
        # @type SnapshotByTimeOffsetTaskSet: Array
        # @param SampleSnapshotTaskSet: 对视频采样截图任务列表。
        # @type SampleSnapshotTaskSet: Array
        # @param ImageSpriteTaskSet: 对视频截雪碧图任务列表。
        # @type ImageSpriteTaskSet: Array
        # @param AdaptiveDynamicStreamingTaskSet: 转自适应码流任务列表。
        # @type AdaptiveDynamicStreamingTaskSet: Array

        attr_accessor :TranscodeTaskSet, :AnimatedGraphicTaskSet, :SnapshotByTimeOffsetTaskSet, :SampleSnapshotTaskSet, :ImageSpriteTaskSet, :AdaptiveDynamicStreamingTaskSet
        
        def initialize(transcodetaskset=nil, animatedgraphictaskset=nil, snapshotbytimeoffsettaskset=nil, samplesnapshottaskset=nil, imagespritetaskset=nil, adaptivedynamicstreamingtaskset=nil)
          @TranscodeTaskSet = transcodetaskset
          @AnimatedGraphicTaskSet = animatedgraphictaskset
          @SnapshotByTimeOffsetTaskSet = snapshotbytimeoffsettaskset
          @SampleSnapshotTaskSet = samplesnapshottaskset
          @ImageSpriteTaskSet = imagespritetaskset
          @AdaptiveDynamicStreamingTaskSet = adaptivedynamicstreamingtaskset
        end

        def deserialize(params)
          unless params['TranscodeTaskSet'].nil?
            @TranscodeTaskSet = []
            params['TranscodeTaskSet'].each do |i|
              transcodetaskinput_tmp = TranscodeTaskInput.new
              transcodetaskinput_tmp.deserialize(i)
              @TranscodeTaskSet << transcodetaskinput_tmp
            end
          end
          unless params['AnimatedGraphicTaskSet'].nil?
            @AnimatedGraphicTaskSet = []
            params['AnimatedGraphicTaskSet'].each do |i|
              animatedgraphictaskinput_tmp = AnimatedGraphicTaskInput.new
              animatedgraphictaskinput_tmp.deserialize(i)
              @AnimatedGraphicTaskSet << animatedgraphictaskinput_tmp
            end
          end
          unless params['SnapshotByTimeOffsetTaskSet'].nil?
            @SnapshotByTimeOffsetTaskSet = []
            params['SnapshotByTimeOffsetTaskSet'].each do |i|
              snapshotbytimeoffsettaskinput_tmp = SnapshotByTimeOffsetTaskInput.new
              snapshotbytimeoffsettaskinput_tmp.deserialize(i)
              @SnapshotByTimeOffsetTaskSet << snapshotbytimeoffsettaskinput_tmp
            end
          end
          unless params['SampleSnapshotTaskSet'].nil?
            @SampleSnapshotTaskSet = []
            params['SampleSnapshotTaskSet'].each do |i|
              samplesnapshottaskinput_tmp = SampleSnapshotTaskInput.new
              samplesnapshottaskinput_tmp.deserialize(i)
              @SampleSnapshotTaskSet << samplesnapshottaskinput_tmp
            end
          end
          unless params['ImageSpriteTaskSet'].nil?
            @ImageSpriteTaskSet = []
            params['ImageSpriteTaskSet'].each do |i|
              imagespritetaskinput_tmp = ImageSpriteTaskInput.new
              imagespritetaskinput_tmp.deserialize(i)
              @ImageSpriteTaskSet << imagespritetaskinput_tmp
            end
          end
          unless params['AdaptiveDynamicStreamingTaskSet'].nil?
            @AdaptiveDynamicStreamingTaskSet = []
            params['AdaptiveDynamicStreamingTaskSet'].each do |i|
              adaptivedynamicstreamingtaskinput_tmp = AdaptiveDynamicStreamingTaskInput.new
              adaptivedynamicstreamingtaskinput_tmp.deserialize(i)
              @AdaptiveDynamicStreamingTaskSet << adaptivedynamicstreamingtaskinput_tmp
            end
          end
        end
      end

      # 任务查询结果类型
      class MediaProcessTaskResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Transcode：转码</li>
        # <li>AnimatedGraphics：转动图</li>
        # <li>SnapshotByTimeOffset：时间点截图</li>
        # <li>SampleSnapshot：采样截图</li>
        # <li>ImageSprites：雪碧图</li>
        # <li>CoverBySnapshot：截图做封面</li>
        # <li>AdaptiveDynamicStreaming：自适应码流</li>
        # @type Type: String
        # @param TranscodeTask: 视频转码任务的查询结果，当任务类型为 Transcode 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskTranscodeResult`
        # @param AnimatedGraphicTask: 视频转动图任务的查询结果，当任务类型为 AnimatedGraphics 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnimatedGraphicTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskAnimatedGraphicResult`
        # @param SnapshotByTimeOffsetTask: 对视频按时间点截图任务的查询结果，当任务类型为 SnapshotByTimeOffset 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskSnapshotByTimeOffsetResult`
        # @param SampleSnapshotTask: 对视频采样截图任务的查询结果，当任务类型为 SampleSnapshot 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleSnapshotTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskSampleSnapshotResult`
        # @param ImageSpriteTask: 对视频截雪碧图任务的查询结果，当任务类型为 ImageSprite 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSpriteTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskImageSpriteResult`
        # @param AdaptiveDynamicStreamingTask: 转自适应码流任务查询结果，当任务类型为 AdaptiveDynamicStreaming 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdaptiveDynamicStreamingTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskAdaptiveDynamicStreamingResult`

        attr_accessor :Type, :TranscodeTask, :AnimatedGraphicTask, :SnapshotByTimeOffsetTask, :SampleSnapshotTask, :ImageSpriteTask, :AdaptiveDynamicStreamingTask
        
        def initialize(type=nil, transcodetask=nil, animatedgraphictask=nil, snapshotbytimeoffsettask=nil, samplesnapshottask=nil, imagespritetask=nil, adaptivedynamicstreamingtask=nil)
          @Type = type
          @TranscodeTask = transcodetask
          @AnimatedGraphicTask = animatedgraphictask
          @SnapshotByTimeOffsetTask = snapshotbytimeoffsettask
          @SampleSnapshotTask = samplesnapshottask
          @ImageSpriteTask = imagespritetask
          @AdaptiveDynamicStreamingTask = adaptivedynamicstreamingtask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TranscodeTask'].nil?
            @TranscodeTask = MediaProcessTaskTranscodeResult.new
            @TranscodeTask.deserialize(params['TranscodeTask'])
          end
          unless params['AnimatedGraphicTask'].nil?
            @AnimatedGraphicTask = MediaProcessTaskAnimatedGraphicResult.new
            @AnimatedGraphicTask.deserialize(params['AnimatedGraphicTask'])
          end
          unless params['SnapshotByTimeOffsetTask'].nil?
            @SnapshotByTimeOffsetTask = MediaProcessTaskSnapshotByTimeOffsetResult.new
            @SnapshotByTimeOffsetTask.deserialize(params['SnapshotByTimeOffsetTask'])
          end
          unless params['SampleSnapshotTask'].nil?
            @SampleSnapshotTask = MediaProcessTaskSampleSnapshotResult.new
            @SampleSnapshotTask.deserialize(params['SampleSnapshotTask'])
          end
          unless params['ImageSpriteTask'].nil?
            @ImageSpriteTask = MediaProcessTaskImageSpriteResult.new
            @ImageSpriteTask.deserialize(params['ImageSpriteTask'])
          end
          unless params['AdaptiveDynamicStreamingTask'].nil?
            @AdaptiveDynamicStreamingTask = MediaProcessTaskAdaptiveDynamicStreamingResult.new
            @AdaptiveDynamicStreamingTask.deserialize(params['AdaptiveDynamicStreamingTask'])
          end
        end
      end

      # 对视频做采样截图任务结果类型
      class MediaProcessTaskSampleSnapshotResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频做采样截图任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.SampleSnapshotTaskInput`
        # @param Output: 对视频做采样截图任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.MediaSampleSnapshotItem`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = SampleSnapshotTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = MediaSampleSnapshotItem.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 对视频按指定时间点截图任务结果类型
      class MediaProcessTaskSnapshotByTimeOffsetResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频按指定时间点截图任务输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.SnapshotByTimeOffsetTaskInput`
        # @param Output: 对视频按指定时间点截图任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.MediaSnapshotByTimeOffsetItem`

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = SnapshotByTimeOffsetTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = MediaSnapshotByTimeOffsetItem.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 转码任务结果类型
      class MediaProcessTaskTranscodeResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 转码任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.TranscodeTaskInput`
        # @param Output: 转码任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Mps.v20190612.models.MediaTranscodeItem`
        # @param Progress: 转码进度，取值范围 [0-100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output, :Progress
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil, progress=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
          @Progress = progress
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = TranscodeTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = MediaTranscodeItem.new
            @Output.deserialize(params['Output'])
          end
          @Progress = params['Progress']
        end
      end

      # 采样截图信息
      class MediaSampleSnapshotItem < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图规格 ID，参见[采样截图参数模板](https://cloud.tencent.com/document/product/266/33480#.E9.87.87.E6.A0.B7.E6.88.AA.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param SampleType: 采样方式，取值范围：
        # <li>Percent：根据百分比间隔采样。</li>
        # <li>Time：根据时间间隔采样。</li>
        # @type SampleType: String
        # @param Interval: 采样间隔
        # <li>当 SampleType 为 Percent 时，该值表示多少百分比一张图。</li>
        # <li>当 SampleType 为 Time 时，该值表示多少时间间隔一张图，单位秒， 第一张图均为视频首帧。</li>
        # @type Interval: Integer
        # @param Storage: 截图后文件的存储位置。
        # @type Storage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param ImagePathSet: 生成的截图 path 列表。
        # @type ImagePathSet: Array
        # @param WaterMarkDefinition: 截图如果被打上了水印，被打水印的模板 ID 列表。
        # @type WaterMarkDefinition: Array

        attr_accessor :Definition, :SampleType, :Interval, :Storage, :ImagePathSet, :WaterMarkDefinition
        
        def initialize(definition=nil, sampletype=nil, interval=nil, storage=nil, imagepathset=nil, watermarkdefinition=nil)
          @Definition = definition
          @SampleType = sampletype
          @Interval = interval
          @Storage = storage
          @ImagePathSet = imagepathset
          @WaterMarkDefinition = watermarkdefinition
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SampleType = params['SampleType']
          @Interval = params['Interval']
          unless params['Storage'].nil?
            @Storage = TaskOutputStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @ImagePathSet = params['ImagePathSet']
          @WaterMarkDefinition = params['WaterMarkDefinition']
        end
      end

      # 点播文件指定时间点截图信息
      class MediaSnapshotByTimeOffsetItem < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图规格，参见[指定时间点截图参数模板](https://cloud.tencent.com/document/product/266/33480#.E6.97.B6.E9.97.B4.E7.82.B9.E6.88.AA.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param PicInfoSet: 同一规格的截图信息集合，每个元素代表一张截图。
        # @type PicInfoSet: Array
        # @param Storage: 指定时间点截图文件的存储位置。
        # @type Storage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`

        attr_accessor :Definition, :PicInfoSet, :Storage
        
        def initialize(definition=nil, picinfoset=nil, storage=nil)
          @Definition = definition
          @PicInfoSet = picinfoset
          @Storage = storage
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['PicInfoSet'].nil?
            @PicInfoSet = []
            params['PicInfoSet'].each do |i|
              mediasnapshotbytimepicinfoitem_tmp = MediaSnapshotByTimePicInfoItem.new
              mediasnapshotbytimepicinfoitem_tmp.deserialize(i)
              @PicInfoSet << mediasnapshotbytimepicinfoitem_tmp
            end
          end
          unless params['Storage'].nil?
            @Storage = TaskOutputStorage.new
            @Storage.deserialize(params['Storage'])
          end
        end
      end

      # 指定时间点截图信息
      class MediaSnapshotByTimePicInfoItem < TencentCloud::Common::AbstractModel
        # @param TimeOffset: 该张截图对应视频文件中的时间偏移，单位为秒。
        # @type TimeOffset: Float
        # @param Path: 该张截图的路径。
        # @type Path: String
        # @param WaterMarkDefinition: 截图如果被打上了水印，被打水印的模板 ID 列表。
        # @type WaterMarkDefinition: Array

        attr_accessor :TimeOffset, :Path, :WaterMarkDefinition
        
        def initialize(timeoffset=nil, path=nil, watermarkdefinition=nil)
          @TimeOffset = timeoffset
          @Path = path
          @WaterMarkDefinition = watermarkdefinition
        end

        def deserialize(params)
          @TimeOffset = params['TimeOffset']
          @Path = params['Path']
          @WaterMarkDefinition = params['WaterMarkDefinition']
        end
      end

      # 转码信息
      class MediaTranscodeItem < TencentCloud::Common::AbstractModel
        # @param OutputStorage: 转码后文件的目标存储。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param Path: 转码后的视频文件路径。
        # @type Path: String
        # @param Definition: 转码规格 ID，参见[转码参数模板](https://cloud.tencent.com/document/product/862/37042)。
        # @type Definition: Integer
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和， 单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer
        # @param Size: 媒体文件总大小（视频为 HLS 时，大小是 m3u8 和 ts 文件大小的总和），单位：字节。
        # @type Size: Integer
        # @param Duration: 视频时长，单位：秒。
        # @type Duration: Float
        # @param Container: 容器类型，例如 m4a，mp4 等。
        # @type Container: String
        # @param Md5: 视频的 md5 值。
        # @type Md5: String
        # @param AudioStreamSet: 音频流信息。
        # @type AudioStreamSet: Array
        # @param VideoStreamSet: 视频流信息。
        # @type VideoStreamSet: Array

        attr_accessor :OutputStorage, :Path, :Definition, :Bitrate, :Height, :Width, :Size, :Duration, :Container, :Md5, :AudioStreamSet, :VideoStreamSet
        
        def initialize(outputstorage=nil, path=nil, definition=nil, bitrate=nil, height=nil, width=nil, size=nil, duration=nil, container=nil, md5=nil, audiostreamset=nil, videostreamset=nil)
          @OutputStorage = outputstorage
          @Path = path
          @Definition = definition
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Size = size
          @Duration = duration
          @Container = container
          @Md5 = md5
          @AudioStreamSet = audiostreamset
          @VideoStreamSet = videostreamset
        end

        def deserialize(params)
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @Path = params['Path']
          @Definition = params['Definition']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Size = params['Size']
          @Duration = params['Duration']
          @Container = params['Container']
          @Md5 = params['Md5']
          unless params['AudioStreamSet'].nil?
            @AudioStreamSet = []
            params['AudioStreamSet'].each do |i|
              mediaaudiostreamitem_tmp = MediaAudioStreamItem.new
              mediaaudiostreamitem_tmp.deserialize(i)
              @AudioStreamSet << mediaaudiostreamitem_tmp
            end
          end
          unless params['VideoStreamSet'].nil?
            @VideoStreamSet = []
            params['VideoStreamSet'].each do |i|
              mediavideostreamitem_tmp = MediaVideoStreamItem.new
              mediavideostreamitem_tmp.deserialize(i)
              @VideoStreamSet << mediavideostreamitem_tmp
            end
          end
        end
      end

      # 点播文件视频流信息
      class MediaVideoStreamItem < TencentCloud::Common::AbstractModel
        # @param Bitrate: 视频流的码率，单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流的高度，单位：px。
        # @type Height: Integer
        # @param Width: 视频流的宽度，单位：px。
        # @type Width: Integer
        # @param Codec: 视频流的编码格式，例如 h264。
        # @type Codec: String
        # @param Fps: 帧率，单位：hz。
        # @type Fps: Integer
        # @param ColorPrimaries: 色彩空间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColorPrimaries: String
        # @param ColorSpace: 色彩空间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColorSpace: String
        # @param ColorTransfer: 色彩空间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColorTransfer: String
        # @param HdrType: HDR类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HdrType: String

        attr_accessor :Bitrate, :Height, :Width, :Codec, :Fps, :ColorPrimaries, :ColorSpace, :ColorTransfer, :HdrType
        
        def initialize(bitrate=nil, height=nil, width=nil, codec=nil, fps=nil, colorprimaries=nil, colorspace=nil, colortransfer=nil, hdrtype=nil)
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Codec = codec
          @Fps = fps
          @ColorPrimaries = colorprimaries
          @ColorSpace = colorspace
          @ColorTransfer = colortransfer
          @HdrType = hdrtype
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Codec = params['Codec']
          @Fps = params['Fps']
          @ColorPrimaries = params['ColorPrimaries']
          @ColorSpace = params['ColorSpace']
          @ColorTransfer = params['ColorTransfer']
          @HdrType = params['HdrType']
        end
      end

      # ModifyAIAnalysisTemplate请求参数结构体
      class ModifyAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板唯一标识。
        # @type Definition: Integer
        # @param Name: 视频内容分析模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容分析模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # @type ClassificationConfigure: :class:`Tencentcloud::Mps.v20190612.models.ClassificationConfigureInfoForUpdate`
        # @param TagConfigure: 智能标签任务控制参数。
        # @type TagConfigure: :class:`Tencentcloud::Mps.v20190612.models.TagConfigureInfoForUpdate`
        # @param CoverConfigure: 智能封面任务控制参数。
        # @type CoverConfigure: :class:`Tencentcloud::Mps.v20190612.models.CoverConfigureInfoForUpdate`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # @type FrameTagConfigure: :class:`Tencentcloud::Mps.v20190612.models.FrameTagConfigureInfoForUpdate`

        attr_accessor :Definition, :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure
        
        def initialize(definition=nil, name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['ClassificationConfigure'].nil?
            @ClassificationConfigure = ClassificationConfigureInfoForUpdate.new
            @ClassificationConfigure.deserialize(params['ClassificationConfigure'])
          end
          unless params['TagConfigure'].nil?
            @TagConfigure = TagConfigureInfoForUpdate.new
            @TagConfigure.deserialize(params['TagConfigure'])
          end
          unless params['CoverConfigure'].nil?
            @CoverConfigure = CoverConfigureInfoForUpdate.new
            @CoverConfigure.deserialize(params['CoverConfigure'])
          end
          unless params['FrameTagConfigure'].nil?
            @FrameTagConfigure = FrameTagConfigureInfoForUpdate.new
            @FrameTagConfigure.deserialize(params['FrameTagConfigure'])
          end
        end
      end

      # ModifyAIAnalysisTemplate返回参数结构体
      class ModifyAIAnalysisTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAIRecognitionTemplate请求参数结构体
      class ModifyAIRecognitionTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param Name: 视频内容识别模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容识别模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FaceConfigure: 人脸识别控制参数。
        # @type FaceConfigure: :class:`Tencentcloud::Mps.v20190612.models.FaceConfigureInfoForUpdate`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Mps.v20190612.models.OcrFullTextConfigureInfoForUpdate`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Mps.v20190612.models.OcrWordsConfigureInfoForUpdate`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Mps.v20190612.models.AsrFullTextConfigureInfoForUpdate`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Mps.v20190612.models.AsrWordsConfigureInfoForUpdate`

        attr_accessor :Definition, :Name, :Comment, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure
        
        def initialize(definition=nil, name=nil, comment=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['FaceConfigure'].nil?
            @FaceConfigure = FaceConfigureInfoForUpdate.new
            @FaceConfigure.deserialize(params['FaceConfigure'])
          end
          unless params['OcrFullTextConfigure'].nil?
            @OcrFullTextConfigure = OcrFullTextConfigureInfoForUpdate.new
            @OcrFullTextConfigure.deserialize(params['OcrFullTextConfigure'])
          end
          unless params['OcrWordsConfigure'].nil?
            @OcrWordsConfigure = OcrWordsConfigureInfoForUpdate.new
            @OcrWordsConfigure.deserialize(params['OcrWordsConfigure'])
          end
          unless params['AsrFullTextConfigure'].nil?
            @AsrFullTextConfigure = AsrFullTextConfigureInfoForUpdate.new
            @AsrFullTextConfigure.deserialize(params['AsrFullTextConfigure'])
          end
          unless params['AsrWordsConfigure'].nil?
            @AsrWordsConfigure = AsrWordsConfigureInfoForUpdate.new
            @AsrWordsConfigure.deserialize(params['AsrWordsConfigure'])
          end
        end
      end

      # ModifyAIRecognitionTemplate返回参数结构体
      class ModifyAIRecognitionTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAdaptiveDynamicStreamingTemplate请求参数结构体
      class ModifyAdaptiveDynamicStreamingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流模板唯一标识。
        # @type Definition: Integer
        # @param Name: 模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Format: 转自适应码流格式，取值范围：
        # <li>HLS，</li>
        # <li>MPEG-DASH。</li>
        # @type Format: String
        # @param DisableHigherVideoBitrate: 是否禁止视频低码率转高码率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoBitrate: Integer
        # @param DisableHigherVideoResolution: 是否禁止视频分辨率转高分辨率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoResolution: Integer
        # @param StreamInfos: 转自适应码流输入流参数信息，最多输入10路流。
        # 注意：各个流的帧率必须保持一致；如果不一致，采用第一个流的帧率作为输出帧率。
        # @type StreamInfos: Array
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Definition, :Name, :Format, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :StreamInfos, :Comment
        
        def initialize(definition=nil, name=nil, format=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, streaminfos=nil, comment=nil)
          @Definition = definition
          @Name = name
          @Format = format
          @DisableHigherVideoBitrate = disablehighervideobitrate
          @DisableHigherVideoResolution = disablehighervideoresolution
          @StreamInfos = streaminfos
          @Comment = comment
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Format = params['Format']
          @DisableHigherVideoBitrate = params['DisableHigherVideoBitrate']
          @DisableHigherVideoResolution = params['DisableHigherVideoResolution']
          unless params['StreamInfos'].nil?
            @StreamInfos = []
            params['StreamInfos'].each do |i|
              adaptivestreamtemplate_tmp = AdaptiveStreamTemplate.new
              adaptivestreamtemplate_tmp.deserialize(i)
              @StreamInfos << adaptivestreamtemplate_tmp
            end
          end
          @Comment = params['Comment']
        end
      end

      # ModifyAdaptiveDynamicStreamingTemplate返回参数结构体
      class ModifyAdaptiveDynamicStreamingTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAnimatedGraphicsTemplate请求参数结构体
      class ModifyAnimatedGraphicsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 转动图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 动图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 动图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 动图格式，取值为 gif 和 webp。
        # @type Format: String
        # @param Fps: 帧率，取值范围：[1, 30]，单位：Hz。
        # @type Fps: Integer
        # @param Quality: 图片质量，取值范围：[1, 100]，默认值为 75。
        # @type Quality: Float
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Fps, :Quality, :Comment
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, fps=nil, quality=nil, comment=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Fps = fps
          @Quality = quality
          @Comment = comment
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Fps = params['Fps']
          @Quality = params['Quality']
          @Comment = params['Comment']
        end
      end

      # ModifyAnimatedGraphicsTemplate返回参数结构体
      class ModifyAnimatedGraphicsTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyContentReviewTemplate请求参数结构体
      class ModifyContentReviewTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 令人反感的信息的控制参数。
        # @type PornConfigure: :class:`Tencentcloud::Mps.v20190612.models.PornConfigureInfoForUpdate`
        # @param TerrorismConfigure: 令人不安全的信息的控制参数。
        # @type TerrorismConfigure: :class:`Tencentcloud::Mps.v20190612.models.TerrorismConfigureInfoForUpdate`
        # @param PoliticalConfigure: 令人不适宜的控制参数。
        # @type PoliticalConfigure: :class:`Tencentcloud::Mps.v20190612.models.PoliticalConfigureInfoForUpdate`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # 注意：此参数尚未支持。
        # @type ProhibitedConfigure: :class:`Tencentcloud::Mps.v20190612.models.ProhibitedConfigureInfoForUpdate`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # @type UserDefineConfigure: :class:`Tencentcloud::Mps.v20190612.models.UserDefineConfigureInfoForUpdate`

        attr_accessor :Definition, :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure
        
        def initialize(definition=nil, name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['PornConfigure'].nil?
            @PornConfigure = PornConfigureInfoForUpdate.new
            @PornConfigure.deserialize(params['PornConfigure'])
          end
          unless params['TerrorismConfigure'].nil?
            @TerrorismConfigure = TerrorismConfigureInfoForUpdate.new
            @TerrorismConfigure.deserialize(params['TerrorismConfigure'])
          end
          unless params['PoliticalConfigure'].nil?
            @PoliticalConfigure = PoliticalConfigureInfoForUpdate.new
            @PoliticalConfigure.deserialize(params['PoliticalConfigure'])
          end
          unless params['ProhibitedConfigure'].nil?
            @ProhibitedConfigure = ProhibitedConfigureInfoForUpdate.new
            @ProhibitedConfigure.deserialize(params['ProhibitedConfigure'])
          end
          unless params['UserDefineConfigure'].nil?
            @UserDefineConfigure = UserDefineConfigureInfoForUpdate.new
            @UserDefineConfigure.deserialize(params['UserDefineConfigure'])
          end
        end
      end

      # ModifyContentReviewTemplate返回参数结构体
      class ModifyContentReviewTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyImageSpriteTemplate请求参数结构体
      class ModifyImageSpriteTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 雪碧图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 雪碧图中小图的宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 雪碧图中小图的高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param SampleType: 采样类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param RowCount: 雪碧图中小图的行数。
        # @type RowCount: Integer
        # @param ColumnCount: 雪碧图中小图的列数。
        # @type ColumnCount: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :RowCount, :ColumnCount, :FillType, :Comment
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, filltype=nil, comment=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @RowCount = rowcount
          @ColumnCount = columncount
          @FillType = filltype
          @Comment = comment
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @FillType = params['FillType']
          @Comment = params['Comment']
        end
      end

      # ModifyImageSpriteTemplate返回参数结构体
      class ModifyImageSpriteTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPersonSample请求参数结构体
      class ModifyPersonSampleRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 素材 ID。
        # @type PersonId: String
        # @param Name: 名称，长度限制：128 个字符。
        # @type Name: String
        # @param Description: 描述，长度限制：1024 个字符。
        # @type Description: String
        # @param Usages: 素材应用场景，可选值：
        # 1. Recognition：用于内容识别，等价于 Recognition.Face。
        # 2. Review：用于不适宜的内容识别，等价于 Review.Face。
        # 3. All：用于内容识别、不适宜的内容识别，等价于 1+2。
        # @type Usages: Array
        # @param FaceOperationInfo: 五官操作信息。
        # @type FaceOperationInfo: :class:`Tencentcloud::Mps.v20190612.models.AiSampleFaceOperation`
        # @param TagOperationInfo: 标签操作信息。
        # @type TagOperationInfo: :class:`Tencentcloud::Mps.v20190612.models.AiSampleTagOperation`

        attr_accessor :PersonId, :Name, :Description, :Usages, :FaceOperationInfo, :TagOperationInfo
        
        def initialize(personid=nil, name=nil, description=nil, usages=nil, faceoperationinfo=nil, tagoperationinfo=nil)
          @PersonId = personid
          @Name = name
          @Description = description
          @Usages = usages
          @FaceOperationInfo = faceoperationinfo
          @TagOperationInfo = tagoperationinfo
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Name = params['Name']
          @Description = params['Description']
          @Usages = params['Usages']
          unless params['FaceOperationInfo'].nil?
            @FaceOperationInfo = AiSampleFaceOperation.new
            @FaceOperationInfo.deserialize(params['FaceOperationInfo'])
          end
          unless params['TagOperationInfo'].nil?
            @TagOperationInfo = AiSampleTagOperation.new
            @TagOperationInfo.deserialize(params['TagOperationInfo'])
          end
        end
      end

      # ModifyPersonSample返回参数结构体
      class ModifyPersonSampleResponse < TencentCloud::Common::AbstractModel
        # @param Person: 素材信息。
        # @type Person: :class:`Tencentcloud::Mps.v20190612.models.AiSamplePerson`
        # @param FailFaceInfoSet: 处理失败的五官信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailFaceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Person, :FailFaceInfoSet, :RequestId
        
        def initialize(person=nil, failfaceinfoset=nil, requestid=nil)
          @Person = person
          @FailFaceInfoSet = failfaceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Person'].nil?
            @Person = AiSamplePerson.new
            @Person.deserialize(params['Person'])
          end
          unless params['FailFaceInfoSet'].nil?
            @FailFaceInfoSet = []
            params['FailFaceInfoSet'].each do |i|
              aisamplefailfaceinfo_tmp = AiSampleFailFaceInfo.new
              aisamplefailfaceinfo_tmp.deserialize(i)
              @FailFaceInfoSet << aisamplefailfaceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifySampleSnapshotTemplate请求参数结构体
      class ModifySampleSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 采样截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param SampleType: 采样截图类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param Format: 图片格式，取值为 jpg 和 png。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :Format, :Comment, :FillType
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, format=nil, comment=nil, filltype=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @Format = format
          @Comment = comment
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @Format = params['Format']
          @Comment = params['Comment']
          @FillType = params['FillType']
        end
      end

      # ModifySampleSnapshotTemplate返回参数结构体
      class ModifySampleSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifySnapshotByTimeOffsetTemplate请求参数结构体
      class ModifySnapshotByTimeOffsetTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 指定时间点截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式，取值可以为 jpg 和 png。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :FillType
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, filltype=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Comment = comment
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Comment = params['Comment']
          @FillType = params['FillType']
        end
      end

      # ModifySnapshotByTimeOffsetTemplate返回参数结构体
      class ModifySnapshotByTimeOffsetTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTranscodeTemplate请求参数结构体
      class ModifyTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: Integer
        # @param Container: 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        # @type Container: String
        # @param Name: 转码模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param RemoveVideo: 是否去除视频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数。
        # @type VideoTemplate: :class:`Tencentcloud::Mps.v20190612.models.VideoTemplateInfoForUpdate`
        # @param AudioTemplate: 音频流配置参数。
        # @type AudioTemplate: :class:`Tencentcloud::Mps.v20190612.models.AudioTemplateInfoForUpdate`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Mps.v20190612.models.TEHDConfigForUpdate`
        # @param EnhanceConfig: 音视频增强参数。
        # @type EnhanceConfig: :class:`Tencentcloud::Mps.v20190612.models.EnhanceConfig`

        attr_accessor :Definition, :Container, :Name, :Comment, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig, :EnhanceConfig
        
        def initialize(definition=nil, container=nil, name=nil, comment=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil, enhanceconfig=nil)
          @Definition = definition
          @Container = container
          @Name = name
          @Comment = comment
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
          @EnhanceConfig = enhanceconfig
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Container = params['Container']
          @Name = params['Name']
          @Comment = params['Comment']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfoForUpdate.new
            @VideoTemplate.deserialize(params['VideoTemplate'])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfoForUpdate.new
            @AudioTemplate.deserialize(params['AudioTemplate'])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfigForUpdate.new
            @TEHDConfig.deserialize(params['TEHDConfig'])
          end
          unless params['EnhanceConfig'].nil?
            @EnhanceConfig = EnhanceConfig.new
            @EnhanceConfig.deserialize(params['EnhanceConfig'])
          end
        end
      end

      # ModifyTranscodeTemplate返回参数结构体
      class ModifyTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWatermarkTemplate请求参数结构体
      class ModifyWatermarkTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer
        # @param Name: 水印模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param CoordinateOrigin: 原点位置，可选值：
        # <li>TopLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        # <li>TopRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        # <li>BottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        # <li>BottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下角。</li>
        # @type CoordinateOrigin: String
        # @param XPos: 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        # @type XPos: String
        # @param YPos: 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        # @type YPos: String
        # @param ImageTemplate: 图片水印模板，该字段仅对图片水印模板有效。
        # @type ImageTemplate: :class:`Tencentcloud::Mps.v20190612.models.ImageWatermarkInputForUpdate`
        # @param TextTemplate: 文字水印模板，该字段仅对文字水印模板有效。
        # @type TextTemplate: :class:`Tencentcloud::Mps.v20190612.models.TextWatermarkTemplateInputForUpdate`
        # @param SvgTemplate: SVG水印模板，当 Type 为 svg，该字段必填。当 Type 为 image 或 text，该字段无效。
        # @type SvgTemplate: :class:`Tencentcloud::Mps.v20190612.models.SvgWatermarkInputForUpdate`

        attr_accessor :Definition, :Name, :Comment, :CoordinateOrigin, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate
        
        def initialize(definition=nil, name=nil, comment=nil, coordinateorigin=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @ImageTemplate = imagetemplate
          @TextTemplate = texttemplate
          @SvgTemplate = svgtemplate
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          unless params['ImageTemplate'].nil?
            @ImageTemplate = ImageWatermarkInputForUpdate.new
            @ImageTemplate.deserialize(params['ImageTemplate'])
          end
          unless params['TextTemplate'].nil?
            @TextTemplate = TextWatermarkTemplateInputForUpdate.new
            @TextTemplate.deserialize(params['TextTemplate'])
          end
          unless params['SvgTemplate'].nil?
            @SvgTemplate = SvgWatermarkInputForUpdate.new
            @SvgTemplate.deserialize(params['SvgTemplate'])
          end
        end
      end

      # ModifyWatermarkTemplate返回参数结构体
      class ModifyWatermarkTemplateResponse < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片水印地址，仅当 ImageTemplate.ImageContent 非空，该字段有效。
        # @type ImageUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageUrl, :RequestId
        
        def initialize(imageurl=nil, requestid=nil)
          @ImageUrl = imageurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @RequestId = params['RequestId']
        end
      end

      # ModifyWordSample请求参数结构体
      class ModifyWordSampleRequest < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键词，长度限制：128 个字符。
        # @type Keyword: String
        # @param Usages: <b>关键词应用场景，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行不适宜的内容识别；
        # 4. Review.Asr：通过音频识别技术，进行不适宜的音频识别；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜的内容识别，等价于 3+4；
        # 7. All：包含以上全部，等价于 1+2+3+4。
        # @type Usages: Array
        # @param TagOperationInfo: 标签操作信息。
        # @type TagOperationInfo: :class:`Tencentcloud::Mps.v20190612.models.AiSampleTagOperation`

        attr_accessor :Keyword, :Usages, :TagOperationInfo
        
        def initialize(keyword=nil, usages=nil, tagoperationinfo=nil)
          @Keyword = keyword
          @Usages = usages
          @TagOperationInfo = tagoperationinfo
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @Usages = params['Usages']
          unless params['TagOperationInfo'].nil?
            @TagOperationInfo = AiSampleTagOperation.new
            @TagOperationInfo.deserialize(params['TagOperationInfo'])
          end
        end
      end

      # ModifyWordSample返回参数结构体
      class ModifyWordSampleResponse < TencentCloud::Common::AbstractModel
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

      # 媒体处理任务中的马赛克参数类型
      class MosaicInput < TencentCloud::Common::AbstractModel
        # @param CoordinateOrigin: 原点位置，目前仅支持：
        # <li>TopLeft：表示坐标原点位于视频图像左上角，马赛克原点为图片或文字的左上角。</li>
        # 默认值：TopLeft。
        # @type CoordinateOrigin: String
        # @param XPos: 马赛克原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 马赛克原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param Width: 马赛克的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # 默认值：10%。
        # @type Width: String
        # @param Height: 马赛克的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 Height 单位为像素，如 100px 表示 Height 为 100 像素。</li>
        # 默认值：10%。
        # @type Height: String
        # @param StartTimeOffset: 马赛克的起始时间偏移，单位：秒。不填或填0，表示马赛克从画面出现时开始显现。
        # <li>不填或填0，表示马赛克从画面开始就出现；</li>
        # <li>当数值大于0时（假设为 n），表示马赛克从画面开始的第 n 秒出现；</li>
        # <li>当数值小于0时（假设为 -n），表示马赛克从离画面结束 n 秒前开始出现。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 马赛克的结束时间偏移，单位：秒。
        # <li>不填或填0，表示马赛克持续到画面结束；</li>
        # <li>当数值大于0时（假设为 n），表示马赛克持续到第 n 秒时消失；</li>
        # <li>当数值小于0时（假设为 -n），表示马赛克持续到离画面结束 n 秒前消失。</li>
        # @type EndTimeOffset: Float

        attr_accessor :CoordinateOrigin, :XPos, :YPos, :Width, :Height, :StartTimeOffset, :EndTimeOffset
        
        def initialize(coordinateorigin=nil, xpos=nil, ypos=nil, width=nil, height=nil, starttimeoffset=nil, endtimeoffset=nil)
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @Width = width
          @Height = height
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          @Width = params['Width']
          @Height = params['Height']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 输出文件名的`{number}`变量的规则。
      class NumberFormat < TencentCloud::Common::AbstractModel
        # @param InitialValue: `{number}`变量的起始值，默认为0。
        # @type InitialValue: Integer
        # @param Increment: `{number}`变量的增长步长，默认为1。
        # @type Increment: Integer
        # @param MinLength: `{number}`变量的最小长度，不足时补占位符。默认为1。
        # @type MinLength: Integer
        # @param PlaceHolder: `{number}`变量的长度不足时，补充的占位符。默认为"0"。
        # @type PlaceHolder: String

        attr_accessor :InitialValue, :Increment, :MinLength, :PlaceHolder
        
        def initialize(initialvalue=nil, increment=nil, minlength=nil, placeholder=nil)
          @InitialValue = initialvalue
          @Increment = increment
          @MinLength = minlength
          @PlaceHolder = placeholder
        end

        def deserialize(params)
          @InitialValue = params['InitialValue']
          @Increment = params['Increment']
          @MinLength = params['MinLength']
          @PlaceHolder = params['PlaceHolder']
        end
      end

      # 文本全文本识别任务控制参数
      class OcrFullTextConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本全文识别任务开关，可选值：
        # <li>ON：开启智能文本全文识别任务；</li>
        # <li>OFF：关闭智能文本全文识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 文本全文本识别任务控制参数
      class OcrFullTextConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本全文识别任务开关，可选值：
        # <li>ON：开启智能文本全文识别任务；</li>
        # <li>OFF：关闭智能文本全文识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 文本关键词识别控制参数。
      class OcrWordsConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本关键词识别任务开关，可选值：
        # <li>ON：开启文本关键词识别任务；</li>
        # <li>OFF：关闭文本关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 文本关键词识别控制参数。
      class OcrWordsConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本关键词识别任务开关，可选值：
        # <li>ON：开启文本关键词识别任务；</li>
        # <li>OFF：关闭文本关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 自定义转码的规格参数。用于覆盖模板中对应参数值。
      class OverrideTranscodeParameter < TencentCloud::Common::AbstractModel
        # @param Container: 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        # @type Container: String
        # @param RemoveVideo: 是否去除视频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数。
        # @type VideoTemplate: :class:`Tencentcloud::Mps.v20190612.models.VideoTemplateInfoForUpdate`
        # @param AudioTemplate: 音频流配置参数。
        # @type AudioTemplate: :class:`Tencentcloud::Mps.v20190612.models.AudioTemplateInfoForUpdate`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Mps.v20190612.models.TEHDConfigForUpdate`

        attr_accessor :Container, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig
        
        def initialize(container=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil)
          @Container = container
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
        end

        def deserialize(params)
          @Container = params['Container']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfoForUpdate.new
            @VideoTemplate.deserialize(params['VideoTemplate'])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfoForUpdate.new
            @AudioTemplate.deserialize(params['AudioTemplate'])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfigForUpdate.new
            @TEHDConfig.deserialize(params['TEHDConfig'])
          end
        end
      end

      # ParseLiveStreamProcessNotification请求参数结构体
      class ParseLiveStreamProcessNotificationRequest < TencentCloud::Common::AbstractModel
        # @param Content: 从 CMQ 获取到的直播流事件通知内容。
        # @type Content: String

        attr_accessor :Content
        
        def initialize(content=nil)
          @Content = content
        end

        def deserialize(params)
          @Content = params['Content']
        end
      end

      # ParseLiveStreamProcessNotification返回参数结构体
      class ParseLiveStreamProcessNotificationResponse < TencentCloud::Common::AbstractModel
        # @param NotificationType: 直播流处理结果类型，包含：
        # <li>AiReviewResult：内容审核结果；</li>
        # <li>AiRecognitionResult：内容识别结果；</li>
        # <li>ProcessEof：直播流处理结束。</li>
        # @type NotificationType: String
        # @param TaskId: 视频处理任务 ID。
        # @type TaskId: String
        # @param ProcessEofInfo: 直播流处理错误信息，当 NotificationType 为 ProcessEof 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessEofInfo: :class:`Tencentcloud::Mps.v20190612.models.LiveStreamProcessErrorInfo`
        # @param AiReviewResultInfo: 内容审核结果，当 NotificationType 为 AiReviewResult 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiReviewResultInfo: :class:`Tencentcloud::Mps.v20190612.models.LiveStreamAiReviewResultInfo`
        # @param AiRecognitionResultInfo: 内容识别结果，当 NotificationType 为 AiRecognitionResult 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiRecognitionResultInfo: :class:`Tencentcloud::Mps.v20190612.models.LiveStreamAiRecognitionResultInfo`
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长50个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长1000个字符。
        # @type SessionContext: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotificationType, :TaskId, :ProcessEofInfo, :AiReviewResultInfo, :AiRecognitionResultInfo, :SessionId, :SessionContext, :RequestId
        
        def initialize(notificationtype=nil, taskid=nil, processeofinfo=nil, aireviewresultinfo=nil, airecognitionresultinfo=nil, sessionid=nil, sessioncontext=nil, requestid=nil)
          @NotificationType = notificationtype
          @TaskId = taskid
          @ProcessEofInfo = processeofinfo
          @AiReviewResultInfo = aireviewresultinfo
          @AiRecognitionResultInfo = airecognitionresultinfo
          @SessionId = sessionid
          @SessionContext = sessioncontext
          @RequestId = requestid
        end

        def deserialize(params)
          @NotificationType = params['NotificationType']
          @TaskId = params['TaskId']
          unless params['ProcessEofInfo'].nil?
            @ProcessEofInfo = LiveStreamProcessErrorInfo.new
            @ProcessEofInfo.deserialize(params['ProcessEofInfo'])
          end
          unless params['AiReviewResultInfo'].nil?
            @AiReviewResultInfo = LiveStreamAiReviewResultInfo.new
            @AiReviewResultInfo.deserialize(params['AiReviewResultInfo'])
          end
          unless params['AiRecognitionResultInfo'].nil?
            @AiRecognitionResultInfo = LiveStreamAiRecognitionResultInfo.new
            @AiRecognitionResultInfo.deserialize(params['AiRecognitionResultInfo'])
          end
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
          @RequestId = params['RequestId']
        end
      end

      # ParseNotification请求参数结构体
      class ParseNotificationRequest < TencentCloud::Common::AbstractModel
        # @param Content: 从 CMQ 获取到的事件通知内容。
        # @type Content: String

        attr_accessor :Content
        
        def initialize(content=nil)
          @Content = content
        end

        def deserialize(params)
          @Content = params['Content']
        end
      end

      # ParseNotification返回参数结构体
      class ParseNotificationResponse < TencentCloud::Common::AbstractModel
        # @param EventType: 支持事件类型，目前取值有：
        # <li>WorkflowTask：视频工作流处理任务。</li>
        # <li>EditMediaTask：视频编辑任务。</li>
        # <li>ScheduleTask：编排任务。</li>
        # @type EventType: String
        # @param WorkflowTaskEvent: 视频处理任务信息，仅当 TaskType 为 WorkflowTask，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTaskEvent: :class:`Tencentcloud::Mps.v20190612.models.WorkflowTask`
        # @param EditMediaTaskEvent: 视频编辑任务信息，仅当 TaskType 为 EditMediaTask，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditMediaTaskEvent: :class:`Tencentcloud::Mps.v20190612.models.EditMediaTask`
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长50个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长1000个字符。
        # @type SessionContext: String
        # @param ScheduleTaskEvent: 编排任务信息，仅当 TaskType 为 ScheduleTask，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduleTaskEvent: :class:`Tencentcloud::Mps.v20190612.models.ScheduleTask`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventType, :WorkflowTaskEvent, :EditMediaTaskEvent, :SessionId, :SessionContext, :ScheduleTaskEvent, :RequestId
        
        def initialize(eventtype=nil, workflowtaskevent=nil, editmediataskevent=nil, sessionid=nil, sessioncontext=nil, scheduletaskevent=nil, requestid=nil)
          @EventType = eventtype
          @WorkflowTaskEvent = workflowtaskevent
          @EditMediaTaskEvent = editmediataskevent
          @SessionId = sessionid
          @SessionContext = sessioncontext
          @ScheduleTaskEvent = scheduletaskevent
          @RequestId = requestid
        end

        def deserialize(params)
          @EventType = params['EventType']
          unless params['WorkflowTaskEvent'].nil?
            @WorkflowTaskEvent = WorkflowTask.new
            @WorkflowTaskEvent.deserialize(params['WorkflowTaskEvent'])
          end
          unless params['EditMediaTaskEvent'].nil?
            @EditMediaTaskEvent = EditMediaTask.new
            @EditMediaTaskEvent.deserialize(params['EditMediaTaskEvent'])
          end
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
          unless params['ScheduleTaskEvent'].nil?
            @ScheduleTaskEvent = ScheduleTask.new
            @ScheduleTaskEvent.deserialize(params['ScheduleTaskEvent'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音涉敏任务控制参数
      class PoliticalAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音涉敏任务开关，可选值：
        # <li>ON：开启语音涉敏任务；</li>
        # <li>OFF：关闭语音涉敏任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音涉敏任务控制参数。
      class PoliticalAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音涉敏任务开关，可选值：
        # <li>ON：开启语音涉敏任务；</li>
        # <li>OFF：关闭语音涉敏任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 涉敏任务控制参数
      class PoliticalConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面涉敏控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PoliticalImgReviewTemplateInfo`
        # @param AsrReviewInfo: 语音涉敏控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PoliticalAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本涉敏控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PoliticalOcrReviewTemplateInfo`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PoliticalImgReviewTemplateInfo.new
            @ImgReviewInfo.deserialize(params['ImgReviewInfo'])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PoliticalAsrReviewTemplateInfo.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PoliticalOcrReviewTemplateInfo.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 涉敏任务控制参数。
      class PoliticalConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面涉敏控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PoliticalImgReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 语音涉敏控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PoliticalAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本涉敏控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PoliticalOcrReviewTemplateInfoForUpdate`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PoliticalImgReviewTemplateInfoForUpdate.new
            @ImgReviewInfo.deserialize(params['ImgReviewInfo'])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PoliticalAsrReviewTemplateInfoForUpdate.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PoliticalOcrReviewTemplateInfoForUpdate.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 画面涉敏任务控制参数
      class PoliticalImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面涉敏任务开关，可选值：
        # <li>ON：开启画面涉敏任务；</li>
        # <li>OFF：关闭画面涉敏任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面涉敏过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>violation_photo：违规图标；</li>
        # <li>politician：涉敏人物；</li>
        # <li>entertainment：娱乐人物；</li>
        # <li>sport：体育人物；</li>
        # <li>entrepreneur：商业人物；</li>
        # <li>scholar：教育学者；</li>
        # <li>celebrity：知名人物；</li>
        # <li>military：军事人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 97 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 95 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 画面涉敏任务控制参数。
      class PoliticalImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面涉敏任务开关，可选值：
        # <li>ON：开启画面涉敏任务；</li>
        # <li>OFF：关闭画面涉敏任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面涉敏过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>violation_photo：违规图标；</li>
        # <li>politician：涉敏人物；</li>
        # <li>entertainment：娱乐人物；</li>
        # <li>sport：体育人物；</li>
        # <li>entrepreneur：商业人物；</li>
        # <li>scholar：教育学者；</li>
        # <li>celebrity：知名人物；</li>
        # <li>military：军事人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本涉敏任务控制参数
      class PoliticalOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本涉敏任务开关，可选值：
        # <li>ON：开启文本涉敏任务；</li>
        # <li>OFF：关闭文本涉敏任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本涉敏任务控制参数。
      class PoliticalOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本涉敏任务开关，可选值：
        # <li>ON：开启文本涉敏任务；</li>
        # <li>OFF：关闭文本涉敏任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音鉴黄任务控制参数
      class PornAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴黄任务开关，可选值：
        # <li>ON：开启语音鉴黄任务；</li>
        # <li>OFF：关闭语音鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音鉴黄任务控制参数。
      class PornAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴黄任务开关，可选值：
        # <li>ON：开启语音鉴黄任务；</li>
        # <li>OFF：关闭语音鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 鉴黄任务控制参数
      class PornConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴黄控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PornImgReviewTemplateInfo`
        # @param AsrReviewInfo: 语音鉴黄控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PornAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本鉴黄控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PornOcrReviewTemplateInfo`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PornImgReviewTemplateInfo.new
            @ImgReviewInfo.deserialize(params['ImgReviewInfo'])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PornAsrReviewTemplateInfo.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PornOcrReviewTemplateInfo.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 鉴黄任务控制参数。
      class PornConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴黄控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PornImgReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 语音鉴黄控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PornAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本鉴黄控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.PornOcrReviewTemplateInfoForUpdate`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PornImgReviewTemplateInfoForUpdate.new
            @ImgReviewInfo.deserialize(params['ImgReviewInfo'])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PornAsrReviewTemplateInfoForUpdate.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PornOcrReviewTemplateInfoForUpdate.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 画面鉴黄任务控制参数
      class PornImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴黄任务开关，可选值：
        # <li>ON：开启画面鉴黄任务；</li>
        # <li>OFF：关闭画面鉴黄任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴黄过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>porn：色情；</li>
        # <li>vulgar：低俗；</li>
        # <li>intimacy：亲密行为；</li>
        # <li>sexy：性感。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 90 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 0 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 画面鉴黄任务控制参数。
      class PornImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴黄任务开关，可选值：
        # <li>ON：开启画面鉴黄任务；</li>
        # <li>OFF：关闭画面鉴黄任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴黄过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>porn：色情；</li>
        # <li>vulgar：低俗；</li>
        # <li>intimacy：亲密行为；</li>
        # <li>sexy：性感。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴黄任务控制参数
      class PornOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴黄任务开关，可选值：
        # <li>ON：开启文本鉴黄任务；</li>
        # <li>OFF：关闭文本鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴黄任务控制参数。
      class PornOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴黄任务开关，可选值：
        # <li>ON：开启文本鉴黄任务；</li>
        # <li>OFF：关闭文本鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # ProcessLiveStream请求参数结构体
      class ProcessLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param Url: 直播流 URL（必须是直播文件地址，支持 rtmp，hls 和 flv 等）。
        # @type Url: String
        # @param TaskNotifyConfig: 任务的事件通知信息，用于指定直播流处理的结果。
        # @type TaskNotifyConfig: :class:`Tencentcloud::Mps.v20190612.models.LiveStreamTaskNotifyConfig`
        # @param OutputStorage: 直播流处理输出文件的目标存储。如处理有文件输出，该参数为必填项。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputDir: 直播流处理生成的文件输出的目标目录，如`/movie/201909/`，如果不填为 `/` 目录。
        # @type OutputDir: String
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Mps.v20190612.models.AiContentReviewTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskInput`
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String

        attr_accessor :Url, :TaskNotifyConfig, :OutputStorage, :OutputDir, :AiContentReviewTask, :AiRecognitionTask, :SessionId, :SessionContext
        
        def initialize(url=nil, tasknotifyconfig=nil, outputstorage=nil, outputdir=nil, aicontentreviewtask=nil, airecognitiontask=nil, sessionid=nil, sessioncontext=nil)
          @Url = url
          @TaskNotifyConfig = tasknotifyconfig
          @OutputStorage = outputstorage
          @OutputDir = outputdir
          @AiContentReviewTask = aicontentreviewtask
          @AiRecognitionTask = airecognitiontask
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @Url = params['Url']
          unless params['TaskNotifyConfig'].nil?
            @TaskNotifyConfig = LiveStreamTaskNotifyConfig.new
            @TaskNotifyConfig.deserialize(params['TaskNotifyConfig'])
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputDir = params['OutputDir']
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new
            @AiContentReviewTask.deserialize(params['AiContentReviewTask'])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new
            @AiRecognitionTask.deserialize(params['AiRecognitionTask'])
          end
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # ProcessLiveStream返回参数结构体
      class ProcessLiveStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
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

      # ProcessMedia请求参数结构体
      class ProcessMediaRequest < TencentCloud::Common::AbstractModel
        # @param InputInfo: 媒体处理的文件输入信息。
        # @type InputInfo: :class:`Tencentcloud::Mps.v20190612.models.MediaInputInfo`
        # @param OutputStorage: 媒体处理输出文件的目标存储。不填则继承 InputInfo 中的存储位置。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputDir: 媒体处理生成的文件输出的目标目录，如`/movie/201907/`。如果不填，表示与 InputInfo 中文件所在的目录一致。
        # @type OutputDir: String
        # @param MediaProcessTask: 媒体处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Mps.v20190612.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 视频内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskInput`
        # @param TaskNotifyConfig: 任务的事件通知信息，不填代表不获取事件通知。
        # @type TaskNotifyConfig: :class:`Tencentcloud::Mps.v20190612.models.TaskNotifyConfig`
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是-10到 10，不填代表0。
        # @type TasksPriority: Integer
        # @param SessionId: 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param ScheduleId: 编排ID。
        # 注意1：对于OutputStorage、OutputDir，如果编排任务里没有配置，将采用请求里对应参数。
        # 注意2：对于TaskNotifyConfig，如果编排任务里没有配置，将采用请求里对应的参数。
        # 注意3：编排的 Trigger 只是用来自动化触发场景，在手动发起的请求中已经配置的 Trigger 无意义。
        # @type ScheduleId: Integer

        attr_accessor :InputInfo, :OutputStorage, :OutputDir, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TaskNotifyConfig, :TasksPriority, :SessionId, :SessionContext, :ScheduleId
        
        def initialize(inputinfo=nil, outputstorage=nil, outputdir=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, tasknotifyconfig=nil, taskspriority=nil, sessionid=nil, sessioncontext=nil, scheduleid=nil)
          @InputInfo = inputinfo
          @OutputStorage = outputstorage
          @OutputDir = outputdir
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TaskNotifyConfig = tasknotifyconfig
          @TasksPriority = taskspriority
          @SessionId = sessionid
          @SessionContext = sessioncontext
          @ScheduleId = scheduleid
        end

        def deserialize(params)
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputDir = params['OutputDir']
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new
            @MediaProcessTask.deserialize(params['MediaProcessTask'])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new
            @AiContentReviewTask.deserialize(params['AiContentReviewTask'])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new
            @AiAnalysisTask.deserialize(params['AiAnalysisTask'])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new
            @AiRecognitionTask.deserialize(params['AiRecognitionTask'])
          end
          unless params['TaskNotifyConfig'].nil?
            @TaskNotifyConfig = TaskNotifyConfig.new
            @TaskNotifyConfig.deserialize(params['TaskNotifyConfig'])
          end
          @TasksPriority = params['TasksPriority']
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
          @ScheduleId = params['ScheduleId']
        end
      end

      # ProcessMedia返回参数结构体
      class ProcessMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
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

      # 语音违禁任务控制参数
      class ProhibitedAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音违禁任务开关，可选值：
        # <li>ON：开启语音违禁任务；</li>
        # <li>OFF：关闭语音违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音违禁任务控制参数
      class ProhibitedAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音违禁任务开关，可选值：
        # <li>ON：开启语音违禁任务；</li>
        # <li>OFF：关闭语音违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 违禁任务控制参数
      class ProhibitedConfigureInfo < TencentCloud::Common::AbstractModel
        # @param AsrReviewInfo: 语音违禁控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.ProhibitedAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本违禁控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.ProhibitedOcrReviewTemplateInfo`

        attr_accessor :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(asrreviewinfo=nil, ocrreviewinfo=nil)
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = ProhibitedAsrReviewTemplateInfo.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = ProhibitedOcrReviewTemplateInfo.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 违禁任务控制参数
      class ProhibitedConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param AsrReviewInfo: 语音违禁控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.ProhibitedAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本违禁控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.ProhibitedOcrReviewTemplateInfoForUpdate`

        attr_accessor :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(asrreviewinfo=nil, ocrreviewinfo=nil)
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = ProhibitedAsrReviewTemplateInfoForUpdate.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = ProhibitedOcrReviewTemplateInfoForUpdate.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 文本违禁任务控制参数
      class ProhibitedOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本违禁任务开关，可选值：
        # <li>ON：开启文本违禁任务；</li>
        # <li>OFF：关闭文本违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本违禁任务控制参数
      class ProhibitedOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本违禁任务开关，可选值：
        # <li>ON：开启文本违禁任务；</li>
        # <li>OFF：关闭文本违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 图片水印模板输入参数
      class RawImageWatermarkInput < TencentCloud::Common::AbstractModel
        # @param ImageContent: 水印图片的输入内容。支持 jpeg、png 图片格式。
        # @type ImageContent: :class:`Tencentcloud::Mps.v20190612.models.MediaInputInfo`
        # @param Width: 水印的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # 默认值：10%。
        # @type Width: String
        # @param Height: 水印的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素。</li>
        # 默认值：0px，表示 Height 按照原始水印图片的宽高比缩放。
        # @type Height: String
        # @param RepeatType: 水印重复类型。使用场景：水印为动态图像。取值范围：
        # <li>once：动态水印播放完后，不再出现；</li>
        # <li>repeat_last_frame：水印播放完后，停留在最后一帧；</li>
        # <li>repeat：水印循环播放，直到视频结束（默认值）。</li>
        # @type RepeatType: String

        attr_accessor :ImageContent, :Width, :Height, :RepeatType
        
        def initialize(imagecontent=nil, width=nil, height=nil, repeattype=nil)
          @ImageContent = imagecontent
          @Width = width
          @Height = height
          @RepeatType = repeattype
        end

        def deserialize(params)
          unless params['ImageContent'].nil?
            @ImageContent = MediaInputInfo.new
            @ImageContent.deserialize(params['ImageContent'])
          end
          @Width = params['Width']
          @Height = params['Height']
          @RepeatType = params['RepeatType']
        end
      end

      # 自定义转码的规格参数。
      class RawTranscodeParameter < TencentCloud::Common::AbstractModel
        # @param Container: 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        # @type Container: String
        # @param RemoveVideo: 是否去除视频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # 默认值：0。
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # 默认值：0。
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数，当 RemoveVideo 为 0，该字段必填。
        # @type VideoTemplate: :class:`Tencentcloud::Mps.v20190612.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，当 RemoveAudio 为 0，该字段必填。
        # @type AudioTemplate: :class:`Tencentcloud::Mps.v20190612.models.AudioTemplateInfo`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Mps.v20190612.models.TEHDConfig`

        attr_accessor :Container, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig
        
        def initialize(container=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil)
          @Container = container
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
        end

        def deserialize(params)
          @Container = params['Container']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfo.new
            @VideoTemplate.deserialize(params['VideoTemplate'])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfo.new
            @AudioTemplate.deserialize(params['AudioTemplate'])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfig.new
            @TEHDConfig.deserialize(params['TEHDConfig'])
          end
        end
      end

      # 自定义水印规格参数。
      class RawWatermarkParameter < TencentCloud::Common::AbstractModel
        # @param Type: 水印类型，可选值：
        # <li>image：图片水印。</li>
        # @type Type: String
        # @param CoordinateOrigin: 原点位置，目前仅支持：
        # <li>TopLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角。</li>
        # 默认值：TopLeft。
        # @type CoordinateOrigin: String
        # @param XPos: 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param ImageTemplate: 图片水印模板，当 Type 为 image，该字段必填。当 Type 为 text，该字段无效。
        # @type ImageTemplate: :class:`Tencentcloud::Mps.v20190612.models.RawImageWatermarkInput`

        attr_accessor :Type, :CoordinateOrigin, :XPos, :YPos, :ImageTemplate
        
        def initialize(type=nil, coordinateorigin=nil, xpos=nil, ypos=nil, imagetemplate=nil)
          @Type = type
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @ImageTemplate = imagetemplate
        end

        def deserialize(params)
          @Type = params['Type']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          unless params['ImageTemplate'].nil?
            @ImageTemplate = RawImageWatermarkInput.new
            @ImageTemplate.deserialize(params['ImageTemplate'])
          end
        end
      end

      # RecognizeMediaForZhiXue请求参数结构体
      class RecognizeMediaForZhiXueRequest < TencentCloud::Common::AbstractModel
        # @param InputInfo: 输入媒体文件存储信息。
        # @type InputInfo: :class:`Tencentcloud::Mps.v20190612.models.MediaInputInfo`
        # @param ExpressionConfig: 表情识别参数配置。默认开启。
        # @type ExpressionConfig: :class:`Tencentcloud::Mps.v20190612.models.ExpressionConfigInfo`
        # @param ActionConfig: 动作识别参数配置。默认开启。
        # @type ActionConfig: :class:`Tencentcloud::Mps.v20190612.models.ActionConfigInfo`

        attr_accessor :InputInfo, :ExpressionConfig, :ActionConfig
        
        def initialize(inputinfo=nil, expressionconfig=nil, actionconfig=nil)
          @InputInfo = inputinfo
          @ExpressionConfig = expressionconfig
          @ActionConfig = actionconfig
        end

        def deserialize(params)
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          unless params['ExpressionConfig'].nil?
            @ExpressionConfig = ExpressionConfigInfo.new
            @ExpressionConfig.deserialize(params['ExpressionConfig'])
          end
          unless params['ActionConfig'].nil?
            @ActionConfig = ActionConfigInfo.new
            @ActionConfig.deserialize(params['ActionConfig'])
          end
        end
      end

      # RecognizeMediaForZhiXue返回参数结构体
      class RecognizeMediaForZhiXueResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID，可以通过该 ID 查询任务状态和结果。
        # @type TaskId: String
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

      # ResetWorkflow请求参数结构体
      class ResetWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流 ID。
        # @type WorkflowId: Integer
        # @param WorkflowName: 工作流名称，最多128字符。同一个用户该名称唯一。
        # @type WorkflowName: String
        # @param Trigger: 工作流绑定的触发规则，当上传视频命中该规则到该对象时即触发工作流。
        # @type Trigger: :class:`Tencentcloud::Mps.v20190612.models.WorkflowTrigger`
        # @param OutputStorage: 视频处理的文件输出配置。不填则继承 Trigger 中的存储位置。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputDir: 视频处理生成的文件输出的目标目录，如`/movie/201907/`。如果不填，表示与触发文件所在的目录一致，即`{inputDir}`。
        # @type OutputDir: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Mps.v20190612.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 视频内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskInput`
        # @param TaskPriority: 工作流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TaskPriority: Integer
        # @param TaskNotifyConfig: 任务的事件通知信息，不填代表不获取事件通知。
        # @type TaskNotifyConfig: :class:`Tencentcloud::Mps.v20190612.models.TaskNotifyConfig`

        attr_accessor :WorkflowId, :WorkflowName, :Trigger, :OutputStorage, :OutputDir, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TaskPriority, :TaskNotifyConfig
        
        def initialize(workflowid=nil, workflowname=nil, trigger=nil, outputstorage=nil, outputdir=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, taskpriority=nil, tasknotifyconfig=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @Trigger = trigger
          @OutputStorage = outputstorage
          @OutputDir = outputdir
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TaskPriority = taskpriority
          @TaskNotifyConfig = tasknotifyconfig
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          unless params['Trigger'].nil?
            @Trigger = WorkflowTrigger.new
            @Trigger.deserialize(params['Trigger'])
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputDir = params['OutputDir']
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new
            @MediaProcessTask.deserialize(params['MediaProcessTask'])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new
            @AiContentReviewTask.deserialize(params['AiContentReviewTask'])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new
            @AiAnalysisTask.deserialize(params['AiAnalysisTask'])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new
            @AiRecognitionTask.deserialize(params['AiRecognitionTask'])
          end
          @TaskPriority = params['TaskPriority']
          unless params['TaskNotifyConfig'].nil?
            @TaskNotifyConfig = TaskNotifyConfig.new
            @TaskNotifyConfig.deserialize(params['TaskNotifyConfig'])
          end
        end
      end

      # ResetWorkflow返回参数结构体
      class ResetWorkflowResponse < TencentCloud::Common::AbstractModel
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

      # 对视频做采样截图任务输入参数类型。
      class SampleSnapshotTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array
        # @param OutputStorage: 采样截图后文件的目标存储，不填则继承上层的 OutputStorage 值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputObjectPath: 采样截图后图片文件的输出路径，可以为相对路径或者绝对路径。如果不填，则默认为相对路径：`{inputName}_sampleSnapshot_{definition}_{number}.{format}`。
        # @type OutputObjectPath: String
        # @param ObjectNumberFormat: 采样截图后输出路径中的`{number}`变量的规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectNumberFormat: :class:`Tencentcloud::Mps.v20190612.models.NumberFormat`

        attr_accessor :Definition, :WatermarkSet, :OutputStorage, :OutputObjectPath, :ObjectNumberFormat
        
        def initialize(definition=nil, watermarkset=nil, outputstorage=nil, outputobjectpath=nil, objectnumberformat=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
          @OutputStorage = outputstorage
          @OutputObjectPath = outputobjectpath
          @ObjectNumberFormat = objectnumberformat
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['WatermarkSet'].nil?
            @WatermarkSet = []
            params['WatermarkSet'].each do |i|
              watermarkinput_tmp = WatermarkInput.new
              watermarkinput_tmp.deserialize(i)
              @WatermarkSet << watermarkinput_tmp
            end
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputObjectPath = params['OutputObjectPath']
          unless params['ObjectNumberFormat'].nil?
            @ObjectNumberFormat = NumberFormat.new
            @ObjectNumberFormat.deserialize(params['ObjectNumberFormat'])
          end
        end
      end

      # 采样截图模板详情
      class SampleSnapshotTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 采样截图模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式。
        # @type Format: String
        # @param SampleType: 采样截图类型。
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # @type SampleInterval: Integer
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Width, :Height, :ResolutionAdaptive, :Format, :SampleType, :SampleInterval, :CreateTime, :UpdateTime, :FillType
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, sampletype=nil, sampleinterval=nil, createtime=nil, updatetime=nil, filltype=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FillType = params['FillType']
        end
      end

      # 编排视频分析任务结果类型
      class ScheduleAnalysisTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 分析任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskInput`
        # @param Output: 分析任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: Array

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = []
            params['Output'].each do |i|
              aianalysisresult_tmp = AiAnalysisResult.new
              aianalysisresult_tmp.deserialize(i)
              @Output << aianalysisresult_tmp
            end
          end
        end
      end

      # 编排视频识别任务结果类型
      class ScheduleRecognitionTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 识别任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskInput`
        # @param Output: 识别任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: Array

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = []
            params['Output'].each do |i|
              airecognitionresult_tmp = AiRecognitionResult.new
              airecognitionresult_tmp.deserialize(i)
              @Output << airecognitionresult_tmp
            end
          end
        end
      end

      # 编排视频审核任务结果类型
      class ScheduleReviewTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [媒体处理类错误码](https://cloud.tencent.com/document/product/862/50369#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 审核任务的输入。
        # @type Input: :class:`Tencentcloud::Mps.v20190612.models.AiContentReviewTaskInput`
        # @param Output: 审核任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: Array

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiContentReviewTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = []
            params['Output'].each do |i|
              aicontentreviewresult_tmp = AiContentReviewResult.new
              aicontentreviewresult_tmp.deserialize(i)
              @Output << aicontentreviewresult_tmp
            end
          end
        end
      end

      # 编排任务信息
      class ScheduleTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 编排任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param InputInfo: 媒体处理的目标文件信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputInfo: :class:`Tencentcloud::Mps.v20190612.models.MediaInputInfo`
        # @param MetaData: 原始视频的元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Mps.v20190612.models.MediaMetaData`
        # @param ActivityResultSet: 编排任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityResultSet: Array

        attr_accessor :TaskId, :Status, :InputInfo, :MetaData, :ActivityResultSet
        
        def initialize(taskid=nil, status=nil, inputinfo=nil, metadata=nil, activityresultset=nil)
          @TaskId = taskid
          @Status = status
          @InputInfo = inputinfo
          @MetaData = metadata
          @ActivityResultSet = activityresultset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          unless params['ActivityResultSet'].nil?
            @ActivityResultSet = []
            params['ActivityResultSet'].each do |i|
              activityresult_tmp = ActivityResult.new
              activityresult_tmp.deserialize(i)
              @ActivityResultSet << activityresult_tmp
            end
          end
        end
      end

      # 去划痕配置
      class ScratchRepairConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Intensity: 强度，取值范围：0.0~1.0。
        # 默认：0.0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intensity: Float

        attr_accessor :Switch, :Intensity
        
        def initialize(switch=nil, intensity=nil)
          @Switch = switch
          @Intensity = intensity
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Intensity = params['Intensity']
        end
      end

      # 细节增强配置
      class SharpEnhanceConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Intensity: 强度，取值范围：0.0~1.0。
        # 默认：0.0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intensity: Float

        attr_accessor :Switch, :Intensity
        
        def initialize(switch=nil, intensity=nil)
          @Switch = switch
          @Intensity = intensity
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Intensity = params['Intensity']
        end
      end

      # 对视频按指定时间点截图任务输入参数类型
      class SnapshotByTimeOffsetTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板 ID。
        # @type Definition: Integer
        # @param ExtTimeOffsetSet: 截图时间点列表，时间点支持 s、% 两种格式：
        # <li>当字符串以 s 结尾，表示时间点单位为秒，如 3.5s 表示时间点为第3.5秒；</li>
        # <li>当字符串以 % 结尾，表示时间点为视频时长的百分比大小，如10%表示时间点为视频前第10%的时间。</li>
        # @type ExtTimeOffsetSet: Array
        # @param TimeOffsetSet: 截图时间点列表，单位为<font color=red>秒</font>。此参数已不再建议使用，建议您使用 ExtTimeOffsetSet 参数。
        # @type TimeOffsetSet: Array
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array
        # @param OutputStorage: 时间点截图后文件的目标存储，不填则继承上层的 OutputStorage 值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputObjectPath: 时间点截图后图片文件的输出路径，可以为相对路径或者绝对路径。如果不填，则默认为相对路径：`{inputName}_snapshotByTimeOffset_{definition}_{number}.{format}`。
        # @type OutputObjectPath: String
        # @param ObjectNumberFormat: 时间点截图后输出路径中的`{number}`变量的规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectNumberFormat: :class:`Tencentcloud::Mps.v20190612.models.NumberFormat`

        attr_accessor :Definition, :ExtTimeOffsetSet, :TimeOffsetSet, :WatermarkSet, :OutputStorage, :OutputObjectPath, :ObjectNumberFormat
        
        def initialize(definition=nil, exttimeoffsetset=nil, timeoffsetset=nil, watermarkset=nil, outputstorage=nil, outputobjectpath=nil, objectnumberformat=nil)
          @Definition = definition
          @ExtTimeOffsetSet = exttimeoffsetset
          @TimeOffsetSet = timeoffsetset
          @WatermarkSet = watermarkset
          @OutputStorage = outputstorage
          @OutputObjectPath = outputobjectpath
          @ObjectNumberFormat = objectnumberformat
        end

        def deserialize(params)
          @Definition = params['Definition']
          @ExtTimeOffsetSet = params['ExtTimeOffsetSet']
          @TimeOffsetSet = params['TimeOffsetSet']
          unless params['WatermarkSet'].nil?
            @WatermarkSet = []
            params['WatermarkSet'].each do |i|
              watermarkinput_tmp = WatermarkInput.new
              watermarkinput_tmp.deserialize(i)
              @WatermarkSet << watermarkinput_tmp
            end
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputObjectPath = params['OutputObjectPath']
          unless params['ObjectNumberFormat'].nil?
            @ObjectNumberFormat = NumberFormat.new
            @ObjectNumberFormat.deserialize(params['ObjectNumberFormat'])
          end
        end
      end

      # 时间点截图模板详情
      class SnapshotByTimeOffsetTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 时间点截图模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式。
        # @type Format: String
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>black：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>black：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Width, :Height, :ResolutionAdaptive, :Format, :CreateTime, :UpdateTime, :FillType
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, createtime=nil, updatetime=nil, filltype=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FillType = params['FillType']
        end
      end

      # 超分配置
      class SuperResolutionConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Type: 类型，可选值：
        # <li>lq：针对低清晰度有较多噪声视频的超分；</li>
        # <li>hq：针对高清晰度视频超分。</li>
        # 默认值：lq。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Size: 超分倍数，可选值：
        # <li>2：目前只支持 2 倍超分。</li>
        # 默认值：2。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer

        attr_accessor :Switch, :Type, :Size
        
        def initialize(switch=nil, type=nil, size=nil)
          @Switch = switch
          @Type = type
          @Size = size
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Type = params['Type']
          @Size = params['Size']
        end
      end

      # SVG水印模板输入参数
      class SvgWatermarkInput < TencentCloud::Common::AbstractModel
        # @param Width: 水印的宽度，支持 px，%，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素；当填 0px 且
        #  Height 不为 0px 时，表示水印的宽度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的宽度取原始 SVG 图像的宽度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Width 为视频宽度的百分比大小，如 10W% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Width 为视频高度的百分比大小，如 10H% 表示 Width 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Width 为视频短边的百分比大小，如 10S% 表示 Width 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Width 为视频长边的百分比大小，如 10L% 表示 Width 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 W%。</li>
        # 默认值为 10W%。
        # @type Width: String
        # @param Height: 水印的高度，支持 px，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素；当填 0px 且
        #  Width 不为 0px 时，表示水印的高度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的高度取原始 SVG 图像的高度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Height 为视频宽度的百分比大小，如 10W% 表示 Height 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Height 为视频高度的百分比大小，如 10H% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Height 为视频短边的百分比大小，如 10S% 表示 Height 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Height 为视频长边的百分比大小，如 10L% 表示 Height 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 H%。</li>
        # 默认值为 0px。
        # @type Height: String

        attr_accessor :Width, :Height
        
        def initialize(width=nil, height=nil)
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # SVG水印模板输入参数
      class SvgWatermarkInputForUpdate < TencentCloud::Common::AbstractModel
        # @param Width: 水印的宽度，支持 px，%，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素；当填 0px 且
        #  Height 不为 0px 时，表示水印的宽度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的宽度取原始 SVG 图像的宽度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Width 为视频宽度的百分比大小，如 10W% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Width 为视频高度的百分比大小，如 10H% 表示 Width 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Width 为视频短边的百分比大小，如 10S% 表示 Width 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Width 为视频长边的百分比大小，如 10L% 表示 Width 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 W%。</li>
        # 默认值为 10W%。
        # @type Width: String
        # @param Height: 水印的高度，支持 px，%，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素；当填 0px 且
        #  Width 不为 0px 时，表示水印的高度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的高度取原始 SVG 图像的高度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Height 为视频宽度的百分比大小，如 10W% 表示 Height 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Height 为视频高度的百分比大小，如 10H% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Height 为视频短边的百分比大小，如 10S% 表示 Height 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Height 为视频长边的百分比大小，如 10L% 表示 Height 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 H%。
        # 默认值为 0px。
        # @type Height: String

        attr_accessor :Width, :Height
        
        def initialize(width=nil, height=nil)
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 极速高清参数配置。
      class TEHDConfig < TencentCloud::Common::AbstractModel
        # @param Type: 极速高清类型，可选值：
        # <li>TEHD-100：极速高清-100。</li>
        # 不填代表不启用极速高清。
        # @type Type: String
        # @param MaxVideoBitrate: 视频码率上限，当 Type 指定了极速高清类型时有效。
        # 不填或填0表示不设视频码率上限。
        # @type MaxVideoBitrate: Integer

        attr_accessor :Type, :MaxVideoBitrate
        
        def initialize(type=nil, maxvideobitrate=nil)
          @Type = type
          @MaxVideoBitrate = maxvideobitrate
        end

        def deserialize(params)
          @Type = params['Type']
          @MaxVideoBitrate = params['MaxVideoBitrate']
        end
      end

      # 极速高清参数配置。
      class TEHDConfigForUpdate < TencentCloud::Common::AbstractModel
        # @param Type: 极速高清类型，可选值：
        # <li>TEHD-100：极速高清-100。</li>
        # 不填代表不修改。
        # @type Type: String
        # @param MaxVideoBitrate: 视频码率上限，不填代表不修改。
        # @type MaxVideoBitrate: Integer

        attr_accessor :Type, :MaxVideoBitrate
        
        def initialize(type=nil, maxvideobitrate=nil)
          @Type = type
          @MaxVideoBitrate = maxvideobitrate
        end

        def deserialize(params)
          @Type = params['Type']
          @MaxVideoBitrate = params['MaxVideoBitrate']
        end
      end

      # 智能标签任务控制参数
      class TagConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能标签任务开关，可选值：
        # <li>ON：开启智能标签任务；</li>
        # <li>OFF：关闭智能标签任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能标签任务控制参数
      class TagConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能标签任务开关，可选值：
        # <li>ON：开启智能标签任务；</li>
        # <li>OFF：关闭智能标签任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 任务的事件通知配置。
      class TaskNotifyConfig < TencentCloud::Common::AbstractModel
        # @param CmqModel: CMQ或TDMQ-CMQ 的模型，有 Queue 和 Topic 两种。
        # @type CmqModel: String
        # @param CmqRegion: CMQ或TDMQ-CMQ 的园区，如 sh，bj 等。
        # @type CmqRegion: String
        # @param TopicName: 当模型为 Topic 时有效，表示接收事件通知的 CMQ 或 TDMQ-CMQ 的主题名。
        # @type TopicName: String
        # @param QueueName: 当模型为 Queue 时有效，表示接收事件通知的 CMQ 或 TDMQ-CMQ 的队列名。
        # @type QueueName: String
        # @param NotifyMode: 工作流通知的模式，可取值有 Finish 和 Change，不填代表 Finish。
        # @type NotifyMode: String
        # @param NotifyType: 通知类型，可选值：
        # <li>CMQ：已下线，建议切换到TDMQ-CMQ</li>
        # <li>TDMQ-CMQ：消息队列</li>
        # <li>URL：指定URL时HTTP回调推送到 NotifyUrl 指定的地址，回调协议http+json，包体内容同解析事件通知接口的输出参数 </li>
        # <li>SCF：不推荐使用，需要在控制台额外配置SCF</li>
        # 目前 默认CMQ。
        # @type NotifyType: String
        # @param NotifyUrl: HTTP回调地址，NotifyType为URL时必填。
        # @type NotifyUrl: String

        attr_accessor :CmqModel, :CmqRegion, :TopicName, :QueueName, :NotifyMode, :NotifyType, :NotifyUrl
        
        def initialize(cmqmodel=nil, cmqregion=nil, topicname=nil, queuename=nil, notifymode=nil, notifytype=nil, notifyurl=nil)
          @CmqModel = cmqmodel
          @CmqRegion = cmqregion
          @TopicName = topicname
          @QueueName = queuename
          @NotifyMode = notifymode
          @NotifyType = notifytype
          @NotifyUrl = notifyurl
        end

        def deserialize(params)
          @CmqModel = params['CmqModel']
          @CmqRegion = params['CmqRegion']
          @TopicName = params['TopicName']
          @QueueName = params['QueueName']
          @NotifyMode = params['NotifyMode']
          @NotifyType = params['NotifyType']
          @NotifyUrl = params['NotifyUrl']
        end
      end

      # 媒体处理输出对象信息。
      class TaskOutputStorage < TencentCloud::Common::AbstractModel
        # @param Type: 媒体处理输出对象存储位置的类型，现在仅支持 COS。
        # @type Type: String
        # @param CosOutputStorage: 当 Type 为 COS 时有效，则该项为必填，表示媒体处理 COS 输出位置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosOutputStorage: :class:`Tencentcloud::Mps.v20190612.models.CosOutputStorage`

        attr_accessor :Type, :CosOutputStorage
        
        def initialize(type=nil, cosoutputstorage=nil)
          @Type = type
          @CosOutputStorage = cosoutputstorage
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CosOutputStorage'].nil?
            @CosOutputStorage = CosOutputStorage.new
            @CosOutputStorage.deserialize(params['CosOutputStorage'])
          end
        end
      end

      # 任务概要信息
      class TaskSimpleInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param TaskType: 任务类型，包含：
        # <li> WorkflowTask：工作流处理任务；</li>
        # <li> EditMediaTask：视频编辑任务；</li>
        # <li> LiveProcessTask：直播处理任务。</li>
        # @type TaskType: String
        # @param CreateTime: 任务创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param BeginProcessTime: 任务开始执行时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。若任务尚未开始，该字段为：0000-00-00T00:00:00Z。
        # @type BeginProcessTime: String
        # @param FinishTime: 任务结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。若任务尚未完成，该字段为：0000-00-00T00:00:00Z。
        # @type FinishTime: String

        attr_accessor :TaskId, :TaskType, :CreateTime, :BeginProcessTime, :FinishTime
        
        def initialize(taskid=nil, tasktype=nil, createtime=nil, beginprocesstime=nil, finishtime=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @CreateTime = createtime
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @CreateTime = params['CreateTime']
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
        end
      end

      # 涉敏任务控制参数
      class TerrorismConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面涉敏任务控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.TerrorismImgReviewTemplateInfo`
        # @param OcrReviewInfo: 文本涉敏任务控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.TerrorismOcrReviewTemplateInfo`

        attr_accessor :ImgReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = TerrorismImgReviewTemplateInfo.new
            @ImgReviewInfo.deserialize(params['ImgReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = TerrorismOcrReviewTemplateInfo.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 涉敏任务控制参数。
      class TerrorismConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面涉敏任务控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.TerrorismImgReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本涉敏任务控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.TerrorismOcrReviewTemplateInfoForUpdate`

        attr_accessor :ImgReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = TerrorismImgReviewTemplateInfoForUpdate.new
            @ImgReviewInfo.deserialize(params['ImgReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = TerrorismOcrReviewTemplateInfoForUpdate.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 画面涉敏任务控制参数
      class TerrorismImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面涉敏任务开关，可选值：
        # <li>ON：开启画面涉敏任务；</li>
        # <li>OFF：关闭画面涉敏任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面涉敏过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>guns：武器枪支；</li>
        # <li>crowd：人群聚集；</li>
        # <li>bloody：血腥画面；</li>
        # <li>police：警察部队；</li>
        # <li>banners：涉敏旗帜；</li>
        # <li>militant：武装分子；</li>
        # <li>explosion：爆炸火灾；</li>
        # <li>terrorists：涉敏人物；</li>
        # <li>scenario：涉敏画面。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 90 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 80 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 画面涉敏任务控制参数。
      class TerrorismImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面涉敏任务开关，可选值：
        # <li>ON：开启画面涉敏任务；</li>
        # <li>OFF：关闭画面涉敏任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面涉敏过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>guns：武器枪支；</li>
        # <li>crowd：人群聚集；</li>
        # <li>bloody：血腥画面；</li>
        # <li>police：警察部队；</li>
        # <li>banners：涉敏旗帜；</li>
        # <li>militant：武装分子；</li>
        # <li>explosion：爆炸火灾；</li>
        # <li>terrorists：涉敏人物；</li>
        # <li>scenario：涉敏画面。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本涉敏任务控制参数
      class TerrorismOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本涉敏任务开关，可选值：
        # <li>ON：开启文本涉敏任务；</li>
        # <li>OFF：关闭文本涉敏任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本涉敏任务控制参数
      class TerrorismOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本涉敏任务开关，可选值：
        # <li>ON：开启文本涉敏任务；</li>
        # <li>OFF：关闭文本涉敏任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文字水印模板
      class TextWatermarkTemplateInput < TencentCloud::Common::AbstractModel
        # @param FontType: 字体类型，目前可以支持两种：
        # <li>simkai.ttf：可以支持中文和英文；</li>
        # <li>arial.ttf：仅支持英文。</li>
        # @type FontType: String
        # @param FontSize: 字体大小，格式：Npx，N 为数值。
        # @type FontSize: String
        # @param FontColor: 字体颜色，格式：0xRRGGBB，默认值：0xFFFFFF（白色）。
        # @type FontColor: String
        # @param FontAlpha: 文字透明度，取值范围：(0, 1]
        # <li>0：完全透明</li>
        # <li>1：完全不透明</li>
        # 默认值：1。
        # @type FontAlpha: Float

        attr_accessor :FontType, :FontSize, :FontColor, :FontAlpha
        
        def initialize(fonttype=nil, fontsize=nil, fontcolor=nil, fontalpha=nil)
          @FontType = fonttype
          @FontSize = fontsize
          @FontColor = fontcolor
          @FontAlpha = fontalpha
        end

        def deserialize(params)
          @FontType = params['FontType']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @FontAlpha = params['FontAlpha']
        end
      end

      # 文字水印模板
      class TextWatermarkTemplateInputForUpdate < TencentCloud::Common::AbstractModel
        # @param FontType: 字体类型，目前可以支持两种：
        # <li>simkai.ttf：可以支持中文和英文；</li>
        # <li>arial.ttf：仅支持英文。</li>
        # @type FontType: String
        # @param FontSize: 字体大小，格式：Npx，N 为数值。
        # @type FontSize: String
        # @param FontColor: 字体颜色，格式：0xRRGGBB，默认值：0xFFFFFF（白色）。
        # @type FontColor: String
        # @param FontAlpha: 文字透明度，取值范围：(0, 1]
        # <li>0：完全透明</li>
        # <li>1：完全不透明</li>
        # @type FontAlpha: Float

        attr_accessor :FontType, :FontSize, :FontColor, :FontAlpha
        
        def initialize(fonttype=nil, fontsize=nil, fontcolor=nil, fontalpha=nil)
          @FontType = fonttype
          @FontSize = fontsize
          @FontColor = fontcolor
          @FontAlpha = fontalpha
        end

        def deserialize(params)
          @FontType = params['FontType']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @FontAlpha = params['FontAlpha']
        end
      end

      # 转码任务输入参数类型
      class TranscodeTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频转码模板 ID。
        # @type Definition: Integer
        # @param RawParameter: 视频转码自定义参数，当 Definition 填 0 时有效。
        # 该参数用于高度定制场景，建议您优先使用 Definition 指定转码参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RawParameter: :class:`Tencentcloud::Mps.v20190612.models.RawTranscodeParameter`
        # @param OverrideParameter: 视频转码自定义参数，当 Definition 不填 0 时有效。
        # 当填写了该结构中的部分转码参数时，将使用填写的参数覆盖转码模板中的参数。
        # 该参数用于高度定制场景，建议您仅使用 Definition 指定转码参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverrideParameter: :class:`Tencentcloud::Mps.v20190612.models.OverrideTranscodeParameter`
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WatermarkSet: Array
        # @param MosaicSet: 马赛克列表，最大可支持 10 张。
        # @type MosaicSet: Array
        # @param StartTimeOffset: 转码后的视频的起始时间偏移，单位：秒。
        # <li>不填或填0，表示转码后的视频从原始视频的起始位置开始；</li>
        # <li>当数值大于0时（假设为 n），表示转码后的视频从原始视频的第 n 秒位置开始；</li>
        # <li>当数值小于0时（假设为 -n），表示转码后的视频从原始视频结束 n 秒前的位置开始。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 转码后视频的终止时间偏移，单位：秒。
        # <li>不填或填0，表示转码后的视频持续到原始视频的末尾终止；</li>
        # <li>当数值大于0时（假设为 n），表示转码后的视频持续到原始视频第 n 秒时终止；</li>
        # <li>当数值小于0时（假设为 -n），表示转码后的视频持续到原始视频结束 n 秒前终止。</li>
        # @type EndTimeOffset: Float
        # @param OutputStorage: 转码后文件的目标存储，不填则继承上层的 OutputStorage 值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param OutputObjectPath: 转码后主文件的输出路径，可以为相对路径或者绝对路径。如果不填，则默认为相对路径：`{inputName}_transcode_{definition}.{format}`。
        # @type OutputObjectPath: String
        # @param SegmentObjectName: 转码后分片文件的输出路径（转码 HLS 时 ts 的路径），只能为相对路径。如果不填，则默认为：`{inputName}_transcode_{definition}_{number}.{format}`。
        # @type SegmentObjectName: String
        # @param ObjectNumberFormat: 转码后输出路径中的`{number}`变量的规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectNumberFormat: :class:`Tencentcloud::Mps.v20190612.models.NumberFormat`
        # @param HeadTailParameter: 片头片尾参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadTailParameter: :class:`Tencentcloud::Mps.v20190612.models.HeadTailParameter`

        attr_accessor :Definition, :RawParameter, :OverrideParameter, :WatermarkSet, :MosaicSet, :StartTimeOffset, :EndTimeOffset, :OutputStorage, :OutputObjectPath, :SegmentObjectName, :ObjectNumberFormat, :HeadTailParameter
        
        def initialize(definition=nil, rawparameter=nil, overrideparameter=nil, watermarkset=nil, mosaicset=nil, starttimeoffset=nil, endtimeoffset=nil, outputstorage=nil, outputobjectpath=nil, segmentobjectname=nil, objectnumberformat=nil, headtailparameter=nil)
          @Definition = definition
          @RawParameter = rawparameter
          @OverrideParameter = overrideparameter
          @WatermarkSet = watermarkset
          @MosaicSet = mosaicset
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @OutputStorage = outputstorage
          @OutputObjectPath = outputobjectpath
          @SegmentObjectName = segmentobjectname
          @ObjectNumberFormat = objectnumberformat
          @HeadTailParameter = headtailparameter
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['RawParameter'].nil?
            @RawParameter = RawTranscodeParameter.new
            @RawParameter.deserialize(params['RawParameter'])
          end
          unless params['OverrideParameter'].nil?
            @OverrideParameter = OverrideTranscodeParameter.new
            @OverrideParameter.deserialize(params['OverrideParameter'])
          end
          unless params['WatermarkSet'].nil?
            @WatermarkSet = []
            params['WatermarkSet'].each do |i|
              watermarkinput_tmp = WatermarkInput.new
              watermarkinput_tmp.deserialize(i)
              @WatermarkSet << watermarkinput_tmp
            end
          end
          unless params['MosaicSet'].nil?
            @MosaicSet = []
            params['MosaicSet'].each do |i|
              mosaicinput_tmp = MosaicInput.new
              mosaicinput_tmp.deserialize(i)
              @MosaicSet << mosaicinput_tmp
            end
          end
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          @OutputObjectPath = params['OutputObjectPath']
          @SegmentObjectName = params['SegmentObjectName']
          unless params['ObjectNumberFormat'].nil?
            @ObjectNumberFormat = NumberFormat.new
            @ObjectNumberFormat.deserialize(params['ObjectNumberFormat'])
          end
          unless params['HeadTailParameter'].nil?
            @HeadTailParameter = HeadTailParameter.new
            @HeadTailParameter.deserialize(params['HeadTailParameter'])
          end
        end
      end

      # 转码模板详情
      class TranscodeTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: String
        # @param Container: 封装格式，取值：mp4、flv、hls、mp3、flac、ogg。
        # @type Container: String
        # @param Name: 转码模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Type: 模板类型，取值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param RemoveVideo: 是否去除视频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数，仅当 RemoveVideo 为 0，该字段有效。
        # @type VideoTemplate: :class:`Tencentcloud::Mps.v20190612.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，仅当 RemoveAudio 为 0，该字段有效 。
        # @type AudioTemplate: :class:`Tencentcloud::Mps.v20190612.models.AudioTemplateInfo`
        # @param TEHDConfig: 极速高清转码参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TEHDConfig: :class:`Tencentcloud::Mps.v20190612.models.TEHDConfig`
        # @param ContainerType: 封装格式过滤条件，可选值：
        # <li>Video：视频格式，可以同时包含视频流和音频流的封装格式；</li>
        # <li>PureAudio：纯音频格式，只能包含音频流的封装格式板。</li>
        # @type ContainerType: String
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param EnhanceConfig: 音视频增强配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnhanceConfig: :class:`Tencentcloud::Mps.v20190612.models.EnhanceConfig`

        attr_accessor :Definition, :Container, :Name, :Comment, :Type, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig, :ContainerType, :CreateTime, :UpdateTime, :EnhanceConfig
        
        def initialize(definition=nil, container=nil, name=nil, comment=nil, type=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil, containertype=nil, createtime=nil, updatetime=nil, enhanceconfig=nil)
          @Definition = definition
          @Container = container
          @Name = name
          @Comment = comment
          @Type = type
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
          @ContainerType = containertype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @EnhanceConfig = enhanceconfig
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Container = params['Container']
          @Name = params['Name']
          @Comment = params['Comment']
          @Type = params['Type']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfo.new
            @VideoTemplate.deserialize(params['VideoTemplate'])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfo.new
            @AudioTemplate.deserialize(params['AudioTemplate'])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfig.new
            @TEHDConfig.deserialize(params['TEHDConfig'])
          end
          @ContainerType = params['ContainerType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['EnhanceConfig'].nil?
            @EnhanceConfig = EnhanceConfig.new
            @EnhanceConfig.deserialize(params['EnhanceConfig'])
          end
        end
      end

      # 媒体处理 URL 对象信息。
      class UrlInputInfo < TencentCloud::Common::AbstractModel
        # @param Url: 视频的 URL。
        # @type Url: String

        attr_accessor :Url
        
        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 用户自定义语音审核任务控制参数
      class UserDefineAsrTextReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定语音审核任务开关，可选值：
        # <li>ON：开启自定义语音审核任务；</li>
        # <li>OFF：关闭自定义语音审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义语音过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义语音关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义语音审核任务控制参数
      class UserDefineAsrTextReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定语音审核任务开关，可选值：
        # <li>ON：开启自定义语音审核任务；</li>
        # <li>OFF：关闭自定义语音审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义语音过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义语音关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义审核任务控制参数
      class UserDefineConfigureInfo < TencentCloud::Common::AbstractModel
        # @param FaceReviewInfo: 用户自定义人物审核控制参数。
        # @type FaceReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.UserDefineFaceReviewTemplateInfo`
        # @param AsrReviewInfo: 用户自定义语音审核控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.UserDefineAsrTextReviewTemplateInfo`
        # @param OcrReviewInfo: 用户自定义文本审核控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.UserDefineOcrTextReviewTemplateInfo`

        attr_accessor :FaceReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(facereviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @FaceReviewInfo = facereviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['FaceReviewInfo'].nil?
            @FaceReviewInfo = UserDefineFaceReviewTemplateInfo.new
            @FaceReviewInfo.deserialize(params['FaceReviewInfo'])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = UserDefineAsrTextReviewTemplateInfo.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = UserDefineOcrTextReviewTemplateInfo.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 用户自定义审核任务控制参数。
      class UserDefineConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param FaceReviewInfo: 用户自定义人物审核控制参数。
        # @type FaceReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.UserDefineFaceReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 用户自定义语音审核控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.UserDefineAsrTextReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 用户自定义文本审核控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Mps.v20190612.models.UserDefineOcrTextReviewTemplateInfoForUpdate`

        attr_accessor :FaceReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(facereviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @FaceReviewInfo = facereviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['FaceReviewInfo'].nil?
            @FaceReviewInfo = UserDefineFaceReviewTemplateInfoForUpdate.new
            @FaceReviewInfo.deserialize(params['FaceReviewInfo'])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = UserDefineAsrTextReviewTemplateInfoForUpdate.new
            @AsrReviewInfo.deserialize(params['AsrReviewInfo'])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = UserDefineOcrTextReviewTemplateInfoForUpdate.new
            @OcrReviewInfo.deserialize(params['OcrReviewInfo'])
          end
        end
      end

      # 用户自定义人物审核任务控制参数
      class UserDefineFaceReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定义人物审核任务开关，可选值：
        # <li>ON：开启自定义人物审核任务；</li>
        # <li>OFF：关闭自定义人物审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义人物过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义人物库的时，需要添加对应人物标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 97 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 95 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义人物审核任务控制参数。
      class UserDefineFaceReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定义人物审核任务开关，可选值：
        # <li>ON：开启自定义人物审核任务；</li>
        # <li>OFF：关闭自定义人物审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义人物过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义人物库的时，需要添加对应人物标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义文本审核任务控制参数
      class UserDefineOcrTextReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定文本审核任务开关，可选值：
        # <li>ON：开启自定义文本审核任务；</li>
        # <li>OFF：关闭自定义文本审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义文本过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义文本关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义文本审核任务控制参数。
      class UserDefineOcrTextReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定文本审核任务开关，可选值：
        # <li>ON：开启自定义文本审核任务；</li>
        # <li>OFF：关闭自定义文本审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义文本过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义文本关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 视频降噪配置
      class VideoDenoiseConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 能力配置开关，可选值：
        # <li>ON：开启；</li>
        # <li>OFF：关闭。</li>
        # 默认值：ON。
        # @type Switch: String
        # @param Type: 类型，可选值：
        # <li>weak</li>
        # <li>strong</li>
        # 默认值：weak。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Switch, :Type
        
        def initialize(switch=nil, type=nil)
          @Switch = switch
          @Type = type
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Type = params['Type']
        end
      end

      # 视频增强配置
      class VideoEnhanceConfig < TencentCloud::Common::AbstractModel
        # @param FrameRate: 插帧帧率配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameRate: :class:`Tencentcloud::Mps.v20190612.models.FrameRateConfig`
        # @param SuperResolution: 超分配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuperResolution: :class:`Tencentcloud::Mps.v20190612.models.SuperResolutionConfig`
        # @param Hdr: HDR配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hdr: :class:`Tencentcloud::Mps.v20190612.models.HdrConfig`
        # @param Denoise: 视频降噪配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Denoise: :class:`Tencentcloud::Mps.v20190612.models.VideoDenoiseConfig`
        # @param ImageQualityEnhance: 综合增强配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageQualityEnhance: :class:`Tencentcloud::Mps.v20190612.models.ImageQualityEnhanceConfig`
        # @param ColorEnhance: 色彩增强配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColorEnhance: :class:`Tencentcloud::Mps.v20190612.models.ColorEnhanceConfig`
        # @param SharpEnhance: 细节增强配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SharpEnhance: :class:`Tencentcloud::Mps.v20190612.models.SharpEnhanceConfig`
        # @param FaceEnhance: 人脸增强配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceEnhance: :class:`Tencentcloud::Mps.v20190612.models.FaceEnhanceConfig`
        # @param LowLightEnhance: 低光照增强配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LowLightEnhance: :class:`Tencentcloud::Mps.v20190612.models.LowLightEnhanceConfig`
        # @param ScratchRepair: 去划痕配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScratchRepair: :class:`Tencentcloud::Mps.v20190612.models.ScratchRepairConfig`
        # @param ArtifactRepair: 去伪影（毛刺）配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ArtifactRepair: :class:`Tencentcloud::Mps.v20190612.models.ArtifactRepairConfig`

        attr_accessor :FrameRate, :SuperResolution, :Hdr, :Denoise, :ImageQualityEnhance, :ColorEnhance, :SharpEnhance, :FaceEnhance, :LowLightEnhance, :ScratchRepair, :ArtifactRepair
        
        def initialize(framerate=nil, superresolution=nil, hdr=nil, denoise=nil, imagequalityenhance=nil, colorenhance=nil, sharpenhance=nil, faceenhance=nil, lowlightenhance=nil, scratchrepair=nil, artifactrepair=nil)
          @FrameRate = framerate
          @SuperResolution = superresolution
          @Hdr = hdr
          @Denoise = denoise
          @ImageQualityEnhance = imagequalityenhance
          @ColorEnhance = colorenhance
          @SharpEnhance = sharpenhance
          @FaceEnhance = faceenhance
          @LowLightEnhance = lowlightenhance
          @ScratchRepair = scratchrepair
          @ArtifactRepair = artifactrepair
        end

        def deserialize(params)
          unless params['FrameRate'].nil?
            @FrameRate = FrameRateConfig.new
            @FrameRate.deserialize(params['FrameRate'])
          end
          unless params['SuperResolution'].nil?
            @SuperResolution = SuperResolutionConfig.new
            @SuperResolution.deserialize(params['SuperResolution'])
          end
          unless params['Hdr'].nil?
            @Hdr = HdrConfig.new
            @Hdr.deserialize(params['Hdr'])
          end
          unless params['Denoise'].nil?
            @Denoise = VideoDenoiseConfig.new
            @Denoise.deserialize(params['Denoise'])
          end
          unless params['ImageQualityEnhance'].nil?
            @ImageQualityEnhance = ImageQualityEnhanceConfig.new
            @ImageQualityEnhance.deserialize(params['ImageQualityEnhance'])
          end
          unless params['ColorEnhance'].nil?
            @ColorEnhance = ColorEnhanceConfig.new
            @ColorEnhance.deserialize(params['ColorEnhance'])
          end
          unless params['SharpEnhance'].nil?
            @SharpEnhance = SharpEnhanceConfig.new
            @SharpEnhance.deserialize(params['SharpEnhance'])
          end
          unless params['FaceEnhance'].nil?
            @FaceEnhance = FaceEnhanceConfig.new
            @FaceEnhance.deserialize(params['FaceEnhance'])
          end
          unless params['LowLightEnhance'].nil?
            @LowLightEnhance = LowLightEnhanceConfig.new
            @LowLightEnhance.deserialize(params['LowLightEnhance'])
          end
          unless params['ScratchRepair'].nil?
            @ScratchRepair = ScratchRepairConfig.new
            @ScratchRepair.deserialize(params['ScratchRepair'])
          end
          unless params['ArtifactRepair'].nil?
            @ArtifactRepair = ArtifactRepairConfig.new
            @ArtifactRepair.deserialize(params['ArtifactRepair'])
          end
        end
      end

      # 视频流配置参数
      class VideoTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码</li>
        # <li>libx265：H.265 编码</li>
        # <li>av1：AOMedia Video 1 编码</li>
        # 注意：目前 H.265 编码必须指定分辨率，并且需要在 640*480 以内。
        # 注意：av1 编码容器目前只支持 mp4 。
        # @type Codec: String
        # @param Fps: 视频帧率，取值范围：[0, 100]，单位：Hz。
        # 当取值为 0，表示帧率和原始视频保持一致。
        # 注意：自适应码率时取值范围是 [0, 60]
        # @type Fps: Integer
        # @param Bitrate: 视频流的码率，取值范围：0 和 [128, 35000]，单位：kbps。
        # 当取值为 0，表示视频码率和原始视频保持一致。
        # @type Bitrate: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # 注意：自适应模式时，Width不能小于Height。
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param Gop: 关键帧 I 帧之间的间隔，取值范围：0 和 [1, 100000]，单位：帧数。
        # 当填 0 或不填时，系统将自动设置 gop 长度。
        # @type Gop: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊填充。</li>
        # 默认值：black 。
        # 注意：自适应码流只支持 stretch、black。
        # @type FillType: String
        # @param Vcrf: 视频恒定码率控制因子，取值范围为[1, 51]。
        # 如果指定该参数，将使用 CRF 的码率控制方式做转码（视频码率将不再生效）。
        # 如果没有特殊需求，不建议指定该参数。
        # @type Vcrf: Integer

        attr_accessor :Codec, :Fps, :Bitrate, :ResolutionAdaptive, :Width, :Height, :Gop, :FillType, :Vcrf
        
        def initialize(codec=nil, fps=nil, bitrate=nil, resolutionadaptive=nil, width=nil, height=nil, gop=nil, filltype=nil, vcrf=nil)
          @Codec = codec
          @Fps = fps
          @Bitrate = bitrate
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
          @Gop = gop
          @FillType = filltype
          @Vcrf = vcrf
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
          @Bitrate = params['Bitrate']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
          @Gop = params['Gop']
          @FillType = params['FillType']
          @Vcrf = params['Vcrf']
        end
      end

      # 视频流配置参数
      class VideoTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码</li>
        # <li>libx265：H.265 编码</li>
        # <li>av1：AOMedia Video 1 编码</li>
        # 注意：目前 H.265 编码必须指定分辨率，并且需要在 640*480 以内。
        # 注意：av1 编码容器目前只支持 mp4 。
        # @type Codec: String
        # @param Fps: 视频帧率，取值范围：[0, 100]，单位：Hz。
        # 当取值为 0，表示帧率和原始视频保持一致。
        # @type Fps: Integer
        # @param Bitrate: 视频流的码率，取值范围：0 和 [128, 35000]，单位：kbps。
        # 当取值为 0，表示视频码率和原始视频保持一致。
        # @type Bitrate: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 注意：自适应模式时，Width不能小于Height。
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # @type Height: Integer
        # @param Gop: 关键帧 I 帧之间的间隔，取值范围：0 和 [1, 100000]，单位：帧数。当填 0 时，系统将自动设置 gop 长度。
        # @type Gop: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊填充。</li>
        # @type FillType: String
        # @param Vcrf: 视频恒定码率控制因子。取值范围为[0, 51]，填0表示禁用该参数。
        # 如果没有特殊需求，不建议指定该参数。
        # @type Vcrf: Integer
        # @param ContentAdaptStream: 内容自适应编码。可选值：
        # <li>0：不开启</li>
        # <li>1：开启</li>
        # 默认值: 0.   当开启该参数时，将会自适应生成多个不同分辨率，不同码率的码流， 其中VideoTemplate的宽和高为多个码流中的最大分辨率，VideoTemplate中的码率为多个码流中的最高码率， VideoTemplate中的vcrf为多个码流中的最高质量。 当不设置分辨率、码率和vcrf时， ContentAdaptStream 参数生成的最高分辨率为视频源的分辨率，视频质量为接近vmaf95分。 若要开启该参数或了解计费细节, 请联系您的腾讯云商务。
        # @type ContentAdaptStream: Integer

        attr_accessor :Codec, :Fps, :Bitrate, :ResolutionAdaptive, :Width, :Height, :Gop, :FillType, :Vcrf, :ContentAdaptStream
        
        def initialize(codec=nil, fps=nil, bitrate=nil, resolutionadaptive=nil, width=nil, height=nil, gop=nil, filltype=nil, vcrf=nil, contentadaptstream=nil)
          @Codec = codec
          @Fps = fps
          @Bitrate = bitrate
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
          @Gop = gop
          @FillType = filltype
          @Vcrf = vcrf
          @ContentAdaptStream = contentadaptstream
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
          @Bitrate = params['Bitrate']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
          @Gop = params['Gop']
          @FillType = params['FillType']
          @Vcrf = params['Vcrf']
          @ContentAdaptStream = params['ContentAdaptStream']
        end
      end

      # 媒体处理任务中的水印参数类型
      class WatermarkInput < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板 ID。
        # @type Definition: Integer
        # @param RawParameter: 水印自定义参数，当 Definition 填 0 时有效。
        # 该参数用于高度定制场景，建议您优先使用 Definition 指定水印参数。
        # 水印自定义参数不支持截图打水印。
        # @type RawParameter: :class:`Tencentcloud::Mps.v20190612.models.RawWatermarkParameter`
        # @param TextContent: 文字内容，长度不超过100个字符。仅当水印类型为文字水印时填写。
        # 文字水印不支持截图打水印。
        # @type TextContent: String
        # @param SvgContent: SVG 内容。长度不超过 2000000 个字符。仅当水印类型为 SVG 水印时填写。
        # SVG 水印不支持截图打水印。
        # @type SvgContent: String
        # @param StartTimeOffset: 水印的起始时间偏移，单位：秒。不填或填0，表示水印从画面出现时开始显现。
        # <li>不填或填0，表示水印从画面开始就出现；</li>
        # <li>当数值大于0时（假设为 n），表示水印从画面开始的第 n 秒出现；</li>
        # <li>当数值小于0时（假设为 -n），表示水印从离画面结束 n 秒前开始出现。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 水印的结束时间偏移，单位：秒。
        # <li>不填或填0，表示水印持续到画面结束；</li>
        # <li>当数值大于0时（假设为 n），表示水印持续到第 n 秒时消失；</li>
        # <li>当数值小于0时（假设为 -n），表示水印持续到离画面结束 n 秒前消失。</li>
        # @type EndTimeOffset: Float

        attr_accessor :Definition, :RawParameter, :TextContent, :SvgContent, :StartTimeOffset, :EndTimeOffset
        
        def initialize(definition=nil, rawparameter=nil, textcontent=nil, svgcontent=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Definition = definition
          @RawParameter = rawparameter
          @TextContent = textcontent
          @SvgContent = svgcontent
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['RawParameter'].nil?
            @RawParameter = RawWatermarkParameter.new
            @RawParameter.deserialize(params['RawParameter'])
          end
          @TextContent = params['TextContent']
          @SvgContent = params['SvgContent']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 水印模板详情
      class WatermarkTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer
        # @param Type: 水印类型，取值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印。</li>
        # @type Type: String
        # @param Name: 水印模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param XPos: 水印图片原点距离视频图像原点的水平位置。
        # <li>当字符串以 % 结尾，表示水印 Left 为视频宽度指定百分比的位置，如 10% 表示 Left 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Left 为视频宽度指定像素的位置，如 100px 表示 Left 为 100 像素。</li>
        # @type XPos: String
        # @param YPos: 水印图片原点距离视频图像原点的垂直位置。
        # <li>当字符串以 % 结尾，表示水印 Top 为视频高度指定百分比的位置，如 10% 表示 Top 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Top 为视频高度指定像素的位置，如 100px 表示 Top 为 100 像素。</li>
        # @type YPos: String
        # @param ImageTemplate: 图片水印模板，仅当 Type 为 image，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTemplate: :class:`Tencentcloud::Mps.v20190612.models.ImageWatermarkTemplate`
        # @param TextTemplate: 文字水印模板，仅当 Type 为 text，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTemplate: :class:`Tencentcloud::Mps.v20190612.models.TextWatermarkTemplateInput`
        # @param SvgTemplate: SVG 水印模板，当 Type 为 svg，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SvgTemplate: :class:`Tencentcloud::Mps.v20190612.models.SvgWatermarkInput`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String
        # @param CoordinateOrigin: 原点位置，可选值：
        # <li>topLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        # <li>topRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        # <li>bottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        # <li>bottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下。；</li>
        # @type CoordinateOrigin: String

        attr_accessor :Definition, :Type, :Name, :Comment, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate, :CreateTime, :UpdateTime, :CoordinateOrigin
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil, createtime=nil, updatetime=nil, coordinateorigin=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @XPos = xpos
          @YPos = ypos
          @ImageTemplate = imagetemplate
          @TextTemplate = texttemplate
          @SvgTemplate = svgtemplate
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CoordinateOrigin = coordinateorigin
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @XPos = params['XPos']
          @YPos = params['YPos']
          unless params['ImageTemplate'].nil?
            @ImageTemplate = ImageWatermarkTemplate.new
            @ImageTemplate.deserialize(params['ImageTemplate'])
          end
          unless params['TextTemplate'].nil?
            @TextTemplate = TextWatermarkTemplateInput.new
            @TextTemplate.deserialize(params['TextTemplate'])
          end
          unless params['SvgTemplate'].nil?
            @SvgTemplate = SvgWatermarkInput.new
            @SvgTemplate.deserialize(params['SvgTemplate'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CoordinateOrigin = params['CoordinateOrigin']
        end
      end

      # 工作流信息详情。
      class WorkflowInfo < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流 ID。
        # @type WorkflowId: Integer
        # @param WorkflowName: 工作流名称。
        # @type WorkflowName: String
        # @param Status: 工作流状态，取值范围：
        # <li>Enabled：已启用，</li>
        # <li>Disabled：已禁用。</li>
        # @type Status: String
        # @param Trigger: 工作流绑定的输入规则，当上传视频命中该规则到该对象时即触发工作流。
        # @type Trigger: :class:`Tencentcloud::Mps.v20190612.models.WorkflowTrigger`
        # @param OutputStorage: 媒体处理的文件输出存储位置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputStorage: :class:`Tencentcloud::Mps.v20190612.models.TaskOutputStorage`
        # @param MediaProcessTask: 媒体处理类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaProcessTask: :class:`Tencentcloud::Mps.v20190612.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiContentReviewTask: :class:`Tencentcloud::Mps.v20190612.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 视频内容分析类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiAnalysisTask: :class:`Tencentcloud::Mps.v20190612.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiRecognitionTask: :class:`Tencentcloud::Mps.v20190612.models.AiRecognitionTaskInput`
        # @param TaskNotifyConfig: 任务的事件通知信息，不填代表不获取事件通知。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskNotifyConfig: :class:`Tencentcloud::Mps.v20190612.models.TaskNotifyConfig`
        # @param TaskPriority: 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TaskPriority: Integer
        # @param OutputDir: 媒体处理生成的文件输出的目标目录，如`/movie/201907/`。
        # @type OutputDir: String
        # @param CreateTime: 工作流创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type CreateTime: String
        # @param UpdateTime: 工作流最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/862/37710#52)。
        # @type UpdateTime: String

        attr_accessor :WorkflowId, :WorkflowName, :Status, :Trigger, :OutputStorage, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TaskNotifyConfig, :TaskPriority, :OutputDir, :CreateTime, :UpdateTime
        
        def initialize(workflowid=nil, workflowname=nil, status=nil, trigger=nil, outputstorage=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, tasknotifyconfig=nil, taskpriority=nil, outputdir=nil, createtime=nil, updatetime=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @Status = status
          @Trigger = trigger
          @OutputStorage = outputstorage
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TaskNotifyConfig = tasknotifyconfig
          @TaskPriority = taskpriority
          @OutputDir = outputdir
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @Status = params['Status']
          unless params['Trigger'].nil?
            @Trigger = WorkflowTrigger.new
            @Trigger.deserialize(params['Trigger'])
          end
          unless params['OutputStorage'].nil?
            @OutputStorage = TaskOutputStorage.new
            @OutputStorage.deserialize(params['OutputStorage'])
          end
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new
            @MediaProcessTask.deserialize(params['MediaProcessTask'])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new
            @AiContentReviewTask.deserialize(params['AiContentReviewTask'])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new
            @AiAnalysisTask.deserialize(params['AiAnalysisTask'])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new
            @AiRecognitionTask.deserialize(params['AiRecognitionTask'])
          end
          unless params['TaskNotifyConfig'].nil?
            @TaskNotifyConfig = TaskNotifyConfig.new
            @TaskNotifyConfig.deserialize(params['TaskNotifyConfig'])
          end
          @TaskPriority = params['TaskPriority']
          @OutputDir = params['OutputDir']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 媒体处理任务信息
      class WorkflowTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 媒体处理任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 源异常时返回非0错误码，返回0 时请使用各个具体任务的 ErrCode。
        # @type ErrCode: Integer
        # @param Message: 源异常时返回对应异常Message，否则请使用各个具体任务的 Message。
        # @type Message: String
        # @param InputInfo: 媒体处理的目标文件信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputInfo: :class:`Tencentcloud::Mps.v20190612.models.MediaInputInfo`
        # @param MetaData: 原始视频的元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Mps.v20190612.models.MediaMetaData`
        # @param MediaProcessResultSet: 媒体处理任务的执行状态与结果。
        # @type MediaProcessResultSet: Array
        # @param AiContentReviewResultSet: 视频内容审核任务的执行状态与结果。
        # @type AiContentReviewResultSet: Array
        # @param AiAnalysisResultSet: 视频内容分析任务的执行状态与结果。
        # @type AiAnalysisResultSet: Array
        # @param AiRecognitionResultSet: 视频内容识别任务的执行状态与结果。
        # @type AiRecognitionResultSet: Array

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :InputInfo, :MetaData, :MediaProcessResultSet, :AiContentReviewResultSet, :AiAnalysisResultSet, :AiRecognitionResultSet
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, inputinfo=nil, metadata=nil, mediaprocessresultset=nil, aicontentreviewresultset=nil, aianalysisresultset=nil, airecognitionresultset=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @InputInfo = inputinfo
          @MetaData = metadata
          @MediaProcessResultSet = mediaprocessresultset
          @AiContentReviewResultSet = aicontentreviewresultset
          @AiAnalysisResultSet = aianalysisresultset
          @AiRecognitionResultSet = airecognitionresultset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          unless params['MediaProcessResultSet'].nil?
            @MediaProcessResultSet = []
            params['MediaProcessResultSet'].each do |i|
              mediaprocesstaskresult_tmp = MediaProcessTaskResult.new
              mediaprocesstaskresult_tmp.deserialize(i)
              @MediaProcessResultSet << mediaprocesstaskresult_tmp
            end
          end
          unless params['AiContentReviewResultSet'].nil?
            @AiContentReviewResultSet = []
            params['AiContentReviewResultSet'].each do |i|
              aicontentreviewresult_tmp = AiContentReviewResult.new
              aicontentreviewresult_tmp.deserialize(i)
              @AiContentReviewResultSet << aicontentreviewresult_tmp
            end
          end
          unless params['AiAnalysisResultSet'].nil?
            @AiAnalysisResultSet = []
            params['AiAnalysisResultSet'].each do |i|
              aianalysisresult_tmp = AiAnalysisResult.new
              aianalysisresult_tmp.deserialize(i)
              @AiAnalysisResultSet << aianalysisresult_tmp
            end
          end
          unless params['AiRecognitionResultSet'].nil?
            @AiRecognitionResultSet = []
            params['AiRecognitionResultSet'].each do |i|
              airecognitionresult_tmp = AiRecognitionResult.new
              airecognitionresult_tmp.deserialize(i)
              @AiRecognitionResultSet << airecognitionresult_tmp
            end
          end
        end
      end

      # 输入规则，当上传视频命中该规则时，即触发工作流。
      class WorkflowTrigger < TencentCloud::Common::AbstractModel
        # @param Type: 触发器的类型，目前仅支持 CosFileUpload。
        # @type Type: String
        # @param CosFileUploadTrigger: 当 Type 为 CosFileUpload 时必填且有效，为 COS 触发规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosFileUploadTrigger: :class:`Tencentcloud::Mps.v20190612.models.CosFileUploadTrigger`

        attr_accessor :Type, :CosFileUploadTrigger
        
        def initialize(type=nil, cosfileuploadtrigger=nil)
          @Type = type
          @CosFileUploadTrigger = cosfileuploadtrigger
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CosFileUploadTrigger'].nil?
            @CosFileUploadTrigger = CosFileUploadTrigger.new
            @CosFileUploadTrigger.deserialize(params['CosFileUploadTrigger'])
          end
        end
      end

    end
  end
end

