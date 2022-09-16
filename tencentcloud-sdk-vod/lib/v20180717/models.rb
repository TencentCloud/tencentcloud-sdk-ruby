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
  module Vod
    module V20180717
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
        # @type ClassificationConfigure: :class:`Tencentcloud::Vod.v20180717.models.ClassificationConfigureInfo`
        # @param TagConfigure: 智能标签任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagConfigure: :class:`Tencentcloud::Vod.v20180717.models.TagConfigureInfo`
        # @param CoverConfigure: 智能封面任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverConfigure: :class:`Tencentcloud::Vod.v20180717.models.CoverConfigureInfo`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagConfigure: :class:`Tencentcloud::Vod.v20180717.models.FrameTagConfigureInfo`
        # @param HighlightConfigure: 智能精彩集锦任务控制参数。
        # @type HighlightConfigure: :class:`Tencentcloud::Vod.v20180717.models.HighlightsConfigureInfo`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure, :HighlightConfigure, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil, highlightconfigure=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
          @HighlightConfigure = highlightconfigure
          @CreateTime = createtime
          @UpdateTime = updatetime
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
          unless params['HighlightConfigure'].nil?
            @HighlightConfigure = HighlightsConfigureInfo.new
            @HighlightConfigure.deserialize(params['HighlightConfigure'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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
        # @param HeadTailConfigure: 头尾识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadTailConfigure: :class:`Tencentcloud::Vod.v20180717.models.HeadTailConfigureInfo`
        # @param SegmentConfigure: 拆条识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentConfigure: :class:`Tencentcloud::Vod.v20180717.models.SegmentConfigureInfo`
        # @param FaceConfigure: 人脸识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceConfigure: :class:`Tencentcloud::Vod.v20180717.models.FaceConfigureInfo`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrFullTextConfigureInfo`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrWordsConfigureInfo`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrFullTextConfigureInfo`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrWordsConfigureInfo`
        # @param ObjectConfigure: 物体识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectConfigure: :class:`Tencentcloud::Vod.v20180717.models.ObjectConfigureInfo`
        # @param ScreenshotInterval: 截图时间间隔，单位：秒。
        # @type ScreenshotInterval: Float
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Name, :Comment, :HeadTailConfigure, :SegmentConfigure, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure, :ObjectConfigure, :ScreenshotInterval, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, name=nil, comment=nil, headtailconfigure=nil, segmentconfigure=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil, objectconfigure=nil, screenshotinterval=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @HeadTailConfigure = headtailconfigure
          @SegmentConfigure = segmentconfigure
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
          @ObjectConfigure = objectconfigure
          @ScreenshotInterval = screenshotinterval
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['HeadTailConfigure'].nil?
            @HeadTailConfigure = HeadTailConfigureInfo.new
            @HeadTailConfigure.deserialize(params['HeadTailConfigure'])
          end
          unless params['SegmentConfigure'].nil?
            @SegmentConfigure = SegmentConfigureInfo.new
            @SegmentConfigure.deserialize(params['SegmentConfigure'])
          end
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
          unless params['ObjectConfigure'].nil?
            @ObjectConfigure = ObjectConfigureInfo.new
            @ObjectConfigure.deserialize(params['ObjectConfigure'])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 域名的地区加速信息
      class AccelerateAreaInfo < TencentCloud::Common::AbstractModel
        # @param Area: 加速地区，可选值：
        # <li>Chinese Mainland：中国境内（不包含港澳台）。</li>
        # <li>Outside Chinese Mainland：中国境外。</li>
        # @type Area: String
        # @param TencentDisableReason: 腾讯禁用原因，可选值：
        # <li>ForLegalReasons：因法律原因导致关闭加速；</li>
        # <li>ForOverdueBills：因欠费停服导致关闭加速。</li>
        # @type TencentDisableReason: String
        # @param TencentEdgeDomain: 加速域名对应的 CNAME 域名。
        # @type TencentEdgeDomain: String

        attr_accessor :Area, :TencentDisableReason, :TencentEdgeDomain
        
        def initialize(area=nil, tencentdisablereason=nil, tencentedgedomain=nil)
          @Area = area
          @TencentDisableReason = tencentdisablereason
          @TencentEdgeDomain = tencentedgedomain
        end

        def deserialize(params)
          @Area = params['Area']
          @TencentDisableReason = params['TencentDisableReason']
          @TencentEdgeDomain = params['TencentEdgeDomain']
        end
      end

      # 转自适应码流信息
      class AdaptiveDynamicStreamingInfoItem < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流规格。
        # @type Definition: Integer
        # @param Package: 打包格式，只能为 HLS。
        # @type Package: String
        # @param DrmType: 加密类型。
        # @type DrmType: String
        # @param Url: 播放地址。
        # @type Url: String
        # @param Size: 媒体文件大小，单位：字节。
        # <li>当媒体文件为 HLS 时，大小是 m3u8 和 ts 文件大小的总和；</li>
        # <li>当媒体文件为 DASH 时，大小是 mpd 和分片文件大小的总和；</li>
        # <li><font color=red>注意</font>：在 2022-01-10T16:00:00Z 前处理生成的自适应码流文件此字段为0。</li>
        # @type Size: Integer
        # @param DigitalWatermarkType: 数字水印类型。可选值：
        # <li>Trace 表示经过溯源水印处理；</li>
        # <li>None 表示没有经过数字水印处理。</li>
        # @type DigitalWatermarkType: String

        attr_accessor :Definition, :Package, :DrmType, :Url, :Size, :DigitalWatermarkType
        
        def initialize(definition=nil, package=nil, drmtype=nil, url=nil, size=nil, digitalwatermarktype=nil)
          @Definition = definition
          @Package = package
          @DrmType = drmtype
          @Url = url
          @Size = size
          @DigitalWatermarkType = digitalwatermarktype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Package = params['Package']
          @DrmType = params['DrmType']
          @Url = params['Url']
          @Size = params['Size']
          @DigitalWatermarkType = params['DigitalWatermarkType']
        end
      end

      # 对视频转自适应码流的输入参数类型
      class AdaptiveDynamicStreamingTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array
        # @param TraceWatermark: 溯源水印。
        # @type TraceWatermark: :class:`Tencentcloud::Vod.v20180717.models.TraceWatermarkInput`
        # @param SubtitleSet: 字幕列表，元素为字幕 ID，支持多个字幕，最大可支持16个。
        # @type SubtitleSet: Array

        attr_accessor :Definition, :WatermarkSet, :TraceWatermark, :SubtitleSet
        
        def initialize(definition=nil, watermarkset=nil, tracewatermark=nil, subtitleset=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
          @TraceWatermark = tracewatermark
          @SubtitleSet = subtitleset
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
          unless params['TraceWatermark'].nil?
            @TraceWatermark = TraceWatermarkInput.new
            @TraceWatermark.deserialize(params['TraceWatermark'])
          end
          @SubtitleSet = params['SubtitleSet']
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
        # @param Format: 自适应转码格式，取值范围：
        # <li>HLS。</li>
        # @type Format: String
        # @param DrmType: DRM 类型，取值范围：
        # <li>SimpleAES</li>
        # <li>Widevine</li>
        # <li>FairPlay</li>
        # 如果取值为空字符串，代表不对视频做 DRM 保护。
        # @type DrmType: String
        # @param DrmKeyProvider: DRM 的密钥提供商，取值范围：
        # <li>SDMC：华曦达；</li>
        # <li>VOD：云点播。</li>
        # 默认值为 VOD 。
        # @type DrmKeyProvider: String
        # @param StreamInfos: 自适应转码输入流参数信息，最多输入10路流。
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

        attr_accessor :Definition, :Type, :Name, :Comment, :Format, :DrmType, :DrmKeyProvider, :StreamInfos, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, format=nil, drmtype=nil, drmkeyprovider=nil, streaminfos=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Format = format
          @DrmType = drmtype
          @DrmKeyProvider = drmkeyprovider
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
          @DrmType = params['DrmType']
          @DrmKeyProvider = params['DrmKeyProvider']
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
        # @type Video: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfo`
        # @param Audio: 音频参数信息。
        # @type Audio: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfo`
        # @param RemoveAudio: 是否移除音频流，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type RemoveAudio: Integer
        # @param RemoveVideo: 是否移除视频流，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type RemoveVideo: Integer
        # @param TEHDConfig: 极速高清转码参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.TEHDConfig`

        attr_accessor :Video, :Audio, :RemoveAudio, :RemoveVideo, :TEHDConfig
        
        def initialize(video=nil, audio=nil, removeaudio=nil, removevideo=nil, tehdconfig=nil)
          @Video = video
          @Audio = audio
          @RemoveAudio = removeaudio
          @RemoveVideo = removevideo
          @TEHDConfig = tehdconfig
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
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfig.new
            @TEHDConfig.deserialize(params['TEHDConfig'])
          end
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
        # @type ClassificationTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskClassificationResult`
        # @param CoverTask: 视频内容分析智能封面任务的查询结果，当任务类型为 Cover 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskCoverResult`
        # @param TagTask: 视频内容分析智能标签任务的查询结果，当任务类型为 Tag 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskTagResult`
        # @param FrameTagTask: 视频内容分析智能按帧标签任务的查询结果，当任务类型为 FrameTag 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskFrameTagResult`
        # @param HighlightTask: 视频内容分析智能精彩集锦任务的查询结果，当任务类型为 Highlight 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighlightTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskHighlightResult`

        attr_accessor :Type, :ClassificationTask, :CoverTask, :TagTask, :FrameTagTask, :HighlightTask
        
        def initialize(type=nil, classificationtask=nil, covertask=nil, tagtask=nil, frametagtask=nil, highlighttask=nil)
          @Type = type
          @ClassificationTask = classificationtask
          @CoverTask = covertask
          @TagTask = tagtask
          @FrameTagTask = frametagtask
          @HighlightTask = highlighttask
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
          unless params['HighlightTask'].nil?
            @HighlightTask = AiAnalysisTaskHighlightResult.new
            @HighlightTask.deserialize(params['HighlightTask'])
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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 ClassificationSetFileUrl 对应的文件中获取。
        # @type ClassificationSet: Array
        # @param ClassificationSetFileUrl: 视频智能分类列表文件 URL。文件的内容为 JSON，数据结构与 ClassificationSet 字段一致。 （文件不会永久存储，到达 ClassificationSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type ClassificationSetFileUrl: String
        # @param ClassificationSetFileUrlExpireTime: 视频智能分类列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ClassificationSetFileUrlExpireTime: String

        attr_accessor :ClassificationSet, :ClassificationSetFileUrl, :ClassificationSetFileUrlExpireTime
        
        def initialize(classificationset=nil, classificationsetfileurl=nil, classificationsetfileurlexpiretime=nil)
          @ClassificationSet = classificationset
          @ClassificationSetFileUrl = classificationsetfileurl
          @ClassificationSetFileUrlExpireTime = classificationsetfileurlexpiretime
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
          @ClassificationSetFileUrl = params['ClassificationSetFileUrl']
          @ClassificationSetFileUrlExpireTime = params['ClassificationSetFileUrlExpireTime']
        end
      end

      # 智能分类任务结果类型
      class AiAnalysisTaskClassificationResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能分类任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskClassificationInput`
        # @param Output: 智能分类任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskClassificationOutput`

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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 CoverSetFileUrl 对应的文件中获取。
        # @type CoverSet: Array
        # @param CoverSetFileUrl: 智能封面列表文件 URL。文件的内容为 JSON，数据结构与 CoverSet 字段一致。 （文件不会永久存储，到达 CoverSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type CoverSetFileUrl: String
        # @param CoverSetFileUrlExpireTime: 智能封面列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CoverSetFileUrlExpireTime: String

        attr_accessor :CoverSet, :CoverSetFileUrl, :CoverSetFileUrlExpireTime
        
        def initialize(coverset=nil, coversetfileurl=nil, coversetfileurlexpiretime=nil)
          @CoverSet = coverset
          @CoverSetFileUrl = coversetfileurl
          @CoverSetFileUrlExpireTime = coversetfileurlexpiretime
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
          @CoverSetFileUrl = params['CoverSetFileUrl']
          @CoverSetFileUrlExpireTime = params['CoverSetFileUrlExpireTime']
        end
      end

      # 智能封面结果类型
      class AiAnalysisTaskCoverResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能封面任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskCoverInput`
        # @param Output: 智能封面任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskCoverOutput`

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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 视频按帧标签列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 视频按帧标签列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 智能按帧标签结果类型
      class AiAnalysisTaskFrameTagResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能按帧标签任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskFrameTagInput`
        # @param Output: 智能按帧标签任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskFrameTagOutput`

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

      # 智能精彩片段任务输入类型
      class AiAnalysisTaskHighlightInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能精彩片段模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能精彩片段结果信息
      class AiAnalysisTaskHighlightOutput < TencentCloud::Common::AbstractModel
        # @param HighlightSet: 视频智能精彩片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 HighlightSetFileUrl 对应的文件中获取。
        # @type HighlightSet: Array
        # @param HighlightSetFileUrl: 视频智能精彩片段列表文件 URL。文件的内容为 JSON，数据结构与 HighlightSet 字段一致。 （文件不会永久存储，到达 HighlightSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type HighlightSetFileUrl: String
        # @param HighlightSetFileUrlExpireTime: 视频智能精彩片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type HighlightSetFileUrlExpireTime: String

        attr_accessor :HighlightSet, :HighlightSetFileUrl, :HighlightSetFileUrlExpireTime
        
        def initialize(highlightset=nil, highlightsetfileurl=nil, highlightsetfileurlexpiretime=nil)
          @HighlightSet = highlightset
          @HighlightSetFileUrl = highlightsetfileurl
          @HighlightSetFileUrlExpireTime = highlightsetfileurlexpiretime
        end

        def deserialize(params)
          unless params['HighlightSet'].nil?
            @HighlightSet = []
            params['HighlightSet'].each do |i|
              mediaaianalysishighlightitem_tmp = MediaAiAnalysisHighlightItem.new
              mediaaianalysishighlightitem_tmp.deserialize(i)
              @HighlightSet << mediaaianalysishighlightitem_tmp
            end
          end
          @HighlightSetFileUrl = params['HighlightSetFileUrl']
          @HighlightSetFileUrlExpireTime = params['HighlightSetFileUrlExpireTime']
        end
      end

      # 智能精彩片段结果类型
      class AiAnalysisTaskHighlightResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能精彩片段任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskHighlightInput`
        # @param Output: 智能精彩片段任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskHighlightOutput`

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
            @Input = AiAnalysisTaskHighlightInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskHighlightOutput.new
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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 TagSetFileUrl 对应的文件中获取。
        # @type TagSet: Array
        # @param TagSetFileUrl: 视频智能标签列表文件 URL。文件的内容为 JSON，数据结构与 TagSet 字段一致。 （文件不会永久存储，到达 TagSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type TagSetFileUrl: String
        # @param TagSetFileUrlExpireTime: 视频智能标签列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type TagSetFileUrlExpireTime: String

        attr_accessor :TagSet, :TagSetFileUrl, :TagSetFileUrlExpireTime
        
        def initialize(tagset=nil, tagsetfileurl=nil, tagsetfileurlexpiretime=nil)
          @TagSet = tagset
          @TagSetFileUrl = tagsetfileurl
          @TagSetFileUrlExpireTime = tagsetfileurlexpiretime
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
          @TagSetFileUrl = params['TagSetFileUrl']
          @TagSetFileUrlExpireTime = params['TagSetFileUrlExpireTime']
        end
      end

      # 智能标签结果类型
      class AiAnalysisTaskTagResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能标签任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskTagInput`
        # @param Output: 智能标签任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskTagOutput`

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

      # 音视频审核结果
      class AiContentReviewResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Porn：图片鉴别是否涉及令人反感的信息</li>
        # <li>Terrorism：图片鉴别是否涉及令人不安全的信息</li>
        # <li>Political：图片鉴别是否涉及令人不适宜的信息</li>
        # <li>Porn.Asr：Asr 文字（ 音频中的文字）鉴别是否涉及令人反感的信息</li>
        # <li>Porn.Ocr：Ocr 文字鉴别是否涉及令人反感的信息</li>
        # <li>Political.Asr：Asr 文字（ 音频中的文字）鉴别是否涉及令人不适宜的信息</li>
        # <li>Political.Ocr：Ocr 文字鉴别是否涉及令人不适宜的信息</li>
        # <li>Terrorism.Ocr：Ocr 文字鉴别是否涉及令人不安全的信息</li>
        # <li>Prohibited.Asr：Asr 文字（ 音频中的文字）鉴违禁</li>
        # <li>Prohibited.Ocr：Ocr 文字鉴违禁</li>
        # @type Type: String
        # @param PornTask: 视频音视频审核任务（画面涉及令人反感的信息）的查询结果，当任务类型为 Porn 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPornResult`
        # @param TerrorismTask: 视频音视频审核任务（画面涉及令人不安全的信息）的查询结果，当任务类型为 Terrorism 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskTerrorismResult`
        # @param PoliticalTask: 视频音视频审核任务（画面涉及令人不适宜的信息）的查询结果，当任务类型为 Political 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPoliticalResult`
        # @param PornAsrTask: 视频音视频审核任务（Asr 文字涉及令人反感的信息）的查询结果，当任务类型为 Porn.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornAsrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPornAsrResult`
        # @param PornOcrTask: 视频音视频审核任务（Ocr 文字涉及令人反感的信息）的查询结果，当任务类型为 Porn.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPornOcrResult`
        # @param PoliticalAsrTask: 视频音视频审核任务（Asr 文字涉及令人不适宜的信息）的查询结果，当任务类型为 Political.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalAsrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPoliticalAsrResult`
        # @param PoliticalOcrTask: 视频音视频审核任务（Ocr 文字涉及令人不适宜的信息）的查询结果，当任务类型为 Political.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPoliticalOcrResult`
        # @param TerrorismOcrTask: 视频音视频审核任务（ Ocr 文字涉及令人不安全的信息）的查询结果，当任务类型为 Terrorism.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskTerrorismOcrResult`
        # @param ProhibitedOcrTask: 视频音视频审核 Ocr 文字鉴违禁任务的查询结果，当任务类型为 Prohibited.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskProhibitedOcrResult`
        # @param ProhibitedAsrTask: 视频音视频审核 Asr 文字鉴违禁任务的查询结果，当任务类型为 Prohibited.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedAsrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskProhibitedAsrResult`

        attr_accessor :Type, :PornTask, :TerrorismTask, :PoliticalTask, :PornAsrTask, :PornOcrTask, :PoliticalAsrTask, :PoliticalOcrTask, :TerrorismOcrTask, :ProhibitedOcrTask, :ProhibitedAsrTask
        
        def initialize(type=nil, porntask=nil, terrorismtask=nil, politicaltask=nil, pornasrtask=nil, pornocrtask=nil, politicalasrtask=nil, politicalocrtask=nil, terrorismocrtask=nil, prohibitedocrtask=nil, prohibitedasrtask=nil)
          @Type = type
          @PornTask = porntask
          @TerrorismTask = terrorismtask
          @PoliticalTask = politicaltask
          @PornAsrTask = pornasrtask
          @PornOcrTask = pornocrtask
          @PoliticalAsrTask = politicalasrtask
          @PoliticalOcrTask = politicalocrtask
          @TerrorismOcrTask = terrorismocrtask
          @ProhibitedOcrTask = prohibitedocrtask
          @ProhibitedAsrTask = prohibitedasrtask
        end

        def deserialize(params)
          @Type = params['Type']
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
          unless params['ProhibitedOcrTask'].nil?
            @ProhibitedOcrTask = AiReviewTaskProhibitedOcrResult.new
            @ProhibitedOcrTask.deserialize(params['ProhibitedOcrTask'])
          end
          unless params['ProhibitedAsrTask'].nil?
            @ProhibitedAsrTask = AiReviewTaskProhibitedAsrResult.new
            @ProhibitedAsrTask.deserialize(params['ProhibitedAsrTask'])
          end
        end
      end

      # 音视频审核任务类型
      class AiContentReviewTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 音视频审核模板 ID。
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
        # <li>OcrFullTextRecognition：文本全文识别，</li>
        # <li>HeadTailRecognition：视频片头片尾识别，</li>
        # <li>ObjectRecognition：物体识别。</li>
        # @type Type: String
        # @param HeadTailTask: 视频片头片尾识别结果，当 Type 为
        #  HeadTailRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadTailTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskHeadTailResult`
        # @param SegmentTask: 视频拆条识别结果，当 Type 为
        #  SegmentRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskSegmentResult`
        # @param FaceTask: 人脸识别结果，当 Type 为
        #  FaceRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskFaceResult`
        # @param AsrWordsTask: 语音关键词识别结果，当 Type 为
        #  AsrWordsRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrWordsTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrWordsResult`
        # @param AsrFullTextTask: 语音全文识别结果，当 Type 为
        #  AsrFullTextRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrFullTextTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrFullTextResult`
        # @param OcrWordsTask: 文本关键词识别结果，当 Type 为
        #  OcrWordsRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrWordsTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrWordsResult`
        # @param OcrFullTextTask: 文本全文识别结果，当 Type 为
        #  OcrFullTextRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrFullTextTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrFullTextResult`
        # @param ObjectTask: 物体识别结果，当 Type 为
        #  ObjectRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskObjectResult`

        attr_accessor :Type, :HeadTailTask, :SegmentTask, :FaceTask, :AsrWordsTask, :AsrFullTextTask, :OcrWordsTask, :OcrFullTextTask, :ObjectTask
        
        def initialize(type=nil, headtailtask=nil, segmenttask=nil, facetask=nil, asrwordstask=nil, asrfulltexttask=nil, ocrwordstask=nil, ocrfulltexttask=nil, objecttask=nil)
          @Type = type
          @HeadTailTask = headtailtask
          @SegmentTask = segmenttask
          @FaceTask = facetask
          @AsrWordsTask = asrwordstask
          @AsrFullTextTask = asrfulltexttask
          @OcrWordsTask = ocrwordstask
          @OcrFullTextTask = ocrfulltexttask
          @ObjectTask = objecttask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['HeadTailTask'].nil?
            @HeadTailTask = AiRecognitionTaskHeadTailResult.new
            @HeadTailTask.deserialize(params['HeadTailTask'])
          end
          unless params['SegmentTask'].nil?
            @SegmentTask = AiRecognitionTaskSegmentResult.new
            @SegmentTask.deserialize(params['SegmentTask'])
          end
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
          unless params['ObjectTask'].nil?
            @ObjectTask = AiRecognitionTaskObjectResult.new
            @ObjectTask.deserialize(params['ObjectTask'])
          end
        end
      end

      # 语音全文识别结果。
      class AiRecognitionTaskAsrFullTextResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 语音全文识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrFullTextResultInput`
        # @param Output: 语音全文识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrFullTextResultOutput`
        # @param Progress: 任务进度，取值范围 [0-100] 。
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
            @Input = AiRecognitionTaskAsrFullTextResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskAsrFullTextResultOutput.new
            @Output.deserialize(params['Output'])
          end
          @Progress = params['Progress']
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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 语音全文识别片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 语音全文识别片段列表文件 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String
        # @param SubtitleSet: 生成的字幕列表，对应 [语音全文识别任务控制参数](https://cloud.tencent.com/document/api/266/31773#AsrFullTextConfigureInfo) SubtitleFormats。
        # @type SubtitleSet: Array
        # @param SubtitleUrl: 生成的字幕文件 Url，对应 [语音全文识别任务控制参数](https://cloud.tencent.com/document/api/266/31773#AsrFullTextConfigureInfo) SubtitleFormat。
        # @type SubtitleUrl: String

        attr_accessor :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime, :SubtitleSet, :SubtitleUrl
        
        def initialize(segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil, subtitleset=nil, subtitleurl=nil)
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
          @SubtitleSet = subtitleset
          @SubtitleUrl = subtitleurl
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
          unless params['SubtitleSet'].nil?
            @SubtitleSet = []
            params['SubtitleSet'].each do |i|
              airecognitiontaskasrfulltextresultoutputsubtitleitem_tmp = AiRecognitionTaskAsrFullTextResultOutputSubtitleItem.new
              airecognitiontaskasrfulltextresultoutputsubtitleitem_tmp.deserialize(i)
              @SubtitleSet << airecognitiontaskasrfulltextresultoutputsubtitleitem_tmp
            end
          end
          @SubtitleUrl = params['SubtitleUrl']
        end
      end

      # 字幕信息。
      class AiRecognitionTaskAsrFullTextResultOutputSubtitleItem < TencentCloud::Common::AbstractModel
        # @param Format: 字幕文件格式，取值范围：
        # <li>vtt：WebVTT 字幕文件；</li>
        # <li>srt：SRT 字幕文件。</li>
        # @type Format: String
        # @param Url: 字幕文件 Url。
        # @type Url: String

        attr_accessor :Format, :Url
        
        def initialize(format=nil, url=nil)
          @Format = format
          @Url = url
        end

        def deserialize(params)
          @Format = params['Format']
          @Url = params['Url']
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
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 语音关键词识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrWordsResultInput`
        # @param Output: 语音关键词识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrWordsResultOutput`

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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 ResultSetFileUrl 对应的文件中获取。
        # @type ResultSet: Array
        # @param ResultSetFileUrl: 语音关键词识别结果集文件 URL。文件的内容为 JSON，数据结构与 ResultSet 字段一致。 （文件不会永久存储，到达ResultSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type ResultSetFileUrl: String
        # @param ResultSetFileUrlExpireTime: 语音关键词识别结果集文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ResultSetFileUrlExpireTime: String

        attr_accessor :ResultSet, :ResultSetFileUrl, :ResultSetFileUrlExpireTime
        
        def initialize(resultset=nil, resultsetfileurl=nil, resultsetfileurlexpiretime=nil)
          @ResultSet = resultset
          @ResultSetFileUrl = resultsetfileurl
          @ResultSetFileUrlExpireTime = resultsetfileurlexpiretime
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
          @ResultSetFileUrl = params['ResultSetFileUrl']
          @ResultSetFileUrlExpireTime = params['ResultSetFileUrlExpireTime']
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
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 人脸识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskFaceResultInput`
        # @param Output: 人脸识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskFaceResultOutput`

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

        attr_accessor :Id, :Type, :Name, :SegmentSet
        
        def initialize(id=nil, type=nil, name=nil, segmentset=nil)
          @Id = id
          @Type = type
          @Name = name
          @SegmentSet = segmentset
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
        end
      end

      # 智能人脸识别输出。
      class AiRecognitionTaskFaceResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 智能人脸识别结果集。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 ResultSetFileUrl 对应的文件中获取。
        # @type ResultSet: Array
        # @param ResultSetFileUrl: 智能人脸识别结果集文件 URL。文件的内容为 JSON，数据结构与 ResultSet 字段一致。 （文件不会永久存储，到达ResultSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type ResultSetFileUrl: String
        # @param ResultSetFileUrlExpireTime: 智能人脸识别结果集文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ResultSetFileUrlExpireTime: String

        attr_accessor :ResultSet, :ResultSetFileUrl, :ResultSetFileUrlExpireTime
        
        def initialize(resultset=nil, resultsetfileurl=nil, resultsetfileurlexpiretime=nil)
          @ResultSet = resultset
          @ResultSetFileUrl = resultsetfileurl
          @ResultSetFileUrlExpireTime = resultsetfileurlexpiretime
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
          @ResultSetFileUrl = params['ResultSetFileUrl']
          @ResultSetFileUrlExpireTime = params['ResultSetFileUrlExpireTime']
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

      # 视频片头片尾识别结果。
      class AiRecognitionTaskHeadTailResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 视频片头片尾识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskHeadTailResultInput`
        # @param Output: 视频片头片尾识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskHeadTailResultOutput`

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
            @Input = AiRecognitionTaskHeadTailResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskHeadTailResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 视频片头片尾识别的输入。
      class AiRecognitionTaskHeadTailResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频片头片尾识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 视频片头片尾识别输出。
      class AiRecognitionTaskHeadTailResultOutput < TencentCloud::Common::AbstractModel
        # @param HeadConfidence: 片头识别置信度。取值：0~100。
        # @type HeadConfidence: Float
        # @param HeadTimeOffset: 视频片头的结束时间点，单位：秒。
        # @type HeadTimeOffset: Float
        # @param TailConfidence: 片尾识别置信度。取值：0~100。
        # @type TailConfidence: Float
        # @param TailTimeOffset: 视频片尾的开始时间点，单位：秒。
        # @type TailTimeOffset: Float

        attr_accessor :HeadConfidence, :HeadTimeOffset, :TailConfidence, :TailTimeOffset
        
        def initialize(headconfidence=nil, headtimeoffset=nil, tailconfidence=nil, tailtimeoffset=nil)
          @HeadConfidence = headconfidence
          @HeadTimeOffset = headtimeoffset
          @TailConfidence = tailconfidence
          @TailTimeOffset = tailtimeoffset
        end

        def deserialize(params)
          @HeadConfidence = params['HeadConfidence']
          @HeadTimeOffset = params['HeadTimeOffset']
          @TailConfidence = params['TailConfidence']
          @TailTimeOffset = params['TailTimeOffset']
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

      # 物体识别结果。
      class AiRecognitionTaskObjectResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 物体识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskObjectResultInput`
        # @param Output: 物体识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskObjectResultOutput`

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
            @Input = AiRecognitionTaskObjectResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskObjectResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 物体识别任务输入类型。
      class AiRecognitionTaskObjectResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 物体识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 单个物体识别结果。
      class AiRecognitionTaskObjectResultItem < TencentCloud::Common::AbstractModel
        # @param Name: 识别的物体名称。
        # @type Name: String
        # @param SegmentSet: 物体出现的片段列表。
        # @type SegmentSet: Array

        attr_accessor :Name, :SegmentSet
        
        def initialize(name=nil, segmentset=nil)
          @Name = name
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              airecognitiontaskobjectseqmentitem_tmp = AiRecognitionTaskObjectSeqmentItem.new
              airecognitiontaskobjectseqmentitem_tmp.deserialize(i)
              @SegmentSet << airecognitiontaskobjectseqmentitem_tmp
            end
          end
        end
      end

      # 智能物体识别输出。
      class AiRecognitionTaskObjectResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 智能物体识别结果集。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 ResultSetFileUrl 对应的文件中获取。
        # @type ResultSet: Array
        # @param ResultSetFileUrl: 智能物体识别结果集文件 URL。文件的内容为 JSON，数据结构与 ResultSet 字段一致。 （文件不会永久存储，到达ResultSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type ResultSetFileUrl: String
        # @param ResultSetFileUrlExpireTime: 智能物体识别结果集文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ResultSetFileUrlExpireTime: String

        attr_accessor :ResultSet, :ResultSetFileUrl, :ResultSetFileUrlExpireTime
        
        def initialize(resultset=nil, resultsetfileurl=nil, resultsetfileurlexpiretime=nil)
          @ResultSet = resultset
          @ResultSetFileUrl = resultsetfileurl
          @ResultSetFileUrlExpireTime = resultsetfileurlexpiretime
        end

        def deserialize(params)
          unless params['ResultSet'].nil?
            @ResultSet = []
            params['ResultSet'].each do |i|
              airecognitiontaskobjectresultitem_tmp = AiRecognitionTaskObjectResultItem.new
              airecognitiontaskobjectresultitem_tmp.deserialize(i)
              @ResultSet << airecognitiontaskobjectresultitem_tmp
            end
          end
          @ResultSetFileUrl = params['ResultSetFileUrl']
          @ResultSetFileUrlExpireTime = params['ResultSetFileUrlExpireTime']
        end
      end

      # 物体识别结果片段。
      class AiRecognitionTaskObjectSeqmentItem < TencentCloud::Common::AbstractModel
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

      # 文本全文识别结果。
      class AiRecognitionTaskOcrFullTextResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 文本全文识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrFullTextResultInput`
        # @param Output: 文本全文识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrFullTextResultOutput`

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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 文本全文识别结果集文件 URL。文件的内容为 JSON，数据结构与 ResultSet 字段一致。 （文件不会永久存储，到达SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 文本全文识别结果集文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
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
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 文本关键词识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrWordsResultInput`
        # @param Output: 文本关键词识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrWordsResultOutput`

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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 ResultSetFileUrl 对应的文件中获取。
        # @type ResultSet: Array
        # @param ResultSetFileUrl: 文本关键词识别结果集文件 URL。文件的内容为 JSON，数据结构与 ResultSet 字段一致。 （文件不会永久存储，到达ResultSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type ResultSetFileUrl: String
        # @param ResultSetFileUrlExpireTime: 文本关键词识别结果集文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ResultSetFileUrlExpireTime: String

        attr_accessor :ResultSet, :ResultSetFileUrl, :ResultSetFileUrlExpireTime
        
        def initialize(resultset=nil, resultsetfileurl=nil, resultsetfileurlexpiretime=nil)
          @ResultSet = resultset
          @ResultSetFileUrl = resultsetfileurl
          @ResultSetFileUrlExpireTime = resultsetfileurlexpiretime
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
          @ResultSetFileUrl = params['ResultSetFileUrl']
          @ResultSetFileUrlExpireTime = params['ResultSetFileUrlExpireTime']
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

      # 视频拆条结果。
      class AiRecognitionTaskSegmentResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 视频拆条任务输入信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskSegmentResultInput`
        # @param Output: 视频拆条任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskSegmentResultOutput`

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
            @Input = AiRecognitionTaskSegmentResultInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskSegmentResultOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 视频拆条输入。
      class AiRecognitionTaskSegmentResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频拆条模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 视频拆条输出。
      class AiRecognitionTaskSegmentResultOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 视频拆条片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 视频拆条片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 视频拆条片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
        end

        def deserialize(params)
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              airecognitiontasksegmentsegmentitem_tmp = AiRecognitionTaskSegmentSegmentItem.new
              airecognitiontasksegmentsegmentitem_tmp.deserialize(i)
              @SegmentSet << airecognitiontasksegmentsegmentitem_tmp
            end
          end
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 视频拆条片段。
      class AiRecognitionTaskSegmentSegmentItem < TencentCloud::Common::AbstractModel
        # @param FileId: 文件 ID。仅当处理的是点播文件并且拆条生成的子片段为点播文件时有效。
        # @type FileId: String
        # @param SegmentUrl: 视频拆条片段 Url。
        # @type SegmentUrl: String
        # @param Confidence: 拆条片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param StartTimeOffset: 拆条片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 拆条片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param CovImgUrl: 拆条封面图片 Url。
        # @type CovImgUrl: String
        # @param SpecialInfo: 特殊字段，请忽略。
        # @type SpecialInfo: String

        attr_accessor :FileId, :SegmentUrl, :Confidence, :StartTimeOffset, :EndTimeOffset, :CovImgUrl, :SpecialInfo
        
        def initialize(fileid=nil, segmenturl=nil, confidence=nil, starttimeoffset=nil, endtimeoffset=nil, covimgurl=nil, specialinfo=nil)
          @FileId = fileid
          @SegmentUrl = segmenturl
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @CovImgUrl = covimgurl
          @SpecialInfo = specialinfo
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SegmentUrl = params['SegmentUrl']
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @CovImgUrl = params['CovImgUrl']
          @SpecialInfo = params['SpecialInfo']
        end
      end

      # 音视频审核 Asr 文字涉及令人不适宜的信息、违规任务输入参数类型
      class AiReviewPoliticalAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人不适宜信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字涉及令人不适宜的信息
      class AiReviewPoliticalAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字涉及令人不适宜的信息、违规评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉及令人不适宜的信息、违规结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉及令人不适宜的信息、违规嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: Asr 文字有涉及令人不适宜的信息、违规嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: Asr 文字有涉及令人不适宜的信息、违规嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核 Ocr 文字涉及令人不适宜信息的任务输入参数类型
      class AiReviewPoliticalOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人不适宜信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉及令人不适宜的信息
      class AiReviewPoliticalOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉及令人不适宜的信息、违规评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉及令人不适宜的信息、违规结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉及令人不适宜的信息、违规嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: Ocr 文字有涉及令人不适宜的信息、违规嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: Ocr 文字有涉及令人不适宜的信息、违规嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核涉及令人不适宜信息的任务输入参数类型
      class AiReviewPoliticalTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人不适宜信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 涉及令人不适宜的信息
      class AiReviewPoliticalTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频涉及令人不适宜信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 涉及令人不适宜信息的结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频涉及令人不适宜信息的结果标签。音视频审核模板[画面鉴政任务控制参数](https://cloud.tencent.com/document/api/266/31773#PoliticalImgReviewTemplateInfo)里 LabelSet 参数与此参数取值范围的对应关系：
        # violation_photo：
        # <li>violation_photo：违规图标。</li>
        # 其他（即 politician/entertainment/sport/entrepreneur/scholar/celebrity/military）：
        # <li>politician：相关人物。</li>
        # @type Label: String
        # @param SegmentSet: 有涉及令人不适宜信息嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 有涉及令人不适宜的信息嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 有涉及令人不适宜的信息嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核 Asr 文字涉及令人反感的信息的任务输入参数类型
      class AiReviewPornAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人反感的信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字涉及令人反感的信息
      class AiReviewPornAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字涉及令人反感的信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉及令人反感的信息的结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉及令人反感的信息的嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: Asr 文字有涉及令人反感的信息的嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: Asr 文字有涉及令人反感的信息的嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核 Ocr 文字涉及令人反感的信息的任务输入参数类型
      class AiReviewPornOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人反感的信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉及令人反感的信息
      class AiReviewPornOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉及令人反感的信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉及令人反感的信息的结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉及令人反感的信息的嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: Ocr 文字有涉及令人反感的信息的嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: Ocr 文字有涉及令人反感的信息的嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核涉及令人反感的信息的任务输入参数类型
      class AiReviewPornTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人反感的信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 鉴别涉及令人反感的信息的结果信息
      class AiReviewPornTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频鉴别涉及令人反感的信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 鉴别涉及令人反感的信息的结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频鉴别涉及令人反感的信息的结果标签，取值范围：
        # <li>porn：色情。</li>
        # <li>sexy：性感。</li>
        # <li>vulgar：低俗。</li>
        # <li>intimacy：亲密行为。</li>
        # @type Label: String
        # @param SegmentSet: 有涉及令人反感的信息的嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 涉及令人反感的信息的嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 涉及令人反感的信息的嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核 Asr 文字鉴违禁任务输入参数类型
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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: Asr 文字有涉违禁嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: Asr 文字有涉违禁嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核 Ocr 文字鉴违禁任务输入参数类型
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
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: Ocr 文字有涉违禁嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: Ocr 文字有涉违禁嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核 Asr 文字涉及令人不适宜信息、违规任务结果类型
      class AiReviewTaskPoliticalAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核 Asr 文字涉及令人不适宜信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalAsrTaskInput`
        # @param Output: 音视频审核 Asr 文字涉及令人不适宜信息的任务输出。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalAsrTaskOutput`

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

      # 音视频审核 Ocr 文字涉及令人不适宜信息、违规任务结果类型
      class AiReviewTaskPoliticalOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核 Ocr 文字涉及令人不适宜信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalOcrTaskInput`
        # @param Output: 音视频审核 Ocr 文字涉及令人不适宜信息的任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalOcrTaskOutput`

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

      # 音视频审核涉及令人不适宜信息的任务结果类型
      class AiReviewTaskPoliticalResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核涉及令人不适宜信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalTaskInput`
        # @param Output: 音视频审核涉及令人不适宜信息的任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalTaskOutput`

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

      # 音视频审核 Asr 文字涉及令人反感的信息的任务结果类型
      class AiReviewTaskPornAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核 Asr 文字涉及令人反感的信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornAsrTaskInput`
        # @param Output: 音视频审核 Asr 文字涉及令人反感的信息的任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornAsrTaskOutput`

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

      # 音视频审核 Ocr 文字涉及令人反感的信息的任务结果类型
      class AiReviewTaskPornOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核 Ocr 文字涉及令人反感的信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornOcrTaskInput`
        # @param Output: Ocr 文字音视频审核涉及令人反感的信息的任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornOcrTaskOutput`

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

      # 音视频审核涉及令人反感的信息的任务结果类型
      class AiReviewTaskPornResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核涉及令人反感的信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornTaskInput`
        # @param Output: 音视频审核涉及令人反感的信息的任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornTaskOutput`

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

      # 音视频审核 Asr 文字鉴违禁任务结果类型
      class AiReviewTaskProhibitedAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核 Asr 文字鉴违禁任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedAsrTaskInput`
        # @param Output: 音视频审核 Asr 文字鉴违禁任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedAsrTaskOutput`

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

      # 音视频审核 Ocr 文字鉴违禁任务结果类型
      class AiReviewTaskProhibitedOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核 Ocr 文字鉴违禁任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedOcrTaskInput`
        # @param Output: 音视频审核 Ocr 文字鉴违禁任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedOcrTaskOutput`

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

      # 音视频审核 Ocr 文字鉴别涉及令人不安全的信息的任务结果类型
      class AiReviewTaskTerrorismOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核 Ocr 文字涉及令人不安全的信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismOcrTaskInput`
        # @param Output: 音视频审核 Ocr 文字涉及令人不安全的信息的任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismOcrTaskOutput`

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

      # 音视频审核涉及令人不安全的信息的任务结果类型
      class AiReviewTaskTerrorismResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核涉及令人不安全的信息的任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismTaskInput`
        # @param Output: 音视频审核涉及令人不安全的信息的任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismTaskOutput`

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

      # 音视频审核 Ocr 文字涉及令人不安全的信息的任务输入参数类型
      class AiReviewTerrorismOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人不安全的信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉及令人不安全的信息
      class AiReviewTerrorismOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字有涉及令人不安全信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字有涉及令人不安全信息的结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉及令人不安全信息嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: Ocr 文字有涉及令人不安全信息嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达 SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: Ocr 文字有涉及令人不安全信息嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # 音视频审核涉及令人不安全的信息的任务输入参数类型
      class AiReviewTerrorismTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴别涉及令人不安全的信息的模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 暴恐信息
      class AiReviewTerrorismTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频暴恐评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 暴恐结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频暴恐结果标签，取值范围：
        # <li>guns：武器枪支。</li>
        # <li>crowd：人群聚集。</li>
        # <li>police：警察部队。</li>
        # <li>bloody：血腥画面。</li>
        # <li>banners：暴恐旗帜。</li>
        # <li>militant：武装分子。</li>
        # <li>explosion：爆炸火灾。</li>
        # <li>terrorists：暴恐人物。</li>
        # <li>scenario：暴恐画面。</li>
        # @type Label: String
        # @param SegmentSet: 有暴恐嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 100 个元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 暴恐嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 暴恐嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
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
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
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
        # @param CreateTime: 创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
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
        # @param CreateTime: 创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
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

      # 转动图任务类型
      class AnimatedGraphicTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频转动图模板 ID
        # @type Definition: Integer
        # @param StartTimeOffset: 动图在视频中的起始时间偏移，单位为秒。
        # <li>不填或填0，表示从视频的起始位置开始；</li>
        # <li>当数值大于0时（假设为 n），表示从视频的第 n 秒位置开始；</li>
        # <li>当数值小于0时（假设为 -n），表示从视频结束 n 秒前的位置开始。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 动图在视频中的终止时间偏移，单位为秒。
        # <li>不填或填0，表示持续到视频的末尾终止；</li>
        # <li>当数值大于0时（假设为 n），表示持续到视频第 n 秒时终止；</li>
        # <li>当数值小于0时（假设为 -n），表示持续到视频结束 n 秒前终止。</li>
        # @type EndTimeOffset: Float

        attr_accessor :Definition, :StartTimeOffset, :EndTimeOffset
        
        def initialize(definition=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Definition = definition
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
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
        # @param Comment: 转动图模板描述信息。
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
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
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

      # ApplyUpload请求参数结构体
      class ApplyUploadRequest < TencentCloud::Common::AbstractModel
        # @param MediaType: 媒体类型，可选值请参考 [上传能力综述](/document/product/266/9760#.E6.96.87.E4.BB.B6.E7.B1.BB.E5.9E.8B)。
        # @type MediaType: String
        # @param SubAppId: <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param MediaName: 媒体名称。
        # @type MediaName: String
        # @param CoverType: 封面类型，可选值请参考 [上传能力综述](/document/product/266/9760#.E6.96.87.E4.BB.B6.E7.B1.BB.E5.9E.8B)。
        # @type CoverType: String
        # @param Procedure: 媒体后续任务处理操作，即完成媒体上传后，可自动发起任务流操作。参数值为任务流模板名，云点播支持 [创建任务流模板](/document/product/266/33819) 并为模板命名。
        # @type Procedure: String
        # @param ExpireTime: 媒体文件过期时间，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type ExpireTime: String
        # @param StorageRegion: 指定上传园区，仅适用于对上传地域有特殊需求的用户。
        # @type StorageRegion: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param SourceContext: 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。
        # @type SourceContext: String
        # @param SessionContext: 会话上下文，用于透传用户请求信息，当指定 Procedure 参数后，[任务流状态变更回调](/document/product/266/9636) 将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String

        attr_accessor :MediaType, :SubAppId, :MediaName, :CoverType, :Procedure, :ExpireTime, :StorageRegion, :ClassId, :SourceContext, :SessionContext, :ExtInfo
        
        def initialize(mediatype=nil, subappid=nil, medianame=nil, covertype=nil, procedure=nil, expiretime=nil, storageregion=nil, classid=nil, sourcecontext=nil, sessioncontext=nil, extinfo=nil)
          @MediaType = mediatype
          @SubAppId = subappid
          @MediaName = medianame
          @CoverType = covertype
          @Procedure = procedure
          @ExpireTime = expiretime
          @StorageRegion = storageregion
          @ClassId = classid
          @SourceContext = sourcecontext
          @SessionContext = sessioncontext
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @MediaType = params['MediaType']
          @SubAppId = params['SubAppId']
          @MediaName = params['MediaName']
          @CoverType = params['CoverType']
          @Procedure = params['Procedure']
          @ExpireTime = params['ExpireTime']
          @StorageRegion = params['StorageRegion']
          @ClassId = params['ClassId']
          @SourceContext = params['SourceContext']
          @SessionContext = params['SessionContext']
          @ExtInfo = params['ExtInfo']
        end
      end

      # ApplyUpload返回参数结构体
      class ApplyUploadResponse < TencentCloud::Common::AbstractModel
        # @param StorageBucket: 存储桶，用于上传接口 URL 的 bucket_name。
        # @type StorageBucket: String
        # @param StorageRegion: 存储园区，用于上传接口 Host 的 Region。
        # @type StorageRegion: String
        # @param VodSessionKey: 点播会话，用于确认上传接口的参数 VodSessionKey。
        # @type VodSessionKey: String
        # @param MediaStoragePath: 媒体存储路径，用于上传接口存储媒体的对象键（Key）。
        # @type MediaStoragePath: String
        # @param CoverStoragePath: 封面存储路径，用于上传接口存储封面的对象键（Key）。
        # @type CoverStoragePath: String
        # @param TempCertificate: 临时凭证，用于上传接口的权限验证。
        # @type TempCertificate: :class:`Tencentcloud::Vod.v20180717.models.TempCertificate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StorageBucket, :StorageRegion, :VodSessionKey, :MediaStoragePath, :CoverStoragePath, :TempCertificate, :RequestId
        
        def initialize(storagebucket=nil, storageregion=nil, vodsessionkey=nil, mediastoragepath=nil, coverstoragepath=nil, tempcertificate=nil, requestid=nil)
          @StorageBucket = storagebucket
          @StorageRegion = storageregion
          @VodSessionKey = vodsessionkey
          @MediaStoragePath = mediastoragepath
          @CoverStoragePath = coverstoragepath
          @TempCertificate = tempcertificate
          @RequestId = requestid
        end

        def deserialize(params)
          @StorageBucket = params['StorageBucket']
          @StorageRegion = params['StorageRegion']
          @VodSessionKey = params['VodSessionKey']
          @MediaStoragePath = params['MediaStoragePath']
          @CoverStoragePath = params['CoverStoragePath']
          unless params['TempCertificate'].nil?
            @TempCertificate = TempCertificate.new
            @TempCertificate.deserialize(params['TempCertificate'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音全文识别任务控制参数
      class AsrFullTextConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音全文识别任务开关，可选值：
        # <li>ON：开启智能语音全文识别任务；</li>
        # <li>OFF：关闭智能语音全文识别任务。</li>
        # @type Switch: String
        # @param SubtitleFormats: 生成的字幕文件格式列表，不填或者填空数组表示不生成字幕文件，可选值：
        # <li>vtt：生成 WebVTT 字幕文件；</li>
        # <li>srt：生成 SRT 字幕文件。</li>
        # @type SubtitleFormats: Array
        # @param SubtitleFormat: 生成的字幕文件格式，不填或者填空字符串表示不生成字幕文件，可选值：
        # <li>vtt：生成 WebVTT 字幕文件；</li>
        # <li>srt：生成 SRT 字幕文件。</li>
        # <font color='red'>注意：此字段已废弃，建议使用 SubtitleFormats。</font>
        # @type SubtitleFormat: String

        attr_accessor :Switch, :SubtitleFormats, :SubtitleFormat
        
        def initialize(switch=nil, subtitleformats=nil, subtitleformat=nil)
          @Switch = switch
          @SubtitleFormats = subtitleformats
          @SubtitleFormat = subtitleformat
        end

        def deserialize(params)
          @Switch = params['Switch']
          @SubtitleFormats = params['SubtitleFormats']
          @SubtitleFormat = params['SubtitleFormat']
        end
      end

      # 语音全文识别任务控制参数
      class AsrFullTextConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音全文识别任务开关，可选值：
        # <li>ON：开启智能语音全文识别任务；</li>
        # <li>OFF：关闭智能语音全文识别任务。</li>
        # @type Switch: String
        # @param SubtitleFormatsOperation: 字幕格式列表操作信息。
        # @type SubtitleFormatsOperation: :class:`Tencentcloud::Vod.v20180717.models.SubtitleFormatsOperation`
        # @param SubtitleFormat: 生成的字幕文件格式，<font color='red'>填空字符串</font>表示不生成字幕文件，可选值：
        # <li>vtt：生成 WebVTT 字幕文件；</li>
        # <li>srt：生成 SRT 字幕文件。</li>
        # <font color='red'>注意：此字段已废弃，建议使用 SubtitleFormatsOperation。</font>
        # @type SubtitleFormat: String

        attr_accessor :Switch, :SubtitleFormatsOperation, :SubtitleFormat
        
        def initialize(switch=nil, subtitleformatsoperation=nil, subtitleformat=nil)
          @Switch = switch
          @SubtitleFormatsOperation = subtitleformatsoperation
          @SubtitleFormat = subtitleformat
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['SubtitleFormatsOperation'].nil?
            @SubtitleFormatsOperation = SubtitleFormatsOperation.new
            @SubtitleFormatsOperation.deserialize(params['SubtitleFormatsOperation'])
          end
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

      # AttachMediaSubtitles请求参数结构体
      class AttachMediaSubtitlesRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件唯一标识。
        # @type FileId: String
        # @param Operation: 操作。取值如下：
        # <li>Attach：关联字幕。</li>
        # <li>Detach：解除关联字幕。</li>
        # @type Operation: String
        # @param AdaptiveDynamicStreamingDefinition: [转自适应码流模板号](https://cloud.tencent.com/document/product/266/34071#zsy)。
        # @type AdaptiveDynamicStreamingDefinition: Integer
        # @param SubtitleIds: 字幕的唯一标识。
        # @type SubtitleIds: Array
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :FileId, :Operation, :AdaptiveDynamicStreamingDefinition, :SubtitleIds, :SubAppId
        
        def initialize(fileid=nil, operation=nil, adaptivedynamicstreamingdefinition=nil, subtitleids=nil, subappid=nil)
          @FileId = fileid
          @Operation = operation
          @AdaptiveDynamicStreamingDefinition = adaptivedynamicstreamingdefinition
          @SubtitleIds = subtitleids
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Operation = params['Operation']
          @AdaptiveDynamicStreamingDefinition = params['AdaptiveDynamicStreamingDefinition']
          @SubtitleIds = params['SubtitleIds']
          @SubAppId = params['SubAppId']
        end
      end

      # AttachMediaSubtitles返回参数结构体
      class AttachMediaSubtitlesResponse < TencentCloud::Common::AbstractModel
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
        # <li>libmp3lame：更适合 flv；</li>
        # <li>mp2。</li>
        # 当外层参数 Container 为 hls 时，可选值为：
        # <li>libfdk_aac。</li>
        # 当外层参数 Format 为 HLS 或 MPEG-DASH 时，可选值为：
        # <li>libfdk_aac。</li>
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
        # <li>libfdk_aac。</li>
        # 当外层参数 Format 为 HLS 或 MPEG-DASH 时，可选值为：
        # <li>libfdk_aac。</li>
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

      # 音频轨道上的音频片段信息。
      class AudioTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceMedia: 音频片段的媒体素材来源，可以是：
        # <li>点播的媒体文件 ID；</li>
        # <li>其他媒体文件的下载 URL。</li>
        # 注意：当使用其他媒体文件的下载 URL 作为素材来源，且开启了访问控制（如防盗链）时，需要在 URL 携带访问控制参数（如防盗链签名）。
        # @type SourceMedia: String
        # @param SourceMediaStartTime: 音频片段取自素材文件的起始时间，单位为秒。0 表示从素材开始位置截取。默认为0。
        # @type SourceMediaStartTime: Float
        # @param Duration: 音频片段的时长，单位为秒。默认和素材本身长度一致，表示截取全部素材。
        # @type Duration: Float
        # @param AudioOperations: 对音频片段进行的操作，如音量调节等。
        # @type AudioOperations: Array

        attr_accessor :SourceMedia, :SourceMediaStartTime, :Duration, :AudioOperations
        
        def initialize(sourcemedia=nil, sourcemediastarttime=nil, duration=nil, audiooperations=nil)
          @SourceMedia = sourcemedia
          @SourceMediaStartTime = sourcemediastarttime
          @Duration = duration
          @AudioOperations = audiooperations
        end

        def deserialize(params)
          @SourceMedia = params['SourceMedia']
          @SourceMediaStartTime = params['SourceMediaStartTime']
          @Duration = params['Duration']
          unless params['AudioOperations'].nil?
            @AudioOperations = []
            params['AudioOperations'].each do |i|
              audiotransform_tmp = AudioTransform.new
              audiotransform_tmp.deserialize(i)
              @AudioOperations << audiotransform_tmp
            end
          end
        end
      end

      # 音频操作
      class AudioTransform < TencentCloud::Common::AbstractModel
        # @param Type: 音频操作类型，取值有：
        # <li>Volume：音量调节。</li>
        # @type Type: String
        # @param VolumeParam: 音量调节参数， 当 Type = Volume 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeParam: :class:`Tencentcloud::Vod.v20180717.models.AudioVolumeParam`

        attr_accessor :Type, :VolumeParam
        
        def initialize(type=nil, volumeparam=nil)
          @Type = type
          @VolumeParam = volumeparam
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['VolumeParam'].nil?
            @VolumeParam = AudioVolumeParam.new
            @VolumeParam.deserialize(params['VolumeParam'])
          end
        end
      end

      # 音频增益调节参数
      class AudioVolumeParam < TencentCloud::Common::AbstractModel
        # @param Mute: 是否静音，取值范围0或1。
        # <li>0表示不静音。</li>
        # <li>1表示静音。</li>
        # 默认是0。
        # @type Mute: Integer
        # @param Gain: 音频增益，取值范围0~10。
        # <li>大于1表示增加音量。</li>
        # <li>小于1表示降低音量。</li>
        # <li>0和1：表示不改变。</li>
        # 默认是0。
        # @type Gain: Float

        attr_accessor :Mute, :Gain
        
        def initialize(mute=nil, gain=nil)
          @Mute = mute
          @Gain = gain
        end

        def deserialize(params)
          @Mute = params['Mute']
          @Gain = params['Gain']
        end
      end

      # 画布信息。制作视频时，如果源素材（视频或者图片）不能填满输出的视频窗口，将用设置的画布进行背景绘制。
      class Canvas < TencentCloud::Common::AbstractModel
        # @param Color: 背景颜色，取值有：
        # <li>Black：黑色背景</li>
        # <li>White：白色背景</li>
        # 默认值：Black。
        # @type Color: String
        # @param Width: 画布宽度，即输出视频的宽度，取值范围：0~ 4096，单位：px。
        # 默认值：0，表示和第一个视频轨的第一个视频片段的视频宽度一致。
        # @type Width: Integer
        # @param Height: 画布高度，即输出视频的高度（或长边），取值范围：0~ 4096，单位：px。
        # 默认值：0，表示和第一个视频轨的第一个视频片段的视频高度一致。
        # @type Height: Integer

        attr_accessor :Color, :Width, :Height
        
        def initialize(color=nil, width=nil, height=nil)
          @Color = color
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @Color = params['Color']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # CDN 日志信息
      class CdnLogInfo < TencentCloud::Common::AbstractModel
        # @param Date: 日志所属日期， 格式为：yyyy-MM-dd ，如2018-03-01。
        # @type Date: String
        # @param Name: 日志名称，格式为：日期小时-域名
        # 如 2018120101-test.vod2.mqcloud.com。
        # @type Name: String
        # @param Url: 日志下载链接，24小时内下载有效。
        # @type Url: String
        # @param StartTime: 日志起始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type StartTime: String
        # @param EndTime: 日志结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type EndTime: String

        attr_accessor :Date, :Name, :Url, :StartTime, :EndTime
        
        def initialize(date=nil, name=nil, url=nil, starttime=nil, endtime=nil)
          @Date = date
          @Name = name
          @Url = url
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Date = params['Date']
          @Name = params['Name']
          @Url = params['Url']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # 视频裁剪结果文件信息（2017 版）
      class ClipFileInfo2017 < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误描述。
        # @type Message: String
        # @param FileId: 输出目标文件的文件 ID。
        # @type FileId: String
        # @param FileUrl: 输出目标文件的文件地址。
        # @type FileUrl: String
        # @param FileType: 输出目标文件的文件类型。
        # @type FileType: String

        attr_accessor :ErrCode, :Message, :FileId, :FileUrl, :FileType
        
        def initialize(errcode=nil, message=nil, fileid=nil, fileurl=nil, filetype=nil)
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileUrl = fileurl
          @FileType = filetype
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
        end
      end

      # 视频剪辑任务信息，该结构仅用于对 2017 版[视频剪辑](https://cloud.tencent.com/document/product/266/10156)接口发起的任务。
      class ClipTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频剪辑任务 ID。
        # @type TaskId: String
        # @param SrcFileId: 视频剪辑任务源文件 ID。
        # @type SrcFileId: String
        # @param FileInfo: 视频剪辑输出的文件信息。
        # @type FileInfo: :class:`Tencentcloud::Vod.v20180717.models.ClipFileInfo2017`

        attr_accessor :TaskId, :SrcFileId, :FileInfo
        
        def initialize(taskid=nil, srcfileid=nil, fileinfo=nil)
          @TaskId = taskid
          @SrcFileId = srcfileid
          @FileInfo = fileinfo
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SrcFileId = params['SrcFileId']
          unless params['FileInfo'].nil?
            @FileInfo = ClipFileInfo2017.new
            @FileInfo.deserialize(params['FileInfo'])
          end
        end
      end

      # CommitUpload请求参数结构体
      class CommitUploadRequest < TencentCloud::Common::AbstractModel
        # @param VodSessionKey: 点播会话，取申请上传接口的返回值 VodSessionKey。
        # @type VodSessionKey: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :VodSessionKey, :SubAppId
        
        def initialize(vodsessionkey=nil, subappid=nil)
          @VodSessionKey = vodsessionkey
          @SubAppId = subappid
        end

        def deserialize(params)
          @VodSessionKey = params['VodSessionKey']
          @SubAppId = params['SubAppId']
        end
      end

      # CommitUpload返回参数结构体
      class CommitUploadResponse < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件的唯一标识。
        # @type FileId: String
        # @param MediaUrl: 媒体播放地址。
        # @type MediaUrl: String
        # @param CoverUrl: 媒体封面地址。
        # @type CoverUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileId, :MediaUrl, :CoverUrl, :RequestId
        
        def initialize(fileid=nil, mediaurl=nil, coverurl=nil, requestid=nil)
          @FileId = fileid
          @MediaUrl = mediaurl
          @CoverUrl = coverurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @MediaUrl = params['MediaUrl']
          @CoverUrl = params['CoverUrl']
          @RequestId = params['RequestId']
        end
      end

      # 输出的媒体文件信息。
      class ComposeMediaOutput < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称，最长 64 个字符。
        # @type FileName: String
        # @param Description: 描述信息，最长 128 个字符。
        # @type Description: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String
        # @param Container: 封装格式，可选值：mp4、mp3。其中，mp3 为纯音频文件。
        # @type Container: String
        # @param VideoStream: 输出的视频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoStream: :class:`Tencentcloud::Vod.v20180717.models.OutputVideoStream`
        # @param AudioStream: 输出的音频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioStream: :class:`Tencentcloud::Vod.v20180717.models.OutputAudioStream`
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

        attr_accessor :FileName, :Description, :ClassId, :ExpireTime, :Container, :VideoStream, :AudioStream, :RemoveVideo, :RemoveAudio
        
        def initialize(filename=nil, description=nil, classid=nil, expiretime=nil, container=nil, videostream=nil, audiostream=nil, removevideo=nil, removeaudio=nil)
          @FileName = filename
          @Description = description
          @ClassId = classid
          @ExpireTime = expiretime
          @Container = container
          @VideoStream = videostream
          @AudioStream = audiostream
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Description = params['Description']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
          @Container = params['Container']
          unless params['VideoStream'].nil?
            @VideoStream = OutputVideoStream.new
            @VideoStream.deserialize(params['VideoStream'])
          end
          unless params['AudioStream'].nil?
            @AudioStream = OutputAudioStream.new
            @AudioStream.deserialize(params['AudioStream'])
          end
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
        end
      end

      # ComposeMedia请求参数结构体
      class ComposeMediaRequest < TencentCloud::Common::AbstractModel
        # @param Tracks: 输入的媒体轨道列表，包括视频、音频、图片等素材组成的多个轨道信息，其中：<li>输入的多个轨道在时间轴上和输出媒体文件的时间轴对齐；</li><li>时间轴上相同时间点的各个轨道的素材进行重叠，视频或者图片按轨道顺序进行图像的叠加，轨道顺序高的素材叠加在上面，音频素材进行混音；</li><li>视频、音频、图片，每一种类型的轨道最多支持 10 个。</li><li>所有类型的轨道上放置的媒体片段数量总和最多支持 500 个。</li>
        # @type Tracks: Array
        # @param Output: 输出的媒体文件信息。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaOutput`
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Canvas: 制作视频文件时使用的画布。
        # @type Canvas: :class:`Tencentcloud::Vod.v20180717.models.Canvas`
        # @param SessionContext: 标识来源上下文，用于透传用户请求信息，在ComposeMediaComplete回调将返回该字段值，最长 1000个字符。
        # @type SessionContext: String
        # @param SessionId: 用于任务去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :Tracks, :Output, :SubAppId, :Canvas, :SessionContext, :SessionId
        
        def initialize(tracks=nil, output=nil, subappid=nil, canvas=nil, sessioncontext=nil, sessionid=nil)
          @Tracks = tracks
          @Output = output
          @SubAppId = subappid
          @Canvas = canvas
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          unless params['Tracks'].nil?
            @Tracks = []
            params['Tracks'].each do |i|
              mediatrack_tmp = MediaTrack.new
              mediatrack_tmp.deserialize(i)
              @Tracks << mediatrack_tmp
            end
          end
          unless params['Output'].nil?
            @Output = ComposeMediaOutput.new
            @Output.deserialize(params['Output'])
          end
          @SubAppId = params['SubAppId']
          unless params['Canvas'].nil?
            @Canvas = Canvas.new
            @Canvas.deserialize(params['Canvas'])
          end
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # ComposeMedia返回参数结构体
      class ComposeMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 制作媒体文件的任务 ID，可以通过该 ID 查询制作任务（任务类型为 MakeMedia）的状态。
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

      # 制作媒体文件任务信息
      class ComposeMediaTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Progress: 制作媒体文件任务进度，取值范围 [0-100] 。
        # @type Progress: Integer
        # @param Input: 制作媒体文件任务的输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTaskInput`
        # @param Output: 制作媒体文件任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTaskOutput`
        # @param MetaData: 输出视频的元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :Progress, :Input, :Output, :MetaData, :SessionId, :SessionContext
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, progress=nil, input=nil, output=nil, metadata=nil, sessionid=nil, sessioncontext=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Progress = progress
          @Input = input
          @Output = output
          @MetaData = metadata
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @Progress = params['Progress']
          unless params['Input'].nil?
            @Input = ComposeMediaTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = ComposeMediaTaskOutput.new
            @Output.deserialize(params['Output'])
          end
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # 制作媒体文件任务的输入。
      class ComposeMediaTaskInput < TencentCloud::Common::AbstractModel
        # @param Tracks: 输入的媒体轨道列表，包括视频、音频、图片等素材组成的多个轨道信息。
        # @type Tracks: Array
        # @param Canvas: 制作视频文件时使用的画布。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Canvas: :class:`Tencentcloud::Vod.v20180717.models.Canvas`
        # @param Output: 输出的媒体文件信息。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaOutput`

        attr_accessor :Tracks, :Canvas, :Output
        
        def initialize(tracks=nil, canvas=nil, output=nil)
          @Tracks = tracks
          @Canvas = canvas
          @Output = output
        end

        def deserialize(params)
          unless params['Tracks'].nil?
            @Tracks = []
            params['Tracks'].each do |i|
              mediatrack_tmp = MediaTrack.new
              mediatrack_tmp.deserialize(i)
              @Tracks << mediatrack_tmp
            end
          end
          unless params['Canvas'].nil?
            @Canvas = Canvas.new
            @Canvas.deserialize(params['Canvas'])
          end
          unless params['Output'].nil?
            @Output = ComposeMediaOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 制作媒体文件任务的输出。
      class ComposeMediaTaskOutput < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型，例如 mp4、mp3 等。
        # @type FileType: String
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param FileUrl: 媒体文件播放地址。
        # @type FileUrl: String
        # @param MediaName: 文件名称，最长 64 个字符。
        # @type MediaName: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String

        attr_accessor :FileType, :FileId, :FileUrl, :MediaName, :ClassId, :ExpireTime
        
        def initialize(filetype=nil, fileid=nil, fileurl=nil, medianame=nil, classid=nil, expiretime=nil)
          @FileType = filetype
          @FileId = fileid
          @FileUrl = fileurl
          @MediaName = medianame
          @ClassId = classid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileId = params['FileId']
          @FileUrl = params['FileUrl']
          @MediaName = params['MediaName']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 视频拼接源文件信息（2017 版）
      class ConcatFileInfo2017 < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 视频拼接源文件的 ID。
        # @type FileId: String
        # @param FileUrl: 视频拼接源文件的地址。
        # @type FileUrl: String
        # @param FileType: 视频拼接源文件的格式。
        # @type FileType: String

        attr_accessor :ErrCode, :Message, :FileId, :FileUrl, :FileType
        
        def initialize(errcode=nil, message=nil, fileid=nil, fileurl=nil, filetype=nil)
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileUrl = fileurl
          @FileType = filetype
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
        end
      end

      # 视频拼接任务信息，该结构仅用于对 2017 版[视频拼接](https://cloud.tencent.com/document/product/266/7821)接口发起的任务。
      class ConcatTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频拼接任务 ID。
        # @type TaskId: String
        # @param FileInfoSet: 视频拼接源文件信息。
        # @type FileInfoSet: Array

        attr_accessor :TaskId, :FileInfoSet
        
        def initialize(taskid=nil, fileinfoset=nil)
          @TaskId = taskid
          @FileInfoSet = fileinfoset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['FileInfoSet'].nil?
            @FileInfoSet = []
            params['FileInfoSet'].each do |i|
              concatfileinfo2017_tmp = ConcatFileInfo2017.new
              concatfileinfo2017_tmp.deserialize(i)
              @FileInfoSet << concatfileinfo2017_tmp
            end
          end
        end
      end

      # ConfirmEvents请求参数结构体
      class ConfirmEventsRequest < TencentCloud::Common::AbstractModel
        # @param EventHandles: 事件句柄，即 [拉取事件通知](/document/product/266/33433) 接口输出参数中的 EventSet. EventHandle 字段。
        # 数组长度限制：16。
        # @type EventHandles: Array
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :EventHandles, :ExtInfo, :SubAppId
        
        def initialize(eventhandles=nil, extinfo=nil, subappid=nil)
          @EventHandles = eventhandles
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @EventHandles = params['EventHandles']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # ConfirmEvents返回参数结构体
      class ConfirmEventsResponse < TencentCloud::Common::AbstractModel
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

      # 图片Ocr 文字鉴别信息的任务结果类型
      class ContentReviewOcrResult < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字鉴别结果的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字鉴别的结果建议，取值范围：
        # <li>pass；</li>
        # <li>review；</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param KeywordSet: Ocr 文字鉴别的嫌疑关键词列表。
        # @type KeywordSet: Array
        # @param AreaCoordSet: Ocr 文字鉴别的嫌疑文字出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array

        attr_accessor :Confidence, :Suggestion, :KeywordSet, :AreaCoordSet
        
        def initialize(confidence=nil, suggestion=nil, keywordset=nil, areacoordset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @KeywordSet = keywordset
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @KeywordSet = params['KeywordSet']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 图片智能内容识别任务结果
      class ContentReviewResult < TencentCloud::Common::AbstractModel
        # @param Type: 结果类型，取值范围：
        # <li>Porn.Image：图片画面中的鉴别令人反感的信息结果；</li>
        # <li>Terrorism.Image：图片画面中的鉴别令人不安全的信息结果；</li>
        # <li>Political.Image：图片画面中的鉴别令人不适宜信息结果；</li>
        # <li>Porn.Ocr：图片 OCR 文字中的鉴别令人反感的信息结果；</li>
        # <li>Terrorism.Ocr：图片 OCR 文字中的鉴别令人不安全的信息结果；</li>
        # <li>Political.Ocr：图片 OCR 文字中的鉴别令人不适宜信息结果。</li>
        # @type Type: String
        # @param PornImageResult: 图片画面中的鉴别令人反感的信息结果，当 Type 为 Porn.Image 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornImageResult: :class:`Tencentcloud::Vod.v20180717.models.PornImageResult`
        # @param TerrorismImageResult: 图片画面中的鉴别令人不安全的信息结果，当 Type 为 Terrorism.Image 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismImageResult: :class:`Tencentcloud::Vod.v20180717.models.TerrorismImageResult`
        # @param PoliticalImageResult: 图片画面中的鉴别令人不适宜信息结果，当 Type 为 Political.Image 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalImageResult: :class:`Tencentcloud::Vod.v20180717.models.PoliticalImageResult`
        # @param PornOcrResult: 图片 OCR 文字中的鉴别令人反感的信息结果，当 Type 为 Porn.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornOcrResult: :class:`Tencentcloud::Vod.v20180717.models.ContentReviewOcrResult`
        # @param TerrorismOcrResult: 图片 OCR 中的鉴别令人不安全的信息结果，当 Type 为 Terrorism.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismOcrResult: :class:`Tencentcloud::Vod.v20180717.models.ContentReviewOcrResult`
        # @param PoliticalOcrResult: 图片 OCR 文字中的鉴别令人不适宜信息结果，当 Type 为 Political.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalOcrResult: :class:`Tencentcloud::Vod.v20180717.models.ContentReviewOcrResult`

        attr_accessor :Type, :PornImageResult, :TerrorismImageResult, :PoliticalImageResult, :PornOcrResult, :TerrorismOcrResult, :PoliticalOcrResult
        
        def initialize(type=nil, pornimageresult=nil, terrorismimageresult=nil, politicalimageresult=nil, pornocrresult=nil, terrorismocrresult=nil, politicalocrresult=nil)
          @Type = type
          @PornImageResult = pornimageresult
          @TerrorismImageResult = terrorismimageresult
          @PoliticalImageResult = politicalimageresult
          @PornOcrResult = pornocrresult
          @TerrorismOcrResult = terrorismocrresult
          @PoliticalOcrResult = politicalocrresult
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['PornImageResult'].nil?
            @PornImageResult = PornImageResult.new
            @PornImageResult.deserialize(params['PornImageResult'])
          end
          unless params['TerrorismImageResult'].nil?
            @TerrorismImageResult = TerrorismImageResult.new
            @TerrorismImageResult.deserialize(params['TerrorismImageResult'])
          end
          unless params['PoliticalImageResult'].nil?
            @PoliticalImageResult = PoliticalImageResult.new
            @PoliticalImageResult.deserialize(params['PoliticalImageResult'])
          end
          unless params['PornOcrResult'].nil?
            @PornOcrResult = ContentReviewOcrResult.new
            @PornOcrResult.deserialize(params['PornOcrResult'])
          end
          unless params['TerrorismOcrResult'].nil?
            @TerrorismOcrResult = ContentReviewOcrResult.new
            @TerrorismOcrResult.deserialize(params['TerrorismOcrResult'])
          end
          unless params['PoliticalOcrResult'].nil?
            @PoliticalOcrResult = ContentReviewOcrResult.new
            @PoliticalOcrResult.deserialize(params['PoliticalOcrResult'])
          end
        end
      end

      # 音视频审核模板详情
      class ContentReviewTemplateItem < TencentCloud::Common::AbstractModel
        # @param Definition: 音视频审核模板唯一标识。
        # @type Definition: Integer
        # @param Name: 音视频审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 音视频审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 鉴别涉及令人反感的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornConfigure: :class:`Tencentcloud::Vod.v20180717.models.PornConfigureInfo`
        # @param TerrorismConfigure: 鉴别涉及令人不安全的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismConfigure: :class:`Tencentcloud::Vod.v20180717.models.TerrorismConfigureInfo`
        # @param PoliticalConfigure: 鉴别涉及令人不适宜的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalConfigure: :class:`Tencentcloud::Vod.v20180717.models.PoliticalConfigureInfo`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedConfigure: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedConfigureInfo`
        # @param UserDefineConfigure: 用户自定义音视频审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefineConfigure: :class:`Tencentcloud::Vod.v20180717.models.UserDefineConfigureInfo`
        # @param ReviewWallSwitch: 音视频审核结果是否进入音视频审核墙（对音视频审核结果进行人工复核）的开关。
        # <li>ON：是；</li>
        # <li>OFF：否。</li>
        # @type ReviewWallSwitch: String
        # @param ScreenshotInterval: 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure, :ReviewWallSwitch, :ScreenshotInterval, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil, reviewwallswitch=nil, screenshotinterval=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
          @ReviewWallSwitch = reviewwallswitch
          @ScreenshotInterval = screenshotinterval
          @CreateTime = createtime
          @UpdateTime = updatetime
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
          @ReviewWallSwitch = params['ReviewWallSwitch']
          @ScreenshotInterval = params['ScreenshotInterval']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 对视频截图做封面任务输入参数类型
      class CoverBySnapshotTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板 ID。
        # @type Definition: Integer
        # @param PositionType: 截图方式。包含：
        # <li>Time：依照时间点截图</li>
        # <li>Percent：依照百分比截图</li>
        # @type PositionType: String
        # @param PositionValue: 截图位置：
        # <li>对于依照时间点截图，该值表示指定视频第几秒的截图作为封面</li>
        # <li>对于依照百分比截图，该值表示使用视频百分之多少的截图作为封面</li>
        # @type PositionValue: Float
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array

        attr_accessor :Definition, :PositionType, :PositionValue, :WatermarkSet
        
        def initialize(definition=nil, positiontype=nil, positionvalue=nil, watermarkset=nil)
          @Definition = definition
          @PositionType = positiontype
          @PositionValue = positionvalue
          @WatermarkSet = watermarkset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @PositionType = params['PositionType']
          @PositionValue = params['PositionValue']
          unless params['WatermarkSet'].nil?
            @WatermarkSet = []
            params['WatermarkSet'].each do |i|
              watermarkinput_tmp = WatermarkInput.new
              watermarkinput_tmp.deserialize(i)
              @WatermarkSet << watermarkinput_tmp
            end
          end
        end
      end

      # 对视频截图做封面任务输出类型
      class CoverBySnapshotTaskOutput < TencentCloud::Common::AbstractModel
        # @param CoverUrl: 封面 URL。
        # @type CoverUrl: String

        attr_accessor :CoverUrl
        
        def initialize(coverurl=nil)
          @CoverUrl = coverurl
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 音视频内容分析模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 音视频内容分析模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # @type ClassificationConfigure: :class:`Tencentcloud::Vod.v20180717.models.ClassificationConfigureInfo`
        # @param TagConfigure: 智能标签任务控制参数。
        # @type TagConfigure: :class:`Tencentcloud::Vod.v20180717.models.TagConfigureInfo`
        # @param CoverConfigure: 智能封面任务控制参数。
        # @type CoverConfigure: :class:`Tencentcloud::Vod.v20180717.models.CoverConfigureInfo`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # @type FrameTagConfigure: :class:`Tencentcloud::Vod.v20180717.models.FrameTagConfigureInfo`
        # @param HighlightConfigure: 智能精彩集锦任务控制参数。
        # @type HighlightConfigure: :class:`Tencentcloud::Vod.v20180717.models.HighlightsConfigureInfo`

        attr_accessor :SubAppId, :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure, :HighlightConfigure
        
        def initialize(subappid=nil, name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil, highlightconfigure=nil)
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
          @HighlightConfigure = highlightconfigure
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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
          unless params['HighlightConfigure'].nil?
            @HighlightConfigure = HighlightsConfigureInfo.new
            @HighlightConfigure.deserialize(params['HighlightConfigure'])
          end
        end
      end

      # CreateAIAnalysisTemplate返回参数结构体
      class CreateAIAnalysisTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 音视频内容分析模板唯一标识。
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 音视频内容识别模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 音视频内容识别模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param HeadTailConfigure: 视频片头片尾识别控制参数。
        # @type HeadTailConfigure: :class:`Tencentcloud::Vod.v20180717.models.HeadTailConfigureInfo`
        # @param SegmentConfigure: 视频拆条识别控制参数。
        # @type SegmentConfigure: :class:`Tencentcloud::Vod.v20180717.models.SegmentConfigureInfo`
        # @param FaceConfigure: 人脸识别控制参数。
        # @type FaceConfigure: :class:`Tencentcloud::Vod.v20180717.models.FaceConfigureInfo`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrFullTextConfigureInfo`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrWordsConfigureInfo`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrFullTextConfigureInfo`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrWordsConfigureInfo`
        # @param ObjectConfigure: 物体识别控制参数。
        # @type ObjectConfigure: :class:`Tencentcloud::Vod.v20180717.models.ObjectConfigureInfo`
        # @param ScreenshotInterval: 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float

        attr_accessor :SubAppId, :Name, :Comment, :HeadTailConfigure, :SegmentConfigure, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure, :ObjectConfigure, :ScreenshotInterval
        
        def initialize(subappid=nil, name=nil, comment=nil, headtailconfigure=nil, segmentconfigure=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil, objectconfigure=nil, screenshotinterval=nil)
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @HeadTailConfigure = headtailconfigure
          @SegmentConfigure = segmentconfigure
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
          @ObjectConfigure = objectconfigure
          @ScreenshotInterval = screenshotinterval
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['HeadTailConfigure'].nil?
            @HeadTailConfigure = HeadTailConfigureInfo.new
            @HeadTailConfigure.deserialize(params['HeadTailConfigure'])
          end
          unless params['SegmentConfigure'].nil?
            @SegmentConfigure = SegmentConfigureInfo.new
            @SegmentConfigure.deserialize(params['SegmentConfigure'])
          end
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
          unless params['ObjectConfigure'].nil?
            @ObjectConfigure = ObjectConfigureInfo.new
            @ObjectConfigure.deserialize(params['ObjectConfigure'])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
        end
      end

      # CreateAIRecognitionTemplate返回参数结构体
      class CreateAIRecognitionTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 音视频内容识别模板唯一标识。
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
        # <li>HLS；</li>
        # <li>MPEG-DASH。</li>
        # @type Format: String
        # @param StreamInfos: 自适应转码输出子流参数信息，最多输出10路子流。
        # 注意：各个子流的帧率必须保持一致；如果不一致，采用第一个子流的帧率作为输出帧率。
        # @type StreamInfos: Array
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param DrmType: DRM 方案类型，取值范围：
        # <li>SimpleAES</li>
        # <li>Widevine</li>
        # <li>FairPlay</li>
        # 如果取值为空字符串，代表不对视频做 DRM 保护。
        # @type DrmType: String
        # @param DrmKeyProvider: DRM 的密钥提供商，取值范围：
        # <li>SDMC：华曦达；</li>
        # <li>VOD：云点播。</li>
        # 默认为 VOD 。
        # @type DrmKeyProvider: String
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

        attr_accessor :Format, :StreamInfos, :SubAppId, :Name, :DrmType, :DrmKeyProvider, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :Comment
        
        def initialize(format=nil, streaminfos=nil, subappid=nil, name=nil, drmtype=nil, drmkeyprovider=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, comment=nil)
          @Format = format
          @StreamInfos = streaminfos
          @SubAppId = subappid
          @Name = name
          @DrmType = drmtype
          @DrmKeyProvider = drmkeyprovider
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
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @DrmType = params['DrmType']
          @DrmKeyProvider = params['DrmKeyProvider']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :Fps, :SubAppId, :Width, :Height, :ResolutionAdaptive, :Format, :Quality, :Name, :Comment
        
        def initialize(fps=nil, subappid=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, quality=nil, name=nil, comment=nil)
          @Fps = fps
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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

      # CreateClass请求参数结构体
      class CreateClassRequest < TencentCloud::Common::AbstractModel
        # @param ParentId: 父类 ID，一级分类填写 -1。
        # @type ParentId: Integer
        # @param ClassName: 分类名称，长度限制：1-64 个字符。
        # @type ClassName: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :ParentId, :ClassName, :SubAppId
        
        def initialize(parentid=nil, classname=nil, subappid=nil)
          @ParentId = parentid
          @ClassName = classname
          @SubAppId = subappid
        end

        def deserialize(params)
          @ParentId = params['ParentId']
          @ClassName = params['ClassName']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateClass返回参数结构体
      class CreateClassResponse < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID
        # @type ClassId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClassId, :RequestId
        
        def initialize(classid=nil, requestid=nil)
          @ClassId = classid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @RequestId = params['RequestId']
        end
      end

      # CreateContentReviewTemplate请求参数结构体
      class CreateContentReviewTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ReviewWallSwitch: 音视频审核结果是否进入音视频审核墙（对识别结果进行人工复核）的开关。
        # <li>ON：是；</li>
        # <li>OFF：否。</li>
        # @type ReviewWallSwitch: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 令人反感的信息的控制参数。
        # @type PornConfigure: :class:`Tencentcloud::Vod.v20180717.models.PornConfigureInfo`
        # @param TerrorismConfigure: 令人不安全的信息的控制参数。
        # @type TerrorismConfigure: :class:`Tencentcloud::Vod.v20180717.models.TerrorismConfigureInfo`
        # @param PoliticalConfigure: 令人不适宜的控制参数。
        # @type PoliticalConfigure: :class:`Tencentcloud::Vod.v20180717.models.PoliticalConfigureInfo`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # @type ProhibitedConfigure: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedConfigureInfo`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # @type UserDefineConfigure: :class:`Tencentcloud::Vod.v20180717.models.UserDefineConfigureInfo`
        # @param ScreenshotInterval: 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float

        attr_accessor :ReviewWallSwitch, :SubAppId, :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure, :ScreenshotInterval
        
        def initialize(reviewwallswitch=nil, subappid=nil, name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil, screenshotinterval=nil)
          @ReviewWallSwitch = reviewwallswitch
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
          @ScreenshotInterval = screenshotinterval
        end

        def deserialize(params)
          @ReviewWallSwitch = params['ReviewWallSwitch']
          @SubAppId = params['SubAppId']
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
          @ScreenshotInterval = params['ScreenshotInterval']
        end
      end

      # CreateContentReviewTemplate返回参数结构体
      class CreateContentReviewTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 音视频内容审核模板唯一标识。
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

      # CreateHeadTailTemplate请求参数结构体
      class CreateHeadTailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 模板名，长度限制 64 个字符。
        # @type Name: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Comment: 模板描述信息，长度限制 256 个字符。
        # @type Comment: String
        # @param HeadCandidateSet: 片头候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片头（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片头。
        # @type HeadCandidateSet: Array
        # @param TailCandidateSet: 片尾候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片尾（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片尾。
        # @type TailCandidateSet: Array
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li> gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊；</li>
        # <li> white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充；</li>
        # <li> black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：stretch 。
        # @type FillType: String

        attr_accessor :Name, :SubAppId, :Comment, :HeadCandidateSet, :TailCandidateSet, :FillType
        
        def initialize(name=nil, subappid=nil, comment=nil, headcandidateset=nil, tailcandidateset=nil, filltype=nil)
          @Name = name
          @SubAppId = subappid
          @Comment = comment
          @HeadCandidateSet = headcandidateset
          @TailCandidateSet = tailcandidateset
          @FillType = filltype
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
          @Comment = params['Comment']
          @HeadCandidateSet = params['HeadCandidateSet']
          @TailCandidateSet = params['TailCandidateSet']
          @FillType = params['FillType']
        end
      end

      # CreateHeadTailTemplate返回参数结构体
      class CreateHeadTailTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 片头片尾模板号。
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

      # CreateImageProcessingTemplate请求参数结构体
      class CreateImageProcessingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Operations: 图片处理操作数组，操作将以其在数组中的顺序执行。
        # <li>长度限制：3。</li>
        # @type Operations: Array
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 图片处理模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Operations, :SubAppId, :Name, :Comment
        
        def initialize(operations=nil, subappid=nil, name=nil, comment=nil)
          @Operations = operations
          @SubAppId = subappid
          @Name = name
          @Comment = comment
        end

        def deserialize(params)
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              imageoperation_tmp = ImageOperation.new
              imageoperation_tmp.deserialize(i)
              @Operations << imageoperation_tmp
            end
          end
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Comment = params['Comment']
        end
      end

      # CreateImageProcessingTemplate返回参数结构体
      class CreateImageProcessingTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 图片处理模板唯一标识。
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

      # 视频截取雪碧图任务，该结构仅用于对 2017 版[截取雪碧图](https://cloud.tencent.com/document/product/266/8101)接口发起的任务。
      class CreateImageSpriteTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 截图雪碧图任务 ID。
        # @type TaskId: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 截取雪碧图文件 ID。
        # @type FileId: String
        # @param Definition: 雪碧图规格，参见[雪碧图截图模板](https://cloud.tencent.com/document/product/266/33480#.E9.9B.AA.E7.A2.A7.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param TotalCount: 雪碧图小图总数量。
        # @type TotalCount: Integer
        # @param ImageSpriteUrlSet: 截取雪碧图输出的地址。
        # @type ImageSpriteUrlSet: Array
        # @param WebVttUrl: 雪碧图子图位置与时间关系 WebVtt 文件地址。
        # @type WebVttUrl: String

        attr_accessor :TaskId, :ErrCode, :Message, :FileId, :Definition, :TotalCount, :ImageSpriteUrlSet, :WebVttUrl
        
        def initialize(taskid=nil, errcode=nil, message=nil, fileid=nil, definition=nil, totalcount=nil, imagespriteurlset=nil, webvtturl=nil)
          @TaskId = taskid
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @Definition = definition
          @TotalCount = totalcount
          @ImageSpriteUrlSet = imagespriteurlset
          @WebVttUrl = webvtturl
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @Definition = params['Definition']
          @TotalCount = params['TotalCount']
          @ImageSpriteUrlSet = params['ImageSpriteUrlSet']
          @WebVttUrl = params['WebVttUrl']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 雪碧图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String
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

        attr_accessor :SampleType, :SampleInterval, :RowCount, :ColumnCount, :SubAppId, :Name, :Comment, :FillType, :Width, :Height, :ResolutionAdaptive
        
        def initialize(sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, subappid=nil, name=nil, comment=nil, filltype=nil, width=nil, height=nil, resolutionadaptive=nil)
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @RowCount = rowcount
          @ColumnCount = columncount
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @FillType = filltype
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
        end

        def deserialize(params)
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Comment = params['Comment']
          @FillType = params['FillType']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
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
        # 2. Review：用于内容不适宜，等价于 Review.Face。
        # 3. All：包含以上全部，等价于 1+2。
        # @type Usages: Array
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Description: 素材描述，长度限制：1024 个字符。
        # @type Description: String
        # @param FaceContents: 素材图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串，仅支持 jpeg、png 图片格式。数组长度限制：5 张图片。
        # 注意：图片必须是单人像五官较清晰的照片，像素不低于 200*200。
        # @type FaceContents: Array
        # @param Tags: 素材标签
        # <li>数组长度限制：20 个标签；</li>
        # <li>单个标签长度限制：128 个字符。</li>
        # @type Tags: Array

        attr_accessor :Name, :Usages, :SubAppId, :Description, :FaceContents, :Tags
        
        def initialize(name=nil, usages=nil, subappid=nil, description=nil, facecontents=nil, tags=nil)
          @Name = name
          @Usages = usages
          @SubAppId = subappid
          @Description = description
          @FaceContents = facecontents
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Usages = params['Usages']
          @SubAppId = params['SubAppId']
          @Description = params['Description']
          @FaceContents = params['FaceContents']
          @Tags = params['Tags']
        end
      end

      # CreatePersonSample返回参数结构体
      class CreatePersonSampleResponse < TencentCloud::Common::AbstractModel
        # @param Person: 素材信息。
        # @type Person: :class:`Tencentcloud::Vod.v20180717.models.AiSamplePerson`
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

      # CreateProcedureTemplate请求参数结构体
      class CreateProcedureTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字（支持中文，不超过20个字）。
        # @type Name: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: AI 内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: AI 内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: AI 内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`

        attr_accessor :Name, :SubAppId, :Comment, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask
        
        def initialize(name=nil, subappid=nil, comment=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil)
          @Name = name
          @SubAppId = subappid
          @Comment = comment
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
          @Comment = params['Comment']
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
        end
      end

      # CreateProcedureTemplate返回参数结构体
      class CreateProcedureTemplateResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SampleType, :SampleInterval, :SubAppId, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :FillType
        
        def initialize(sampletype=nil, sampleinterval=nil, subappid=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, filltype=nil)
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SubAppId, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :FillType
        
        def initialize(subappid=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, filltype=nil)
          @SubAppId = subappid
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Comment = comment
          @FillType = filltype
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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

      # CreateStorageRegion请求参数结构体
      class CreateStorageRegionRequest < TencentCloud::Common::AbstractModel
        # @param StorageRegion: 待开通的存储地域，必须是系统支持的地域。
        # @type StorageRegion: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :StorageRegion, :SubAppId
        
        def initialize(storageregion=nil, subappid=nil)
          @StorageRegion = storageregion
          @SubAppId = subappid
        end

        def deserialize(params)
          @StorageRegion = params['StorageRegion']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateStorageRegion返回参数结构体
      class CreateStorageRegionResponse < TencentCloud::Common::AbstractModel
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

      # CreateSubAppId请求参数结构体
      class CreateSubAppIdRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子应用名称，长度限制：40个字符。
        # @type Name: String
        # @param Description: 子应用简介，长度限制： 300个字符。
        # @type Description: String

        attr_accessor :Name, :Description
        
        def initialize(name=nil, description=nil)
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # CreateSubAppId返回参数结构体
      class CreateSubAppIdResponse < TencentCloud::Common::AbstractModel
        # @param SubAppId: 新创建的子应用 ID。
        # @type SubAppId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAppId, :RequestId
        
        def initialize(subappid=nil, requestid=nil)
          @SubAppId = subappid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSuperPlayerConfig请求参数结构体
      class CreateSuperPlayerConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名称，长度限制：64 个字符。只允许出现 [0-9a-zA-Z] 及 _- 字符（如 test_ABC-123），同一个用户该名称唯一。
        # @type Name: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param AudioVideoType: 播放的音视频类型，可选值：
        # <li>AdaptiveDynamicStream：自适应码流输出；</li>
        # <li>Transcode：转码输出；</li>
        # <li>Original：原始音视频。</li>
        # 默认为 AdaptiveDynamicStream。
        # @type AudioVideoType: String
        # @param DrmSwitch: 播放 DRM 保护的自适应码流开关：
        # <li>ON：开启，表示仅播放 DRM  保护的自适应码流输出；</li>
        # <li>OFF：关闭，表示播放未加密的自适应码流输出。</li>
        # 默认为 OFF。
        # 当 AudioVideoType 为 AdaptiveDynamicStream 时，此参数有效。
        # @type DrmSwitch: String
        # @param AdaptiveDynamicStreamingDefinition: 允许输出的未加密的自适应码流模板 ID。

        # 当 AudioVideoType 为 AdaptiveDynamicStream 并且 DrmSwitch 为 OFF 时，此参数为必填。
        # @type AdaptiveDynamicStreamingDefinition: Integer
        # @param DrmStreamingsInfo: 允许输出的 DRM 自适应码流模板内容。

        # 当 AudioVideoType 为 AdaptiveDynamicStream 并且 DrmSwitch 为 ON 时，此参数为必填。
        # @type DrmStreamingsInfo: :class:`Tencentcloud::Vod.v20180717.models.DrmStreamingsInfo`
        # @param TranscodeDefinition: 允许输出的转码模板 ID。

        # 当 AudioVideoType 为 Transcode 时必填。
        # @type TranscodeDefinition: Integer
        # @param ImageSpriteDefinition: 允许输出的雪碧图模板 ID。
        # @type ImageSpriteDefinition: Integer
        # @param ResolutionNames: 播放器对不于不同分辨率的子流展示名字，不填或者填空数组则使用默认配置：
        # <li>MinEdgeLength：240，Name：流畅；</li>
        # <li>MinEdgeLength：480，Name：标清；</li>
        # <li>MinEdgeLength：720，Name：高清；</li>
        # <li>MinEdgeLength：1080，Name：全高清；</li>
        # <li>MinEdgeLength：1440，Name：2K；</li>
        # <li>MinEdgeLength：2160，Name：4K；</li>
        # <li>MinEdgeLength：4320，Name：8K。</li>
        # @type ResolutionNames: Array
        # @param Domain: 播放时使用的域名。不填或者填 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        # @type Domain: String
        # @param Scheme: 播放时使用的 Scheme。不填或者填 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme。其他可选值：
        # <li>HTTP；</li>
        # <li>HTTPS。</li>
        # @type Scheme: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Name, :SubAppId, :AudioVideoType, :DrmSwitch, :AdaptiveDynamicStreamingDefinition, :DrmStreamingsInfo, :TranscodeDefinition, :ImageSpriteDefinition, :ResolutionNames, :Domain, :Scheme, :Comment
        
        def initialize(name=nil, subappid=nil, audiovideotype=nil, drmswitch=nil, adaptivedynamicstreamingdefinition=nil, drmstreamingsinfo=nil, transcodedefinition=nil, imagespritedefinition=nil, resolutionnames=nil, domain=nil, scheme=nil, comment=nil)
          @Name = name
          @SubAppId = subappid
          @AudioVideoType = audiovideotype
          @DrmSwitch = drmswitch
          @AdaptiveDynamicStreamingDefinition = adaptivedynamicstreamingdefinition
          @DrmStreamingsInfo = drmstreamingsinfo
          @TranscodeDefinition = transcodedefinition
          @ImageSpriteDefinition = imagespritedefinition
          @ResolutionNames = resolutionnames
          @Domain = domain
          @Scheme = scheme
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
          @AudioVideoType = params['AudioVideoType']
          @DrmSwitch = params['DrmSwitch']
          @AdaptiveDynamicStreamingDefinition = params['AdaptiveDynamicStreamingDefinition']
          unless params['DrmStreamingsInfo'].nil?
            @DrmStreamingsInfo = DrmStreamingsInfo.new
            @DrmStreamingsInfo.deserialize(params['DrmStreamingsInfo'])
          end
          @TranscodeDefinition = params['TranscodeDefinition']
          @ImageSpriteDefinition = params['ImageSpriteDefinition']
          unless params['ResolutionNames'].nil?
            @ResolutionNames = []
            params['ResolutionNames'].each do |i|
              resolutionnameinfo_tmp = ResolutionNameInfo.new
              resolutionnameinfo_tmp.deserialize(i)
              @ResolutionNames << resolutionnameinfo_tmp
            end
          end
          @Domain = params['Domain']
          @Scheme = params['Scheme']
          @Comment = params['Comment']
        end
      end

      # CreateSuperPlayerConfig返回参数结构体
      class CreateSuperPlayerConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateTranscodeTemplate请求参数结构体
      class CreateTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Container: 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        # @type Container: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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
        # @type VideoTemplate: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，当 RemoveAudio 为 0，该字段必填。
        # @type AudioTemplate: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfo`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.TEHDConfig`

        attr_accessor :Container, :SubAppId, :Name, :Comment, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig
        
        def initialize(container=nil, subappid=nil, name=nil, comment=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil)
          @Container = container
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
        end

        def deserialize(params)
          @Container = params['Container']
          @SubAppId = params['SubAppId']
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

      # CreateVodDomain请求参数结构体
      class CreateVodDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要接入点播的加速域名。注意：不支持填写泛域名。
        # @type Domain: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param AccelerateArea: 需要开启 CDN 加速的区域：
        # <li>Chinese Mainland：中国境内（不包含港澳台）。</li>
        # <li>Outside Chinese Mainland: 中国境外。</li>
        # <li>Global: 全球范围。</li>
        # 如果没有设置 AccelerateArea， 点播会根据用户在腾讯云设置的地域信息自动开通中国境内或者中国境外的 CDN 加速。开启中国境内加速的域名，需要先[备案域名](/document/product/243/18905)。
        # @type AccelerateArea: String

        attr_accessor :Domain, :SubAppId, :AccelerateArea
        
        def initialize(domain=nil, subappid=nil, acceleratearea=nil)
          @Domain = domain
          @SubAppId = subappid
          @AccelerateArea = acceleratearea
        end

        def deserialize(params)
          @Domain = params['Domain']
          @SubAppId = params['SubAppId']
          @AccelerateArea = params['AccelerateArea']
        end
      end

      # CreateVodDomain返回参数结构体
      class CreateVodDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreateWatermarkTemplate请求参数结构体
      class CreateWatermarkTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Type: 水印类型，可选值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印；</li>
        # <li>svg：SVG 水印。</li>
        # @type Type: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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
        # @param ImageTemplate: 图片水印模板，当 Type 为 image，该字段必填。当 Type 为 text，该字段无效。
        # @type ImageTemplate: :class:`Tencentcloud::Vod.v20180717.models.ImageWatermarkInput`
        # @param TextTemplate: 文字水印模板，当 Type 为 text，该字段必填。当 Type 为 image，该字段无效。
        # @type TextTemplate: :class:`Tencentcloud::Vod.v20180717.models.TextWatermarkTemplateInput`
        # @param SvgTemplate: SVG水印模板，当 Type 为 svg，该字段必填。当 Type 为 image 或 text，该字段无效。
        # @type SvgTemplate: :class:`Tencentcloud::Vod.v20180717.models.SvgWatermarkInput`

        attr_accessor :Type, :SubAppId, :Name, :Comment, :CoordinateOrigin, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate
        
        def initialize(type=nil, subappid=nil, name=nil, comment=nil, coordinateorigin=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil)
          @Type = type
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Usages, :Words, :SubAppId
        
        def initialize(usages=nil, words=nil, subappid=nil)
          @Usages = usages
          @Words = words
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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

      # 播放统计信息。
      class DailyPlayStatInfo < TencentCloud::Common::AbstractModel
        # @param Date: 播放媒体文件的日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type Date: String
        # @param FileId: 媒体文件ID。
        # @type FileId: String
        # @param PlayTimes: 播放次数。
        # @type PlayTimes: Integer
        # @param Traffic: 播放流量，单位：字节。
        # @type Traffic: Integer

        attr_accessor :Date, :FileId, :PlayTimes, :Traffic
        
        def initialize(date=nil, fileid=nil, playtimes=nil, traffic=nil)
          @Date = date
          @FileId = fileid
          @PlayTimes = playtimes
          @Traffic = traffic
        end

        def deserialize(params)
          @Date = params['Date']
          @FileId = params['FileId']
          @PlayTimes = params['PlayTimes']
          @Traffic = params['Traffic']
        end
      end

      # DeleteAIAnalysisTemplate请求参数结构体
      class DeleteAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 音视频内容分析模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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
        # @param Definition: 音视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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

      # DeleteClass请求参数结构体
      class DeleteClassRequest < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID
        # @type ClassId: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :ClassId, :SubAppId
        
        def initialize(classid=nil, subappid=nil)
          @ClassId = classid
          @SubAppId = subappid
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteClass返回参数结构体
      class DeleteClassResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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

      # DeleteHeadTailTemplate请求参数结构体
      class DeleteHeadTailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 片头片尾模板号。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteHeadTailTemplate返回参数结构体
      class DeleteHeadTailTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImageProcessingTemplate请求参数结构体
      class DeleteImageProcessingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 图片处理模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteImageProcessingTemplate返回参数结构体
      class DeleteImageProcessingTemplateResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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

      # DeleteMedia请求参数结构体
      class DeleteMediaRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件的唯一标识。
        # @type FileId: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param DeleteParts: 指定本次需要删除的部分。默认值为 "[]", 表示删除媒体及其对应的全部视频处理文件。
        # @type DeleteParts: Array

        attr_accessor :FileId, :SubAppId, :DeleteParts
        
        def initialize(fileid=nil, subappid=nil, deleteparts=nil)
          @FileId = fileid
          @SubAppId = subappid
          @DeleteParts = deleteparts
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SubAppId = params['SubAppId']
          unless params['DeleteParts'].nil?
            @DeleteParts = []
            params['DeleteParts'].each do |i|
              mediadeleteitem_tmp = MediaDeleteItem.new
              mediadeleteitem_tmp.deserialize(i)
              @DeleteParts << mediadeleteitem_tmp
            end
          end
        end
      end

      # DeleteMedia返回参数结构体
      class DeleteMediaResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :PersonId, :SubAppId
        
        def initialize(personid=nil, subappid=nil)
          @PersonId = personid
          @SubAppId = subappid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @SubAppId = params['SubAppId']
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

      # DeleteProcedureTemplate请求参数结构体
      class DeleteProcedureTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字。
        # @type Name: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Name, :SubAppId
        
        def initialize(name=nil, subappid=nil)
          @Name = name
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteProcedureTemplate返回参数结构体
      class DeleteProcedureTemplateResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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

      # DeleteSuperPlayerConfig请求参数结构体
      class DeleteSuperPlayerConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名称。
        # @type Name: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Name, :SubAppId
        
        def initialize(name=nil, subappid=nil)
          @Name = name
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteSuperPlayerConfig返回参数结构体
      class DeleteSuperPlayerConfigResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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

      # DeleteVodDomain请求参数结构体
      class DeleteVodDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 要删除的点播加速域名。
        # @type Domain: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Domain, :SubAppId
        
        def initialize(domain=nil, subappid=nil)
          @Domain = domain
          @SubAppId = subappid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteVodDomain返回参数结构体
      class DeleteVodDomainResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Keywords, :SubAppId
        
        def initialize(keywords=nil, subappid=nil)
          @Keywords = keywords
          @SubAppId = subappid
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @SubAppId = params['SubAppId']
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

      # DescribeAIAnalysisTemplates请求参数结构体
      class DescribeAIAnalysisTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Definitions: 音视频内容分析模板唯一标识过滤条件，数组长度最大值：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIAnalysisTemplates返回参数结构体
      class DescribeAIAnalysisTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AIAnalysisTemplateSet: 音视频内容分析模板详情列表。
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Definitions: 音视频内容识别模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIRecognitionTemplates返回参数结构体
      class DescribeAIRecognitionTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AIRecognitionTemplateSet: 音视频内容识别模板详情列表。
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit, :Type
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil, type=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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

      # DescribeAllClass请求参数结构体
      class DescribeAllClassRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeAllClass返回参数结构体
      class DescribeAllClassResponse < TencentCloud::Common::AbstractModel
        # @param ClassInfoSet: 分类信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClassInfoSet, :RequestId
        
        def initialize(classinfoset=nil, requestid=nil)
          @ClassInfoSet = classinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClassInfoSet'].nil?
            @ClassInfoSet = []
            params['ClassInfoSet'].each do |i|
              mediaclassinfo_tmp = MediaClassInfo.new
              mediaclassinfo_tmp.deserialize(i)
              @ClassInfoSet << mediaclassinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAnimatedGraphicsTemplates请求参数结构体
      class DescribeAnimatedGraphicsTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit, :Type
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil, type=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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

      # DescribeCDNStatDetails请求参数结构体
      class DescribeCDNStatDetailsRequest < TencentCloud::Common::AbstractModel
        # @param Metric: 查询指标，取值有：
        # <li>Traffic：流量，单位为 Byte。</li>
        # <li>Bandwidth：带宽，单位为 Bps。</li>
        # <li>Requests：请求数。</li>
        # @type Metric: String
        # @param StartTime: 起始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param DomainNames: 域名列表。一次最多查询20个域名的数据。默认返回所有域名叠加的用量数据。
        # @type DomainNames: Array
        # @param Area: 服务区域，取值有：
        # <li>Chinese Mainland：中国大陆。 </li>
        # <li>Asia Pacific Region 1：亚太一区，包括中国香港、中国澳门、新加坡、越南、泰国。 </li>
        # <li>Asia Pacific Region 2：亚太二区，包括中国台湾、日本、马来西亚、印度尼西亚、韩国。 </li>
        # <li>Asia Pacific Region 3：亚太三区，包括菲律宾、印度、澳大利亚和亚太其它国家和地区。 </li>
        # <li>Middle East：中东。 </li>
        # <li>Europe：欧洲。</li>
        # <li>North America：北美。</li>
        # <li>South America：南美。</li>
        # <li>Africa：非洲。</li>
        # 默认为中国大陆。
        # @type Area: String
        # @param Districts: 用户所在地区，Area 为 Chinese Mainland 时，取值为以下地区信息，当 Area 为其它值时， 忽略 Districts 参数。
        # <li>Beijing：北京。</li>
        # <li>Inner Mongolia：内蒙古。</li>
        # <li>Shanxi：山西。</li>
        # <li>Hebei：河北。</li>
        # <li>Tianjin：天津。</li>
        # <li>Ningxia：宁夏。</li>
        # <li>Shaanxi：陕西。</li>
        # <li>Gansu：甘肃。</li>
        # <li>Qinghai：青海。</li>
        # <li>Xinjiang：新疆。</li>
        # <li>Heilongjiang：黑龙江。</li>
        # <li>Jilin：吉林。</li>
        # <li>Liaoning：辽宁。</li>
        # <li>Fujian：福建。</li>
        # <li>Jiangsu：江苏。</li>
        # <li>Anhui：安徽。</li>
        # <li>Shandong：山东。</li>
        # <li>Shanghai：上海。</li>
        # <li>Zhejiang：浙江。</li>
        # <li>Henan：河南。</li>
        # <li>Hubei：湖北。</li>
        # <li>Jiangxi：江西。</li>
        # <li>Hunan：湖南。</li>
        # <li>Guizhou：贵州。</li>
        # <li>Yunnan：云南。</li>
        # <li>Chongqing：重庆。</li>
        # <li>Sichuan：四川。</li>
        # <li>Tibet：西藏。</li>
        # <li>Guangdong：广东。</li>
        # <li>Guangxi：广西。</li>
        # <li>Hainan：海南。</li>
        # <li>Hong Kong, Macao and Taiwan：港澳台。</li>
        # <li>Outside Chinese Mainland：海外。</li>
        # <li>Other：其他 。</li>
        # @type Districts: Array
        # @param Isps: 用户所属运营商信息，Area 为 Chinese Mainland 时，取值为以下运营商信息。当 Area 为其它值时忽略 Isps 参数。
        # <li>China Telecom：中国电信。 </li>
        # <li>China Unicom：中国联通。 </li>
        # <li>CERNET：教育网。</li>
        # <li>Great Wall Broadband Network：长城宽带。</li>
        # <li>China Mobile：中国移动。</li>
        # <li>China Mobile Tietong：中国铁通。</li>
        # <li>ISPs outside Chinese Mainland：海外运营商。</li>
        # <li>Other ISPs：其他运营商。</li>
        # @type Isps: Array
        # @param DataInterval: 每条数据的时间粒度，单位：分钟，取值有：
        # <li>5：5 分钟粒度，返回指定查询时间内5分钟粒度的明细数据。</li>
        # <li>1440：天粒度，返回指定查询时间内1天粒度的数据。起始时间和结束时间跨度大于24小时，只支持天粒度的数据。</li>
        # 当 StartTime 和 EndTime 时间跨度大于24小时时，DataInterval 默认为 1440。
        # @type DataInterval: Integer

        attr_accessor :Metric, :StartTime, :EndTime, :SubAppId, :DomainNames, :Area, :Districts, :Isps, :DataInterval
        
        def initialize(metric=nil, starttime=nil, endtime=nil, subappid=nil, domainnames=nil, area=nil, districts=nil, isps=nil, datainterval=nil)
          @Metric = metric
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
          @DomainNames = domainnames
          @Area = area
          @Districts = districts
          @Isps = isps
          @DataInterval = datainterval
        end

        def deserialize(params)
          @Metric = params['Metric']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
          @DomainNames = params['DomainNames']
          @Area = params['Area']
          @Districts = params['Districts']
          @Isps = params['Isps']
          @DataInterval = params['DataInterval']
        end
      end

      # DescribeCDNStatDetails返回参数结构体
      class DescribeCDNStatDetailsResponse < TencentCloud::Common::AbstractModel
        # @param DataInterval: 每条数据的时间粒度，单位：分钟。
        # @type DataInterval: Integer
        # @param Data: CDN 用量数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInterval, :Data, :RequestId
        
        def initialize(datainterval=nil, data=nil, requestid=nil)
          @DataInterval = datainterval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @DataInterval = params['DataInterval']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              statdataitem_tmp = StatDataItem.new
              statdataitem_tmp.deserialize(i)
              @Data << statdataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCDNUsageData请求参数结构体
      class DescribeCDNUsageDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于开始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param DataType: CDN 统计数据类型，有效值：
        # <li>Flux：流量，单位为 byte。</li>
        # <li>Bandwidth：带宽，单位为 bps。</li>
        # @type DataType: String
        # @param SubAppId: <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # 当该字段为1时，表示以管理员身份查询所有子应用（含主应用）的用量合计，此时时间粒度只支持天粒度。</b>
        # @type SubAppId: Integer
        # @param DataInterval: 用量数据的时间粒度，单位：分钟，取值有：
        # <li>5：5 分钟粒度，返回指定查询时间内5分钟粒度的明细数据。</li>
        # <li>60：小时粒度，返回指定查询时间内1小时粒度的数据。</li>
        # <li>1440：天粒度，返回指定查询时间内1天粒度的数据。</li>
        # 默认值为1440，返回天粒度的数据。
        # @type DataInterval: Integer
        # @param DomainNames: 域名列表。一次最多查询20个域名的用量数据。可以指定多个域名，查询这些域名叠加的用量数据。默认返回所有域名叠加的用量数据。
        # @type DomainNames: Array

        attr_accessor :StartTime, :EndTime, :DataType, :SubAppId, :DataInterval, :DomainNames
        
        def initialize(starttime=nil, endtime=nil, datatype=nil, subappid=nil, datainterval=nil, domainnames=nil)
          @StartTime = starttime
          @EndTime = endtime
          @DataType = datatype
          @SubAppId = subappid
          @DataInterval = datainterval
          @DomainNames = domainnames
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DataType = params['DataType']
          @SubAppId = params['SubAppId']
          @DataInterval = params['DataInterval']
          @DomainNames = params['DomainNames']
        end
      end

      # DescribeCDNUsageData返回参数结构体
      class DescribeCDNUsageDataResponse < TencentCloud::Common::AbstractModel
        # @param DataInterval: 时间粒度，单位：分钟。
        # @type DataInterval: Integer
        # @param Data: CDN 统计数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInterval, :Data, :RequestId
        
        def initialize(datainterval=nil, data=nil, requestid=nil)
          @DataInterval = datainterval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @DataInterval = params['DataInterval']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              statdataitem_tmp = StatDataItem.new
              statdataitem_tmp.deserialize(i)
              @Data << statdataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCdnLogs请求参数结构体
      class DescribeCdnLogsRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param StartTime: 获取日志起始时间点，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type StartTime: String
        # @param EndTime: 结束时间需大于起始时间；使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type EndTime: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Limit: 分页拉取的最大返回结果数。默认值：100；最大值：1000。
        # @type Limit: Integer
        # @param Offset: 分页拉取的起始偏移量。默认值：0。
        # @type Offset: Integer

        attr_accessor :DomainName, :StartTime, :EndTime, :SubAppId, :Limit, :Offset
        
        def initialize(domainname=nil, starttime=nil, endtime=nil, subappid=nil, limit=nil, offset=nil)
          @DomainName = domainname
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCdnLogs返回参数结构体
      class DescribeCdnLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 日志下载链接总数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param OverseaCdnLogs: 海外CDN节点的日志下载列表。如果域名没有开启海外加速，忽略该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OverseaCdnLogs: Array
        # @param DomesticCdnLogs: 国内CDN节点的日志下载列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomesticCdnLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OverseaCdnLogs, :DomesticCdnLogs, :RequestId
        
        def initialize(totalcount=nil, overseacdnlogs=nil, domesticcdnlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @OverseaCdnLogs = overseacdnlogs
          @DomesticCdnLogs = domesticcdnlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OverseaCdnLogs'].nil?
            @OverseaCdnLogs = []
            params['OverseaCdnLogs'].each do |i|
              cdnloginfo_tmp = CdnLogInfo.new
              cdnloginfo_tmp.deserialize(i)
              @OverseaCdnLogs << cdnloginfo_tmp
            end
          end
          unless params['DomesticCdnLogs'].nil?
            @DomesticCdnLogs = []
            params['DomesticCdnLogs'].each do |i|
              cdnloginfo_tmp = CdnLogInfo.new
              cdnloginfo_tmp.deserialize(i)
              @DomesticCdnLogs << cdnloginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientUploadAccelerationUsageData请求参数结构体
      class DescribeClientUploadAccelerationUsageDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type EndTime: String
        # @param SubAppId: <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Type: 客户端上传加速类型，取值有：
        # <li> AccelerationWithHTTP：HTTP 传输方式的上传加速。</li>
        # <li> AccelerationWithQUIC：QUIC 传输方式的上传加速。</li>
        # 默认查询所有加速类型的用量 。
        # @type Type: String

        attr_accessor :StartTime, :EndTime, :SubAppId, :Type
        
        def initialize(starttime=nil, endtime=nil, subappid=nil, type=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
          @Type = type
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
          @Type = params['Type']
        end
      end

      # DescribeClientUploadAccelerationUsageData返回参数结构体
      class DescribeClientUploadAccelerationUsageDataResponse < TencentCloud::Common::AbstractModel
        # @param ClientUploadAccelerationUsageDataSet: 客户端上传加速统计数据。
        # @type ClientUploadAccelerationUsageDataSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientUploadAccelerationUsageDataSet, :RequestId
        
        def initialize(clientuploadaccelerationusagedataset=nil, requestid=nil)
          @ClientUploadAccelerationUsageDataSet = clientuploadaccelerationusagedataset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClientUploadAccelerationUsageDataSet'].nil?
            @ClientUploadAccelerationUsageDataSet = []
            params['ClientUploadAccelerationUsageDataSet'].each do |i|
              statdataitem_tmp = StatDataItem.new
              statdataitem_tmp.deserialize(i)
              @ClientUploadAccelerationUsageDataSet << statdataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContentReviewTemplates请求参数结构体
      class DescribeContentReviewTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Definitions: 内容审核模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeDailyMediaPlayStat请求参数结构体
      class DescribeDailyMediaPlayStatRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID 。
        # @type FileId: String
        # @param StartDate: 起始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。该参数仅日期部分有效。
        # @type StartDate: String
        # @param EndDate: 结束日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。该参数仅日期部分有效。
        # @type EndDate: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :FileId, :StartDate, :EndDate, :SubAppId
        
        def initialize(fileid=nil, startdate=nil, enddate=nil, subappid=nil)
          @FileId = fileid
          @StartDate = startdate
          @EndDate = enddate
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeDailyMediaPlayStat返回参数结构体
      class DescribeDailyMediaPlayStatResponse < TencentCloud::Common::AbstractModel
        # @param DailyPlayStatInfoSet: 播放统计数据。
        # @type DailyPlayStatInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DailyPlayStatInfoSet, :RequestId
        
        def initialize(dailyplaystatinfoset=nil, requestid=nil)
          @DailyPlayStatInfoSet = dailyplaystatinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DailyPlayStatInfoSet'].nil?
            @DailyPlayStatInfoSet = []
            params['DailyPlayStatInfoSet'].each do |i|
              dailyplaystatinfo_tmp = DailyPlayStatInfo.new
              dailyplaystatinfo_tmp.deserialize(i)
              @DailyPlayStatInfoSet << dailyplaystatinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDailyMostPlayedStat请求参数结构体
      class DescribeDailyMostPlayedStatRequest < TencentCloud::Common::AbstractModel
        # @param Date: 查询日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。该参数仅日期部分有效。
        # @type Date: String
        # @param DomainName: 域名。查询该域名播放 Top100 的媒体文件的统计数据。默认查询所有域名的播放统计数据。
        # @type DomainName: String
        # @param Metric: Top 数据的统计指标，取值有：
        # <li>Traffic：播放流量，按播放流量统计 Top100 的数据。</li>
        # <li>PlayTimes：播放次数，按播放次数统计播放 Top100 的数据。</li>
        # @type Metric: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Date, :DomainName, :Metric, :SubAppId
        
        def initialize(date=nil, domainname=nil, metric=nil, subappid=nil)
          @Date = date
          @DomainName = domainname
          @Metric = metric
          @SubAppId = subappid
        end

        def deserialize(params)
          @Date = params['Date']
          @DomainName = params['DomainName']
          @Metric = params['Metric']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeDailyMostPlayedStat返回参数结构体
      class DescribeDailyMostPlayedStatResponse < TencentCloud::Common::AbstractModel
        # @param DailyPlayStatInfoSet: 媒体文件播放统计信息。
        # @type DailyPlayStatInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DailyPlayStatInfoSet, :RequestId
        
        def initialize(dailyplaystatinfoset=nil, requestid=nil)
          @DailyPlayStatInfoSet = dailyplaystatinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DailyPlayStatInfoSet'].nil?
            @DailyPlayStatInfoSet = []
            params['DailyPlayStatInfoSet'].each do |i|
              dailyplaystatinfo_tmp = DailyPlayStatInfo.new
              dailyplaystatinfo_tmp.deserialize(i)
              @DailyPlayStatInfoSet << dailyplaystatinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDailyPlayStatFileList请求参数结构体
      class DescribeDailyPlayStatFileListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeDailyPlayStatFileList返回参数结构体
      class DescribeDailyPlayStatFileListResponse < TencentCloud::Common::AbstractModel
        # @param PlayStatFileSet: 播放统计文件列表。
        # @type PlayStatFileSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayStatFileSet, :RequestId
        
        def initialize(playstatfileset=nil, requestid=nil)
          @PlayStatFileSet = playstatfileset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlayStatFileSet'].nil?
            @PlayStatFileSet = []
            params['PlayStatFileSet'].each do |i|
              playstatfileinfo_tmp = PlayStatFileInfo.new
              playstatfileinfo_tmp.deserialize(i)
              @PlayStatFileSet << playstatfileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDrmDataKey请求参数结构体
      class DescribeDrmDataKeyRequest < TencentCloud::Common::AbstractModel
        # @param EdkList: 加密后的数据密钥列表，最大支持10个。
        # @type EdkList: Array

        attr_accessor :EdkList
        
        def initialize(edklist=nil)
          @EdkList = edklist
        end

        def deserialize(params)
          @EdkList = params['EdkList']
        end
      end

      # DescribeDrmDataKey返回参数结构体
      class DescribeDrmDataKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyList: 密钥列表，包含加密的数据密钥。
        # @type KeyList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyList, :RequestId
        
        def initialize(keylist=nil, requestid=nil)
          @KeyList = keylist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyList'].nil?
            @KeyList = []
            params['KeyList'].each do |i|
              simpleaesedkpair_tmp = SimpleAesEdkPair.new
              simpleaesedkpair_tmp.deserialize(i)
              @KeyList << simpleaesedkpair_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDrmKeyProviderInfo请求参数结构体
      class DescribeDrmKeyProviderInfoRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeDrmKeyProviderInfo返回参数结构体
      class DescribeDrmKeyProviderInfoResponse < TencentCloud::Common::AbstractModel
        # @param SDMCInfo: 华曦达（SDMC）相关的 DRM 密钥提供商信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SDMCInfo: :class:`Tencentcloud::Vod.v20180717.models.SDMCDrmKeyProviderInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SDMCInfo, :RequestId
        
        def initialize(sdmcinfo=nil, requestid=nil)
          @SDMCInfo = sdmcinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SDMCInfo'].nil?
            @SDMCInfo = SDMCDrmKeyProviderInfo.new
            @SDMCInfo.deserialize(params['SDMCInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEventConfig请求参数结构体
      class DescribeEventConfigRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeEventConfig返回参数结构体
      class DescribeEventConfigResponse < TencentCloud::Common::AbstractModel
        # @param Mode: 接收事件通知的方式。"PUSH" 为 [HTTP 回调通知](https://cloud.tencent.com/document/product/266/7829#http.E5.9B.9E.E8.B0.83)，"PULL" 为 [基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/7829#.E5.9F.BA.E4.BA.8E.E6.B6.88.E6.81.AF.E9.98.9F.E5.88.97.E7.9A.84.E5.8F.AF.E9.9D.A0.E9.80.9A.E7.9F.A5)。
        # @type Mode: String
        # @param NotificationUrl: 采用 [HTTP 回调通知](https://cloud.tencent.com/document/product/266/7829#http.E5.9B.9E.E8.B0.83) 接收方式时，用于接收 V3 版本事件通知的地址。
        # @type NotificationUrl: String
        # @param UploadMediaCompleteEventSwitch: 是否接收 [视频上传完成](https://cloud.tencent.com/document/product/266/7830) 事件通知，"OFF" 为忽略该事件通知，"ON" 为接收事件通知。
        # @type UploadMediaCompleteEventSwitch: String
        # @param DeleteMediaCompleteEventSwitch: 是否接收 [视频删除完成](https://cloud.tencent.com/document/product/266/13434) 事件通知，"OFF" 为忽略该事件通知，"ON" 为接收事件通知。
        # @type DeleteMediaCompleteEventSwitch: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Mode, :NotificationUrl, :UploadMediaCompleteEventSwitch, :DeleteMediaCompleteEventSwitch, :RequestId
        
        def initialize(mode=nil, notificationurl=nil, uploadmediacompleteeventswitch=nil, deletemediacompleteeventswitch=nil, requestid=nil)
          @Mode = mode
          @NotificationUrl = notificationurl
          @UploadMediaCompleteEventSwitch = uploadmediacompleteeventswitch
          @DeleteMediaCompleteEventSwitch = deletemediacompleteeventswitch
          @RequestId = requestid
        end

        def deserialize(params)
          @Mode = params['Mode']
          @NotificationUrl = params['NotificationUrl']
          @UploadMediaCompleteEventSwitch = params['UploadMediaCompleteEventSwitch']
          @DeleteMediaCompleteEventSwitch = params['DeleteMediaCompleteEventSwitch']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEventsState请求参数结构体
      class DescribeEventsStateRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeEventsState返回参数结构体
      class DescribeEventsStateResponse < TencentCloud::Common::AbstractModel
        # @param CountOfEventsToPull: 待进行拉取的事件通知数，为近似值，约5秒延迟。
        # @type CountOfEventsToPull: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CountOfEventsToPull, :RequestId
        
        def initialize(countofeventstopull=nil, requestid=nil)
          @CountOfEventsToPull = countofeventstopull
          @RequestId = requestid
        end

        def deserialize(params)
          @CountOfEventsToPull = params['CountOfEventsToPull']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHeadTailTemplates请求参数结构体
      class DescribeHeadTailTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Definitions: 片头片尾模板号，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeHeadTailTemplates返回参数结构体
      class DescribeHeadTailTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param HeadTailTemplateSet: 片头片尾模板详情列表。
        # @type HeadTailTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HeadTailTemplateSet, :RequestId
        
        def initialize(totalcount=nil, headtailtemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @HeadTailTemplateSet = headtailtemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HeadTailTemplateSet'].nil?
            @HeadTailTemplateSet = []
            params['HeadTailTemplateSet'].each do |i|
              headtailtemplate_tmp = HeadTailTemplate.new
              headtailtemplate_tmp.deserialize(i)
              @HeadTailTemplateSet << headtailtemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageProcessingTemplates请求参数结构体
      class DescribeImageProcessingTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Definitions: 图片处理模板标识列表。长度限制：100。
        # @type Definitions: Array
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Definitions, :Type, :Offset, :Limit
        
        def initialize(subappid=nil, definitions=nil, type=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Type = type
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Definitions = params['Definitions']
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeImageProcessingTemplates返回参数结构体
      class DescribeImageProcessingTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param ImageProcessingTemplateSet: 图片处理模板详情列表。
        # @type ImageProcessingTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageProcessingTemplateSet, :RequestId
        
        def initialize(totalcount=nil, imageprocessingtemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageProcessingTemplateSet = imageprocessingtemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ImageProcessingTemplateSet'].nil?
            @ImageProcessingTemplateSet = []
            params['ImageProcessingTemplateSet'].each do |i|
              imageprocessingtemplate_tmp = ImageProcessingTemplate.new
              imageprocessingtemplate_tmp.deserialize(i)
              @ImageProcessingTemplateSet << imageprocessingtemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageReviewUsageData请求参数结构体
      class DescribeImageReviewUsageDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type EndTime: String
        # @param SubAppId: <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeImageReviewUsageData返回参数结构体
      class DescribeImageReviewUsageDataResponse < TencentCloud::Common::AbstractModel
        # @param ImageReviewUsageDataSet: 图片审核次数统计数据，展示查询时间范围内的图片审核次数的概览数据。
        # @type ImageReviewUsageDataSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageReviewUsageDataSet, :RequestId
        
        def initialize(imagereviewusagedataset=nil, requestid=nil)
          @ImageReviewUsageDataSet = imagereviewusagedataset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageReviewUsageDataSet'].nil?
            @ImageReviewUsageDataSet = []
            params['ImageReviewUsageDataSet'].each do |i|
              imagereviewusagedataitem_tmp = ImageReviewUsageDataItem.new
              imagereviewusagedataitem_tmp.deserialize(i)
              @ImageReviewUsageDataSet << imagereviewusagedataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageSpriteTemplates请求参数结构体
      class DescribeImageSpriteTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit, :Type
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil, type=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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

      # DescribeLicenseUsageData请求参数结构体
      class DescribeLicenseUsageDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type EndTime: String
        # @param LicenseType: License 类型，默认为 DRM 。目前支持的 License 类型包括：
        # <li> DRM: DRM 加密播放 License</li>
        # @type LicenseType: String
        # @param SubAppId: 点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :LicenseType, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, licensetype=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @LicenseType = licensetype
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @LicenseType = params['LicenseType']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeLicenseUsageData返回参数结构体
      class DescribeLicenseUsageDataResponse < TencentCloud::Common::AbstractModel
        # @param LicenseUsageDataSet: License 查询次数统计数据，展示所查询 License 次数的明细数据。
        # @type LicenseUsageDataSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LicenseUsageDataSet, :RequestId
        
        def initialize(licenseusagedataset=nil, requestid=nil)
          @LicenseUsageDataSet = licenseusagedataset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LicenseUsageDataSet'].nil?
            @LicenseUsageDataSet = []
            params['LicenseUsageDataSet'].each do |i|
              licenseusagedataitem_tmp = LicenseUsageDataItem.new
              licenseusagedataitem_tmp.deserialize(i)
              @LicenseUsageDataSet << licenseusagedataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaInfos请求参数结构体
      class DescribeMediaInfosRequest < TencentCloud::Common::AbstractModel
        # @param FileIds: 媒体文件 ID 列表，N 从 0 开始取值，最大 19。
        # @type FileIds: Array
        # @param Filters: 指定所有媒体文件需要返回的信息，可同时指定多个信息，N 从 0 开始递增。如果未填写该字段，默认返回所有信息。选项有：
        # <li>basicInfo（视频基础信息）。</li>
        # <li>metaData（视频元信息）。</li>
        # <li>transcodeInfo（视频转码结果信息）。</li>
        # <li>animatedGraphicsInfo（视频转动图结果信息）。</li>
        # <li>imageSpriteInfo（视频雪碧图信息）。</li>
        # <li>snapshotByTimeOffsetInfo（视频指定时间点截图信息）。</li>
        # <li>sampleSnapshotInfo（采样截图信息）。</li>
        # <li>keyFrameDescInfo（打点信息）。</li>
        # <li>adaptiveDynamicStreamingInfo（转自适应码流信息）。</li>
        # <li>miniProgramReviewInfo（小程序审核信息）。</li>
        # @type Filters: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileIds, :Filters, :SubAppId
        
        def initialize(fileids=nil, filters=nil, subappid=nil)
          @FileIds = fileids
          @Filters = filters
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @Filters = params['Filters']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeMediaInfos返回参数结构体
      class DescribeMediaInfosResponse < TencentCloud::Common::AbstractModel
        # @param MediaInfoSet: 媒体文件信息列表。
        # @type MediaInfoSet: Array
        # @param NotExistFileIdSet: 不存在的文件 ID 列表。
        # @type NotExistFileIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaInfoSet, :NotExistFileIdSet, :RequestId
        
        def initialize(mediainfoset=nil, notexistfileidset=nil, requestid=nil)
          @MediaInfoSet = mediainfoset
          @NotExistFileIdSet = notexistfileidset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MediaInfoSet'].nil?
            @MediaInfoSet = []
            params['MediaInfoSet'].each do |i|
              mediainfo_tmp = MediaInfo.new
              mediainfo_tmp.deserialize(i)
              @MediaInfoSet << mediainfo_tmp
            end
          end
          @NotExistFileIdSet = params['NotExistFileIdSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaPlayStatDetails请求参数结构体
      class DescribeMediaPlayStatDetailsRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param StartTime: 起始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Interval: 统计时间粒度，有效值：
        # <li>Hour：以小时为粒度。</li>
        # <li>Day：以天为粒度。</li>
        # 默认按时间跨度决定，小于1天以小时为粒度，大于等于1天则以天为粒度。
        # @type Interval: String

        attr_accessor :FileId, :StartTime, :EndTime, :SubAppId, :Interval
        
        def initialize(fileid=nil, starttime=nil, endtime=nil, subappid=nil, interval=nil)
          @FileId = fileid
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
          @Interval = interval
        end

        def deserialize(params)
          @FileId = params['FileId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
          @Interval = params['Interval']
        end
      end

      # DescribeMediaPlayStatDetails返回参数结构体
      class DescribeMediaPlayStatDetailsResponse < TencentCloud::Common::AbstractModel
        # @param PlayStatInfoSet: 播放统计数据。
        # @type PlayStatInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlayStatInfoSet, :RequestId
        
        def initialize(playstatinfoset=nil, requestid=nil)
          @PlayStatInfoSet = playstatinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlayStatInfoSet'].nil?
            @PlayStatInfoSet = []
            params['PlayStatInfoSet'].each do |i|
              playstatinfo_tmp = PlayStatInfo.new
              playstatinfo_tmp.deserialize(i)
              @PlayStatInfoSet << playstatinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaProcessUsageData请求参数结构体
      class DescribeMediaProcessUsageDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type EndTime: String
        # @param SubAppId: <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Type: 查询视频处理任务类型，目前支持的任务类型包括：
        # <li> Transcoding: 普通转码</li>
        # <li> Transcoding-TESHD: 极速高清转码</li>
        # <li> Editing: 视频编辑</li>
        # <li> Editing-TESHD: 极速高清视频编辑</li>
        # <li> AdaptiveBitrateStreaming: 自适应码流</li>
        # <li> ContentAudit: 内容审核</li>
        # <li> ContentRecognition: 内容识别</li>
        # <li> RemoveWatermark: 去除水印</li>
        # <li> ExtractTraceWatermark: 提取水印</li>
        # <li>Transcode: 转码，包含普通转码、极速高清和视频编辑（不推荐使用）</li>
        # @type Type: String

        attr_accessor :StartTime, :EndTime, :SubAppId, :Type
        
        def initialize(starttime=nil, endtime=nil, subappid=nil, type=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
          @Type = type
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
          @Type = params['Type']
        end
      end

      # DescribeMediaProcessUsageData返回参数结构体
      class DescribeMediaProcessUsageDataResponse < TencentCloud::Common::AbstractModel
        # @param MediaProcessDataSet: 视频处理统计数据概览，展示所查询任务的概览以及详细数据。
        # @type MediaProcessDataSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaProcessDataSet, :RequestId
        
        def initialize(mediaprocessdataset=nil, requestid=nil)
          @MediaProcessDataSet = mediaprocessdataset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MediaProcessDataSet'].nil?
            @MediaProcessDataSet = []
            params['MediaProcessDataSet'].each do |i|
              taskstatdata_tmp = TaskStatData.new
              taskstatdata_tmp.deserialize(i)
              @MediaProcessDataSet << taskstatdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonSamples请求参数结构体
      class DescribePersonSamplesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Type: 拉取的素材类型，可选值：
        # <li>UserDefine：用户自定义素材库；</li>
        # <li>Default：系统默认素材库。</li>

        # 默认值：UserDefine，拉取用户自定义素材库素材。
        # 说明：如果是拉取系统默认素材库，只能使用素材名字或者素材 ID + 素材名字的方式进行拉取，且五官图片只返回一张。
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

        attr_accessor :SubAppId, :Type, :PersonIds, :Names, :Tags, :Offset, :Limit
        
        def initialize(subappid=nil, type=nil, personids=nil, names=nil, tags=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Type = type
          @PersonIds = personids
          @Names = names
          @Tags = tags
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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
        # @param PersonSet: 人物信息。
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

      # DescribePrepaidProducts请求参数结构体
      class DescribePrepaidProductsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePrepaidProducts返回参数结构体
      class DescribePrepaidProductsResponse < TencentCloud::Common::AbstractModel
        # @param ProductInstanceSet: 购买的预付费商品实例列表。
        # @type ProductInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductInstanceSet, :RequestId
        
        def initialize(productinstanceset=nil, requestid=nil)
          @ProductInstanceSet = productinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProductInstanceSet'].nil?
            @ProductInstanceSet = []
            params['ProductInstanceSet'].each do |i|
              productinstance_tmp = ProductInstance.new
              productinstance_tmp.deserialize(i)
              @ProductInstanceSet << productinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProcedureTemplates请求参数结构体
      class DescribeProcedureTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Names: 任务流模板名字过滤条件，数组长度限制：100。
        # @type Names: Array
        # @param Type: 任务流模板类型过滤条件，可选值：
        # <li>Preset：系统预置任务流模板；</li>
        # <li>Custom：用户自定义任务流模板。</li>
        # @type Type: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Names, :Type, :Offset, :Limit, :SubAppId
        
        def initialize(names=nil, type=nil, offset=nil, limit=nil, subappid=nil)
          @Names = names
          @Type = type
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Names = params['Names']
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeProcedureTemplates返回参数结构体
      class DescribeProcedureTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param ProcedureTemplateSet: 任务流模板详情列表。
        # @type ProcedureTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProcedureTemplateSet, :RequestId
        
        def initialize(totalcount=nil, proceduretemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ProcedureTemplateSet = proceduretemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProcedureTemplateSet'].nil?
            @ProcedureTemplateSet = []
            params['ProcedureTemplateSet'].each do |i|
              proceduretemplate_tmp = ProcedureTemplate.new
              proceduretemplate_tmp.deserialize(i)
              @ProcedureTemplateSet << proceduretemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReviewDetails请求参数结构体
      class DescribeReviewDetailsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeReviewDetails返回参数结构体
      class DescribeReviewDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 发起内容智能识别次数。
        # @type TotalCount: Integer
        # @param TotalDuration: 内容智能识别总时长。
        # @type TotalDuration: Integer
        # @param Data: 内容智能识别时长统计数据，每天一个数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TotalDuration, :Data, :RequestId
        
        def initialize(totalcount=nil, totalduration=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @TotalDuration = totalduration
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalDuration = params['TotalDuration']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              statdataitem_tmp = StatDataItem.new
              statdataitem_tmp.deserialize(i)
              @Data << statdataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleSnapshotTemplates请求参数结构体
      class DescribeSampleSnapshotTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit, :Type
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil, type=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SubAppId, :Definitions, :Offset, :Limit, :Type
        
        def initialize(subappid=nil, definitions=nil, offset=nil, limit=nil, type=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
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

      # DescribeStorageData请求参数结构体
      class DescribeStorageDataRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeStorageData返回参数结构体
      class DescribeStorageDataResponse < TencentCloud::Common::AbstractModel
        # @param MediaCount: 当前媒体总量。
        # @type MediaCount: Integer
        # @param TotalStorage: 当前总存储量，单位是字节。
        # @type TotalStorage: Integer
        # @param StandardStorage: 当前标准存储量，单位是字节。
        # @type StandardStorage: Integer
        # @param InfrequentStorage: 当前低频存储量，单位是字节。
        # @type InfrequentStorage: Integer
        # @param ArchiveStorage: 当前归档存储量，单位是字节。
        # @type ArchiveStorage: Integer
        # @param DeepArchiveStorage: 当前深度归档存储量，单位是字节。
        # @type DeepArchiveStorage: Integer
        # @param StorageStat: 各计费区域的存储用量。
        # @type StorageStat: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaCount, :TotalStorage, :StandardStorage, :InfrequentStorage, :ArchiveStorage, :DeepArchiveStorage, :StorageStat, :RequestId
        
        def initialize(mediacount=nil, totalstorage=nil, standardstorage=nil, infrequentstorage=nil, archivestorage=nil, deeparchivestorage=nil, storagestat=nil, requestid=nil)
          @MediaCount = mediacount
          @TotalStorage = totalstorage
          @StandardStorage = standardstorage
          @InfrequentStorage = infrequentstorage
          @ArchiveStorage = archivestorage
          @DeepArchiveStorage = deeparchivestorage
          @StorageStat = storagestat
          @RequestId = requestid
        end

        def deserialize(params)
          @MediaCount = params['MediaCount']
          @TotalStorage = params['TotalStorage']
          @StandardStorage = params['StandardStorage']
          @InfrequentStorage = params['InfrequentStorage']
          @ArchiveStorage = params['ArchiveStorage']
          @DeepArchiveStorage = params['DeepArchiveStorage']
          unless params['StorageStat'].nil?
            @StorageStat = []
            params['StorageStat'].each do |i|
              storagestatdata_tmp = StorageStatData.new
              storagestatdata_tmp.deserialize(i)
              @StorageStat << storagestatdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStorageDetails请求参数结构体
      class DescribeStorageDetailsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type StartTime: String
        # @param EndTime: 结束时间，需大于开始日期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type EndTime: String
        # @param SubAppId: <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # 当该字段为1时，表示以管理员身份查询所有子应用（含主应用）的用量合计。</b>
        # @type SubAppId: Integer
        # @param Interval: 统计时间粒度，有效值：
        # <li>Minute：以5分钟为粒度。</li>
        # <li>Day：以天为粒度。</li>
        # 默认按时间跨度决定，小于等于1天以5分钟为粒度，大于1天则以天为粒度。
        # @type Interval: String
        # @param StorageType: 查询的存储类型，有效值：
        # <li>TotalStorage：存储总量，标准、低频、归档和深度归档存储量之和，不含提前删除量。</li>
        # <li>StandardStorage：标准存储。</li>
        # <li>InfrequentStorage：低频存储。</li>
        # <li>ArchiveStorage：归档存储。</li>
        # <li>DeepArchiveStorage：深度归档存储。</li>
        # <li>DeletedInfrequentStorage：低频存储提前删除量。</li>
        # <li>DeletedArchiveStorage：归档提前删除量。</li>
        # <li>DeletedDeepArchiveStorage：深度归档提前删除量。
        # <li>ArchiveStandardRetrieval：归档标准取回量。</li>
        # <li>ArchiveExpeditedRetrieval：归档快速取回量。</li>
        # <li>ArchiveBulkRetrieval：归档批量取回量。</li>
        # <li>DeepArchiveStandardRetrieval：深度归档标准取回量。</li>
        # <li>DeepArchiveBulkRetrieval：深度归档批量取回量。</li>
        # 默认值为 TotalStorage。
        # @type StorageType: String
        # @param Area: 查询的存储区域，有效值：
        # <li>Chinese Mainland：中国境内（不包含港澳台）。</li>
        # <li>Outside Chinese Mainland：中国境外。</li>
        # 默认值为 Chinese Mainland。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :SubAppId, :Interval, :StorageType, :Area
        
        def initialize(starttime=nil, endtime=nil, subappid=nil, interval=nil, storagetype=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
          @Interval = interval
          @StorageType = storagetype
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
          @Interval = params['Interval']
          @StorageType = params['StorageType']
          @Area = params['Area']
        end
      end

      # DescribeStorageDetails返回参数结构体
      class DescribeStorageDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 存储统计数据，每5分钟或每天一条数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              statdataitem_tmp = StatDataItem.new
              statdataitem_tmp.deserialize(i)
              @Data << statdataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStorageRegions请求参数结构体
      class DescribeStorageRegionsRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeStorageRegions返回参数结构体
      class DescribeStorageRegionsResponse < TencentCloud::Common::AbstractModel
        # @param StorageRegionInfos: 存储地域信息列表。
        # @type StorageRegionInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StorageRegionInfos, :RequestId
        
        def initialize(storageregioninfos=nil, requestid=nil)
          @StorageRegionInfos = storageregioninfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StorageRegionInfos'].nil?
            @StorageRegionInfos = []
            params['StorageRegionInfos'].each do |i|
              storageregioninfo_tmp = StorageRegionInfo.new
              storageregioninfo_tmp.deserialize(i)
              @StorageRegionInfos << storageregioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubAppIds请求参数结构体
      class DescribeSubAppIdsRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子应用名称。
        # @type Name: String
        # @param Tags: 标签信息，查询指定标签的子应用列表。
        # @type Tags: Array
        # @param Offset: 分页拉取的起始偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页拉取的最大返回结果数。默认值：200；最大值：200。
        # @type Limit: Integer

        attr_accessor :Name, :Tags, :Offset, :Limit
        
        def initialize(name=nil, tags=nil, offset=nil, limit=nil)
          @Name = name
          @Tags = tags
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              resourcetag_tmp = ResourceTag.new
              resourcetag_tmp.deserialize(i)
              @Tags << resourcetag_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSubAppIds返回参数结构体
      class DescribeSubAppIdsResponse < TencentCloud::Common::AbstractModel
        # @param SubAppIdInfoSet: 子应用信息集合。
        # @type SubAppIdInfoSet: Array
        # @param TotalCount: 子应用总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAppIdInfoSet, :TotalCount, :RequestId
        
        def initialize(subappidinfoset=nil, totalcount=nil, requestid=nil)
          @SubAppIdInfoSet = subappidinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SubAppIdInfoSet'].nil?
            @SubAppIdInfoSet = []
            params['SubAppIdInfoSet'].each do |i|
              subappidinfo_tmp = SubAppIdInfo.new
              subappidinfo_tmp.deserialize(i)
              @SubAppIdInfoSet << subappidinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSuperPlayerConfigs请求参数结构体
      class DescribeSuperPlayerConfigsRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Names: 播放器配置名字过滤条件，数组长度限制：100。
        # @type Names: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 播放器配置类型过滤条件，可选值：
        # <li>Preset：系统预置配置；</li>
        # <li>Custom：用户自定义配置。</li>
        # @type Type: String

        attr_accessor :SubAppId, :Names, :Offset, :Limit, :Type
        
        def initialize(subappid=nil, names=nil, offset=nil, limit=nil, type=nil)
          @SubAppId = subappid
          @Names = names
          @Offset = offset
          @Limit = limit
          @Type = type
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Names = params['Names']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
        end
      end

      # DescribeSuperPlayerConfigs返回参数结构体
      class DescribeSuperPlayerConfigsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param PlayerConfigSet: 播放器配置数组。
        # @type PlayerConfigSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PlayerConfigSet, :RequestId
        
        def initialize(totalcount=nil, playerconfigset=nil, requestid=nil)
          @TotalCount = totalcount
          @PlayerConfigSet = playerconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PlayerConfigSet'].nil?
            @PlayerConfigSet = []
            params['PlayerConfigSet'].each do |i|
              playerconfig_tmp = PlayerConfig.new
              playerconfig_tmp.deserialize(i)
              @PlayerConfigSet << playerconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频处理任务的任务 ID。
        # @type TaskId: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :TaskId, :SubAppId
        
        def initialize(taskid=nil, subappid=nil)
          @TaskId = taskid
          @SubAppId = subappid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，取值：
        # <li>Procedure：视频处理任务；</li>
        # <li>EditMedia：视频编辑任务；</li>
        # <li>SplitMedia：视频拆条任务；</li>
        # <li>ComposeMedia：制作媒体文件任务；</li>
        # <li>WechatPublish：微信发布任务；</li>
        # <li>WechatMiniProgramPublish：微信小程序视频发布任务；</li>
        # <li>PullUpload：拉取上传媒体文件任务；</li>
        # <li>FastClipMedia：快速剪辑任务；</li>
        # <li>RemoveWatermarkTask：智能去除水印任务；</li>
        # <li> ReviewAudioVideo：音视频审核任务。</li>
        # <li> ReduceMediaBitrate：降码率任务。</li>
        # @type TaskType: String
        # @param Status: 任务状态，取值：
        # <li>WAITING：等待中；</li>
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param CreateTime: 任务的创建时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param BeginProcessTime: 任务开始执行的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type BeginProcessTime: String
        # @param FinishTime: 任务执行完毕的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type FinishTime: String
        # @param ProcedureTask: 视频处理任务信息，仅当 TaskType 为 Procedure，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcedureTask: :class:`Tencentcloud::Vod.v20180717.models.ProcedureTask`
        # @param EditMediaTask: 视频编辑任务信息，仅当 TaskType 为 EditMedia，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditMediaTask: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTask`
        # @param WechatPublishTask: 微信发布任务信息，仅当 TaskType 为 WechatPublish，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatPublishTask: :class:`Tencentcloud::Vod.v20180717.models.WechatPublishTask`
        # @param ComposeMediaTask: 制作媒体文件任务信息，仅当 TaskType 为 ComposeMedia，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComposeMediaTask: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTask`
        # @param SplitMediaTask: 视频拆条任务信息，仅当 TaskType 为 SplitMedia，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitMediaTask: :class:`Tencentcloud::Vod.v20180717.models.SplitMediaTask`
        # @param WechatMiniProgramPublishTask: 微信小程序发布任务信息，仅当 TaskType 为 WechatMiniProgramPublish，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatMiniProgramPublishTask: :class:`Tencentcloud::Vod.v20180717.models.WechatMiniProgramPublishTask`
        # @param PullUploadTask: 拉取上传媒体文件任务信息，仅当 TaskType 为 PullUpload，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PullUploadTask: :class:`Tencentcloud::Vod.v20180717.models.PullUploadTask`
        # @param TranscodeTask: 视频转码任务信息，仅当 TaskType 为 Transcode，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeTask: :class:`Tencentcloud::Vod.v20180717.models.TranscodeTask2017`
        # @param ConcatTask: 视频拼接任务信息，仅当 TaskType 为 Concat，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConcatTask: :class:`Tencentcloud::Vod.v20180717.models.ConcatTask2017`
        # @param ClipTask: 视频剪辑任务信息，仅当 TaskType 为 Clip，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClipTask: :class:`Tencentcloud::Vod.v20180717.models.ClipTask2017`
        # @param CreateImageSpriteTask: 截取雪碧图任务信息，仅当 TaskType 为 ImageSprite，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateImageSpriteTask: :class:`Tencentcloud::Vod.v20180717.models.CreateImageSpriteTask2017`
        # @param SnapshotByTimeOffsetTask: 视频指定时间点截图任务信息，仅当 TaskType 为 SnapshotByTimeOffset，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetTask: :class:`Tencentcloud::Vod.v20180717.models.SnapshotByTimeOffsetTask2017`
        # @param RemoveWatermarkTask: 智能去除水印任务信息，仅当 TaskType 为 RemoveWatermark，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemoveWatermarkTask: :class:`Tencentcloud::Vod.v20180717.models.RemoveWatermarkTask`
        # @param ExtractTraceWatermarkTask: 提取溯源水印任务信息，仅当 TaskType 为 ExtractTraceWatermark，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtractTraceWatermarkTask: :class:`Tencentcloud::Vod.v20180717.models.ExtractTraceWatermarkTask`
        # @param ReviewAudioVideoTask: 音视频审核任务信息，仅当 TaskType 为 ReviewAudioVideo，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReviewAudioVideoTask: :class:`Tencentcloud::Vod.v20180717.models.ReviewAudioVideoTask`
        # @param ReduceMediaBitrateTask: 降码率任务信息，仅当 TaskType 为 ReduceMediaBitrate，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReduceMediaBitrateTask: :class:`Tencentcloud::Vod.v20180717.models.ReduceMediaBitrateTask`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskType, :Status, :CreateTime, :BeginProcessTime, :FinishTime, :ProcedureTask, :EditMediaTask, :WechatPublishTask, :ComposeMediaTask, :SplitMediaTask, :WechatMiniProgramPublishTask, :PullUploadTask, :TranscodeTask, :ConcatTask, :ClipTask, :CreateImageSpriteTask, :SnapshotByTimeOffsetTask, :RemoveWatermarkTask, :ExtractTraceWatermarkTask, :ReviewAudioVideoTask, :ReduceMediaBitrateTask, :RequestId
        
        def initialize(tasktype=nil, status=nil, createtime=nil, beginprocesstime=nil, finishtime=nil, proceduretask=nil, editmediatask=nil, wechatpublishtask=nil, composemediatask=nil, splitmediatask=nil, wechatminiprogrampublishtask=nil, pulluploadtask=nil, transcodetask=nil, concattask=nil, cliptask=nil, createimagespritetask=nil, snapshotbytimeoffsettask=nil, removewatermarktask=nil, extracttracewatermarktask=nil, reviewaudiovideotask=nil, reducemediabitratetask=nil, requestid=nil)
          @TaskType = tasktype
          @Status = status
          @CreateTime = createtime
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
          @ProcedureTask = proceduretask
          @EditMediaTask = editmediatask
          @WechatPublishTask = wechatpublishtask
          @ComposeMediaTask = composemediatask
          @SplitMediaTask = splitmediatask
          @WechatMiniProgramPublishTask = wechatminiprogrampublishtask
          @PullUploadTask = pulluploadtask
          @TranscodeTask = transcodetask
          @ConcatTask = concattask
          @ClipTask = cliptask
          @CreateImageSpriteTask = createimagespritetask
          @SnapshotByTimeOffsetTask = snapshotbytimeoffsettask
          @RemoveWatermarkTask = removewatermarktask
          @ExtractTraceWatermarkTask = extracttracewatermarktask
          @ReviewAudioVideoTask = reviewaudiovideotask
          @ReduceMediaBitrateTask = reducemediabitratetask
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
          unless params['ProcedureTask'].nil?
            @ProcedureTask = ProcedureTask.new
            @ProcedureTask.deserialize(params['ProcedureTask'])
          end
          unless params['EditMediaTask'].nil?
            @EditMediaTask = EditMediaTask.new
            @EditMediaTask.deserialize(params['EditMediaTask'])
          end
          unless params['WechatPublishTask'].nil?
            @WechatPublishTask = WechatPublishTask.new
            @WechatPublishTask.deserialize(params['WechatPublishTask'])
          end
          unless params['ComposeMediaTask'].nil?
            @ComposeMediaTask = ComposeMediaTask.new
            @ComposeMediaTask.deserialize(params['ComposeMediaTask'])
          end
          unless params['SplitMediaTask'].nil?
            @SplitMediaTask = SplitMediaTask.new
            @SplitMediaTask.deserialize(params['SplitMediaTask'])
          end
          unless params['WechatMiniProgramPublishTask'].nil?
            @WechatMiniProgramPublishTask = WechatMiniProgramPublishTask.new
            @WechatMiniProgramPublishTask.deserialize(params['WechatMiniProgramPublishTask'])
          end
          unless params['PullUploadTask'].nil?
            @PullUploadTask = PullUploadTask.new
            @PullUploadTask.deserialize(params['PullUploadTask'])
          end
          unless params['TranscodeTask'].nil?
            @TranscodeTask = TranscodeTask2017.new
            @TranscodeTask.deserialize(params['TranscodeTask'])
          end
          unless params['ConcatTask'].nil?
            @ConcatTask = ConcatTask2017.new
            @ConcatTask.deserialize(params['ConcatTask'])
          end
          unless params['ClipTask'].nil?
            @ClipTask = ClipTask2017.new
            @ClipTask.deserialize(params['ClipTask'])
          end
          unless params['CreateImageSpriteTask'].nil?
            @CreateImageSpriteTask = CreateImageSpriteTask2017.new
            @CreateImageSpriteTask.deserialize(params['CreateImageSpriteTask'])
          end
          unless params['SnapshotByTimeOffsetTask'].nil?
            @SnapshotByTimeOffsetTask = SnapshotByTimeOffsetTask2017.new
            @SnapshotByTimeOffsetTask.deserialize(params['SnapshotByTimeOffsetTask'])
          end
          unless params['RemoveWatermarkTask'].nil?
            @RemoveWatermarkTask = RemoveWatermarkTask.new
            @RemoveWatermarkTask.deserialize(params['RemoveWatermarkTask'])
          end
          unless params['ExtractTraceWatermarkTask'].nil?
            @ExtractTraceWatermarkTask = ExtractTraceWatermarkTask.new
            @ExtractTraceWatermarkTask.deserialize(params['ExtractTraceWatermarkTask'])
          end
          unless params['ReviewAudioVideoTask'].nil?
            @ReviewAudioVideoTask = ReviewAudioVideoTask.new
            @ReviewAudioVideoTask.deserialize(params['ReviewAudioVideoTask'])
          end
          unless params['ReduceMediaBitrateTask'].nil?
            @ReduceMediaBitrateTask = ReduceMediaBitrateTask.new
            @ReduceMediaBitrateTask.deserialize(params['ReduceMediaBitrateTask'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Status: 过滤条件：任务状态，可选值：WAITING（等待中）、PROCESSING（处理中）、FINISH（已完成）。
        # @type Status: String
        # @param FileId: 过滤条件：文件 ID。
        # @type FileId: String
        # @param CreateTime: 过滤条件：任务创建时间。
        # @type CreateTime: :class:`Tencentcloud::Vod.v20180717.models.TimeRange`
        # @param FinishTime: 过滤条件：任务结束时间。
        # @type FinishTime: :class:`Tencentcloud::Vod.v20180717.models.TimeRange`
        # @param Sort: 排序方式。Sort.Field 可选：
        # <li> CreateTime 任务创建时间。</li>
        # <li>FinishTime 任务结束时间。</li>
        # @type Sort: :class:`Tencentcloud::Vod.v20180717.models.SortBy`
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param ScrollToken: 翻页标识，分批拉取时使用：当单次请求无法拉取所有数据，接口将会返回 ScrollToken，下一次请求携带该 Token，将会从下一条记录开始获取。
        # @type ScrollToken: String

        attr_accessor :SubAppId, :Status, :FileId, :CreateTime, :FinishTime, :Sort, :Limit, :ScrollToken
        
        def initialize(subappid=nil, status=nil, fileid=nil, createtime=nil, finishtime=nil, sort=nil, limit=nil, scrolltoken=nil)
          @SubAppId = subappid
          @Status = status
          @FileId = fileid
          @CreateTime = createtime
          @FinishTime = finishtime
          @Sort = sort
          @Limit = limit
          @ScrollToken = scrolltoken
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Status = params['Status']
          @FileId = params['FileId']
          unless params['CreateTime'].nil?
            @CreateTime = TimeRange.new
            @CreateTime.deserialize(params['CreateTime'])
          end
          unless params['FinishTime'].nil?
            @FinishTime = TimeRange.new
            @FinishTime.deserialize(params['FinishTime'])
          end
          unless params['Sort'].nil?
            @Sort = SortBy.new
            @Sort.deserialize(params['Sort'])
          end
          @Limit = params['Limit']
          @ScrollToken = params['ScrollToken']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务概要列表。
        # @type TaskSet: Array
        # @param ScrollToken: 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 ID。当该字段为空，说明已无更多数据。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :ScrollToken, :RequestId
        
        def initialize(taskset=nil, scrolltoken=nil, requestid=nil)
          @TaskSet = taskset
          @ScrollToken = scrolltoken
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeTranscodeTemplates请求参数结构体
      class DescribeTranscodeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :SubAppId, :Definitions, :Type, :ContainerType, :TEHDType, :Offset, :Limit
        
        def initialize(subappid=nil, definitions=nil, type=nil, containertype=nil, tehdtype=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Definitions = definitions
          @Type = type
          @ContainerType = containertype
          @TEHDType = tehdtype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Definitions = params['Definitions']
          @Type = params['Type']
          @ContainerType = params['ContainerType']
          @TEHDType = params['TEHDType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTranscodeTemplates返回参数结构体
      class DescribeTranscodeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param TranscodeTemplateSet: 转码模板详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeVodDomains请求参数结构体
      class DescribeVodDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 域名列表。当该字段不填时，则默认列出所有域名信息。本字段字段限制如下：
        # <li>域名个数度最大为 20。</li>
        # @type Domains: Array
        # @param Limit: 分页拉取的最大返回结果数。默认值：20。
        # @type Limit: Integer
        # @param Offset: 分页拉取的起始偏移量。默认值：0。
        # @type Offset: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Domains, :Limit, :Offset, :SubAppId
        
        def initialize(domains=nil, limit=nil, offset=nil, subappid=nil)
          @Domains = domains
          @Limit = limit
          @Offset = offset
          @SubAppId = subappid
        end

        def deserialize(params)
          @Domains = params['Domains']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeVodDomains返回参数结构体
      class DescribeVodDomainsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 域名总数量。
        # @type TotalCount: Integer
        # @param DomainSet: 域名信息列表。
        # @type DomainSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DomainSet, :RequestId
        
        def initialize(totalcount=nil, domainset=nil, requestid=nil)
          @TotalCount = totalcount
          @DomainSet = domainset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DomainSet'].nil?
            @DomainSet = []
            params['DomainSet'].each do |i|
              domaindetailinfo_tmp = DomainDetailInfo.new
              domaindetailinfo_tmp.deserialize(i)
              @DomainSet << domaindetailinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWatermarkTemplates请求参数结构体
      class DescribeWatermarkTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Type: 水印类型过滤条件，可选值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印；</li>
        # <li>svg：SVG 水印。</li>
        # @type Type: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Definitions: 水印模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Limit: 返回记录条数
        # <li>默认值：10；</li>
        # <li>最大值：100。</li>
        # @type Limit: Integer

        attr_accessor :SubAppId, :Type, :Offset, :Definitions, :Limit
        
        def initialize(subappid=nil, type=nil, offset=nil, definitions=nil, limit=nil)
          @SubAppId = subappid
          @Type = type
          @Offset = offset
          @Definitions = definitions
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Type = params['Type']
          @Offset = params['Offset']
          @Definitions = params['Definitions']
          @Limit = params['Limit']
        end
      end

      # DescribeWatermarkTemplates返回参数结构体
      class DescribeWatermarkTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param WatermarkTemplateSet: 水印模板详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Usages: <b>关键词应用场景过滤条件，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行不适宜的内容识别；
        # 4. Review.Asr：通过音频识别技术，进行不适宜的内容识别；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜的内容识别，等价于 3+4；
        # 可多选，元素间关系为 or，即关键词的应用场景包含该字段集合中任意元素的记录，均符合该条件。
        # @type Usages: Array
        # @param Keywords: 关键词过滤条件，数组长度限制：100 个词。
        # @type Keywords: Array
        # @param Tags: 标签过滤条件，数组长度限制：20 个词。
        # @type Tags: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：100，最大值：100。
        # @type Limit: Integer

        attr_accessor :SubAppId, :Usages, :Keywords, :Tags, :Offset, :Limit
        
        def initialize(subappid=nil, usages=nil, keywords=nil, tags=nil, offset=nil, limit=nil)
          @SubAppId = subappid
          @Usages = usages
          @Keywords = keywords
          @Tags = tags
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Usages = params['Usages']
          @Keywords = params['Keywords']
          @Tags = params['Tags']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeWordSamples返回参数结构体
      class DescribeWordSamplesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param WordSet: 关键词信息。
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

      # 域名信息
      class DomainDetailInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 域名名称。
        # @type Domain: String
        # @param AccelerateAreaInfos: 加速地区信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccelerateAreaInfos: Array
        # @param DeployStatus: 部署状态，取值有：
        # <li>Online：上线；</li>
        # <li>Deploying：部署中；</li>
        # <li>Locked: 锁定中，出现该状态时，无法对该域名进行部署变更。</li>
        # @type DeployStatus: String
        # @param HTTPSConfig: HTTPS 配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPSConfig: :class:`Tencentcloud::Vod.v20180717.models.DomainHTTPSConfig`
        # @param UrlSignatureAuthPolicy: [Key 防盗链](https://cloud.tencent.com/document/product/266/14047)配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UrlSignatureAuthPolicy: :class:`Tencentcloud::Vod.v20180717.models.UrlSignatureAuthPolicy`
        # @param RefererAuthPolicy: [Referer 防盗链](https://cloud.tencent.com/document/product/266/14046)配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefererAuthPolicy: :class:`Tencentcloud::Vod.v20180717.models.RefererAuthPolicy`
        # @param CreateTime: 域名添加到腾讯云点播系统中的时间。
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。</li>
        # @type CreateTime: String

        attr_accessor :Domain, :AccelerateAreaInfos, :DeployStatus, :HTTPSConfig, :UrlSignatureAuthPolicy, :RefererAuthPolicy, :CreateTime
        
        def initialize(domain=nil, accelerateareainfos=nil, deploystatus=nil, httpsconfig=nil, urlsignatureauthpolicy=nil, refererauthpolicy=nil, createtime=nil)
          @Domain = domain
          @AccelerateAreaInfos = accelerateareainfos
          @DeployStatus = deploystatus
          @HTTPSConfig = httpsconfig
          @UrlSignatureAuthPolicy = urlsignatureauthpolicy
          @RefererAuthPolicy = refererauthpolicy
          @CreateTime = createtime
        end

        def deserialize(params)
          @Domain = params['Domain']
          unless params['AccelerateAreaInfos'].nil?
            @AccelerateAreaInfos = []
            params['AccelerateAreaInfos'].each do |i|
              accelerateareainfo_tmp = AccelerateAreaInfo.new
              accelerateareainfo_tmp.deserialize(i)
              @AccelerateAreaInfos << accelerateareainfo_tmp
            end
          end
          @DeployStatus = params['DeployStatus']
          unless params['HTTPSConfig'].nil?
            @HTTPSConfig = DomainHTTPSConfig.new
            @HTTPSConfig.deserialize(params['HTTPSConfig'])
          end
          unless params['UrlSignatureAuthPolicy'].nil?
            @UrlSignatureAuthPolicy = UrlSignatureAuthPolicy.new
            @UrlSignatureAuthPolicy.deserialize(params['UrlSignatureAuthPolicy'])
          end
          unless params['RefererAuthPolicy'].nil?
            @RefererAuthPolicy = RefererAuthPolicy.new
            @RefererAuthPolicy.deserialize(params['RefererAuthPolicy'])
          end
          @CreateTime = params['CreateTime']
        end
      end

      # 域名 HTTPS 配置信息
      class DomainHTTPSConfig < TencentCloud::Common::AbstractModel
        # @param CertExpireTime: 证书过期时间。
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。</li>
        # @type CertExpireTime: String

        attr_accessor :CertExpireTime
        
        def initialize(certexpiretime=nil)
          @CertExpireTime = certexpiretime
        end

        def deserialize(params)
          @CertExpireTime = params['CertExpireTime']
        end
      end

      # DRM 自适应码流播放信息
      class DrmStreamingsInfo < TencentCloud::Common::AbstractModel
        # @param SimpleAesDefinition: 保护类型为 SimpleAES 的转自适应码流模板 ID。
        # @type SimpleAesDefinition: Integer
        # @param WidevineDefinition: 保护类型为 Widevine 的转自适应码流模板 ID。
        # @type WidevineDefinition: Integer
        # @param FairPlayDefinition: 保护类型为 FairPlay 的转自适应码流模板 ID。
        # @type FairPlayDefinition: Integer

        attr_accessor :SimpleAesDefinition, :WidevineDefinition, :FairPlayDefinition
        
        def initialize(simpleaesdefinition=nil, widevinedefinition=nil, fairplaydefinition=nil)
          @SimpleAesDefinition = simpleaesdefinition
          @WidevineDefinition = widevinedefinition
          @FairPlayDefinition = fairplaydefinition
        end

        def deserialize(params)
          @SimpleAesDefinition = params['SimpleAesDefinition']
          @WidevineDefinition = params['WidevineDefinition']
          @FairPlayDefinition = params['FairPlayDefinition']
        end
      end

      # DRM 自适应码流播放信息修改对象
      class DrmStreamingsInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param SimpleAesDefinition: 保护类型为 SimpleAES 的转自适应码流模板 ID。
        # @type SimpleAesDefinition: Integer
        # @param WidevineDefinition: 保护类型为 Widevine 的转自适应码流模板 ID。
        # @type WidevineDefinition: Integer
        # @param FairPlayDefinition: 保护类型为 FairPlay 的转自适应码流模板 ID。
        # @type FairPlayDefinition: Integer

        attr_accessor :SimpleAesDefinition, :WidevineDefinition, :FairPlayDefinition
        
        def initialize(simpleaesdefinition=nil, widevinedefinition=nil, fairplaydefinition=nil)
          @SimpleAesDefinition = simpleaesdefinition
          @WidevineDefinition = widevinedefinition
          @FairPlayDefinition = fairplaydefinition
        end

        def deserialize(params)
          @SimpleAesDefinition = params['SimpleAesDefinition']
          @WidevineDefinition = params['WidevineDefinition']
          @FairPlayDefinition = params['FairPlayDefinition']
        end
      end

      # 编辑点播视频文件信息
      class EditMediaFileInfo < TencentCloud::Common::AbstractModel
        # @param FileId: 视频的 ID。
        # @type FileId: String
        # @param StartTimeOffset: 视频剪辑的起始偏移时间偏移，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 视频剪辑的起始结束时间偏移，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :FileId, :StartTimeOffset, :EndTimeOffset
        
        def initialize(fileid=nil, starttimeoffset=nil, endtimeoffset=nil)
          @FileId = fileid
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @FileId = params['FileId']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 编辑视频的结果文件输出。
      class EditMediaOutputConfig < TencentCloud::Common::AbstractModel
        # @param MediaName: 输出文件名，最长 64 个字符。缺省由系统指定生成文件名。
        # @type MediaName: String
        # @param Type: 输出文件格式，可选值：mp4、hls。默认是 mp4。
        # @type Type: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String
        # @param VideoStream: 输出的视频信息。
        # @type VideoStream: :class:`Tencentcloud::Vod.v20180717.models.EditMediaVideoStream`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTEHDConfig`

        attr_accessor :MediaName, :Type, :ClassId, :ExpireTime, :VideoStream, :TEHDConfig
        
        def initialize(medianame=nil, type=nil, classid=nil, expiretime=nil, videostream=nil, tehdconfig=nil)
          @MediaName = medianame
          @Type = type
          @ClassId = classid
          @ExpireTime = expiretime
          @VideoStream = videostream
          @TEHDConfig = tehdconfig
        end

        def deserialize(params)
          @MediaName = params['MediaName']
          @Type = params['Type']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
          unless params['VideoStream'].nil?
            @VideoStream = EditMediaVideoStream.new
            @VideoStream.deserialize(params['VideoStream'])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = EditMediaTEHDConfig.new
            @TEHDConfig.deserialize(params['TEHDConfig'])
          end
        end
      end

      # EditMedia请求参数结构体
      class EditMediaRequest < TencentCloud::Common::AbstractModel
        # @param InputType: 输入视频的类型，可以取的值为  File，Stream 两种。
        # @type InputType: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param FileInfos: 输入的视频文件信息，当 InputType 为 File 时必填。
        # @type FileInfos: Array
        # @param StreamInfos: 输入的流信息，当 InputType 为 Stream 时必填。
        # @type StreamInfos: Array
        # @param Definition: 编辑模板 ID，取值有 10，20，不填代表使用 10 模板。
        # <li>10：拼接时，以分辨率最高的输入为基准；</li>
        # <li>20：拼接时，以码率最高的输入为基准。</li>
        # @type Definition: Integer
        # @param ProcedureName: [任务流模板](/document/product/266/11700#.E4.BB.BB.E5.8A.A1.E6.B5.81.E6.A8.A1.E6.9D.BF)名字，如果要对生成的新视频执行任务流时填写。
        # @type ProcedureName: String
        # @param OutputConfig: 编辑后生成的文件配置。
        # @type OutputConfig: :class:`Tencentcloud::Vod.v20180717.models.EditMediaOutputConfig`
        # @param SessionContext: 标识来源上下文，用于透传用户请求信息，在EditMediaComplete回调和任务流状态变更回调将返回该字段值，最长 1000个字符。
        # @type SessionContext: String
        # @param TasksPriority: 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param SessionId: 用于任务去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String

        attr_accessor :InputType, :SubAppId, :FileInfos, :StreamInfos, :Definition, :ProcedureName, :OutputConfig, :SessionContext, :TasksPriority, :SessionId, :ExtInfo
        
        def initialize(inputtype=nil, subappid=nil, fileinfos=nil, streaminfos=nil, definition=nil, procedurename=nil, outputconfig=nil, sessioncontext=nil, taskspriority=nil, sessionid=nil, extinfo=nil)
          @InputType = inputtype
          @SubAppId = subappid
          @FileInfos = fileinfos
          @StreamInfos = streaminfos
          @Definition = definition
          @ProcedureName = procedurename
          @OutputConfig = outputconfig
          @SessionContext = sessioncontext
          @TasksPriority = taskspriority
          @SessionId = sessionid
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @InputType = params['InputType']
          @SubAppId = params['SubAppId']
          unless params['FileInfos'].nil?
            @FileInfos = []
            params['FileInfos'].each do |i|
              editmediafileinfo_tmp = EditMediaFileInfo.new
              editmediafileinfo_tmp.deserialize(i)
              @FileInfos << editmediafileinfo_tmp
            end
          end
          unless params['StreamInfos'].nil?
            @StreamInfos = []
            params['StreamInfos'].each do |i|
              editmediastreaminfo_tmp = EditMediaStreamInfo.new
              editmediastreaminfo_tmp.deserialize(i)
              @StreamInfos << editmediastreaminfo_tmp
            end
          end
          @Definition = params['Definition']
          @ProcedureName = params['ProcedureName']
          unless params['OutputConfig'].nil?
            @OutputConfig = EditMediaOutputConfig.new
            @OutputConfig.deserialize(params['OutputConfig'])
          end
          @SessionContext = params['SessionContext']
          @TasksPriority = params['TasksPriority']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
        end
      end

      # EditMedia返回参数结构体
      class EditMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑视频的任务 ID，可以通过该 ID 查询编辑任务（任务类型为 EditMedia）的状态。
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

      # 编辑视频流信息
      class EditMediaStreamInfo < TencentCloud::Common::AbstractModel
        # @param StreamId: 录制的流 ID
        # @type StreamId: String
        # @param StartTime: 流剪辑的起始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 流剪辑的结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String

        attr_accessor :StreamId, :StartTime, :EndTime
        
        def initialize(streamid=nil, starttime=nil, endtime=nil)
          @StreamId = streamid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 视频编辑极速高清参数配置。
      class EditMediaTEHDConfig < TencentCloud::Common::AbstractModel
        # @param Type: 极速高清类型，可选值：<li>TEHD-100 表示极速高清-100;</li> <li>OFF 表示关闭极速高清。</li>不填表示 OFF。
        # @type Type: String

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 编辑视频任务信息
      class EditMediaTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param Message: 错误信息。
        # @type Message: String
        # @param Progress: 编辑视频任务进度，取值范围 [0-100] 。
        # @type Progress: Integer
        # @param Input: 视频编辑任务的输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTaskInput`
        # @param Output: 视频编辑任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTaskOutput`
        # @param MetaData: 输出视频的元信息。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param ProcedureTaskId: 若发起视频编辑任务时指定了视频处理流程，则该字段为流程任务 ID。
        # @type ProcedureTaskId: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String

        attr_accessor :TaskId, :Status, :ErrCode, :ErrCodeExt, :Message, :Progress, :Input, :Output, :MetaData, :ProcedureTaskId, :SessionId, :SessionContext
        
        def initialize(taskid=nil, status=nil, errcode=nil, errcodeext=nil, message=nil, progress=nil, input=nil, output=nil, metadata=nil, proceduretaskid=nil, sessionid=nil, sessioncontext=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @ErrCodeExt = errcodeext
          @Message = message
          @Progress = progress
          @Input = input
          @Output = output
          @MetaData = metadata
          @ProcedureTaskId = proceduretaskid
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrCodeExt = params['ErrCodeExt']
          @Message = params['Message']
          @Progress = params['Progress']
          unless params['Input'].nil?
            @Input = EditMediaTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = EditMediaTaskOutput.new
            @Output.deserialize(params['Output'])
          end
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          @ProcedureTaskId = params['ProcedureTaskId']
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # 编辑视频任务的输入。
      class EditMediaTaskInput < TencentCloud::Common::AbstractModel
        # @param InputType: 输入视频的来源类型，可以取的值为 File，Stream 两种。
        # @type InputType: String
        # @param FileInfoSet: 输入的视频文件信息，当 InputType 为 File 时，该字段有值。
        # @type FileInfoSet: Array
        # @param StreamInfoSet: 输入的流信息，当 InputType 为 Stream 时，该字段有值。
        # @type StreamInfoSet: Array

        attr_accessor :InputType, :FileInfoSet, :StreamInfoSet
        
        def initialize(inputtype=nil, fileinfoset=nil, streaminfoset=nil)
          @InputType = inputtype
          @FileInfoSet = fileinfoset
          @StreamInfoSet = streaminfoset
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['FileInfoSet'].nil?
            @FileInfoSet = []
            params['FileInfoSet'].each do |i|
              editmediafileinfo_tmp = EditMediaFileInfo.new
              editmediafileinfo_tmp.deserialize(i)
              @FileInfoSet << editmediafileinfo_tmp
            end
          end
          unless params['StreamInfoSet'].nil?
            @StreamInfoSet = []
            params['StreamInfoSet'].each do |i|
              editmediastreaminfo_tmp = EditMediaStreamInfo.new
              editmediastreaminfo_tmp.deserialize(i)
              @StreamInfoSet << editmediastreaminfo_tmp
            end
          end
        end
      end

      # 编辑视频任务的输出
      class EditMediaTaskOutput < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型，例如 mp4、flv 等。
        # @type FileType: String
        # @param FileUrl: 媒体文件播放地址。
        # @type FileUrl: String
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param MediaName: 输出文件名，最长 64 个字符。缺省由系统指定生成文件名。
        # @type MediaName: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String

        attr_accessor :FileType, :FileUrl, :FileId, :MediaName, :ClassId, :ExpireTime
        
        def initialize(filetype=nil, fileurl=nil, fileid=nil, medianame=nil, classid=nil, expiretime=nil)
          @FileType = filetype
          @FileUrl = fileurl
          @FileId = fileid
          @MediaName = medianame
          @ClassId = classid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileId = params['FileId']
          @MediaName = params['MediaName']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 视频流配置信息
      class EditMediaVideoStream < TencentCloud::Common::AbstractModel
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率取基准分辨率；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按基准分辨率比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按基准分辨率比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率取基准分辨率；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按基准分辨率比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按基准分辨率比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer

        attr_accessor :ResolutionAdaptive, :Width, :Height
        
        def initialize(resolutionadaptive=nil, width=nil, height=nil)
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 空的轨道片段，用来进行时间轴的占位。如需要两个音频片段之间有一段时间的静音，可以用 EmptyTrackItem 来进行占位。
      class EmptyTrackItem < TencentCloud::Common::AbstractModel
        # @param Duration: 持续时间，单位为秒。
        # @type Duration: Float

        attr_accessor :Duration
        
        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      # 事件通知内容，其中，TranscodeCompleteEvent、ConcatCompleteEvent、ClipCompleteEvent、CreateImageSpriteCompleteEvent、SnapshotByTimeOffsetCompleteEvent 为兼容 2017 版接口发起任务的事件通知。
      class EventContent < TencentCloud::Common::AbstractModel
        # @param EventHandle: 事件句柄，调用方必须调用 ConfirmEvents 来确认消息已经收到，确认有效时间 30 秒。失效后，事件可重新被获取。
        # @type EventHandle: String
        # @param EventType: <b>支持事件类型：</b>
        # <li>NewFileUpload：视频上传完成；</li>
        # <li>ProcedureStateChanged：任务流状态变更；</li>
        # <li>FileDeleted：视频删除完成；</li>
        # <li>PullComplete：视频转拉完成；</li>
        # <li>EditMediaComplete：视频编辑完成；</li>
        # <li>SplitMediaComplete：视频拆分完成；</li>
        # <li>WechatPublishComplete：微信发布完成；</li>
        # <li>ComposeMediaComplete：制作媒体文件完成；</li>
        # <li>WechatMiniProgramPublishComplete：微信小程序发布完成。</li>
        # <li>FastClipMediaComplete：快速剪辑完成；</li>
        # <li>ReviewAudioVideoComplete：音视频审核完成。</li>
        # <li>ExtractTraceWatermarkComplete：提取溯源水印完成。</li>
        # <b>兼容 2017 版的事件类型：</b>
        # <li>TranscodeComplete：视频转码完成；</li>
        # <li>ConcatComplete：视频拼接完成；</li>
        # <li>ClipComplete：视频剪辑完成；</li>
        # <li>CreateImageSpriteComplete：视频截取雪碧图完成；</li>
        # <li>CreateSnapshotByTimeOffsetComplete：视频按时间点截图完成。</li>
        # @type EventType: String
        # @param FileUploadEvent: 视频上传完成事件，当事件类型为 NewFileUpload 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileUploadEvent: :class:`Tencentcloud::Vod.v20180717.models.FileUploadTask`
        # @param ProcedureStateChangeEvent: 任务流状态变更事件，当事件类型为 ProcedureStateChanged 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcedureStateChangeEvent: :class:`Tencentcloud::Vod.v20180717.models.ProcedureTask`
        # @param FileDeleteEvent: 文件删除事件，当事件类型为 FileDeleted 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileDeleteEvent: :class:`Tencentcloud::Vod.v20180717.models.FileDeleteTask`
        # @param PullCompleteEvent: 视频转拉完成事件，当事件类型为 PullComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PullCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.PullUploadTask`
        # @param EditMediaCompleteEvent: 视频编辑完成事件，当事件类型为 EditMediaComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditMediaCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTask`
        # @param SplitMediaCompleteEvent: 视频拆条完成事件，当事件类型为 SplitMediaComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SplitMediaCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.SplitMediaTask`
        # @param ComposeMediaCompleteEvent: 制作媒体文件任务完成事件，当事件类型为 ComposeMediaComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComposeMediaCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTask`
        # @param ClipCompleteEvent: 视频剪辑完成事件，当事件类型为 ClipComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClipCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ClipTask2017`
        # @param TranscodeCompleteEvent: 视频转码完成事件，当事件类型为 TranscodeComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.TranscodeTask2017`
        # @param CreateImageSpriteCompleteEvent: 视频截取雪碧图完成事件，当事件类型为 CreateImageSpriteComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateImageSpriteCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.CreateImageSpriteTask2017`
        # @param ConcatCompleteEvent: 视频拼接完成事件，当事件类型为 ConcatComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConcatCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ConcatTask2017`
        # @param SnapshotByTimeOffsetCompleteEvent: 视频按时间点截图完成事件，当事件类型为 CreateSnapshotByTimeOffsetComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.SnapshotByTimeOffsetTask2017`
        # @param WechatPublishCompleteEvent: 微信发布完成事件，当事件类型为 WechatPublishComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatPublishCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.WechatPublishTask`
        # @param WechatMiniProgramPublishCompleteEvent: 微信小程序发布任务完成事件，当事件类型为 WechatMiniProgramPublishComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatMiniProgramPublishCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.WechatMiniProgramPublishTask`
        # @param RemoveWatermarkCompleteEvent: 智能去除水印任务完成事件，当事件类型为 RemoveWatermark 有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemoveWatermarkCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.RemoveWatermarkTask`
        # @param RestoreMediaCompleteEvent: 视频取回完成事件，当事件类型为RestoreMediaComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestoreMediaCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.RestoreMediaTask`
        # @param ExtractTraceWatermarkCompleteEvent: 溯源水印提取完成事件，当事件类型为ExtractTraceWatermarkComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtractTraceWatermarkCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ExtractTraceWatermarkTask`
        # @param ReviewAudioVideoCompleteEvent: 音视频审核完成事件，当事件类型为 ReviewAudioVideoComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReviewAudioVideoCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ReviewAudioVideoTask`
        # @param ReduceMediaBitrateCompleteEvent: 降码率完成事件，当事件类型为 ReduceMediaBitrateComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReduceMediaBitrateCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ReduceMediaBitrateTask`

        attr_accessor :EventHandle, :EventType, :FileUploadEvent, :ProcedureStateChangeEvent, :FileDeleteEvent, :PullCompleteEvent, :EditMediaCompleteEvent, :SplitMediaCompleteEvent, :ComposeMediaCompleteEvent, :ClipCompleteEvent, :TranscodeCompleteEvent, :CreateImageSpriteCompleteEvent, :ConcatCompleteEvent, :SnapshotByTimeOffsetCompleteEvent, :WechatPublishCompleteEvent, :WechatMiniProgramPublishCompleteEvent, :RemoveWatermarkCompleteEvent, :RestoreMediaCompleteEvent, :ExtractTraceWatermarkCompleteEvent, :ReviewAudioVideoCompleteEvent, :ReduceMediaBitrateCompleteEvent
        
        def initialize(eventhandle=nil, eventtype=nil, fileuploadevent=nil, procedurestatechangeevent=nil, filedeleteevent=nil, pullcompleteevent=nil, editmediacompleteevent=nil, splitmediacompleteevent=nil, composemediacompleteevent=nil, clipcompleteevent=nil, transcodecompleteevent=nil, createimagespritecompleteevent=nil, concatcompleteevent=nil, snapshotbytimeoffsetcompleteevent=nil, wechatpublishcompleteevent=nil, wechatminiprogrampublishcompleteevent=nil, removewatermarkcompleteevent=nil, restoremediacompleteevent=nil, extracttracewatermarkcompleteevent=nil, reviewaudiovideocompleteevent=nil, reducemediabitratecompleteevent=nil)
          @EventHandle = eventhandle
          @EventType = eventtype
          @FileUploadEvent = fileuploadevent
          @ProcedureStateChangeEvent = procedurestatechangeevent
          @FileDeleteEvent = filedeleteevent
          @PullCompleteEvent = pullcompleteevent
          @EditMediaCompleteEvent = editmediacompleteevent
          @SplitMediaCompleteEvent = splitmediacompleteevent
          @ComposeMediaCompleteEvent = composemediacompleteevent
          @ClipCompleteEvent = clipcompleteevent
          @TranscodeCompleteEvent = transcodecompleteevent
          @CreateImageSpriteCompleteEvent = createimagespritecompleteevent
          @ConcatCompleteEvent = concatcompleteevent
          @SnapshotByTimeOffsetCompleteEvent = snapshotbytimeoffsetcompleteevent
          @WechatPublishCompleteEvent = wechatpublishcompleteevent
          @WechatMiniProgramPublishCompleteEvent = wechatminiprogrampublishcompleteevent
          @RemoveWatermarkCompleteEvent = removewatermarkcompleteevent
          @RestoreMediaCompleteEvent = restoremediacompleteevent
          @ExtractTraceWatermarkCompleteEvent = extracttracewatermarkcompleteevent
          @ReviewAudioVideoCompleteEvent = reviewaudiovideocompleteevent
          @ReduceMediaBitrateCompleteEvent = reducemediabitratecompleteevent
        end

        def deserialize(params)
          @EventHandle = params['EventHandle']
          @EventType = params['EventType']
          unless params['FileUploadEvent'].nil?
            @FileUploadEvent = FileUploadTask.new
            @FileUploadEvent.deserialize(params['FileUploadEvent'])
          end
          unless params['ProcedureStateChangeEvent'].nil?
            @ProcedureStateChangeEvent = ProcedureTask.new
            @ProcedureStateChangeEvent.deserialize(params['ProcedureStateChangeEvent'])
          end
          unless params['FileDeleteEvent'].nil?
            @FileDeleteEvent = FileDeleteTask.new
            @FileDeleteEvent.deserialize(params['FileDeleteEvent'])
          end
          unless params['PullCompleteEvent'].nil?
            @PullCompleteEvent = PullUploadTask.new
            @PullCompleteEvent.deserialize(params['PullCompleteEvent'])
          end
          unless params['EditMediaCompleteEvent'].nil?
            @EditMediaCompleteEvent = EditMediaTask.new
            @EditMediaCompleteEvent.deserialize(params['EditMediaCompleteEvent'])
          end
          unless params['SplitMediaCompleteEvent'].nil?
            @SplitMediaCompleteEvent = SplitMediaTask.new
            @SplitMediaCompleteEvent.deserialize(params['SplitMediaCompleteEvent'])
          end
          unless params['ComposeMediaCompleteEvent'].nil?
            @ComposeMediaCompleteEvent = ComposeMediaTask.new
            @ComposeMediaCompleteEvent.deserialize(params['ComposeMediaCompleteEvent'])
          end
          unless params['ClipCompleteEvent'].nil?
            @ClipCompleteEvent = ClipTask2017.new
            @ClipCompleteEvent.deserialize(params['ClipCompleteEvent'])
          end
          unless params['TranscodeCompleteEvent'].nil?
            @TranscodeCompleteEvent = TranscodeTask2017.new
            @TranscodeCompleteEvent.deserialize(params['TranscodeCompleteEvent'])
          end
          unless params['CreateImageSpriteCompleteEvent'].nil?
            @CreateImageSpriteCompleteEvent = CreateImageSpriteTask2017.new
            @CreateImageSpriteCompleteEvent.deserialize(params['CreateImageSpriteCompleteEvent'])
          end
          unless params['ConcatCompleteEvent'].nil?
            @ConcatCompleteEvent = ConcatTask2017.new
            @ConcatCompleteEvent.deserialize(params['ConcatCompleteEvent'])
          end
          unless params['SnapshotByTimeOffsetCompleteEvent'].nil?
            @SnapshotByTimeOffsetCompleteEvent = SnapshotByTimeOffsetTask2017.new
            @SnapshotByTimeOffsetCompleteEvent.deserialize(params['SnapshotByTimeOffsetCompleteEvent'])
          end
          unless params['WechatPublishCompleteEvent'].nil?
            @WechatPublishCompleteEvent = WechatPublishTask.new
            @WechatPublishCompleteEvent.deserialize(params['WechatPublishCompleteEvent'])
          end
          unless params['WechatMiniProgramPublishCompleteEvent'].nil?
            @WechatMiniProgramPublishCompleteEvent = WechatMiniProgramPublishTask.new
            @WechatMiniProgramPublishCompleteEvent.deserialize(params['WechatMiniProgramPublishCompleteEvent'])
          end
          unless params['RemoveWatermarkCompleteEvent'].nil?
            @RemoveWatermarkCompleteEvent = RemoveWatermarkTask.new
            @RemoveWatermarkCompleteEvent.deserialize(params['RemoveWatermarkCompleteEvent'])
          end
          unless params['RestoreMediaCompleteEvent'].nil?
            @RestoreMediaCompleteEvent = RestoreMediaTask.new
            @RestoreMediaCompleteEvent.deserialize(params['RestoreMediaCompleteEvent'])
          end
          unless params['ExtractTraceWatermarkCompleteEvent'].nil?
            @ExtractTraceWatermarkCompleteEvent = ExtractTraceWatermarkTask.new
            @ExtractTraceWatermarkCompleteEvent.deserialize(params['ExtractTraceWatermarkCompleteEvent'])
          end
          unless params['ReviewAudioVideoCompleteEvent'].nil?
            @ReviewAudioVideoCompleteEvent = ReviewAudioVideoTask.new
            @ReviewAudioVideoCompleteEvent.deserialize(params['ReviewAudioVideoCompleteEvent'])
          end
          unless params['ReduceMediaBitrateCompleteEvent'].nil?
            @ReduceMediaBitrateCompleteEvent = ReduceMediaBitrateTask.new
            @ReduceMediaBitrateCompleteEvent.deserialize(params['ReduceMediaBitrateCompleteEvent'])
          end
        end
      end

      # ExecuteFunction请求参数结构体
      class ExecuteFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 调用后端接口名称。
        # @type FunctionName: String
        # @param FunctionArg: 接口参数，具体参数格式调用时与后端协调。
        # @type FunctionArg: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String

        attr_accessor :FunctionName, :FunctionArg, :SubAppId, :SessionContext, :SessionId, :ExtInfo
        
        def initialize(functionname=nil, functionarg=nil, subappid=nil, sessioncontext=nil, sessionid=nil, extinfo=nil)
          @FunctionName = functionname
          @FunctionArg = functionarg
          @SubAppId = subappid
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @FunctionArg = params['FunctionArg']
          @SubAppId = params['SubAppId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
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

      # ExtractTraceWatermark请求参数结构体
      class ExtractTraceWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param Url: 需要提取水印的媒体 URL。
        # @type Url: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param SessionContext: 标识来源上下文，用于透传用户请求信息，在ExtractTraceWatermarkComplete回调和任务流状态变更回调将返回该字段值，最长 1000个字符。
        # @type SessionContext: String
        # @param SessionId: 用于任务去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param TasksPriority: 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String

        attr_accessor :Url, :SubAppId, :SessionContext, :SessionId, :TasksPriority, :ExtInfo
        
        def initialize(url=nil, subappid=nil, sessioncontext=nil, sessionid=nil, taskspriority=nil, extinfo=nil)
          @Url = url
          @SubAppId = subappid
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @TasksPriority = taskspriority
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @Url = params['Url']
          @SubAppId = params['SubAppId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @TasksPriority = params['TasksPriority']
          @ExtInfo = params['ExtInfo']
        end
      end

      # ExtractTraceWatermark返回参数结构体
      class ExtractTraceWatermarkResponse < TencentCloud::Common::AbstractModel
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

      # 提取溯源水印任务。
      class ExtractTraceWatermarkTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param Input: 提取溯源水印任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.ExtractTraceWatermarkTaskInput`
        # @param Output: 提取溯源水印任务输出信息。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ExtractTraceWatermarkTaskOutput`
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :ErrCodeExt, :Input, :Output, :SessionId, :SessionContext
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, errcodeext=nil, input=nil, output=nil, sessionid=nil, sessioncontext=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @ErrCodeExt = errcodeext
          @Input = input
          @Output = output
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @ErrCodeExt = params['ErrCodeExt']
          unless params['Input'].nil?
            @Input = ExtractTraceWatermarkTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = ExtractTraceWatermarkTaskOutput.new
            @Output.deserialize(params['Output'])
          end
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # 提取溯源水印输入
      class ExtractTraceWatermarkTaskInput < TencentCloud::Common::AbstractModel
        # @param Url: 需要提取水印的媒体 URL。
        # @type Url: String

        attr_accessor :Url
        
        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 提取溯源水印输出信息
      class ExtractTraceWatermarkTaskOutput < TencentCloud::Common::AbstractModel
        # @param Uv: 播放者的 ID，以十六进制表示，共6位，该参数用于 [溯源水印](https://cloud.tencent.com/document/product/266/75789) 使用场景。
        # @type Uv: String
        # @param Uid: 该字段已废弃。
        # @type Uid: String

        attr_accessor :Uv, :Uid
        
        def initialize(uv=nil, uid=nil)
          @Uv = uv
          @Uid = uid
        end

        def deserialize(params)
          @Uv = params['Uv']
          @Uid = params['Uid']
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
        # <li>politician：相关人物。</li>
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
        # <li>politician：相关人物。</li>
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

      # 文件删除结果信息
      class FileDeleteResultItem < TencentCloud::Common::AbstractModel
        # @param FileId: 删除的文件 ID 。
        # @type FileId: String
        # @param DeleteParts: 本次删除的文件部分。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteParts: Array

        attr_accessor :FileId, :DeleteParts
        
        def initialize(fileid=nil, deleteparts=nil)
          @FileId = fileid
          @DeleteParts = deleteparts
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['DeleteParts'].nil?
            @DeleteParts = []
            params['DeleteParts'].each do |i|
              mediadeleteitem_tmp = MediaDeleteItem.new
              mediadeleteitem_tmp.deserialize(i)
              @DeleteParts << mediadeleteitem_tmp
            end
          end
        end
      end

      # 文件删除任务
      class FileDeleteTask < TencentCloud::Common::AbstractModel
        # @param FileIdSet: 删除文件 ID 列表。
        # @type FileIdSet: Array
        # @param FileDeleteResultInfo: 删除文件结果信息列表。
        # @type FileDeleteResultInfo: Array

        attr_accessor :FileIdSet, :FileDeleteResultInfo
        
        def initialize(fileidset=nil, filedeleteresultinfo=nil)
          @FileIdSet = fileidset
          @FileDeleteResultInfo = filedeleteresultinfo
        end

        def deserialize(params)
          @FileIdSet = params['FileIdSet']
          unless params['FileDeleteResultInfo'].nil?
            @FileDeleteResultInfo = []
            params['FileDeleteResultInfo'].each do |i|
              filedeleteresultitem_tmp = FileDeleteResultItem.new
              filedeleteresultitem_tmp.deserialize(i)
              @FileDeleteResultInfo << filedeleteresultitem_tmp
            end
          end
        end
      end

      # 文件上传任务信息
      class FileUploadTask < TencentCloud::Common::AbstractModel
        # @param FileId: 文件唯一 ID。
        # @type FileId: String
        # @param MediaBasicInfo: 上传完成后生成的媒体文件基础信息。
        # @type MediaBasicInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaBasicInfo`
        # @param ProcedureTaskId: 若视频上传时指定了视频处理流程，则该字段为流程任务 ID。
        # @type ProcedureTaskId: String
        # @param MetaData: 元信息。包括大小、时长、视频流信息、音频流信息等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`

        attr_accessor :FileId, :MediaBasicInfo, :ProcedureTaskId, :MetaData
        
        def initialize(fileid=nil, mediabasicinfo=nil, proceduretaskid=nil, metadata=nil)
          @FileId = fileid
          @MediaBasicInfo = mediabasicinfo
          @ProcedureTaskId = proceduretaskid
          @MetaData = metadata
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['MediaBasicInfo'].nil?
            @MediaBasicInfo = MediaBasicInfo.new
            @MediaBasicInfo.deserialize(params['MediaBasicInfo'])
          end
          @ProcedureTaskId = params['ProcedureTaskId']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
        end
      end

      # ForbidMediaDistribution请求参数结构体
      class ForbidMediaDistributionRequest < TencentCloud::Common::AbstractModel
        # @param FileIds: 媒体文件列表，每次最多可提交 20 条。
        # @type FileIds: Array
        # @param Operation: forbid：禁播，recover：解禁。
        # @type Operation: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :FileIds, :Operation, :SubAppId
        
        def initialize(fileids=nil, operation=nil, subappid=nil)
          @FileIds = fileids
          @Operation = operation
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @Operation = params['Operation']
          @SubAppId = params['SubAppId']
        end
      end

      # ForbidMediaDistribution返回参数结构体
      class ForbidMediaDistributionResponse < TencentCloud::Common::AbstractModel
        # @param NotExistFileIdSet: 不存在的文件 ID 列表。
        # @type NotExistFileIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotExistFileIdSet, :RequestId
        
        def initialize(notexistfileidset=nil, requestid=nil)
          @NotExistFileIdSet = notexistfileidset
          @RequestId = requestid
        end

        def deserialize(params)
          @NotExistFileIdSet = params['NotExistFileIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 智能按帧标签任务控制参数
      class FrameTagConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能按帧标签任务开关，可选值：
        # <li>ON：开启智能按帧标签任务；</li>
        # <li>OFF：关闭智能按帧标签任务。</li>
        # @type Switch: String
        # @param ScreenshotInterval: 截帧间隔，单位为秒，当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float

        attr_accessor :Switch, :ScreenshotInterval
        
        def initialize(switch=nil, screenshotinterval=nil)
          @Switch = switch
          @ScreenshotInterval = screenshotinterval
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ScreenshotInterval = params['ScreenshotInterval']
        end
      end

      # 智能按帧标签任务控制参数
      class FrameTagConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能按帧标签任务开关，可选值：
        # <li>ON：开启智能按帧标签任务；</li>
        # <li>OFF：关闭智能按帧标签任务。</li>
        # @type Switch: String
        # @param ScreenshotInterval: 截帧间隔，单位为秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float

        attr_accessor :Switch, :ScreenshotInterval
        
        def initialize(switch=nil, screenshotinterval=nil)
          @Switch = switch
          @ScreenshotInterval = screenshotinterval
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ScreenshotInterval = params['ScreenshotInterval']
        end
      end

      # 视频片头片尾识别任务控制参数
      class HeadTailConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 视频片头片尾识别任务开关，可选值：
        # <li>ON：开启智能视频片头片尾识别任务；</li>
        # <li>OFF：关闭智能视频片头片尾识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 视频片头片尾识别任务控制参数
      class HeadTailConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 视频片头片尾识别任务开关，可选值：
        # <li>ON：开启智能视频片头片尾识别任务；</li>
        # <li>OFF：关闭智能视频片头片尾识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 片尾任务输入类型。
      class HeadTailTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 片头片尾模板号。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 片头片尾模板详情
      class HeadTailTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 片头片尾模板号。
        # @type Definition: Integer
        # @param Name: 模板名，最大支持 64 个字符。
        # @type Name: String
        # @param Comment: 模板描述，最大支持 256 个字符。
        # @type Comment: String
        # @param HeadCandidateSet: 片头候选列表。使用时会选择跟正片分辨率最贴近的一个使用，当存在相同的候选时，选择第一个使用，最大支持 5 个。
        # @type HeadCandidateSet: Array
        # @param TailCandidateSet: 片尾候选列表。使用时会选择跟正片分辨率最贴近的一个使用，当存在相同的候选时，选择第一个使用，最大支持 5 个。
        # @type TailCandidateSet: Array
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li> gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊；</li>
        # <li> white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充；</li>
        # <li> black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：stretch 。
        # @type FillType: String

        attr_accessor :Definition, :Name, :Comment, :HeadCandidateSet, :TailCandidateSet, :FillType
        
        def initialize(definition=nil, name=nil, comment=nil, headcandidateset=nil, tailcandidateset=nil, filltype=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @HeadCandidateSet = headcandidateset
          @TailCandidateSet = tailcandidateset
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          @HeadCandidateSet = params['HeadCandidateSet']
          @TailCandidateSet = params['TailCandidateSet']
          @FillType = params['FillType']
        end
      end

      # 智能精彩集锦片段列表。
      class HighlightSegmentItem < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度。
        # @type Confidence: Float
        # @param StartTimeOffset: 片段起始时间偏移。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 片段结束时间偏移。
        # @type EndTimeOffset: Float

        attr_accessor :Confidence, :StartTimeOffset, :EndTimeOffset
        
        def initialize(confidence=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 智能精彩片段任务控制参数
      class HighlightsConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能精彩片段任务开关，可选值：
        # <li>ON：开启智能精彩片段任务；</li>
        # <li>OFF：关闭智能精彩片段任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能精彩片段任务控制参数
      class HighlightsConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能精彩片段任务开关，可选值：
        # <li>ON：开启智能精彩片段任务；</li>
        # <li>OFF：关闭智能精彩片段任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 图片中心裁剪处理。
      class ImageCenterCut < TencentCloud::Common::AbstractModel
        # @param Type: 图片的裁剪模式，可选 Circle 和 Rectangle。
        # <li>Circle ： 内切圆裁剪，输出图片半径为 Radius。</li>
        # <li>Rectangle ： 矩形裁剪，输出图片宽为 Width ， 高为 Height。</li>
        # @type Type: String
        # @param Width: 输出图片的宽度，单位为像素，当 Type 取值为 Rectangle 时有效。
        # @type Width: Integer
        # @param Height: 输出图片的高度，单位为像素，当 Type 取值为 Rectangle 时有效。
        # @type Height: Integer
        # @param Radius: 输出图片的半径，单位为像素，当 Type 取值为 Circle 时有效。
        # @type Radius: Integer

        attr_accessor :Type, :Width, :Height, :Radius
        
        def initialize(type=nil, width=nil, height=nil, radius=nil)
          @Type = type
          @Width = width
          @Height = height
          @Radius = radius
        end

        def deserialize(params)
          @Type = params['Type']
          @Width = params['Width']
          @Height = params['Height']
          @Radius = params['Radius']
        end
      end

      # 图片智能内容识别任务输入
      class ImageContentReviewInput < TencentCloud::Common::AbstractModel
        # @param Definition: 图片智能内容审核模板 ID。当前只支持：
        # <li>10：所有审核类型均打开。</li>
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 单个图片处理操作。
      class ImageOperation < TencentCloud::Common::AbstractModel
        # @param Type: 图片处理类型。可选类型有：
        # <li>Scale : 图片缩略处理。</li>
        # <li>CenterCut : 图片裁剪处理。</li>
        # @type Type: String
        # @param Scale: 图片缩略处理，仅当 Type 为 Scale 时有效。
        # @type Scale: :class:`Tencentcloud::Vod.v20180717.models.ImageScale`
        # @param CenterCut: 图片裁剪处理，仅当 Type 为 CenterCut 时有效。
        # @type CenterCut: :class:`Tencentcloud::Vod.v20180717.models.ImageCenterCut`

        attr_accessor :Type, :Scale, :CenterCut
        
        def initialize(type=nil, scale=nil, centercut=nil)
          @Type = type
          @Scale = scale
          @CenterCut = centercut
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Scale'].nil?
            @Scale = ImageScale.new
            @Scale.deserialize(params['Scale'])
          end
          unless params['CenterCut'].nil?
            @CenterCut = ImageCenterCut.new
            @CenterCut.deserialize(params['CenterCut'])
          end
        end
      end

      # 图片处理模板， 最多支持三次操作。例如：裁剪-缩略-裁剪。
      class ImageProcessingTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 图片处理模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 图片处理模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Operations: 图片处理操作数组，操作将以数组顺序执行。
        # <li>长度限制：3。</li>
        # @type Operations: Array
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Operations, :CreateTime
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, operations=nil, createtime=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Operations = operations
          @CreateTime = createtime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              imageoperation_tmp = ImageOperation.new
              imageoperation_tmp.deserialize(i)
              @Operations << imageoperation_tmp
            end
          end
          @CreateTime = params['CreateTime']
        end
      end

      # 图片审核次数统计数据。
      class ImageReviewUsageDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 数据所在时间区间的开始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。如：当时间粒度为天，2018-12-01T00:00:00+08:00，表示2018年12月1日（含）到2018年12月2日（不含）区间。
        # @type Time: String
        # @param Count: 次数。
        # @type Count: Integer

        attr_accessor :Time, :Count
        
        def initialize(time=nil, count=nil)
          @Time = time
          @Count = count
        end

        def deserialize(params)
          @Time = params['Time']
          @Count = params['Count']
        end
      end

      # 图片缩放处理。
      class ImageScale < TencentCloud::Common::AbstractModel
        # @param Type: 图片缩放的操作类型。可选模式有：
        # <li>WidthFirst : 指定图片的宽为 Width ，高度等比缩放。</li>
        # <li>HeightFirst : 指定图片的高为 Height ，宽度等比缩放。</li>
        # <li>LongEdgeFirst : 指定图片的长边为 LongEdge ，短边等比缩放。</li>
        # <li>ShortEdgeFirst : 指定图片的短边为 ShortEdge ，长边等比缩放。</li>
        # <li>Force : 忽略原图宽高比例，指定图片宽度为 Width，高度为 Height ，强行缩放图片，可能导致目标图片变形。</li>
        # @type Type: String
        # @param Height: 输出图片的高度，单位为像素。当 Type 取值为 HeightFirst 或 Force 时此字段有效。
        # @type Height: Integer
        # @param Width: 输出图片的宽度，单位为像素。当 Type 取值为 WidthFirst 或 Force 时此字段有效。
        # @type Width: Integer
        # @param LongEdge: 输出图片的长边长度，单位为像素。当 Type 取值为 LongEdgeFirst 时此字段有效。
        # @type LongEdge: Integer
        # @param ShortEdge: 输出图片的短边长度，单位为像素。当 Type 取值为 ShortEdgeFirst 时此字段有效。
        # @type ShortEdge: Integer

        attr_accessor :Type, :Height, :Width, :LongEdge, :ShortEdge
        
        def initialize(type=nil, height=nil, width=nil, longedge=nil, shortedge=nil)
          @Type = type
          @Height = height
          @Width = width
          @LongEdge = longedge
          @ShortEdge = shortedge
        end

        def deserialize(params)
          @Type = params['Type']
          @Height = params['Height']
          @Width = params['Width']
          @LongEdge = params['LongEdge']
          @ShortEdge = params['ShortEdge']
        end
      end

      # 对视频截雪碧图任务输入参数类型
      class ImageSpriteTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
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
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
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

      # 图像旋转、翻转等操作
      class ImageTransform < TencentCloud::Common::AbstractModel
        # @param Type: 类型，取值有：
        # <li> Rotate：图像旋转。</li>
        # <li> Flip：图像翻转。</li>
        # @type Type: String
        # @param RotateAngle: 图像以中心点为原点进行旋转的角度，取值范围0~360。当 Type = Rotate 时有效。
        # @type RotateAngle: Float
        # @param Flip: 图像翻转动作，取值有：
        # <li>Horizental：水平翻转，即左右镜像。</li>
        # <li>Vertical：垂直翻转，即上下镜像。</li>
        # 当 Type = Flip 时有效。
        # @type Flip: String

        attr_accessor :Type, :RotateAngle, :Flip
        
        def initialize(type=nil, rotateangle=nil, flip=nil)
          @Type = type
          @RotateAngle = rotateangle
          @Flip = flip
        end

        def deserialize(params)
          @Type = params['Type']
          @RotateAngle = params['RotateAngle']
          @Flip = params['Flip']
        end
      end

      # 图片水印模板输入参数
      class ImageWatermarkInput < TencentCloud::Common::AbstractModel
        # @param ImageContent: 水印图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串。支持 jpeg、png、gif 图片格式。
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
        # @param Transparency: 图片透明度，取值范围：[0, 100]
        # <li>0：完全不透明</li>
        # <li>100：完全透明</li>
        # 默认值：0。
        # @type Transparency: Integer

        attr_accessor :ImageContent, :Width, :Height, :RepeatType, :Transparency
        
        def initialize(imagecontent=nil, width=nil, height=nil, repeattype=nil, transparency=nil)
          @ImageContent = imagecontent
          @Width = width
          @Height = height
          @RepeatType = repeattype
          @Transparency = transparency
        end

        def deserialize(params)
          @ImageContent = params['ImageContent']
          @Width = params['Width']
          @Height = params['Height']
          @RepeatType = params['RepeatType']
          @Transparency = params['Transparency']
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
        # @type Height: String
        # @param RepeatType: 水印重复类型。使用场景：水印为动态图像。取值范围：
        # <li>once：动态水印播放完后，不再出现；</li>
        # <li>repeat_last_frame：水印播放完后，停留在最后一帧；</li>
        # <li>repeat：水印循环播放，直到视频结束。</li>
        # @type RepeatType: String
        # @param Transparency: 图片透明度，取值范围：[0, 100]
        # <li>0：完全不透明</li>
        # <li>100：完全透明。</li>
        # @type Transparency: Integer

        attr_accessor :ImageContent, :Width, :Height, :RepeatType, :Transparency
        
        def initialize(imagecontent=nil, width=nil, height=nil, repeattype=nil, transparency=nil)
          @ImageContent = imagecontent
          @Width = width
          @Height = height
          @RepeatType = repeattype
          @Transparency = transparency
        end

        def deserialize(params)
          @ImageContent = params['ImageContent']
          @Width = params['Width']
          @Height = params['Height']
          @RepeatType = params['RepeatType']
          @Transparency = params['Transparency']
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
        # @param Transparency: 图片透明度，取值范围：[0, 100]
        # <li>0：完全不透明</li>
        # <li>100：完全透明。</li>
        # @type Transparency: Integer

        attr_accessor :ImageUrl, :Width, :Height, :RepeatType, :Transparency
        
        def initialize(imageurl=nil, width=nil, height=nil, repeattype=nil, transparency=nil)
          @ImageUrl = imageurl
          @Width = width
          @Height = height
          @RepeatType = repeattype
          @Transparency = transparency
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @Width = params['Width']
          @Height = params['Height']
          @RepeatType = params['RepeatType']
          @Transparency = params['Transparency']
        end
      end

      # License 请求次数统计数据。
      class LicenseUsageDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 数据所在时间区间的开始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。如：当时间粒度为天，2018-12-01T00:00:00+08:00，表示2018年12月1日（含）到2018年12月2日（不含）区间。
        # @type Time: String
        # @param Count: License 请求次数。
        # @type Count: Integer

        attr_accessor :Time, :Count
        
        def initialize(time=nil, count=nil)
          @Time = time
          @Count = count
        end

        def deserialize(params)
          @Time = params['Time']
          @Count = params['Count']
        end
      end

      # 即时剪辑后媒资的片段信息。
      class LiveRealTimeClipMediaSegmentInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 片段的起始时间。格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 片段的结束时间。格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
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

      # LiveRealTimeClip请求参数结构体
      class LiveRealTimeClipRequest < TencentCloud::Common::AbstractModel
        # @param StreamId: 推流直播码。
        # @type StreamId: String
        # @param StartTime: 流剪辑的开始时间，格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 流剪辑的结束时间，格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param IsPersistence: 是否固化。0 不固化，1 固化。默认不固化。
        # @type IsPersistence: Integer
        # @param ExpireTime: 剪辑固化后的视频存储过期时间。格式参照 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。填“9999-12-31T23:59:59Z”表示永不过期。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。仅 IsPersistence 为 1 时有效，默认剪辑固化的视频永不过期。
        # @type ExpireTime: String
        # @param Procedure: 剪辑固化后的视频点播任务流处理，详见[上传指定任务流](https://cloud.tencent.com/document/product/266/9759)。仅 IsPersistence 为 1 时有效。
        # @type Procedure: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # 仅 IsPersistence 为 1 时有效。
        # @type ClassId: Integer
        # @param SourceContext: 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。仅 IsPersistence 为 1 时有效。
        # @type SourceContext: String
        # @param SessionContext: 会话上下文，用于透传用户请求信息，当指定 Procedure 参数后，[任务流状态变更回调](/document/product/266/9636) 将返回该字段值，最长 1000 个字符。仅 IsPersistence 为 1 时有效。
        # @type SessionContext: String
        # @param MetaDataRequired: 是否需要返回剪辑后的视频元信息。0 不需要，1 需要。默认不需要。
        # @type MetaDataRequired: Integer
        # @param Host: 云点播中添加的用于时移播放的域名，必须在云直播已经[关联录制模板和开通时移服务](https://cloud.tencent.com/document/product/266/52220#.E6.AD.A5.E9.AA.A43.EF.BC.9A.E5.85.B3.E8.81.94.E5.BD.95.E5.88.B6.E6.A8.A1.E6.9D.BF.3Ca-id.3D.22step3.22.3E.3C.2Fa.3E)。**如果本接口的首次调用时间在 2021-01-01T00:00:00Z 之后，则此字段为必选字段。**
        # @type Host: String
        # @param StreamInfo: 剪辑的直播流信息：
        # <li>默认剪辑直播原始流。</li>
        # <li>当StreamInfo中指定的Type为Transcoding，则剪辑TemplateId对应的直播转码流。</li>
        # @type StreamInfo: :class:`Tencentcloud::Vod.v20180717.models.LiveRealTimeClipStreamInfo`
        # @param ExtInfo: 系统保留字段，请勿填写。
        # @type ExtInfo: String

        attr_accessor :StreamId, :StartTime, :EndTime, :SubAppId, :IsPersistence, :ExpireTime, :Procedure, :ClassId, :SourceContext, :SessionContext, :MetaDataRequired, :Host, :StreamInfo, :ExtInfo
        
        def initialize(streamid=nil, starttime=nil, endtime=nil, subappid=nil, ispersistence=nil, expiretime=nil, procedure=nil, classid=nil, sourcecontext=nil, sessioncontext=nil, metadatarequired=nil, host=nil, streaminfo=nil, extinfo=nil)
          @StreamId = streamid
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
          @IsPersistence = ispersistence
          @ExpireTime = expiretime
          @Procedure = procedure
          @ClassId = classid
          @SourceContext = sourcecontext
          @SessionContext = sessioncontext
          @MetaDataRequired = metadatarequired
          @Host = host
          @StreamInfo = streaminfo
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
          @IsPersistence = params['IsPersistence']
          @ExpireTime = params['ExpireTime']
          @Procedure = params['Procedure']
          @ClassId = params['ClassId']
          @SourceContext = params['SourceContext']
          @SessionContext = params['SessionContext']
          @MetaDataRequired = params['MetaDataRequired']
          @Host = params['Host']
          unless params['StreamInfo'].nil?
            @StreamInfo = LiveRealTimeClipStreamInfo.new
            @StreamInfo.deserialize(params['StreamInfo'])
          end
          @ExtInfo = params['ExtInfo']
        end
      end

      # LiveRealTimeClip返回参数结构体
      class LiveRealTimeClipResponse < TencentCloud::Common::AbstractModel
        # @param Url: 剪辑后的视频播放 URL。
        # @type Url: String
        # @param FileId: 剪辑固化后的视频的媒体文件的唯一标识。
        # @type FileId: String
        # @param VodTaskId: 剪辑固化后的视频任务流 ID。
        # @type VodTaskId: String
        # @param MetaData: 剪辑后的视频元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param SegmentSet: <span id="p_segmentset">剪辑后的视频片段信息。</span>
        # @type SegmentSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :FileId, :VodTaskId, :MetaData, :SegmentSet, :RequestId
        
        def initialize(url=nil, fileid=nil, vodtaskid=nil, metadata=nil, segmentset=nil, requestid=nil)
          @Url = url
          @FileId = fileid
          @VodTaskId = vodtaskid
          @MetaData = metadata
          @SegmentSet = segmentset
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @FileId = params['FileId']
          @VodTaskId = params['VodTaskId']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              liverealtimeclipmediasegmentinfo_tmp = LiveRealTimeClipMediaSegmentInfo.new
              liverealtimeclipmediasegmentinfo_tmp.deserialize(i)
              @SegmentSet << liverealtimeclipmediasegmentinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 直播即时剪辑流信息
      class LiveRealTimeClipStreamInfo < TencentCloud::Common::AbstractModel
        # @param Type: 直播流类型，可选值：
        # <li>Original（原始流，<b>默认值</b>）。</li>
        # <li>Transcoding（转码流）。</li>
        # @type Type: String
        # @param TemplateId: 直播转码模板ID。
        # <b>当Type值为"Transcoding"时，必须填写。</b>
        # @type TemplateId: Integer

        attr_accessor :Type, :TemplateId
        
        def initialize(type=nil, templateid=nil)
          @Type = type
          @TemplateId = templateid
        end

        def deserialize(params)
          @Type = params['Type']
          @TemplateId = params['TemplateId']
        end
      end

      # ManageTask请求参数结构体
      class ManageTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频处理的任务 ID。
        # @type TaskId: String
        # @param OperationType: 操作类型，取值范围：
        # <li>Abort：终止任务。只能终止已发起且状态为等待中（WAITING）的任务。</li>
        # @type OperationType: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :TaskId, :OperationType, :SubAppId
        
        def initialize(taskid=nil, operationtype=nil, subappid=nil)
          @TaskId = taskid
          @OperationType = operationtype
          @SubAppId = subappid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @OperationType = params['OperationType']
          @SubAppId = params['SubAppId']
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

      # 转自适应码流信息
      class MediaAdaptiveDynamicStreamingInfo < TencentCloud::Common::AbstractModel
        # @param AdaptiveDynamicStreamingSet: 转自适应码流信息数组。
        # @type AdaptiveDynamicStreamingSet: Array

        attr_accessor :AdaptiveDynamicStreamingSet
        
        def initialize(adaptivedynamicstreamingset=nil)
          @AdaptiveDynamicStreamingSet = adaptivedynamicstreamingset
        end

        def deserialize(params)
          unless params['AdaptiveDynamicStreamingSet'].nil?
            @AdaptiveDynamicStreamingSet = []
            params['AdaptiveDynamicStreamingSet'].each do |i|
              adaptivedynamicstreaminginfoitem_tmp = AdaptiveDynamicStreamingInfoItem.new
              adaptivedynamicstreaminginfoitem_tmp.deserialize(i)
              @AdaptiveDynamicStreamingSet << adaptivedynamicstreaminginfoitem_tmp
            end
          end
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
        # @param CoverUrl: 智能封面地址。
        # @type CoverUrl: String
        # @param Confidence: 智能封面的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :CoverUrl, :Confidence
        
        def initialize(coverurl=nil, confidence=nil)
          @CoverUrl = coverurl
          @Confidence = confidence
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
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

      # 智能精彩片段信息
      class MediaAiAnalysisHighlightItem < TencentCloud::Common::AbstractModel
        # @param HighlightUrl: 智能精彩集锦地址。
        # @type HighlightUrl: String
        # @param CovImgUrl: 智能精彩集锦封面地址。
        # @type CovImgUrl: String
        # @param Confidence: 智能精彩集锦的可信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param Duration: 智能精彩集锦持续时间。
        # @type Duration: Float
        # @param SegmentSet: 智能精彩集锦子片段列表，精彩集锦片段由这些子片段拼接生成。
        # @type SegmentSet: Array

        attr_accessor :HighlightUrl, :CovImgUrl, :Confidence, :Duration, :SegmentSet
        
        def initialize(highlighturl=nil, covimgurl=nil, confidence=nil, duration=nil, segmentset=nil)
          @HighlightUrl = highlighturl
          @CovImgUrl = covimgurl
          @Confidence = confidence
          @Duration = duration
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @HighlightUrl = params['HighlightUrl']
          @CovImgUrl = params['CovImgUrl']
          @Confidence = params['Confidence']
          @Duration = params['Duration']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              highlightsegmentitem_tmp = HighlightSegmentItem.new
              highlightsegmentitem_tmp.deserialize(i)
              @SegmentSet << highlightsegmentitem_tmp
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

      # 点播文件视频转动图结果信息
      class MediaAnimatedGraphicsInfo < TencentCloud::Common::AbstractModel
        # @param AnimatedGraphicsSet: 视频转动图结果信息
        # @type AnimatedGraphicsSet: Array

        attr_accessor :AnimatedGraphicsSet
        
        def initialize(animatedgraphicsset=nil)
          @AnimatedGraphicsSet = animatedgraphicsset
        end

        def deserialize(params)
          unless params['AnimatedGraphicsSet'].nil?
            @AnimatedGraphicsSet = []
            params['AnimatedGraphicsSet'].each do |i|
              mediaanimatedgraphicsitem_tmp = MediaAnimatedGraphicsItem.new
              mediaanimatedgraphicsitem_tmp.deserialize(i)
              @AnimatedGraphicsSet << mediaanimatedgraphicsitem_tmp
            end
          end
        end
      end

      # 视频转动图结果信息
      class MediaAnimatedGraphicsItem < TencentCloud::Common::AbstractModel
        # @param Url: 转动图的文件地址。
        # @type Url: String
        # @param Definition: 转动图模板 ID，参见[转动图参数模板](https://cloud.tencent.com/document/product/266/33481#.3Cspan-id-.3D-.22zdt.22.3E.3C.2Fspan.3E.E8.BD.AC.E5.8A.A8.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
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

        attr_accessor :Url, :Definition, :Container, :Height, :Width, :Bitrate, :Size, :Md5, :StartTimeOffset, :EndTimeOffset
        
        def initialize(url=nil, definition=nil, container=nil, height=nil, width=nil, bitrate=nil, size=nil, md5=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Url = url
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
          @Url = params['Url']
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

        attr_accessor :Bitrate, :SamplingRate, :Codec
        
        def initialize(bitrate=nil, samplingrate=nil, codec=nil)
          @Bitrate = bitrate
          @SamplingRate = samplingrate
          @Codec = codec
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @SamplingRate = params['SamplingRate']
          @Codec = params['Codec']
        end
      end

      # 点播媒体文件基础信息
      class MediaBasicInfo < TencentCloud::Common::AbstractModel
        # @param Name: 媒体文件名称。
        # @type Name: String
        # @param Description: 媒体文件描述。
        # @type Description: String
        # @param CreateTime: 媒体文件的创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 媒体文件的最近更新时间（如修改视频属性、发起视频处理等会触发更新媒体文件信息的操作），使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param ExpireTime: 媒体文件的过期时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。“9999-12-31T23:59:59Z”表示永不过期。
        # @type ExpireTime: String
        # @param ClassId: 媒体文件的分类 ID。
        # @type ClassId: Integer
        # @param ClassName: 媒体文件的分类名称。
        # @type ClassName: String
        # @param ClassPath: 媒体文件的分类路径，分类间以“-”分隔，如“新的一级分类 - 新的二级分类”。
        # @type ClassPath: String
        # @param CoverUrl: 媒体文件的封面图片地址。
        # @type CoverUrl: String
        # @param Type: 媒体文件的封装格式，例如 mp4、flv 等。
        # @type Type: String
        # @param MediaUrl: 原始媒体文件的 URL 地址。
        # @type MediaUrl: String
        # @param SourceInfo: 该媒体文件的来源信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaSourceData`
        # @param StorageRegion: 媒体文件存储地区，如 ap-chongqing，参见[地域列表](https://cloud.tencent.com/document/product/266/9760#.E5.B7.B2.E6.94.AF.E6.8C.81.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)。
        # @type StorageRegion: String
        # @param TagSet: 媒体文件的标签信息。
        # @type TagSet: Array
        # @param Vid: 直播录制文件的唯一标识。
        # @type Vid: String
        # @param Category: 文件类型：
        # <li>Video: 视频文件</li>
        # <li>Audio: 音频文件</li>
        # <li>Image: 图片文件</li>
        # @type Category: String
        # @param Status: 文件状态：Normal：正常，Forbidden：封禁。

        # *注意：此字段暂不支持。
        # @type Status: String
        # @param StorageClass: 媒体文件的存储类别：
        # <li> STANDARD：标准存储。</li>
        # <li> STANDARD_IA：低频存储。</li>
        # <li> ARCHIVE：归档存储。</li>
        # <li> DEEP_ARCHIVE：深度归档存储。</li>
        # @type StorageClass: String

        attr_accessor :Name, :Description, :CreateTime, :UpdateTime, :ExpireTime, :ClassId, :ClassName, :ClassPath, :CoverUrl, :Type, :MediaUrl, :SourceInfo, :StorageRegion, :TagSet, :Vid, :Category, :Status, :StorageClass
        
        def initialize(name=nil, description=nil, createtime=nil, updatetime=nil, expiretime=nil, classid=nil, classname=nil, classpath=nil, coverurl=nil, type=nil, mediaurl=nil, sourceinfo=nil, storageregion=nil, tagset=nil, vid=nil, category=nil, status=nil, storageclass=nil)
          @Name = name
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExpireTime = expiretime
          @ClassId = classid
          @ClassName = classname
          @ClassPath = classpath
          @CoverUrl = coverurl
          @Type = type
          @MediaUrl = mediaurl
          @SourceInfo = sourceinfo
          @StorageRegion = storageregion
          @TagSet = tagset
          @Vid = vid
          @Category = category
          @Status = status
          @StorageClass = storageclass
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExpireTime = params['ExpireTime']
          @ClassId = params['ClassId']
          @ClassName = params['ClassName']
          @ClassPath = params['ClassPath']
          @CoverUrl = params['CoverUrl']
          @Type = params['Type']
          @MediaUrl = params['MediaUrl']
          unless params['SourceInfo'].nil?
            @SourceInfo = MediaSourceData.new
            @SourceInfo.deserialize(params['SourceInfo'])
          end
          @StorageRegion = params['StorageRegion']
          @TagSet = params['TagSet']
          @Vid = params['Vid']
          @Category = params['Category']
          @Status = params['Status']
          @StorageClass = params['StorageClass']
        end
      end

      # 分类信息描述
      class MediaClassInfo < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID。
        # @type ClassId: Integer
        # @param ParentId: 父类 ID，一级分类的父类 ID 为 -1。
        # @type ParentId: Integer
        # @param Name: 分类名称。
        # @type Name: String
        # @param Level: 分类级别，一级分类为 0，最大值为 3，即最多允许 4 级分类层次。
        # @type Level: Integer
        # @param SubClassIdSet: 当前分类的第一级子类 ID 集合。
        # @type SubClassIdSet: Array
        # @param ClassName: 分类名称（该字段已不推荐使用，建议使用新的分类名称字段 Name）。
        # @type ClassName: String

        attr_accessor :ClassId, :ParentId, :Name, :Level, :SubClassIdSet, :ClassName
        
        def initialize(classid=nil, parentid=nil, name=nil, level=nil, subclassidset=nil, classname=nil)
          @ClassId = classid
          @ParentId = parentid
          @Name = name
          @Level = level
          @SubClassIdSet = subclassidset
          @ClassName = classname
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @ParentId = params['ParentId']
          @Name = params['Name']
          @Level = params['Level']
          @SubClassIdSet = params['SubClassIdSet']
          @ClassName = params['ClassName']
        end
      end

      # 音视频审核 Asr 文字的嫌疑片段
      class MediaContentReviewAsrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段音视频审核的结果建议，取值范围：
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

      # 音视频审核 Ocr 文字的嫌疑片段
      class MediaContentReviewOcrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段音视频审核的结果建议，取值范围：
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
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
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

      # 音视频审核涉及令人不适宜信息的嫌疑片段
      class MediaContentReviewPoliticalSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段涉及令人不适宜的信息的结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Name: 涉及令人不适宜的信息、违规图标名字。
        # @type Name: String
        # @param Label: 嫌疑片段涉及令人不适宜的信息的结果标签。音视频审核模板[画面涉及令人不适宜的信息的任务控制参数](https://cloud.tencent.com/document/api/266/31773#PoliticalImgReviewTemplateInfo)里 LabelSet 参数与此参数取值范围的对应关系：
        # violation_photo：
        # <li>violation_photo：违规图标。</li>
        # politician：
        # <li>nation_politician：国家领导人；</li>
        # <li>province_politician: 省部级领导人；</li>
        # <li>bureau_politician：厅局级领导人；</li>
        # <li>county_politician：县处级领导人；</li>
        # <li>rural_politician：乡科级领导人；</li>
        # <li>sensitive_politician：违规相关人物；</li>
        # <li>foreign_politician：国外领导人。</li>
        # entertainment：
        # <li>sensitive_entertainment：违规娱乐人物。</li>
        # sport：
        # <li>sensitive_sport：违规体育人物。</li>
        # entrepreneur：
        # <li>sensitive_entrepreneur：违规商业人物。</li>
        # scholar：
        # <li>sensitive_scholar：违规教育学者。</li>
        # celebrity：
        # <li>sensitive_celebrity：违规知名人物；</li>
        # <li>historical_celebrity：历史知名人物。</li>
        # military：
        # <li>sensitive_military：违规相关人物。</li>
        # @type Label: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        #  PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param AreaCoordSet: 涉及令人不适宜的信息、违规图标出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array
        # @param PicUrlExpireTimeStamp: 该字段已废弃，请使用 PicUrlExpireTime。
        # @type PicUrlExpireTimeStamp: Integer
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :Name, :Label, :Url, :AreaCoordSet, :PicUrlExpireTimeStamp, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, name=nil, label=nil, url=nil, areacoordset=nil, picurlexpiretimestamp=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @Name = name
          @Label = label
          @Url = url
          @AreaCoordSet = areacoordset
          @PicUrlExpireTimeStamp = picurlexpiretimestamp
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
          @PicUrlExpireTimeStamp = params['PicUrlExpireTimeStamp']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 音视频审核涉及令人反感的信息、涉及令人不安全的信息的嫌疑片段
      class MediaContentReviewSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉及令人反感的信息的分数。
        # @type Confidence: Float
        # @param Label: 嫌疑片段涉及令人反感的信息的结果标签。
        # @type Label: String
        # @param Suggestion: 嫌疑片段鉴别涉及令人反感的信息的结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        #  PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTimeStamp: 该字段已废弃，请使用 PicUrlExpireTime。
        # @type PicUrlExpireTimeStamp: Integer
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Label, :Suggestion, :Url, :PicUrlExpireTimeStamp, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, label=nil, suggestion=nil, url=nil, picurlexpiretimestamp=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Label = label
          @Suggestion = suggestion
          @Url = url
          @PicUrlExpireTimeStamp = picurlexpiretimestamp
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Url = params['Url']
          @PicUrlExpireTimeStamp = params['PicUrlExpireTimeStamp']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 指定删除点播视频时的删除内容
      class MediaDeleteItem < TencentCloud::Common::AbstractModel
        # @param Type: 所指定的删除部分。如果未填写该字段则参数无效。可选值有：
        # <li>OriginalFiles（删除原文件，删除后无法发起转码、微信发布等任何视频处理操作）。</li>
        # <li>TranscodeFiles（删除转码文件）。</li>
        # <li>WechatPublishFiles（删除微信发布文件）。</li>
        # @type Type: String
        # @param Definition: 删除由Type参数指定的种类下的视频模板号，模板定义参见[转码模板](https://cloud.tencent.com/document/product/266/33478#.3Cspan-id-.3D-.22zm.22-.3E.3C.2Fspan.3E.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
        # 默认值为0，表示删除参数Type指定种类下所有的视频。
        # @type Definition: Integer

        attr_accessor :Type, :Definition
        
        def initialize(type=nil, definition=nil)
          @Type = type
          @Definition = definition
        end

        def deserialize(params)
          @Type = params['Type']
          @Definition = params['Definition']
        end
      end

      # 点播文件雪碧图信息
      class MediaImageSpriteInfo < TencentCloud::Common::AbstractModel
        # @param ImageSpriteSet: 特定规格的雪碧图信息集合，每个元素代表一套相同规格的雪碧图。
        # @type ImageSpriteSet: Array

        attr_accessor :ImageSpriteSet
        
        def initialize(imagespriteset=nil)
          @ImageSpriteSet = imagespriteset
        end

        def deserialize(params)
          unless params['ImageSpriteSet'].nil?
            @ImageSpriteSet = []
            params['ImageSpriteSet'].each do |i|
              mediaimagespriteitem_tmp = MediaImageSpriteItem.new
              mediaimagespriteitem_tmp.deserialize(i)
              @ImageSpriteSet << mediaimagespriteitem_tmp
            end
          end
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
        # @param ImageUrlSet: 每一张雪碧图大图的地址。
        # @type ImageUrlSet: Array
        # @param WebVttUrl: 雪碧图子图位置与时间关系的 WebVtt 文件地址。WebVtt 文件表明了各个雪碧图小图对应的时间点，以及在雪碧大图里的坐标位置，一般被播放器用于实现预览。
        # @type WebVttUrl: String

        attr_accessor :Definition, :Height, :Width, :TotalCount, :ImageUrlSet, :WebVttUrl
        
        def initialize(definition=nil, height=nil, width=nil, totalcount=nil, imageurlset=nil, webvtturl=nil)
          @Definition = definition
          @Height = height
          @Width = width
          @TotalCount = totalcount
          @ImageUrlSet = imageurlset
          @WebVttUrl = webvtturl
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Height = params['Height']
          @Width = params['Width']
          @TotalCount = params['TotalCount']
          @ImageUrlSet = params['ImageUrlSet']
          @WebVttUrl = params['WebVttUrl']
        end
      end

      # 点播文件信息
      class MediaInfo < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 基础信息。包括视频名称、分类、播放地址、封面图片等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaBasicInfo`
        # @param MetaData: 元信息。包括大小、时长、视频流信息、音频流信息等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param TranscodeInfo: 转码结果信息。包括该视频转码生成的各种码率的视频的地址、规格、码率、分辨率等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaTranscodeInfo`
        # @param AnimatedGraphicsInfo: 转动图结果信息。对视频转动图（如 gif）后，动图相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnimatedGraphicsInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaAnimatedGraphicsInfo`
        # @param SampleSnapshotInfo: 采样截图信息。对视频采样截图后，相关截图信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleSnapshotInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaSampleSnapshotInfo`
        # @param ImageSpriteInfo: 雪碧图信息。对视频截取雪碧图之后，雪碧的相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSpriteInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaImageSpriteInfo`
        # @param SnapshotByTimeOffsetInfo: 指定时间点截图信息。对视频依照指定时间点截图后，各个截图的信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaSnapshotByTimeOffsetInfo`
        # @param KeyFrameDescInfo: 视频打点信息。对视频设置的各个打点信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyFrameDescInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaKeyFrameDescInfo`
        # @param AdaptiveDynamicStreamingInfo: 转自适应码流信息。包括规格、加密类型、打包格式等相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdaptiveDynamicStreamingInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaAdaptiveDynamicStreamingInfo`
        # @param MiniProgramReviewInfo: 小程序审核信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniProgramReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaMiniProgramReviewInfo`
        # @param SubtitleInfo: 字幕信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubtitleInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaSubtitleInfo`
        # @param FileId: 媒体文件唯一标识 ID。
        # @type FileId: String

        attr_accessor :BasicInfo, :MetaData, :TranscodeInfo, :AnimatedGraphicsInfo, :SampleSnapshotInfo, :ImageSpriteInfo, :SnapshotByTimeOffsetInfo, :KeyFrameDescInfo, :AdaptiveDynamicStreamingInfo, :MiniProgramReviewInfo, :SubtitleInfo, :FileId
        
        def initialize(basicinfo=nil, metadata=nil, transcodeinfo=nil, animatedgraphicsinfo=nil, samplesnapshotinfo=nil, imagespriteinfo=nil, snapshotbytimeoffsetinfo=nil, keyframedescinfo=nil, adaptivedynamicstreaminginfo=nil, miniprogramreviewinfo=nil, subtitleinfo=nil, fileid=nil)
          @BasicInfo = basicinfo
          @MetaData = metadata
          @TranscodeInfo = transcodeinfo
          @AnimatedGraphicsInfo = animatedgraphicsinfo
          @SampleSnapshotInfo = samplesnapshotinfo
          @ImageSpriteInfo = imagespriteinfo
          @SnapshotByTimeOffsetInfo = snapshotbytimeoffsetinfo
          @KeyFrameDescInfo = keyframedescinfo
          @AdaptiveDynamicStreamingInfo = adaptivedynamicstreaminginfo
          @MiniProgramReviewInfo = miniprogramreviewinfo
          @SubtitleInfo = subtitleinfo
          @FileId = fileid
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = MediaBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          unless params['TranscodeInfo'].nil?
            @TranscodeInfo = MediaTranscodeInfo.new
            @TranscodeInfo.deserialize(params['TranscodeInfo'])
          end
          unless params['AnimatedGraphicsInfo'].nil?
            @AnimatedGraphicsInfo = MediaAnimatedGraphicsInfo.new
            @AnimatedGraphicsInfo.deserialize(params['AnimatedGraphicsInfo'])
          end
          unless params['SampleSnapshotInfo'].nil?
            @SampleSnapshotInfo = MediaSampleSnapshotInfo.new
            @SampleSnapshotInfo.deserialize(params['SampleSnapshotInfo'])
          end
          unless params['ImageSpriteInfo'].nil?
            @ImageSpriteInfo = MediaImageSpriteInfo.new
            @ImageSpriteInfo.deserialize(params['ImageSpriteInfo'])
          end
          unless params['SnapshotByTimeOffsetInfo'].nil?
            @SnapshotByTimeOffsetInfo = MediaSnapshotByTimeOffsetInfo.new
            @SnapshotByTimeOffsetInfo.deserialize(params['SnapshotByTimeOffsetInfo'])
          end
          unless params['KeyFrameDescInfo'].nil?
            @KeyFrameDescInfo = MediaKeyFrameDescInfo.new
            @KeyFrameDescInfo.deserialize(params['KeyFrameDescInfo'])
          end
          unless params['AdaptiveDynamicStreamingInfo'].nil?
            @AdaptiveDynamicStreamingInfo = MediaAdaptiveDynamicStreamingInfo.new
            @AdaptiveDynamicStreamingInfo.deserialize(params['AdaptiveDynamicStreamingInfo'])
          end
          unless params['MiniProgramReviewInfo'].nil?
            @MiniProgramReviewInfo = MediaMiniProgramReviewInfo.new
            @MiniProgramReviewInfo.deserialize(params['MiniProgramReviewInfo'])
          end
          unless params['SubtitleInfo'].nil?
            @SubtitleInfo = MediaSubtitleInfo.new
            @SubtitleInfo.deserialize(params['SubtitleInfo'])
          end
          @FileId = params['FileId']
        end
      end

      # 要处理的源视频信息，视频名称、视频自定义 ID。
      class MediaInputInfo < TencentCloud::Common::AbstractModel
        # @param Url: 视频 URL。
        # @type Url: String
        # @param Name: 视频名称。
        # @type Name: String
        # @param Id: 视频自定义 ID。
        # @type Id: String

        attr_accessor :Url, :Name, :Id
        
        def initialize(url=nil, name=nil, id=nil)
          @Url = url
          @Name = name
          @Id = id
        end

        def deserialize(params)
          @Url = params['Url']
          @Name = params['Name']
          @Id = params['Id']
        end
      end

      # 视频打点信息
      class MediaKeyFrameDescInfo < TencentCloud::Common::AbstractModel
        # @param KeyFrameDescSet: 视频打点信息数组。
        # @type KeyFrameDescSet: Array

        attr_accessor :KeyFrameDescSet
        
        def initialize(keyframedescset=nil)
          @KeyFrameDescSet = keyframedescset
        end

        def deserialize(params)
          unless params['KeyFrameDescSet'].nil?
            @KeyFrameDescSet = []
            params['KeyFrameDescSet'].each do |i|
              mediakeyframedescitem_tmp = MediaKeyFrameDescItem.new
              mediakeyframedescitem_tmp.deserialize(i)
              @KeyFrameDescSet << mediakeyframedescitem_tmp
            end
          end
        end
      end

      # 视频打点信息
      class MediaKeyFrameDescItem < TencentCloud::Common::AbstractModel
        # @param TimeOffset: 打点的视频偏移时间，单位：秒。
        # @type TimeOffset: Float
        # @param Content: 打点的内容字符串，限制 1-128 个字符。
        # @type Content: String

        attr_accessor :TimeOffset, :Content
        
        def initialize(timeoffset=nil, content=nil)
          @TimeOffset = timeoffset
          @Content = content
        end

        def deserialize(params)
          @TimeOffset = params['TimeOffset']
          @Content = params['Content']
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

      # 小程序音视频审核概要元信息
      class MediaMiniProgramReviewElem < TencentCloud::Common::AbstractModel
        # @param Type: 音视频审核类型。
        # <li>Porn：画面涉及令人反感的信息，</li>
        # <li>Porn.Ocr：文字涉及令人反感的信息，</li>
        # <li>Porn.Asr：声音涉及令人反感的信息，</li>
        # <li>Terrorism：画面涉及令人不安全的信息，</li>
        # <li>Political：画面涉及令人不适宜的信息，</li>
        # <li>Political.Ocr：文字涉及令人不适宜的信息，</li>
        # <li>Political.Asr：声音涉及令人不适宜的信息。</li>
        # @type Type: String
        # @param Suggestion: 音视频审核意见。
        # <li>pass：确认正常，</li>
        # <li>block：确认违规，</li>
        # <li>review：疑似违规。</li>
        # @type Suggestion: String
        # @param Confidence: 音视频审核结果置信度。取值 0~100。
        # @type Confidence: Float

        attr_accessor :Type, :Suggestion, :Confidence
        
        def initialize(type=nil, suggestion=nil, confidence=nil)
          @Type = type
          @Suggestion = suggestion
          @Confidence = confidence
        end

        def deserialize(params)
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          @Confidence = params['Confidence']
        end
      end

      # 小程序音视频审核信息
      class MediaMiniProgramReviewInfo < TencentCloud::Common::AbstractModel
        # @param MiniProgramReviewList: 音视频审核信息列表。
        # @type MiniProgramReviewList: Array

        attr_accessor :MiniProgramReviewList
        
        def initialize(miniprogramreviewlist=nil)
          @MiniProgramReviewList = miniprogramreviewlist
        end

        def deserialize(params)
          unless params['MiniProgramReviewList'].nil?
            @MiniProgramReviewList = []
            params['MiniProgramReviewList'].each do |i|
              mediaminiprogramreviewinfoitem_tmp = MediaMiniProgramReviewInfoItem.new
              mediaminiprogramreviewinfoitem_tmp.deserialize(i)
              @MiniProgramReviewList << mediaminiprogramreviewinfoitem_tmp
            end
          end
        end
      end

      # 小程序音视频审核信息单元
      class MediaMiniProgramReviewInfoItem < TencentCloud::Common::AbstractModel
        # @param Definition: 模板id。小程序视频发布的视频所对应的转码模板ID，为0代表原始视频。
        # @type Definition: Integer
        # @param MetaData: 视频元信息。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param Url: 小程序音视频审核视频播放地址。
        # @type Url: String
        # @param ReviewResult: 小程序视频发布状态：
        # <li>Pass：成功。</li>
        # <li>Rejected：未通过。</li>
        # @type ReviewResult: String
        # @param ReviewSummary: 小程序音视频审核元素。
        # @type ReviewSummary: Array

        attr_accessor :Definition, :MetaData, :Url, :ReviewResult, :ReviewSummary
        
        def initialize(definition=nil, metadata=nil, url=nil, reviewresult=nil, reviewsummary=nil)
          @Definition = definition
          @MetaData = metadata
          @Url = url
          @ReviewResult = reviewresult
          @ReviewSummary = reviewsummary
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          @Url = params['Url']
          @ReviewResult = params['ReviewResult']
          unless params['ReviewSummary'].nil?
            @ReviewSummary = []
            params['ReviewSummary'].each do |i|
              mediaminiprogramreviewelem_tmp = MediaMiniProgramReviewElem.new
              mediaminiprogramreviewelem_tmp.deserialize(i)
              @ReviewSummary << mediaminiprogramreviewelem_tmp
            end
          end
        end
      end

      # 视频处理输出文件信息参数。
      class MediaOutputInfo < TencentCloud::Common::AbstractModel
        # @param Region: 输出文件 Bucket 所属地域，如 ap-guangzhou  。
        # @type Region: String
        # @param Bucket: 输出文件 Bucket 。
        # @type Bucket: String
        # @param Dir: 输出文件目录，目录名必须以 "/" 结尾。
        # @type Dir: String

        attr_accessor :Region, :Bucket, :Dir
        
        def initialize(region=nil, bucket=nil, dir=nil)
          @Region = region
          @Bucket = bucket
          @Dir = dir
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @Dir = params['Dir']
        end
      end

      # 对视频转自适应码流任务结果类型
      class MediaProcessTaskAdaptiveDynamicStreamingResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频转自适应码流任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AdaptiveDynamicStreamingTaskInput`
        # @param Output: 对视频转自适应码流任务的输出。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AdaptiveDynamicStreamingInfoItem`

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
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 转动图任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AnimatedGraphicTaskInput`
        # @param Output: 转动图任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaAnimatedGraphicsItem`

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

      # 对视频截图做封面任务结果类型
      class MediaProcessTaskCoverBySnapshotResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频截图做封面任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.CoverBySnapshotTaskInput`
        # @param Output: 对视频截图做封面任务的输出。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.CoverBySnapshotTaskOutput`

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
            @Input = CoverBySnapshotTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = CoverBySnapshotTaskOutput.new
            @Output.deserialize(params['Output'])
          end
        end
      end

      # 对视频截雪碧图任务结果类型
      class MediaProcessTaskImageSpriteResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频截雪碧图任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.ImageSpriteTaskInput`
        # @param Output: 对视频截雪碧图任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaImageSpriteItem`

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

      # 视频处理任务类型
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
        # @param CoverBySnapshotTaskSet: 对视频截图做封面任务列表。
        # @type CoverBySnapshotTaskSet: Array
        # @param AdaptiveDynamicStreamingTaskSet: 对视频转自适应码流任务列表。
        # @type AdaptiveDynamicStreamingTaskSet: Array

        attr_accessor :TranscodeTaskSet, :AnimatedGraphicTaskSet, :SnapshotByTimeOffsetTaskSet, :SampleSnapshotTaskSet, :ImageSpriteTaskSet, :CoverBySnapshotTaskSet, :AdaptiveDynamicStreamingTaskSet
        
        def initialize(transcodetaskset=nil, animatedgraphictaskset=nil, snapshotbytimeoffsettaskset=nil, samplesnapshottaskset=nil, imagespritetaskset=nil, coverbysnapshottaskset=nil, adaptivedynamicstreamingtaskset=nil)
          @TranscodeTaskSet = transcodetaskset
          @AnimatedGraphicTaskSet = animatedgraphictaskset
          @SnapshotByTimeOffsetTaskSet = snapshotbytimeoffsettaskset
          @SampleSnapshotTaskSet = samplesnapshottaskset
          @ImageSpriteTaskSet = imagespritetaskset
          @CoverBySnapshotTaskSet = coverbysnapshottaskset
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
          unless params['CoverBySnapshotTaskSet'].nil?
            @CoverBySnapshotTaskSet = []
            params['CoverBySnapshotTaskSet'].each do |i|
              coverbysnapshottaskinput_tmp = CoverBySnapshotTaskInput.new
              coverbysnapshottaskinput_tmp.deserialize(i)
              @CoverBySnapshotTaskSet << coverbysnapshottaskinput_tmp
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
        # @type TranscodeTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskTranscodeResult`
        # @param AnimatedGraphicTask: 视频转动图任务的查询结果，当任务类型为 AnimatedGraphics 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnimatedGraphicTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskAnimatedGraphicResult`
        # @param SnapshotByTimeOffsetTask: 对视频按时间点截图任务的查询结果，当任务类型为 SnapshotByTimeOffset 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskSnapshotByTimeOffsetResult`
        # @param SampleSnapshotTask: 对视频采样截图任务的查询结果，当任务类型为 SampleSnapshot 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleSnapshotTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskSampleSnapshotResult`
        # @param ImageSpriteTask: 对视频截雪碧图任务的查询结果，当任务类型为 ImageSprite 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSpriteTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskImageSpriteResult`
        # @param CoverBySnapshotTask: 对视频截图做封面任务的查询结果，当任务类型为 CoverBySnapshot 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverBySnapshotTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskCoverBySnapshotResult`
        # @param AdaptiveDynamicStreamingTask: 对视频转自适应码流任务的查询结果，当任务类型为 AdaptiveDynamicStreaming 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdaptiveDynamicStreamingTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskAdaptiveDynamicStreamingResult`

        attr_accessor :Type, :TranscodeTask, :AnimatedGraphicTask, :SnapshotByTimeOffsetTask, :SampleSnapshotTask, :ImageSpriteTask, :CoverBySnapshotTask, :AdaptiveDynamicStreamingTask
        
        def initialize(type=nil, transcodetask=nil, animatedgraphictask=nil, snapshotbytimeoffsettask=nil, samplesnapshottask=nil, imagespritetask=nil, coverbysnapshottask=nil, adaptivedynamicstreamingtask=nil)
          @Type = type
          @TranscodeTask = transcodetask
          @AnimatedGraphicTask = animatedgraphictask
          @SnapshotByTimeOffsetTask = snapshotbytimeoffsettask
          @SampleSnapshotTask = samplesnapshottask
          @ImageSpriteTask = imagespritetask
          @CoverBySnapshotTask = coverbysnapshottask
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
          unless params['CoverBySnapshotTask'].nil?
            @CoverBySnapshotTask = MediaProcessTaskCoverBySnapshotResult.new
            @CoverBySnapshotTask.deserialize(params['CoverBySnapshotTask'])
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
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频做采样截图任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.SampleSnapshotTaskInput`
        # @param Output: 对视频做采样截图任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaSampleSnapshotItem`

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
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频按指定时间点截图任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.SnapshotByTimeOffsetTaskInput`
        # @param Output: 对视频按指定时间点截图任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaSnapshotByTimeOffsetItem`

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
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 转码任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.TranscodeTaskInput`
        # @param Output: 转码任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaTranscodeItem`
        # @param Progress: 转码进度，取值范围 [0-100] 。
        # @type Progress: Integer
        # @param BeginProcessTime: 转码任务开始执行的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type BeginProcessTime: String
        # @param FinishTime: 转码任务执行完毕的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type FinishTime: String

        attr_accessor :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output, :Progress, :BeginProcessTime, :FinishTime
        
        def initialize(status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil, progress=nil, beginprocesstime=nil, finishtime=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
          @Progress = progress
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
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
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
        end
      end

      # 点播文件采样截图信息
      class MediaSampleSnapshotInfo < TencentCloud::Common::AbstractModel
        # @param SampleSnapshotSet: 特定规格的采样截图信息集合，每个元素代表一套相同规格的采样截图。
        # @type SampleSnapshotSet: Array

        attr_accessor :SampleSnapshotSet
        
        def initialize(samplesnapshotset=nil)
          @SampleSnapshotSet = samplesnapshotset
        end

        def deserialize(params)
          unless params['SampleSnapshotSet'].nil?
            @SampleSnapshotSet = []
            params['SampleSnapshotSet'].each do |i|
              mediasamplesnapshotitem_tmp = MediaSampleSnapshotItem.new
              mediasamplesnapshotitem_tmp.deserialize(i)
              @SampleSnapshotSet << mediasamplesnapshotitem_tmp
            end
          end
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
        # @param ImageUrlSet: 生成的截图 url 列表。
        # @type ImageUrlSet: Array
        # @param WaterMarkDefinition: 截图如果被打上了水印，被打水印的模板 ID 列表。
        # @type WaterMarkDefinition: Array

        attr_accessor :Definition, :SampleType, :Interval, :ImageUrlSet, :WaterMarkDefinition
        
        def initialize(definition=nil, sampletype=nil, interval=nil, imageurlset=nil, watermarkdefinition=nil)
          @Definition = definition
          @SampleType = sampletype
          @Interval = interval
          @ImageUrlSet = imageurlset
          @WaterMarkDefinition = watermarkdefinition
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SampleType = params['SampleType']
          @Interval = params['Interval']
          @ImageUrlSet = params['ImageUrlSet']
          @WaterMarkDefinition = params['WaterMarkDefinition']
        end
      end

      # 点播文件指定时间点截图信息
      class MediaSnapshotByTimeOffsetInfo < TencentCloud::Common::AbstractModel
        # @param SnapshotByTimeOffsetSet: 特定规格的指定时间点截图信息集合。目前每种规格只能有一套截图。
        # @type SnapshotByTimeOffsetSet: Array

        attr_accessor :SnapshotByTimeOffsetSet
        
        def initialize(snapshotbytimeoffsetset=nil)
          @SnapshotByTimeOffsetSet = snapshotbytimeoffsetset
        end

        def deserialize(params)
          unless params['SnapshotByTimeOffsetSet'].nil?
            @SnapshotByTimeOffsetSet = []
            params['SnapshotByTimeOffsetSet'].each do |i|
              mediasnapshotbytimeoffsetitem_tmp = MediaSnapshotByTimeOffsetItem.new
              mediasnapshotbytimeoffsetitem_tmp.deserialize(i)
              @SnapshotByTimeOffsetSet << mediasnapshotbytimeoffsetitem_tmp
            end
          end
        end
      end

      # 点播文件指定时间点截图信息
      class MediaSnapshotByTimeOffsetItem < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图规格，参见[指定时间点截图参数模板](https://cloud.tencent.com/document/product/266/33480#.E6.97.B6.E9.97.B4.E7.82.B9.E6.88.AA.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param PicInfoSet: 同一规格的截图信息集合，每个元素代表一张截图。
        # @type PicInfoSet: Array

        attr_accessor :Definition, :PicInfoSet
        
        def initialize(definition=nil, picinfoset=nil)
          @Definition = definition
          @PicInfoSet = picinfoset
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
        end
      end

      # 指定时间点截图信息
      class MediaSnapshotByTimePicInfoItem < TencentCloud::Common::AbstractModel
        # @param TimeOffset: 该张截图对应视频文件中的时间偏移，单位为<font color=red>毫秒</font>。
        # @type TimeOffset: Float
        # @param Url: 该张截图的 URL 地址。
        # @type Url: String
        # @param WaterMarkDefinition: 截图如果被打上了水印，被打水印的模板 ID 列表。
        # @type WaterMarkDefinition: Array

        attr_accessor :TimeOffset, :Url, :WaterMarkDefinition
        
        def initialize(timeoffset=nil, url=nil, watermarkdefinition=nil)
          @TimeOffset = timeoffset
          @Url = url
          @WaterMarkDefinition = watermarkdefinition
        end

        def deserialize(params)
          @TimeOffset = params['TimeOffset']
          @Url = params['Url']
          @WaterMarkDefinition = params['WaterMarkDefinition']
        end
      end

      # 来源文件信息
      class MediaSourceData < TencentCloud::Common::AbstractModel
        # @param SourceType: 媒体文件的来源类别：
        # <li>Record：来自录制。如直播录制、直播时移录制等。</li>
        # <li>Upload：来自上传。如拉取上传、服务端上传、客户端 UGC 上传等。</li>
        # <li>VideoProcessing：来自视频处理。如视频拼接、视频剪辑等。</li>
        # <li>WebPageRecord：来自全景录制。</li>
        # <li>Unknown：未知来源。</li>
        # @type SourceType: String
        # @param SourceContext: 用户创建文件时透传的字段
        # @type SourceContext: String
        # @param TrtcRecordInfo: TRTC 伴生录制信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrtcRecordInfo: :class:`Tencentcloud::Vod.v20180717.models.TrtcRecordInfo`

        attr_accessor :SourceType, :SourceContext, :TrtcRecordInfo
        
        def initialize(sourcetype=nil, sourcecontext=nil, trtcrecordinfo=nil)
          @SourceType = sourcetype
          @SourceContext = sourcecontext
          @TrtcRecordInfo = trtcrecordinfo
        end

        def deserialize(params)
          @SourceType = params['SourceType']
          @SourceContext = params['SourceContext']
          unless params['TrtcRecordInfo'].nil?
            @TrtcRecordInfo = TrtcRecordInfo.new
            @TrtcRecordInfo.deserialize(params['TrtcRecordInfo'])
          end
        end
      end

      # 字幕信息。
      class MediaSubtitleInfo < TencentCloud::Common::AbstractModel
        # @param SubtitleSet: 字幕信息列表。
        # @type SubtitleSet: Array

        attr_accessor :SubtitleSet
        
        def initialize(subtitleset=nil)
          @SubtitleSet = subtitleset
        end

        def deserialize(params)
          unless params['SubtitleSet'].nil?
            @SubtitleSet = []
            params['SubtitleSet'].each do |i|
              mediasubtitleitem_tmp = MediaSubtitleItem.new
              mediasubtitleitem_tmp.deserialize(i)
              @SubtitleSet << mediasubtitleitem_tmp
            end
          end
        end
      end

      # 字幕信息输入参数。
      class MediaSubtitleInput < TencentCloud::Common::AbstractModel
        # @param Name: 字幕名字，长度限制：64 个字符。
        # @type Name: String
        # @param Language: 字幕语言。常见的取值如下：
        # <li>cn：中文</li>
        # <li>ja：日文</li>
        # <li>en-US：英文</li>
        # 其他取值参考 [RFC5646](https://tools.ietf.org/html/rfc5646)
        # @type Language: String
        # @param Format: 字幕格式。取值范围如下：
        # <li>vtt</li>
        # @type Format: String
        # @param Content: 字幕内容，进行 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串。
        # @type Content: String
        # @param Id: 字幕的唯一标识。长度不能超过16个字符，可以使用大小写字母、数字、下划线（_）或横杠（-）。不能与媒资文件中现有字幕的唯一标识重复。
        # @type Id: String

        attr_accessor :Name, :Language, :Format, :Content, :Id
        
        def initialize(name=nil, language=nil, format=nil, content=nil, id=nil)
          @Name = name
          @Language = language
          @Format = format
          @Content = content
          @Id = id
        end

        def deserialize(params)
          @Name = params['Name']
          @Language = params['Language']
          @Format = params['Format']
          @Content = params['Content']
          @Id = params['Id']
        end
      end

      # 字幕信息。
      class MediaSubtitleItem < TencentCloud::Common::AbstractModel
        # @param Id: 字幕的唯一标识。
        # @type Id: String
        # @param Name: 字幕名字。
        # @type Name: String
        # @param Language: 字幕语言。常见的取值如下：
        # <li>cn：中文</li>
        # <li>ja：日文</li>
        # <li>en-US：英文</li>
        # 其他取值参考 [RFC5646](https://tools.ietf.org/html/rfc5646)
        # @type Language: String
        # @param Format: 字幕格式。取值范围如下：
        # <li>vtt</li>
        # @type Format: String
        # @param Url: 字幕 URL。
        # @type Url: String

        attr_accessor :Id, :Name, :Language, :Format, :Url
        
        def initialize(id=nil, name=nil, language=nil, format=nil, url=nil)
          @Id = id
          @Name = name
          @Language = language
          @Format = format
          @Url = url
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Language = params['Language']
          @Format = params['Format']
          @Url = params['Url']
        end
      end

      # 轨道信息
      class MediaTrack < TencentCloud::Common::AbstractModel
        # @param Type: 轨道类型，取值有：
        # <ul>
        # <li>Video ：视频轨道。视频轨道由以下 Item 组成：<ul><li>VideoTrackItem</li><li>MediaTransitionItem</li> <li>EmptyTrackItem</li></ul> </li>
        # <li>Audio ：音频轨道。音频轨道由以下 Item 组成：<ul><li>AudioTrackItem</li><li>MediaTransitionItem</li><li>EmptyTrackItem</li></ul></li>
        # <li>Sticker ：贴图轨道。贴图轨道以下 Item 组成：<ul><li> StickerTrackItem</li><li>EmptyTrackItem</li></ul></li>
        # </ul>
        # @type Type: String
        # @param TrackItems: 轨道上的媒体片段列表。
        # @type TrackItems: Array

        attr_accessor :Type, :TrackItems
        
        def initialize(type=nil, trackitems=nil)
          @Type = type
          @TrackItems = trackitems
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TrackItems'].nil?
            @TrackItems = []
            params['TrackItems'].each do |i|
              mediatrackitem_tmp = MediaTrackItem.new
              mediatrackitem_tmp.deserialize(i)
              @TrackItems << mediatrackitem_tmp
            end
          end
        end
      end

      # 媒体轨道的片段信息
      class MediaTrackItem < TencentCloud::Common::AbstractModel
        # @param Type: 片段类型。取值有：
        # <li>Video：视频片段。</li>
        # <li>Audio：音频片段。</li>
        # <li>Sticker：贴图片段。</li>
        # <li>Transition：转场。</li>
        # <li>Empty：空白片段。</li>
        # @type Type: String
        # @param VideoItem: 视频片段，当 Type = Video 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoItem: :class:`Tencentcloud::Vod.v20180717.models.VideoTrackItem`
        # @param AudioItem: 音频片段，当 Type = Audio 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioItem: :class:`Tencentcloud::Vod.v20180717.models.AudioTrackItem`
        # @param StickerItem: 贴图片段，当 Type = Sticker 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StickerItem: :class:`Tencentcloud::Vod.v20180717.models.StickerTrackItem`
        # @param TransitionItem: 转场，当 Type = Transition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransitionItem: :class:`Tencentcloud::Vod.v20180717.models.MediaTransitionItem`
        # @param EmptyItem: 空白片段，当 Type = Empty 时有效。空片段用于时间轴的占位。<li>如需要两个音频片段之间有一段时间的静音，可以用 EmptyTrackItem 来进行占位。</li>
        # <li>使用 EmptyTrackItem 进行占位，来定位某个Item。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmptyItem: :class:`Tencentcloud::Vod.v20180717.models.EmptyTrackItem`

        attr_accessor :Type, :VideoItem, :AudioItem, :StickerItem, :TransitionItem, :EmptyItem
        
        def initialize(type=nil, videoitem=nil, audioitem=nil, stickeritem=nil, transitionitem=nil, emptyitem=nil)
          @Type = type
          @VideoItem = videoitem
          @AudioItem = audioitem
          @StickerItem = stickeritem
          @TransitionItem = transitionitem
          @EmptyItem = emptyitem
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['VideoItem'].nil?
            @VideoItem = VideoTrackItem.new
            @VideoItem.deserialize(params['VideoItem'])
          end
          unless params['AudioItem'].nil?
            @AudioItem = AudioTrackItem.new
            @AudioItem.deserialize(params['AudioItem'])
          end
          unless params['StickerItem'].nil?
            @StickerItem = StickerTrackItem.new
            @StickerItem.deserialize(params['StickerItem'])
          end
          unless params['TransitionItem'].nil?
            @TransitionItem = MediaTransitionItem.new
            @TransitionItem.deserialize(params['TransitionItem'])
          end
          unless params['EmptyItem'].nil?
            @EmptyItem = EmptyTrackItem.new
            @EmptyItem.deserialize(params['EmptyItem'])
          end
        end
      end

      # 点播文件转码信息
      class MediaTranscodeInfo < TencentCloud::Common::AbstractModel
        # @param TranscodeSet: 各规格的转码信息集合，每个元素代表一个规格的转码结果。
        # @type TranscodeSet: Array

        attr_accessor :TranscodeSet
        
        def initialize(transcodeset=nil)
          @TranscodeSet = transcodeset
        end

        def deserialize(params)
          unless params['TranscodeSet'].nil?
            @TranscodeSet = []
            params['TranscodeSet'].each do |i|
              mediatranscodeitem_tmp = MediaTranscodeItem.new
              mediatranscodeitem_tmp.deserialize(i)
              @TranscodeSet << mediatranscodeitem_tmp
            end
          end
        end
      end

      # 转码信息
      class MediaTranscodeItem < TencentCloud::Common::AbstractModel
        # @param Url: 转码后的视频文件地址。
        # @type Url: String
        # @param Definition: 转码规格 ID，参见[转码参数模板](https://cloud.tencent.com/document/product/266/33476)。
        # @type Definition: Integer
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和， 单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer
        # @param Size: 媒体文件总大小，单位：字节。
        # <li>当媒体文件为 HLS 时，大小是 m3u8 和 ts 文件大小的总和。</li>
        # @type Size: Integer
        # @param Duration: 视频时长，单位：秒。
        # @type Duration: Float
        # @param Md5: 视频的 md5 值。
        # @type Md5: String
        # @param Container: 容器类型，例如 m4a，mp4 等。
        # @type Container: String
        # @param VideoStreamSet: 视频流信息。
        # @type VideoStreamSet: Array
        # @param AudioStreamSet: 音频流信息。
        # @type AudioStreamSet: Array
        # @param DigitalWatermarkType: 数字水印类型。可选值：
        # <li>Trace 表示经过溯源水印处理；</li>
        # <li>None 表示没有经过数字水印处理。</li>
        # @type DigitalWatermarkType: String

        attr_accessor :Url, :Definition, :Bitrate, :Height, :Width, :Size, :Duration, :Md5, :Container, :VideoStreamSet, :AudioStreamSet, :DigitalWatermarkType
        
        def initialize(url=nil, definition=nil, bitrate=nil, height=nil, width=nil, size=nil, duration=nil, md5=nil, container=nil, videostreamset=nil, audiostreamset=nil, digitalwatermarktype=nil)
          @Url = url
          @Definition = definition
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Size = size
          @Duration = duration
          @Md5 = md5
          @Container = container
          @VideoStreamSet = videostreamset
          @AudioStreamSet = audiostreamset
          @DigitalWatermarkType = digitalwatermarktype
        end

        def deserialize(params)
          @Url = params['Url']
          @Definition = params['Definition']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Size = params['Size']
          @Duration = params['Duration']
          @Md5 = params['Md5']
          @Container = params['Container']
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
          @DigitalWatermarkType = params['DigitalWatermarkType']
        end
      end

      # 转场信息
      class MediaTransitionItem < TencentCloud::Common::AbstractModel
        # @param Duration: 转场持续时间，单位为秒。进行转场处理的两个媒体片段，第二个片段在轨道上的起始时间会自动进行调整，设置为前面一个片段的结束时间减去转场的持续时间。
        # @type Duration: Float
        # @param Transitions: 转场操作列表。图像转场操作和音频转场操作各自最多支持一个。
        # @type Transitions: Array

        attr_accessor :Duration, :Transitions
        
        def initialize(duration=nil, transitions=nil)
          @Duration = duration
          @Transitions = transitions
        end

        def deserialize(params)
          @Duration = params['Duration']
          unless params['Transitions'].nil?
            @Transitions = []
            params['Transitions'].each do |i|
              transitionopertion_tmp = TransitionOpertion.new
              transitionopertion_tmp.deserialize(i)
              @Transitions << transitionopertion_tmp
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

        attr_accessor :Bitrate, :Height, :Width, :Codec, :Fps
        
        def initialize(bitrate=nil, height=nil, width=nil, codec=nil, fps=nil)
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Codec = codec
          @Fps = fps
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Codec = params['Codec']
          @Fps = params['Fps']
        end
      end

      # ModifyAIAnalysisTemplate请求参数结构体
      class ModifyAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 音视频内容分析模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 音视频内容分析模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 音视频内容分析模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # @type ClassificationConfigure: :class:`Tencentcloud::Vod.v20180717.models.ClassificationConfigureInfoForUpdate`
        # @param TagConfigure: 智能标签任务控制参数。
        # @type TagConfigure: :class:`Tencentcloud::Vod.v20180717.models.TagConfigureInfoForUpdate`
        # @param CoverConfigure: 智能封面任务控制参数。
        # @type CoverConfigure: :class:`Tencentcloud::Vod.v20180717.models.CoverConfigureInfoForUpdate`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # @type FrameTagConfigure: :class:`Tencentcloud::Vod.v20180717.models.FrameTagConfigureInfoForUpdate`
        # @param HighlightConfigure: 智能精彩集锦任务控制参数。
        # @type HighlightConfigure: :class:`Tencentcloud::Vod.v20180717.models.HighlightsConfigureInfoForUpdate`

        attr_accessor :Definition, :SubAppId, :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure, :HighlightConfigure
        
        def initialize(definition=nil, subappid=nil, name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil, highlightconfigure=nil)
          @Definition = definition
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
          @HighlightConfigure = highlightconfigure
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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
          unless params['HighlightConfigure'].nil?
            @HighlightConfigure = HighlightsConfigureInfoForUpdate.new
            @HighlightConfigure.deserialize(params['HighlightConfigure'])
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
        # @param Definition: 音视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 音视频内容识别模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 音视频内容识别模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param HeadTailConfigure: 视频片头片尾识别控制参数。
        # @type HeadTailConfigure: :class:`Tencentcloud::Vod.v20180717.models.HeadTailConfigureInfoForUpdate`
        # @param SegmentConfigure: 视频拆条识别控制参数。
        # @type SegmentConfigure: :class:`Tencentcloud::Vod.v20180717.models.SegmentConfigureInfoForUpdate`
        # @param FaceConfigure: 人脸识别控制参数。
        # @type FaceConfigure: :class:`Tencentcloud::Vod.v20180717.models.FaceConfigureInfoForUpdate`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrFullTextConfigureInfoForUpdate`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrWordsConfigureInfoForUpdate`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrFullTextConfigureInfoForUpdate`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrWordsConfigureInfoForUpdate`
        # @param ObjectConfigure: 物体识别控制参数。
        # @type ObjectConfigure: :class:`Tencentcloud::Vod.v20180717.models.ObjectConfigureInfoForUpdate`
        # @param ScreenshotInterval: 截帧间隔，单位为秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float

        attr_accessor :Definition, :SubAppId, :Name, :Comment, :HeadTailConfigure, :SegmentConfigure, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure, :ObjectConfigure, :ScreenshotInterval
        
        def initialize(definition=nil, subappid=nil, name=nil, comment=nil, headtailconfigure=nil, segmentconfigure=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil, objectconfigure=nil, screenshotinterval=nil)
          @Definition = definition
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @HeadTailConfigure = headtailconfigure
          @SegmentConfigure = segmentconfigure
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
          @ObjectConfigure = objectconfigure
          @ScreenshotInterval = screenshotinterval
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['HeadTailConfigure'].nil?
            @HeadTailConfigure = HeadTailConfigureInfoForUpdate.new
            @HeadTailConfigure.deserialize(params['HeadTailConfigure'])
          end
          unless params['SegmentConfigure'].nil?
            @SegmentConfigure = SegmentConfigureInfoForUpdate.new
            @SegmentConfigure.deserialize(params['SegmentConfigure'])
          end
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
          unless params['ObjectConfigure'].nil?
            @ObjectConfigure = ObjectConfigureInfoForUpdate.new
            @ObjectConfigure.deserialize(params['ObjectConfigure'])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
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
        # @param Definition: 自适应转码模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Format: 自适应转码格式，取值范围：
        # <li>HLS；</li>
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
        # @param StreamInfos: 自适应转码输入流参数信息，最多输入10路流。
        # 注意：各个流的帧率必须保持一致；如果不一致，采用第一个流的帧率作为输出帧率。
        # @type StreamInfos: Array
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Definition, :SubAppId, :Name, :Format, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :StreamInfos, :Comment
        
        def initialize(definition=nil, subappid=nil, name=nil, format=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, streaminfos=nil, comment=nil)
          @Definition = definition
          @SubAppId = subappid
          @Name = name
          @Format = format
          @DisableHigherVideoBitrate = disablehighervideobitrate
          @DisableHigherVideoResolution = disablehighervideoresolution
          @StreamInfos = streaminfos
          @Comment = comment
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :Definition, :SubAppId, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Fps, :Quality, :Comment
        
        def initialize(definition=nil, subappid=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, fps=nil, quality=nil, comment=nil)
          @Definition = definition
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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

      # ModifyClass请求参数结构体
      class ModifyClassRequest < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID
        # @type ClassId: Integer
        # @param ClassName: 分类名称。长度限制：1-64 个字符。
        # @type ClassName: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :ClassId, :ClassName, :SubAppId
        
        def initialize(classid=nil, classname=nil, subappid=nil)
          @ClassId = classid
          @ClassName = classname
          @SubAppId = subappid
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @ClassName = params['ClassName']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyClass返回参数结构体
      class ModifyClassResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param TerrorismConfigure: 令人不安全的信息的控制参数。
        # @type TerrorismConfigure: :class:`Tencentcloud::Vod.v20180717.models.TerrorismConfigureInfoForUpdate`
        # @param PornConfigure: 令人反感的信息的控制参数。
        # @type PornConfigure: :class:`Tencentcloud::Vod.v20180717.models.PornConfigureInfoForUpdate`
        # @param PoliticalConfigure: 令人不适宜的信息控制参数。
        # @type PoliticalConfigure: :class:`Tencentcloud::Vod.v20180717.models.PoliticalConfigureInfoForUpdate`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # @type ProhibitedConfigure: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedConfigureInfoForUpdate`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # @type UserDefineConfigure: :class:`Tencentcloud::Vod.v20180717.models.UserDefineConfigureInfoForUpdate`
        # @param ScreenshotInterval: 截帧间隔，单位为秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float
        # @param ReviewWallSwitch: 审核结果是否进入审核墙（对审核结果进行人工识别）的开关。
        # <li>ON：是；</li>
        # <li>OFF：否。</li>
        # @type ReviewWallSwitch: String

        attr_accessor :Definition, :SubAppId, :Name, :Comment, :TerrorismConfigure, :PornConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure, :ScreenshotInterval, :ReviewWallSwitch
        
        def initialize(definition=nil, subappid=nil, name=nil, comment=nil, terrorismconfigure=nil, pornconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil, screenshotinterval=nil, reviewwallswitch=nil)
          @Definition = definition
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @TerrorismConfigure = terrorismconfigure
          @PornConfigure = pornconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
          @ScreenshotInterval = screenshotinterval
          @ReviewWallSwitch = reviewwallswitch
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['TerrorismConfigure'].nil?
            @TerrorismConfigure = TerrorismConfigureInfoForUpdate.new
            @TerrorismConfigure.deserialize(params['TerrorismConfigure'])
          end
          unless params['PornConfigure'].nil?
            @PornConfigure = PornConfigureInfoForUpdate.new
            @PornConfigure.deserialize(params['PornConfigure'])
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
          @ScreenshotInterval = params['ScreenshotInterval']
          @ReviewWallSwitch = params['ReviewWallSwitch']
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

      # ModifyDefaultStorageRegion请求参数结构体
      class ModifyDefaultStorageRegionRequest < TencentCloud::Common::AbstractModel
        # @param StorageRegion: 默认的存储地域，必须是已经开通的地域（通过 DescribeStorageRegions 接口查询）。
        # @type StorageRegion: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :StorageRegion, :SubAppId
        
        def initialize(storageregion=nil, subappid=nil)
          @StorageRegion = storageregion
          @SubAppId = subappid
        end

        def deserialize(params)
          @StorageRegion = params['StorageRegion']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyDefaultStorageRegion返回参数结构体
      class ModifyDefaultStorageRegionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyEventConfig请求参数结构体
      class ModifyEventConfigRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 接收事件通知的方式。
        # <li>PUSH：[HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779)；</li>
        # <li>PULL：[基于消息队列的可靠通知](https://cloud.tencent.com/document/product/266/33779)。</li>
        # @type Mode: String
        # @param NotificationUrl: 采用 [HTTP 回调通知](https://cloud.tencent.com/document/product/266/33779) 接收方式时，用于接收 3.0 格式回调的地址。
        # 注意：如果带 NotificationUrl  参数且值为空字符串时将会清空 3.0 格式回调地址。
        # @type NotificationUrl: String
        # @param UploadMediaCompleteEventSwitch: 是否接收 [视频上传完成](https://cloud.tencent.com/document/product/266/7830) 事件通知， 默认 "OFF" 为忽略该事件通知，"ON" 为接收事件通知。
        # @type UploadMediaCompleteEventSwitch: String
        # @param DeleteMediaCompleteEventSwitch: 是否接收 [视频删除完成](https://cloud.tencent.com/document/product/266/13434) 事件通知，  默认 "OFF" 为忽略该事件通知，"ON" 为接收事件通知。
        # @type DeleteMediaCompleteEventSwitch: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Mode, :NotificationUrl, :UploadMediaCompleteEventSwitch, :DeleteMediaCompleteEventSwitch, :SubAppId
        
        def initialize(mode=nil, notificationurl=nil, uploadmediacompleteeventswitch=nil, deletemediacompleteeventswitch=nil, subappid=nil)
          @Mode = mode
          @NotificationUrl = notificationurl
          @UploadMediaCompleteEventSwitch = uploadmediacompleteeventswitch
          @DeleteMediaCompleteEventSwitch = deletemediacompleteeventswitch
          @SubAppId = subappid
        end

        def deserialize(params)
          @Mode = params['Mode']
          @NotificationUrl = params['NotificationUrl']
          @UploadMediaCompleteEventSwitch = params['UploadMediaCompleteEventSwitch']
          @DeleteMediaCompleteEventSwitch = params['DeleteMediaCompleteEventSwitch']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyEventConfig返回参数结构体
      class ModifyEventConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyHeadTailTemplate请求参数结构体
      class ModifyHeadTailTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 片头片尾模板号。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 模板名，长度限制 64 个字符。不传代表不修改。
        # @type Name: String
        # @param Comment: 模板描述，长度限制 256 个字符。不传代表不修改，传空代表清空。
        # @type Comment: String
        # @param HeadCandidateSet: 片头候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片头（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片头。不传代表不修改，传空数组代表清空。
        # @type HeadCandidateSet: Array
        # @param TailCandidateSet: 片尾候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片尾（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片头。不传代表不修改，传空数组代表清空。
        # @type TailCandidateSet: Array
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li> gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊；</li>
        # <li> white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充；</li>
        # <li> black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值为不修改。
        # @type FillType: String

        attr_accessor :Definition, :SubAppId, :Name, :Comment, :HeadCandidateSet, :TailCandidateSet, :FillType
        
        def initialize(definition=nil, subappid=nil, name=nil, comment=nil, headcandidateset=nil, tailcandidateset=nil, filltype=nil)
          @Definition = definition
          @SubAppId = subappid
          @Name = name
          @Comment = comment
          @HeadCandidateSet = headcandidateset
          @TailCandidateSet = tailcandidateset
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Comment = params['Comment']
          @HeadCandidateSet = params['HeadCandidateSet']
          @TailCandidateSet = params['TailCandidateSet']
          @FillType = params['FillType']
        end
      end

      # ModifyHeadTailTemplate返回参数结构体
      class ModifyHeadTailTemplateResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 雪碧图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 雪碧图中小图的宽度，取值范围： [128, 4096]，单位：px。
        # @type Width: Integer
        # @param Height: 雪碧图中小图的高度，取值范围： [128, 4096]，单位：px。
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

        attr_accessor :Definition, :SubAppId, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :RowCount, :ColumnCount, :FillType, :Comment
        
        def initialize(definition=nil, subappid=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, filltype=nil, comment=nil)
          @Definition = definition
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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

      # ModifyMediaInfo请求参数结构体
      class ModifyMediaInfoRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件唯一标识。
        # @type FileId: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 媒体文件名称，最长 64 个字符。
        # @type Name: String
        # @param Description: 媒体文件描述，最长 128 个字符。
        # @type Description: String
        # @param ClassId: 媒体文件分类 ID。
        # @type ClassId: Integer
        # @param ExpireTime: 媒体文件过期时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。填“9999-12-31T23:59:59Z”表示永不过期。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。
        # @type ExpireTime: String
        # @param CoverData: 视频封面图片文件（如 jpeg, png 等）进行 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串，仅支持 gif、jpeg、png 三种图片格式。
        # @type CoverData: String
        # @param AddKeyFrameDescs: 新增的一组视频打点信息，如果某个偏移时间已存在打点，则会进行覆盖操作，单个媒体文件最多 100 个打点信息。同一个请求里，AddKeyFrameDescs 的时间偏移参数必须与 DeleteKeyFrameDescs 都不同。
        # @type AddKeyFrameDescs: Array
        # @param DeleteKeyFrameDescs: 要删除的一组视频打点信息的时间偏移，单位：秒。同一个请求里，AddKeyFrameDescs 的时间偏移参数必须与 DeleteKeyFrameDescs 都不同。
        # @type DeleteKeyFrameDescs: Array
        # @param ClearKeyFrameDescs: 取值 1 表示清空视频打点信息，其他值无意义。
        # 同一个请求里，ClearKeyFrameDescs 与 AddKeyFrameDescs 不能同时出现。
        # @type ClearKeyFrameDescs: Integer
        # @param AddTags: 新增的一组标签，单个媒体文件最多 16 个标签，单个标签最多 16 个字符。同一个请求里，AddTags 参数必须与 DeleteTags 都不同。
        # @type AddTags: Array
        # @param DeleteTags: 要删除的一组标签。同一个请求里，AddTags 参数必须与 DeleteTags 都不同。
        # @type DeleteTags: Array
        # @param ClearTags: 取值 1 表示清空媒体文件所有标签，其他值无意义。
        # 同一个请求里，ClearTags 与 AddTags 不能同时出现。
        # @type ClearTags: Integer
        # @param AddSubtitles: 新增一组字幕。单个媒体文件最多 16 个字幕。同一个请求中，AddSubtitles 中指定的字幕 Id 必须与 DeleteSubtitleIds 都不相同。
        # @type AddSubtitles: Array
        # @param DeleteSubtitleIds: 待删除字幕的唯一标识。同一个请求中，AddSubtitles 中指定的字幕 Id 必须与 DeleteSubtitleIds 都不相同。
        # @type DeleteSubtitleIds: Array
        # @param ClearSubtitles: 取值 1 表示清空媒体文件所有的字幕信息，其他值无意义。
        # 同一个请求里，ClearSubtitles 与 AddSubtitles不能同时出现。
        # @type ClearSubtitles: Integer

        attr_accessor :FileId, :SubAppId, :Name, :Description, :ClassId, :ExpireTime, :CoverData, :AddKeyFrameDescs, :DeleteKeyFrameDescs, :ClearKeyFrameDescs, :AddTags, :DeleteTags, :ClearTags, :AddSubtitles, :DeleteSubtitleIds, :ClearSubtitles
        
        def initialize(fileid=nil, subappid=nil, name=nil, description=nil, classid=nil, expiretime=nil, coverdata=nil, addkeyframedescs=nil, deletekeyframedescs=nil, clearkeyframedescs=nil, addtags=nil, deletetags=nil, cleartags=nil, addsubtitles=nil, deletesubtitleids=nil, clearsubtitles=nil)
          @FileId = fileid
          @SubAppId = subappid
          @Name = name
          @Description = description
          @ClassId = classid
          @ExpireTime = expiretime
          @CoverData = coverdata
          @AddKeyFrameDescs = addkeyframedescs
          @DeleteKeyFrameDescs = deletekeyframedescs
          @ClearKeyFrameDescs = clearkeyframedescs
          @AddTags = addtags
          @DeleteTags = deletetags
          @ClearTags = cleartags
          @AddSubtitles = addsubtitles
          @DeleteSubtitleIds = deletesubtitleids
          @ClearSubtitles = clearsubtitles
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Description = params['Description']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
          @CoverData = params['CoverData']
          unless params['AddKeyFrameDescs'].nil?
            @AddKeyFrameDescs = []
            params['AddKeyFrameDescs'].each do |i|
              mediakeyframedescitem_tmp = MediaKeyFrameDescItem.new
              mediakeyframedescitem_tmp.deserialize(i)
              @AddKeyFrameDescs << mediakeyframedescitem_tmp
            end
          end
          @DeleteKeyFrameDescs = params['DeleteKeyFrameDescs']
          @ClearKeyFrameDescs = params['ClearKeyFrameDescs']
          @AddTags = params['AddTags']
          @DeleteTags = params['DeleteTags']
          @ClearTags = params['ClearTags']
          unless params['AddSubtitles'].nil?
            @AddSubtitles = []
            params['AddSubtitles'].each do |i|
              mediasubtitleinput_tmp = MediaSubtitleInput.new
              mediasubtitleinput_tmp.deserialize(i)
              @AddSubtitles << mediasubtitleinput_tmp
            end
          end
          @DeleteSubtitleIds = params['DeleteSubtitleIds']
          @ClearSubtitles = params['ClearSubtitles']
        end
      end

      # ModifyMediaInfo返回参数结构体
      class ModifyMediaInfoResponse < TencentCloud::Common::AbstractModel
        # @param CoverUrl: 新的视频封面 URL。
        # * 注意：仅当请求携带 CoverData 时此返回值有效。 *
        # @type CoverUrl: String
        # @param AddedSubtitleSet: 新增的字幕信息。
        # @type AddedSubtitleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CoverUrl, :AddedSubtitleSet, :RequestId
        
        def initialize(coverurl=nil, addedsubtitleset=nil, requestid=nil)
          @CoverUrl = coverurl
          @AddedSubtitleSet = addedsubtitleset
          @RequestId = requestid
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
          unless params['AddedSubtitleSet'].nil?
            @AddedSubtitleSet = []
            params['AddedSubtitleSet'].each do |i|
              mediasubtitleitem_tmp = MediaSubtitleItem.new
              mediasubtitleitem_tmp.deserialize(i)
              @AddedSubtitleSet << mediasubtitleitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyMediaStorageClass请求参数结构体
      class ModifyMediaStorageClassRequest < TencentCloud::Common::AbstractModel
        # @param FileIds: 媒体文件唯一标识列表。
        # @type FileIds: Array
        # @param StorageClass: 目标存储类型。可选值有：
        # <li> STANDARD：标准存储。</li>
        # <li> STANDARD_IA：低频存储。</li>
        # <li> ARCHIVE：归档存储。</li>
        # <li> DEEP_ARCHIVE：深度归档存储。</li>
        # @type StorageClass: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param RestoreTier: 取回模式。当文件的存储类型从归档或深度归档转换为标准存储时，需要指定取回（也称为解冻）操作的模式，具体说明请参考[数据取回及取回模式](https://cloud.tencent.com/document/product/266/56196#retake)。
        # 当媒体文件目前的存储类型为归档存储时，有以下取值：
        # <li>Expedited：极速模式。</li>
        # <li>Standard：标准模式。</li>
        # <li>Bulk：批量模式。</li>
        # 当媒体文件目前的存储类型为深度归档存储时，有以下取值：
        # <li>Standard：标准模式。</li>
        # <li>Bulk：批量模式。</li>
        # @type RestoreTier: String

        attr_accessor :FileIds, :StorageClass, :SubAppId, :RestoreTier
        
        def initialize(fileids=nil, storageclass=nil, subappid=nil, restoretier=nil)
          @FileIds = fileids
          @StorageClass = storageclass
          @SubAppId = subappid
          @RestoreTier = restoretier
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @StorageClass = params['StorageClass']
          @SubAppId = params['SubAppId']
          @RestoreTier = params['RestoreTier']
        end
      end

      # ModifyMediaStorageClass返回参数结构体
      class ModifyMediaStorageClassResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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
        # @type FaceOperationInfo: :class:`Tencentcloud::Vod.v20180717.models.AiSampleFaceOperation`
        # @param TagOperationInfo: 标签操作信息。
        # @type TagOperationInfo: :class:`Tencentcloud::Vod.v20180717.models.AiSampleTagOperation`

        attr_accessor :PersonId, :SubAppId, :Name, :Description, :Usages, :FaceOperationInfo, :TagOperationInfo
        
        def initialize(personid=nil, subappid=nil, name=nil, description=nil, usages=nil, faceoperationinfo=nil, tagoperationinfo=nil)
          @PersonId = personid
          @SubAppId = subappid
          @Name = name
          @Description = description
          @Usages = usages
          @FaceOperationInfo = faceoperationinfo
          @TagOperationInfo = tagoperationinfo
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @SubAppId = params['SubAppId']
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
        # @type Person: :class:`Tencentcloud::Vod.v20180717.models.AiSamplePerson`
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :Definition, :SubAppId, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :Format, :Comment, :FillType
        
        def initialize(definition=nil, subappid=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, format=nil, comment=nil, filltype=nil)
          @Definition = definition
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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

        attr_accessor :Definition, :SubAppId, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :FillType
        
        def initialize(definition=nil, subappid=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, filltype=nil)
          @Definition = definition
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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

      # ModifySubAppIdInfo请求参数结构体
      class ModifySubAppIdInfoRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Name: 子应用名称，长度限制：40个字符。
        # @type Name: String
        # @param Description: 子应用简介，长度限制： 300个字符。
        # @type Description: String

        attr_accessor :SubAppId, :Name, :Description
        
        def initialize(subappid=nil, name=nil, description=nil)
          @SubAppId = subappid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # ModifySubAppIdInfo返回参数结构体
      class ModifySubAppIdInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubAppIdStatus请求参数结构体
      class ModifySubAppIdStatusRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Status: 子应用状态，取值范围：
        # <li>On：启用。</li>
        # <li>Off：停用。</li>
        # <li>Destroyed：销毁。</li>
        # 当前状态如果是 Destoying ，不能进行启用操作，需要等待销毁完成后才能重新启用。
        # @type Status: String

        attr_accessor :SubAppId, :Status
        
        def initialize(subappid=nil, status=nil)
          @SubAppId = subappid
          @Status = status
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Status = params['Status']
        end
      end

      # ModifySubAppIdStatus返回参数结构体
      class ModifySubAppIdStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifySuperPlayerConfig请求参数结构体
      class ModifySuperPlayerConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名称。
        # @type Name: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param AudioVideoType: 播放的音视频类型，可选值：
        # <li>AdaptiveDynamicStream：自适应码流输出；</li>
        # <li>Transcode：转码输出；</li>
        # <li>Original：原始音视频。</li>
        # @type AudioVideoType: String
        # @param DrmSwitch: 播放 DRM 保护的自适应码流开关：
        # <li>ON：开启，表示仅播放 DRM  保护的自适应码流输出；</li>
        # <li>OFF：关闭，表示播放未加密的自适应码流输出。</li>
        # @type DrmSwitch: String
        # @param AdaptiveDynamicStreamingDefinition: 允许输出的未加密的自适应码流模板 ID。
        # @type AdaptiveDynamicStreamingDefinition: Integer
        # @param DrmStreamingsInfo: 允许输出的 DRM 自适应码流模板内容。
        # @type DrmStreamingsInfo: :class:`Tencentcloud::Vod.v20180717.models.DrmStreamingsInfoForUpdate`
        # @param TranscodeDefinition: 允许输出的转码模板 ID。
        # @type TranscodeDefinition: Integer
        # @param ImageSpriteDefinition: 允许输出的雪碧图模板 ID。
        # @type ImageSpriteDefinition: Integer
        # @param ResolutionNames: 播放器对不于不同分辨率的子流展示名字。
        # @type ResolutionNames: Array
        # @param Domain: 播放时使用的域名。填 Default 表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        # @type Domain: String
        # @param Scheme: 播放时使用的 Scheme。取值范围：
        # <li>Default：使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme；</li>
        # <li>HTTP；</li>
        # <li>HTTPS。</li>
        # @type Scheme: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String

        attr_accessor :Name, :SubAppId, :AudioVideoType, :DrmSwitch, :AdaptiveDynamicStreamingDefinition, :DrmStreamingsInfo, :TranscodeDefinition, :ImageSpriteDefinition, :ResolutionNames, :Domain, :Scheme, :Comment
        
        def initialize(name=nil, subappid=nil, audiovideotype=nil, drmswitch=nil, adaptivedynamicstreamingdefinition=nil, drmstreamingsinfo=nil, transcodedefinition=nil, imagespritedefinition=nil, resolutionnames=nil, domain=nil, scheme=nil, comment=nil)
          @Name = name
          @SubAppId = subappid
          @AudioVideoType = audiovideotype
          @DrmSwitch = drmswitch
          @AdaptiveDynamicStreamingDefinition = adaptivedynamicstreamingdefinition
          @DrmStreamingsInfo = drmstreamingsinfo
          @TranscodeDefinition = transcodedefinition
          @ImageSpriteDefinition = imagespritedefinition
          @ResolutionNames = resolutionnames
          @Domain = domain
          @Scheme = scheme
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
          @AudioVideoType = params['AudioVideoType']
          @DrmSwitch = params['DrmSwitch']
          @AdaptiveDynamicStreamingDefinition = params['AdaptiveDynamicStreamingDefinition']
          unless params['DrmStreamingsInfo'].nil?
            @DrmStreamingsInfo = DrmStreamingsInfoForUpdate.new
            @DrmStreamingsInfo.deserialize(params['DrmStreamingsInfo'])
          end
          @TranscodeDefinition = params['TranscodeDefinition']
          @ImageSpriteDefinition = params['ImageSpriteDefinition']
          unless params['ResolutionNames'].nil?
            @ResolutionNames = []
            params['ResolutionNames'].each do |i|
              resolutionnameinfo_tmp = ResolutionNameInfo.new
              resolutionnameinfo_tmp.deserialize(i)
              @ResolutionNames << resolutionnameinfo_tmp
            end
          end
          @Domain = params['Domain']
          @Scheme = params['Scheme']
          @Comment = params['Comment']
        end
      end

      # ModifySuperPlayerConfig返回参数结构体
      class ModifySuperPlayerConfigResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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
        # @type VideoTemplate: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfoForUpdate`
        # @param AudioTemplate: 音频流配置参数。
        # @type AudioTemplate: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfoForUpdate`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.TEHDConfigForUpdate`

        attr_accessor :Definition, :SubAppId, :Container, :Name, :Comment, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig
        
        def initialize(definition=nil, subappid=nil, container=nil, name=nil, comment=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil)
          @Definition = definition
          @SubAppId = subappid
          @Container = container
          @Name = name
          @Comment = comment
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
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

      # ModifyVodDomainAccelerateConfig请求参数结构体
      class ModifyVodDomainAccelerateConfigRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 需要设置加速配置的域名。
        # @type Domain: String
        # @param Area: 区域，可选值：
        # <li>Chinese Mainland：中国境内（不包含港澳台）。</li>
        # <li>Outside Chinese Mainland: 中国境外。</li>
        # <li>Global: 全球范围。</li>
        # @type Area: String
        # @param Status: 开启或者关闭所选区域的域名加速，可选值：
        # <li>Enabled: 开启。</li>
        # <li>Disabled：关闭。</li>
        # 开启中国境内加速的域名，需要先[备案域名](/document/product/243/18905)。
        # @type Status: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Domain, :Area, :Status, :SubAppId
        
        def initialize(domain=nil, area=nil, status=nil, subappid=nil)
          @Domain = domain
          @Area = area
          @Status = status
          @SubAppId = subappid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Area = params['Area']
          @Status = params['Status']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyVodDomainAccelerateConfig返回参数结构体
      class ModifyVodDomainAccelerateConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVodDomainConfig请求参数结构体
      class ModifyVodDomainConfigRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名。
        # @type Domain: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param RefererAuthPolicy: [Referer 防盗链](/document/product/266/14046)规则。
        # @type RefererAuthPolicy: :class:`Tencentcloud::Vod.v20180717.models.RefererAuthPolicy`
        # @param UrlSignatureAuthPolicy: [Key 防盗链](/document/product/266/14047)规则。
        # @type UrlSignatureAuthPolicy: :class:`Tencentcloud::Vod.v20180717.models.UrlSignatureAuthPolicy`

        attr_accessor :Domain, :SubAppId, :RefererAuthPolicy, :UrlSignatureAuthPolicy
        
        def initialize(domain=nil, subappid=nil, refererauthpolicy=nil, urlsignatureauthpolicy=nil)
          @Domain = domain
          @SubAppId = subappid
          @RefererAuthPolicy = refererauthpolicy
          @UrlSignatureAuthPolicy = urlsignatureauthpolicy
        end

        def deserialize(params)
          @Domain = params['Domain']
          @SubAppId = params['SubAppId']
          unless params['RefererAuthPolicy'].nil?
            @RefererAuthPolicy = RefererAuthPolicy.new
            @RefererAuthPolicy.deserialize(params['RefererAuthPolicy'])
          end
          unless params['UrlSignatureAuthPolicy'].nil?
            @UrlSignatureAuthPolicy = UrlSignatureAuthPolicy.new
            @UrlSignatureAuthPolicy.deserialize(params['UrlSignatureAuthPolicy'])
          end
        end
      end

      # ModifyVodDomainConfig返回参数结构体
      class ModifyVodDomainConfigResponse < TencentCloud::Common::AbstractModel
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
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
        # @type ImageTemplate: :class:`Tencentcloud::Vod.v20180717.models.ImageWatermarkInputForUpdate`
        # @param TextTemplate: 文字水印模板，该字段仅对文字水印模板有效。
        # @type TextTemplate: :class:`Tencentcloud::Vod.v20180717.models.TextWatermarkTemplateInputForUpdate`
        # @param SvgTemplate: SVG 水印模板，该字段仅对 SVG 水印模板有效。
        # @type SvgTemplate: :class:`Tencentcloud::Vod.v20180717.models.SvgWatermarkInputForUpdate`

        attr_accessor :Definition, :SubAppId, :Name, :Comment, :CoordinateOrigin, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate
        
        def initialize(definition=nil, subappid=nil, name=nil, comment=nil, coordinateorigin=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil)
          @Definition = definition
          @SubAppId = subappid
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
          @SubAppId = params['SubAppId']
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
        # @param ImageUrl: 图片水印地址，仅当 ImageTemplate.ImageContent 非空，该字段有值。
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
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param Usages: <b>关键词应用场景，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行不适宜的内容识别；
        # 4. Review.Asr：通过音频识别技术，进行不适宜的内容识别；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜的内容识别，等价于 3+4；
        # 7. All：包含以上全部，等价于 1+2+3+4。
        # @type Usages: Array
        # @param TagOperationInfo: 标签操作信息。
        # @type TagOperationInfo: :class:`Tencentcloud::Vod.v20180717.models.AiSampleTagOperation`

        attr_accessor :Keyword, :SubAppId, :Usages, :TagOperationInfo
        
        def initialize(keyword=nil, subappid=nil, usages=nil, tagoperationinfo=nil)
          @Keyword = keyword
          @SubAppId = subappid
          @Usages = usages
          @TagOperationInfo = tagoperationinfo
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @SubAppId = params['SubAppId']
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

      # 视频处理任务中的马赛克参数类型
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

      # 物体识别任务控制参数
      class ObjectConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 物体识别任务开关，可选值：
        # <li>ON：开启智能物体识别任务；</li>
        # <li>OFF：关闭智能物体识别任务。</li>
        # @type Switch: String
        # @param ObjectLibrary: 物体库选择，可选值：
        # <li>Default：使用默认物体库；</li>
        # <li>UserDefine：使用用户自定义物体库。</li>
        # <li>All：同时使用默认物体库和用户自定义物体库。</li>
        # 默认值： All，同时使用默认物体库和用户自定义物体库。
        # @type ObjectLibrary: String

        attr_accessor :Switch, :ObjectLibrary
        
        def initialize(switch=nil, objectlibrary=nil)
          @Switch = switch
          @ObjectLibrary = objectlibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ObjectLibrary = params['ObjectLibrary']
        end
      end

      # 物体识别任务控制参数
      class ObjectConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 物体识别任务开关，可选值：
        # <li>ON：开启智能物体识别任务；</li>
        # <li>OFF：关闭智能物体识别任务。</li>
        # @type Switch: String
        # @param ObjectLibrary: 物体库选择，可选值：
        # <li>Default：使用默认物体库；</li>
        # <li>UserDefine：使用用户自定义物体库。</li>
        # <li>All：同时使用默认物体库和用户自定义物体库。</li>
        # @type ObjectLibrary: String

        attr_accessor :Switch, :ObjectLibrary
        
        def initialize(switch=nil, objectlibrary=nil)
          @Switch = switch
          @ObjectLibrary = objectlibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ObjectLibrary = params['ObjectLibrary']
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

      # 输出的音频流信息
      class OutputAudioStream < TencentCloud::Common::AbstractModel
        # @param Codec: 音频流的编码格式，可选值：
        # <li>libfdk_aac：适合 mp4 文件。</li>
        # 默认值：libfdk_aac。
        # @type Codec: String
        # @param SampleRate: 音频流的采样率，可选值：
        # <li>16000</li>
        # <li>32000</li>
        # <li>44100</li>
        # <li>48000</li>
        # 单位：Hz。
        # 默认值：16000。
        # @type SampleRate: Integer
        # @param AudioChannel: 音频声道数，可选值：
        # <li>1：单声道 。</li>
        # <li>2：双声道</li>
        # 默认值：2。
        # @type AudioChannel: Integer

        attr_accessor :Codec, :SampleRate, :AudioChannel
        
        def initialize(codec=nil, samplerate=nil, audiochannel=nil)
          @Codec = codec
          @SampleRate = samplerate
          @AudioChannel = audiochannel
        end

        def deserialize(params)
          @Codec = params['Codec']
          @SampleRate = params['SampleRate']
          @AudioChannel = params['AudioChannel']
        end
      end

      # 输出的视频流信息
      class OutputVideoStream < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码 </li>
        # 默认值：libx264。
        # @type Codec: String
        # @param Fps: 视频帧率，取值范围：[0, 60]，单位：Hz。
        # 默认值：0，表示和第一个视频轨的第一个视频片段的视频帧率一致。
        # @type Fps: Integer

        attr_accessor :Codec, :Fps
        
        def initialize(codec=nil, fps=nil)
          @Codec = codec
          @Fps = fps
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
        end
      end

      # ParseStreamingManifest请求参数结构体
      class ParseStreamingManifestRequest < TencentCloud::Common::AbstractModel
        # @param MediaManifestContent: 待解析的索引文件内容。
        # @type MediaManifestContent: String
        # @param ManifestType: 视频索引文件格式。默认 m3u8 格式。
        # <li>m3u8</li>
        # <li>mpd</li>
        # @type ManifestType: String

        attr_accessor :MediaManifestContent, :ManifestType
        
        def initialize(mediamanifestcontent=nil, manifesttype=nil)
          @MediaManifestContent = mediamanifestcontent
          @ManifestType = manifesttype
        end

        def deserialize(params)
          @MediaManifestContent = params['MediaManifestContent']
          @ManifestType = params['ManifestType']
        end
      end

      # ParseStreamingManifest返回参数结构体
      class ParseStreamingManifestResponse < TencentCloud::Common::AbstractModel
        # @param MediaSegmentSet: 分片文件列表。
        # @type MediaSegmentSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaSegmentSet, :RequestId
        
        def initialize(mediasegmentset=nil, requestid=nil)
          @MediaSegmentSet = mediasegmentset
          @RequestId = requestid
        end

        def deserialize(params)
          @MediaSegmentSet = params['MediaSegmentSet']
          @RequestId = params['RequestId']
        end
      end

      # 播放统计文件信息
      class PlayStatFileInfo < TencentCloud::Common::AbstractModel
        # @param Date: 播放统计数据所属日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type Date: String
        # @param Url: 播放统计文件的 URL 地址。播放统计文件内容为：
        # <li> date：播放日期。</li>
        # <li> file_id：视频文件 ID。</li>
        # <li> ip_count：去重后的客户端 IP 数。</li>
        # <li> flux：播放流量，单位：字节。</li>
        # <li> play_times：总的播放次数。</li>
        # <li> pc_play_times：PC 端播放次数。</li>
        # <li> mobile_play_times：移动端播放次数。</li>
        # <li> iphone_play_times：iPhone 端播放次数。</li>
        # <li> android_play_times：Android 端播放次数。</li>
        # <li> host_name	域名。</li>
        # @type Url: String

        attr_accessor :Date, :Url
        
        def initialize(date=nil, url=nil)
          @Date = date
          @Url = url
        end

        def deserialize(params)
          @Date = params['Date']
          @Url = params['Url']
        end
      end

      # 播放统计信息。
      class PlayStatInfo < TencentCloud::Common::AbstractModel
        # @param Time: 数据所在时间区间的开始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。如：当时间粒度为天，2018-12-01T00:00:00+08:00，表示2018年12月1日（含）到2018年12月2日（不含）区间。
        # <li>表示小时级别数据时，2019-08-22T00:00:00+08:00表示2019-08-22日0点到1点的统计数据。</li>
        # <li>表示天级别数据时，2019-08-22T00:00:00+08:00表示2019-08-22日的统计数据。</li>
        # @type Time: String
        # @param FileId: 媒体文件ID。
        # @type FileId: String
        # @param PlayTimes: 播放次数。
        # @type PlayTimes: Integer
        # @param Traffic: 播放流量，单位：字节。
        # @type Traffic: Integer

        attr_accessor :Time, :FileId, :PlayTimes, :Traffic
        
        def initialize(time=nil, fileid=nil, playtimes=nil, traffic=nil)
          @Time = time
          @FileId = fileid
          @PlayTimes = playtimes
          @Traffic = traffic
        end

        def deserialize(params)
          @Time = params['Time']
          @FileId = params['FileId']
          @PlayTimes = params['PlayTimes']
          @Traffic = params['Traffic']
        end
      end

      # 播放器配置详情
      class PlayerConfig < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名字。
        # @type Name: String
        # @param Type: 播放器配置类型，取值范围：
        # <li>Preset：系统预置配置；</li>
        # <li>Custom：用户自定义配置。</li>
        # @type Type: String
        # @param AudioVideoType: 播放的音视频类型，可选值有：
        # <li>AdaptiveDynamicStream：自适应码流输出；</li>
        # <li>Transcode：转码输出；</li>
        # <li>Original：原始音视频。</li>
        # @type AudioVideoType: String
        # @param DrmSwitch: 播放 DRM 保护的自适应码流开关：
        # <li>ON：开启，表示仅播放 DRM  保护的自适应码流输出；</li>
        # <li>OFF：关闭，表示播放未加密的自适应码流输出。</li>
        # @type DrmSwitch: String
        # @param AdaptiveDynamicStreamingDefinition: 允许输出的未加密的自适应码流模板 ID。
        # @type AdaptiveDynamicStreamingDefinition: Integer
        # @param DrmStreamingsInfo: 允许输出的 DRM 自适应码流模板内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrmStreamingsInfo: :class:`Tencentcloud::Vod.v20180717.models.DrmStreamingsInfo`
        # @param TranscodeDefinition: 允许输出的转码模板 ID。
        # @type TranscodeDefinition: Integer
        # @param ImageSpriteDefinition: 允许输出的雪碧图模板 ID。
        # @type ImageSpriteDefinition: Integer
        # @param ResolutionNameSet: 播放器对不于不同分辨率的子流展示名字。
        # @type ResolutionNameSet: Array
        # @param CreateTime: 播放器配置创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type CreateTime: String
        # @param UpdateTime: 播放器配置最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type UpdateTime: String
        # @param Domain: 播放时使用的域名。值为 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        # @type Domain: String
        # @param Scheme: 播放时使用的 Scheme。取值范围：
        # <li>Default：使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme；</li>
        # <li>HTTP；</li>
        # <li>HTTPS。</li>
        # @type Scheme: String
        # @param Comment: 模板描述信息。
        # @type Comment: String

        attr_accessor :Name, :Type, :AudioVideoType, :DrmSwitch, :AdaptiveDynamicStreamingDefinition, :DrmStreamingsInfo, :TranscodeDefinition, :ImageSpriteDefinition, :ResolutionNameSet, :CreateTime, :UpdateTime, :Domain, :Scheme, :Comment
        
        def initialize(name=nil, type=nil, audiovideotype=nil, drmswitch=nil, adaptivedynamicstreamingdefinition=nil, drmstreamingsinfo=nil, transcodedefinition=nil, imagespritedefinition=nil, resolutionnameset=nil, createtime=nil, updatetime=nil, domain=nil, scheme=nil, comment=nil)
          @Name = name
          @Type = type
          @AudioVideoType = audiovideotype
          @DrmSwitch = drmswitch
          @AdaptiveDynamicStreamingDefinition = adaptivedynamicstreamingdefinition
          @DrmStreamingsInfo = drmstreamingsinfo
          @TranscodeDefinition = transcodedefinition
          @ImageSpriteDefinition = imagespritedefinition
          @ResolutionNameSet = resolutionnameset
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Domain = domain
          @Scheme = scheme
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @AudioVideoType = params['AudioVideoType']
          @DrmSwitch = params['DrmSwitch']
          @AdaptiveDynamicStreamingDefinition = params['AdaptiveDynamicStreamingDefinition']
          unless params['DrmStreamingsInfo'].nil?
            @DrmStreamingsInfo = DrmStreamingsInfo.new
            @DrmStreamingsInfo.deserialize(params['DrmStreamingsInfo'])
          end
          @TranscodeDefinition = params['TranscodeDefinition']
          @ImageSpriteDefinition = params['ImageSpriteDefinition']
          unless params['ResolutionNameSet'].nil?
            @ResolutionNameSet = []
            params['ResolutionNameSet'].each do |i|
              resolutionnameinfo_tmp = ResolutionNameInfo.new
              resolutionnameinfo_tmp.deserialize(i)
              @ResolutionNameSet << resolutionnameinfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Domain = params['Domain']
          @Scheme = params['Scheme']
          @Comment = params['Comment']
        end
      end

      # 语音鉴别涉及令人不适宜的信息的任务控制参数
      class PoliticalAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴别涉及令人不适宜的信息的任务开关，可选值：
        # <li>ON：开启语音鉴别涉及令人不适宜的信息的任务；</li>
        # <li>OFF：关闭语音鉴别的涉及令人不适宜的信息的任务。</li>
        # @type Switch: String
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当音视频审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当音视频审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer

        attr_accessor :Switch, :ReviewConfidence, :BlockConfidence
        
        def initialize(switch=nil, reviewconfidence=nil, blockconfidence=nil)
          @Switch = switch
          @ReviewConfidence = reviewconfidence
          @BlockConfidence = blockconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ReviewConfidence = params['ReviewConfidence']
          @BlockConfidence = params['BlockConfidence']
        end
      end

      # 语音鉴别涉及令人不适宜的信息的任务控制参数。
      class PoliticalAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴别涉及令人不适宜的信息的任务开关，可选值：
        # <li>ON：开启语音鉴别涉及令人不适宜的信息的任务；</li>
        # <li>OFF：关闭语音鉴别涉及令人不适宜的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当音视频审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当音视频审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 鉴别涉及令人不适宜的信息的任务控制参数
      class PoliticalConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴别涉及令人不适宜的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalImgReviewTemplateInfo`
        # @param AsrReviewInfo: 语音鉴别涉及令人不适宜的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本鉴别涉及令人不适宜的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalOcrReviewTemplateInfo`

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

      # 鉴别涉及令人不适宜的信息的控制参数。
      class PoliticalConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴别涉及令人不适宜的信息的控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalImgReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 语音鉴别涉及令人不适宜的信息的控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本鉴别涉及令人不适宜的信息的控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalOcrReviewTemplateInfoForUpdate`

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

      # 图片画面审核涉及令人不适宜信息的任务结果类型
      class PoliticalImageResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 鉴别涉及令人不适宜信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 鉴别涉及令人不适宜信息的结果建议，取值范围：
        # <li>pass；</li>
        # <li>review；</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Name: 涉及令人不适宜的信息、违规图标名字。
        # @type Name: String
        # @param AreaCoordSet: 涉及令人不适宜的信息、违规图标出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array

        attr_accessor :Confidence, :Suggestion, :Name, :AreaCoordSet
        
        def initialize(confidence=nil, suggestion=nil, name=nil, areacoordset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Name = name
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Name = params['Name']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 画面鉴别涉及令人不适宜的信息的任务控制参数
      class PoliticalImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴别涉及令人不适宜的信息的任务开关，可选值：
        # <li>ON：开启画面鉴别涉及令人不适宜的信息的任务；</li>
        # <li>OFF：关闭画面鉴别涉及令人不适宜的信息的任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴别涉及令人不适宜的信息的过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>violation_photo：违规图标；</li>
        # <li>politician：相关人物；</li>
        # <li>entertainment：娱乐人物；</li>
        # <li>sport：体育人物；</li>
        # <li>entrepreneur：商业人物；</li>
        # <li>scholar：教育学者；</li>
        # <li>celebrity：知名人物；</li>
        # <li>military：相关人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 97 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 95 分。取值范围：0~100。
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

      # 画面鉴别涉及令人不适宜的信息的任务控制参数。
      class PoliticalImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴别涉及令人不适宜的信息的任务开关，可选值：
        # <li>ON：开启画面鉴别涉及令人不适宜的信息的任务；</li>
        # <li>OFF：关闭画面鉴别涉及令人不适宜的信息的任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴别涉及令人不适宜的信息的过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>violation_photo：违规图标；</li>
        # <li>politician：相关人物；</li>
        # <li>entertainment：娱乐人物；</li>
        # <li>sport：体育人物；</li>
        # <li>entrepreneur：商业人物；</li>
        # <li>scholar：教育学者；</li>
        # <li>celebrity：知名人物；</li>
        # <li>military：相关人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 文本鉴别涉及令人不适宜的信息的任务控制参数
      class PoliticalOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴别涉及令人不适宜的信息的任务开关，可选值：
        # <li>ON：开启文本鉴别涉及令人不适宜的信息的任务；</li>
        # <li>OFF：关闭文本鉴别涉及令人不适宜的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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

      # 文本鉴别涉及令人不适宜的信息的任务控制参数。
      class PoliticalOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴别涉及令人不适宜的信息的任务开关，可选值：
        # <li>ON：开启文本鉴别涉及令人不适宜的信息的任务；</li>
        # <li>OFF：关闭文本鉴别涉及令人不适宜的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 语音鉴别涉及令人反感的信息的任务控制参数
      class PornAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴别涉及令人反感的信息的任务开关，可选值：
        # <li>ON：开启语音鉴别涉及令人反感的信息的任务；</li>
        # <li>OFF：关闭语音鉴别涉及令人反感的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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

      # 语音鉴别涉及令人反感的信息的任务控制参数。
      class PornAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴别涉及令人反感的信息的任务开关，可选值：
        # <li>ON：开启语音鉴别涉及令人反感的信息的任务；</li>
        # <li>OFF：关闭语音鉴别涉及令人反感的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 鉴别涉及令人反感的信息的任务控制参数
      class PornConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴别涉及令人反感的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornImgReviewTemplateInfo`
        # @param AsrReviewInfo: 语音鉴别涉及令人反感的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本鉴别涉及令人反感的信息的控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornOcrReviewTemplateInfo`

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

      # 鉴别涉及令人反感的信息的任务控制参数。
      class PornConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴别涉及令人反感的信息的控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornImgReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 语音鉴别涉及令人反感的信息的控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本鉴别涉及令人反感的信息的控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornOcrReviewTemplateInfoForUpdate`

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

      # 图片画面审核涉及令人反感的信息的任务结果类型
      class PornImageResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 鉴别涉及令人反感的信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 鉴别涉及令人反感的信息的结果建议，取值范围：
        # <li>pass；</li>
        # <li>review；</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 鉴别涉及令人反感的信息的结果标签，取值范围：
        # <li>porn：色情；</li>
        # <li>sexy：性感；</li>
        # <li>vulgar：低俗；</li>
        # <li>intimacy：亲密行为。</li>
        # @type Label: String

        attr_accessor :Confidence, :Suggestion, :Label
        
        def initialize(confidence=nil, suggestion=nil, label=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
        end
      end

      # 画面鉴别涉及令人反感的信息的任务控制参数
      class PornImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴别涉及令人反感的信息的任务开关，可选值：
        # <li>ON：开启画面鉴别涉及令人反感的信息的任务；</li>
        # <li>OFF：关闭画面鉴别涉及令人反感的信息的任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴别涉及令人反感的信息的过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>porn：色情；</li>
        # <li>vulgar：低俗；</li>
        # <li>intimacy：亲密行为；</li>
        # <li>sexy：性感。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 90 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 0 分。取值范围：0~100。
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

      # 画面鉴别涉及令人反感的信息的任务控制参数。
      class PornImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴别涉及令人反感的信息的任务开关，可选值：
        # <li>ON：开启画面鉴别涉及令人反感的信息的任务；</li>
        # <li>OFF：关闭画面鉴别涉及令人反感的信息的任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴别涉及令人反感的信息的过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>porn：色情；</li>
        # <li>vulgar：低俗；</li>
        # <li>intimacy：亲密行为；</li>
        # <li>sexy：性感。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 文本鉴别涉及令人反感的信息的任务控制参数
      class PornOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴别涉及令人反感的信息的任务开关，可选值：
        # <li>ON：开启文本鉴别涉及令人反感的信息的任务；</li>
        # <li>OFF：关闭文本鉴别涉及令人反感的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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

      # 文本鉴别涉及令人反感的信息的任务控制参数。
      class PornOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴别涉及令人反感的信息的任务开关，可选值：
        # <li>ON：开启文本鉴别涉及令人反感的信息的任务；</li>
        # <li>OFF：关闭文本鉴别涉及令人反感的信息的任务。</li>
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

      # 音视频处理任务信息
      class ProcedureTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 音视频处理任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 已弃用，请使用各个具体任务的 ErrCode。
        # @type ErrCode: Integer
        # @param Message: 已弃用，请使用各个具体任务的 Message。
        # @type Message: String
        # @param FileId: 媒体文件 ID
        # <li>若流程由 [ProcessMedia](https://cloud.tencent.com/document/product/266/33427) 发起，该字段表示 [MediaInfo](https://cloud.tencent.com/document/product/266/31773#MediaInfo) 的 FileId；</li>
        # <li>若流程由 [ProcessMediaByUrl](https://cloud.tencent.com/document/product/266/33426) 发起，该字段表示 [MediaInputInfo](https://cloud.tencent.com/document/product/266/31773#MediaInputInfo) 的 Id。</li>
        # @type FileId: String
        # @param FileName: 媒体文件名称
        # <li>若流程由 [ProcessMedia](https://cloud.tencent.com/document/product/266/33427) 发起，该字段表示 [MediaInfo](https://cloud.tencent.com/document/product/266/31773#MediaInfo) 的 BasicInfo.Name；</li>
        # <li>若流程由 [ProcessMediaByUrl](https://cloud.tencent.com/document/product/266/33426) 发起，该字段表示 [MediaInputInfo](https://cloud.tencent.com/document/product/266/31773#MediaInputInfo) 的 Name。</li>
        # @type FileName: String
        # @param FileUrl: 媒体文件地址
        # <li>若流程由 [ProcessMedia](https://cloud.tencent.com/document/product/266/33427) 发起，该字段表示 [MediaInfo](https://cloud.tencent.com/document/product/266/31773#MediaInfo) 的 BasicInfo.MediaUrl；</li>
        # <li>若流程由 [ProcessMediaByUrl](https://cloud.tencent.com/document/product/266/33426) 发起，该字段表示 [MediaInputInfo](https://cloud.tencent.com/document/product/266/31773#MediaInputInfo) 的 Url。</li>
        # @type FileUrl: String
        # @param MetaData: 原始音视频的元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param MediaProcessResultSet: 音视频处理任务的执行状态与结果。
        # @type MediaProcessResultSet: Array
        # @param AiContentReviewResultSet: 音视频审核任务的执行状态与结果。
        # @type AiContentReviewResultSet: Array
        # @param AiAnalysisResultSet: 音视频内容分析任务的执行状态与结果。
        # @type AiAnalysisResultSet: Array
        # @param AiRecognitionResultSet: 音视频内容识别任务的执行状态与结果。
        # @type AiRecognitionResultSet: Array
        # @param TasksPriority: 任务流的优先级，取值范围为 [-10, 10]。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式。
        # <li>Finish：只有当任务流全部执行完毕时，才发起一次事件通知；</li>
        # <li>Change：只要任务流中每个子任务的状态发生变化，都进行事件通知；</li>
        # <li>None：不接受该任务流回调。</li>
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :FileName, :FileUrl, :MetaData, :MediaProcessResultSet, :AiContentReviewResultSet, :AiAnalysisResultSet, :AiRecognitionResultSet, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, filename=nil, fileurl=nil, metadata=nil, mediaprocessresultset=nil, aicontentreviewresultset=nil, aianalysisresultset=nil, airecognitionresultset=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileName = filename
          @FileUrl = fileurl
          @MetaData = metadata
          @MediaProcessResultSet = mediaprocessresultset
          @AiContentReviewResultSet = aicontentreviewresultset
          @AiAnalysisResultSet = aianalysisresultset
          @AiRecognitionResultSet = airecognitionresultset
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileUrl = params['FileUrl']
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
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # 任务流模板详情
      class ProcedureTemplate < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字。
        # @type Name: String
        # @param Type: 任务流模板类型，取值范围：
        # <li>Preset：系统预置任务流模板；</li>
        # <li>Custom：用户自定义任务流模板。</li>
        # @type Type: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: AI 智能审核类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: AI 智能内容分析类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: AI 内容识别类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param MiniProgramPublishTask: 微信小程序发布任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniProgramPublishTask: :class:`Tencentcloud::Vod.v20180717.models.WechatMiniProgramPublishTaskInput`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Name, :Type, :Comment, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :MiniProgramPublishTask, :CreateTime, :UpdateTime
        
        def initialize(name=nil, type=nil, comment=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, miniprogrampublishtask=nil, createtime=nil, updatetime=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @MiniProgramPublishTask = miniprogrampublishtask
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
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
          unless params['MiniProgramPublishTask'].nil?
            @MiniProgramPublishTask = WechatMiniProgramPublishTaskInput.new
            @MiniProgramPublishTask.deserialize(params['MiniProgramPublishTask'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # ProcessImage请求参数结构体
      class ProcessImageRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID，即该文件在云点播上的全局唯一标识符。本接口要求媒体文件必须是图片格式。
        # @type FileId: String
        # @param Operation: 操作类型。现在仅支持填 ContentReview，表示内容智能识别。
        # @type Operation: String
        # @param ContentReviewInput: 图片内容智能识别参数，当 Operation 为 ContentReview 时该字段有效。
        # @type ContentReviewInput: :class:`Tencentcloud::Vod.v20180717.models.ImageContentReviewInput`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileId, :Operation, :ContentReviewInput, :SubAppId
        
        def initialize(fileid=nil, operation=nil, contentreviewinput=nil, subappid=nil)
          @FileId = fileid
          @Operation = operation
          @ContentReviewInput = contentreviewinput
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Operation = params['Operation']
          unless params['ContentReviewInput'].nil?
            @ContentReviewInput = ImageContentReviewInput.new
            @ContentReviewInput.deserialize(params['ContentReviewInput'])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # ProcessImage返回参数结构体
      class ProcessImageResponse < TencentCloud::Common::AbstractModel
        # @param ContentReviewResultSet: 图片内容智能识别任务结果。
        # @type ContentReviewResultSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContentReviewResultSet, :RequestId
        
        def initialize(contentreviewresultset=nil, requestid=nil)
          @ContentReviewResultSet = contentreviewresultset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContentReviewResultSet'].nil?
            @ContentReviewResultSet = []
            params['ContentReviewResultSet'].each do |i|
              contentreviewresult_tmp = ContentReviewResult.new
              contentreviewresult_tmp.deserialize(i)
              @ContentReviewResultSet << contentreviewresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ProcessMediaByProcedure请求参数结构体
      class ProcessMediaByProcedureRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param ProcedureName: [任务流模板](/document/product/266/11700#.E4.BB.BB.E5.8A.A1.E6.B5.81.E6.A8.A1.E6.9D.BF)名字。
        # @type ProcedureName: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是-10到10，不填代表0。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式，可取值有 Finish，Change 和 None，不填代表 Finish。
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String

        attr_accessor :FileId, :ProcedureName, :SubAppId, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId, :ExtInfo
        
        def initialize(fileid=nil, procedurename=nil, subappid=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil, extinfo=nil)
          @FileId = fileid
          @ProcedureName = procedurename
          @SubAppId = subappid
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @FileId = params['FileId']
          @ProcedureName = params['ProcedureName']
          @SubAppId = params['SubAppId']
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
        end
      end

      # ProcessMediaByProcedure返回参数结构体
      class ProcessMediaByProcedureResponse < TencentCloud::Common::AbstractModel
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

      # ProcessMediaByUrl请求参数结构体
      class ProcessMediaByUrlRequest < TencentCloud::Common::AbstractModel
        # @param InputInfo: API 已经<font color='red'>不再维护</font>。推荐使用的替代 API 请参考接口描述。
        # @type InputInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaInputInfo`
        # @param OutputInfo: 输出文件 COS 路径信息。
        # @type OutputInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaOutputInfo`
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 视频内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式，可取值有 Finish，Change 和 None，不填代表 Finish。
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :InputInfo, :OutputInfo, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId, :SubAppId
        
        def initialize(inputinfo=nil, outputinfo=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil, subappid=nil)
          @InputInfo = inputinfo
          @OutputInfo = outputinfo
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @SubAppId = subappid
        end

        def deserialize(params)
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new
            @InputInfo.deserialize(params['InputInfo'])
          end
          unless params['OutputInfo'].nil?
            @OutputInfo = MediaOutputInfo.new
            @OutputInfo.deserialize(params['OutputInfo'])
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
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @SubAppId = params['SubAppId']
        end
      end

      # ProcessMediaByUrl返回参数结构体
      class ProcessMediaByUrlResponse < TencentCloud::Common::AbstractModel
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
        # @param FileId: 媒体文件 ID，即该文件在云点播上的全局唯一标识符，在上传成功后由云点播后台分配。可以在 [视频上传完成事件通知](/document/product/266/7830) 或 [云点播控制台](https://console.cloud.tencent.com/vod/media) 获取该字段。
        # @type FileId: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param MediaProcessTask: 视频处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: 音视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 音视频内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 音视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式，可取值有 Finish，Change 和 None，不填代表 Finish。
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String

        attr_accessor :FileId, :SubAppId, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId, :ExtInfo
        
        def initialize(fileid=nil, subappid=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil, extinfo=nil)
          @FileId = fileid
          @SubAppId = subappid
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SubAppId = params['SubAppId']
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
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
        end
      end

      # ProcessMedia返回参数结构体
      class ProcessMediaResponse < TencentCloud::Common::AbstractModel
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

      # 预付费商品实例
      class ProductInstance < TencentCloud::Common::AbstractModel
        # @param ProductType: 预付费商品实例类型，取值有：
        # <li>StarterPackage：点播新手包。</li>
        # <li>MiniProgramPlugin：点播小程序插件。</li>
        # <li>ResourcePackage：点播资源包。</li>
        # @type ProductType: String
        # @param StartTime: 资源包实例起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type StartTime: String
        # @param ExpireTime: 资源包实例过期日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type ExpireTime: String
        # @param ProductInstanceId: 资源包实例ID。对应每个资源包，系统会分配相应的资源。续费或者升级资源包时，需要带上这个资源ID。
        # @type ProductInstanceId: String
        # @param LastConsumeDate: 系统最近一次扣除资源包的日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type LastConsumeDate: String
        # @param BindStatus: 资源包绑定 License 状态，取值有：
        # <li>0：未绑定。</li>
        # <li>1：已绑定。</li>
        # @type BindStatus: Integer
        # @param ProductInstanceResourceSet: 预付费资源包实例中包含的资源包列表。
        # @type ProductInstanceResourceSet: Array
        # @param ProductInstanceStatus: 资源包实例的状态，取值有：
        # <li>Effective：生效，可用于计费抵扣。</li>
        # <li>Isolated：隔离，不可用于计费抵扣。</li>
        # @type ProductInstanceStatus: String
        # @param RefundStatus: 资源包实例的可退还状态，取值有：
        # <li>FullRefund：可全额退款。</li>
        # <li>Denied：不可退款。</li>
        # @type RefundStatus: String
        # @param RenewStatus: 自动续费状态，取值有：
        # <li>Never：不自动续费。</li>
        # <li>Expire：到期自动续费。</li>
        # <li>ExpireOrUseOut：到期或用完自动续费。</li>
        # <li>NotSupport：不支持。</li>
        # @type RenewStatus: String

        attr_accessor :ProductType, :StartTime, :ExpireTime, :ProductInstanceId, :LastConsumeDate, :BindStatus, :ProductInstanceResourceSet, :ProductInstanceStatus, :RefundStatus, :RenewStatus
        
        def initialize(producttype=nil, starttime=nil, expiretime=nil, productinstanceid=nil, lastconsumedate=nil, bindstatus=nil, productinstanceresourceset=nil, productinstancestatus=nil, refundstatus=nil, renewstatus=nil)
          @ProductType = producttype
          @StartTime = starttime
          @ExpireTime = expiretime
          @ProductInstanceId = productinstanceid
          @LastConsumeDate = lastconsumedate
          @BindStatus = bindstatus
          @ProductInstanceResourceSet = productinstanceresourceset
          @ProductInstanceStatus = productinstancestatus
          @RefundStatus = refundstatus
          @RenewStatus = renewstatus
        end

        def deserialize(params)
          @ProductType = params['ProductType']
          @StartTime = params['StartTime']
          @ExpireTime = params['ExpireTime']
          @ProductInstanceId = params['ProductInstanceId']
          @LastConsumeDate = params['LastConsumeDate']
          @BindStatus = params['BindStatus']
          unless params['ProductInstanceResourceSet'].nil?
            @ProductInstanceResourceSet = []
            params['ProductInstanceResourceSet'].each do |i|
              productinstancerecource_tmp = ProductInstanceRecource.new
              productinstancerecource_tmp.deserialize(i)
              @ProductInstanceResourceSet << productinstancerecource_tmp
            end
          end
          @ProductInstanceStatus = params['ProductInstanceStatus']
          @RefundStatus = params['RefundStatus']
          @RenewStatus = params['RenewStatus']
        end
      end

      # 资源包中包含的资源。
      class ProductInstanceRecource < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型。
        # <li>Storage：存储资源包。</li>
        # <li>Traffic：流量资源包。</li>
        # <li>Transcode：普通转码资源包。</li>
        # <li>TESHD：极速高清转码资源包。</li>
        # <li>Review：音视频审核转码资源包。</li>
        # @type ResourceType: String
        # @param Amount: 资源包额度。
        # <li>音视频存储资源包，单位为字节。</li>
        # <li>音视频转码资源包，单位为秒。</li>
        # <li>音视频审核资源包，单位为秒。</li>
        # <li>音视频极速高清资源包，单位为秒。</li>
        # <li>音视频加速资源包，单位为字节。</li>
        # @type Amount: Integer
        # @param Left: 资源包余量。
        # <li>音视频存储资源包，单位为字节。</li>
        # <li>音视频转码资源包，单位为秒。</li>
        # <li>音视频审核资源包，单位为秒。</li>
        # <li>音视频极速高清资源包，单位为秒。</li>
        # <li>音视频加速资源包，单位为字节。</li>
        # @type Left: Integer

        attr_accessor :ResourceType, :Amount, :Left
        
        def initialize(resourcetype=nil, amount=nil, left=nil)
          @ResourceType = resourcetype
          @Amount = amount
          @Left = left
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @Amount = params['Amount']
          @Left = params['Left']
        end
      end

      # 语音违禁任务控制参数
      class ProhibitedAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音违禁任务开关，可选值：
        # <li>ON：开启语音违禁任务；</li>
        # <li>OFF：关闭语音违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本违禁控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedOcrReviewTemplateInfo`

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
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本违禁控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedOcrReviewTemplateInfoForUpdate`

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
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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

      # PullEvents请求参数结构体
      class PullEventsRequest < TencentCloud::Common::AbstractModel
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :ExtInfo, :SubAppId
        
        def initialize(extinfo=nil, subappid=nil)
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # PullEvents返回参数结构体
      class PullEventsResponse < TencentCloud::Common::AbstractModel
        # @param EventSet: 事件列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventSet, :RequestId
        
        def initialize(eventset=nil, requestid=nil)
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              eventcontent_tmp = EventContent.new
              eventcontent_tmp.deserialize(i)
              @EventSet << eventcontent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # PullUpload请求参数结构体
      class PullUploadRequest < TencentCloud::Common::AbstractModel
        # @param MediaUrl: 要拉取的媒体 URL，暂不支持拉取 Dash 格式（可以支持 HLS）。
        # 支持的扩展名详见[媒体类型](https://cloud.tencent.com/document/product/266/9760#.E5.AA.92.E4.BD.93.E7.B1.BB.E5.9E.8B)。请确保媒体 URL 可以访问。
        # @type MediaUrl: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param MediaName: 媒体名称。
        # @type MediaName: String
        # @param CoverUrl: 要拉取的视频封面 URL。仅支持 gif、jpeg、png 三种图片格式。
        # @type CoverUrl: String
        # @param Procedure: 媒体后续任务操作，详见[上传指定任务流](https://cloud.tencent.com/document/product/266/9759)。
        # @type Procedure: String
        # @param ExpireTime: 媒体文件过期时间，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String
        # @param StorageRegion: 指定上传园区，仅适用于对上传地域有特殊需求的用户：
        # <li>不填默认上传至您的[默认地域](https://cloud.tencent.com/document/product/266/14059?from=11329#.E5.AD.98.E5.82.A8.E5.9C.B0.E5.9F.9F.E6.AD.A5.E9.AA.A4)。</li>
        # <li>若指定上传园区，请先确认[上传存储设置](https://cloud.tencent.com/document/product/266/14059?from=11329#.E5.AD.98.E5.82.A8.E5.9C.B0.E5.9F.9F.E6.AD.A5.E9.AA.A4)已经开启相应的存储地域。</li>
        # @type StorageRegion: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过[创建分类](https://cloud.tencent.com/document/product/266/7812)接口，创建分类，获得分类 ID。
        # @type ClassId: Integer
        # @param SessionContext: 来源上下文，用于透传用户请求信息，当指定 Procedure 任务后，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SourceContext: 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。
        # @type SourceContext: String

        attr_accessor :MediaUrl, :SubAppId, :MediaName, :CoverUrl, :Procedure, :ExpireTime, :StorageRegion, :ClassId, :SessionContext, :SessionId, :ExtInfo, :SourceContext
        
        def initialize(mediaurl=nil, subappid=nil, medianame=nil, coverurl=nil, procedure=nil, expiretime=nil, storageregion=nil, classid=nil, sessioncontext=nil, sessionid=nil, extinfo=nil, sourcecontext=nil)
          @MediaUrl = mediaurl
          @SubAppId = subappid
          @MediaName = medianame
          @CoverUrl = coverurl
          @Procedure = procedure
          @ExpireTime = expiretime
          @StorageRegion = storageregion
          @ClassId = classid
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
          @SourceContext = sourcecontext
        end

        def deserialize(params)
          @MediaUrl = params['MediaUrl']
          @SubAppId = params['SubAppId']
          @MediaName = params['MediaName']
          @CoverUrl = params['CoverUrl']
          @Procedure = params['Procedure']
          @ExpireTime = params['ExpireTime']
          @StorageRegion = params['StorageRegion']
          @ClassId = params['ClassId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
          @SourceContext = params['SourceContext']
        end
      end

      # PullUpload返回参数结构体
      class PullUploadResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 拉取上传视频的任务 ID，可以通过该 ID 查询拉取上传任务的状态。
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

      # 视频转拉任务信息
      class PullUploadTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 转拉上传任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 转拉上传完成后生成的视频 ID。
        # @type FileId: String
        # @param MediaBasicInfo: 转拉完成后生成的媒体文件基础信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaBasicInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaBasicInfo`
        # @param MetaData: 输出视频的元信息。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param FileUrl: 转拉上传完成后生成的播放地址。
        # @type FileUrl: String
        # @param ProcedureTaskId: 若转拉上传时指定了视频处理流程，则该参数为流程任务 ID。
        # @type ProcedureTaskId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :MediaBasicInfo, :MetaData, :FileUrl, :ProcedureTaskId, :SessionContext, :SessionId
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, mediabasicinfo=nil, metadata=nil, fileurl=nil, proceduretaskid=nil, sessioncontext=nil, sessionid=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @MediaBasicInfo = mediabasicinfo
          @MetaData = metadata
          @FileUrl = fileurl
          @ProcedureTaskId = proceduretaskid
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          unless params['MediaBasicInfo'].nil?
            @MediaBasicInfo = MediaBasicInfo.new
            @MediaBasicInfo.deserialize(params['MediaBasicInfo'])
          end
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          @FileUrl = params['FileUrl']
          @ProcedureTaskId = params['ProcedureTaskId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # PushUrlCache请求参数结构体
      class PushUrlCacheRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 预热的 URL 列表，单次最多指定20个 URL。
        # @type Urls: Array
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Urls, :SubAppId
        
        def initialize(urls=nil, subappid=nil)
          @Urls = urls
          @SubAppId = subappid
        end

        def deserialize(params)
          @Urls = params['Urls']
          @SubAppId = params['SubAppId']
        end
      end

      # PushUrlCache返回参数结构体
      class PushUrlCacheResponse < TencentCloud::Common::AbstractModel
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

      # 降码率任务转自适应码流结果类型
      class ReduceMediaBitrateAdaptiveDynamicStreamingResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频转自适应码流任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AdaptiveDynamicStreamingTaskInput`
        # @param Output: 对视频转自适应码流任务的输出。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AdaptiveDynamicStreamingInfoItem`

        attr_accessor :Status, :ErrCodeExt, :Message, :Input, :Output
        
        def initialize(status=nil, errcodeext=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
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

      # 降码率任务结果
      class ReduceMediaBitrateMediaProcessTaskResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Transcode：转码</li>
        # <li>AdaptiveDynamicStreaming：自适应码流</li>
        # @type Type: String
        # @param TranscodeTask: 降码率任务中视频转码任务的查询结果，当任务类型为 Transcode 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeTask: :class:`Tencentcloud::Vod.v20180717.models.ReduceMediaBitrateTranscodeResult`
        # @param AdaptiveDynamicStreamingTask: 降码率任务中对视频转自适应码流任务的查询结果，当任务类型为 AdaptiveDynamicStreaming 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdaptiveDynamicStreamingTask: :class:`Tencentcloud::Vod.v20180717.models.ReduceMediaBitrateAdaptiveDynamicStreamingResult`

        attr_accessor :Type, :TranscodeTask, :AdaptiveDynamicStreamingTask
        
        def initialize(type=nil, transcodetask=nil, adaptivedynamicstreamingtask=nil)
          @Type = type
          @TranscodeTask = transcodetask
          @AdaptiveDynamicStreamingTask = adaptivedynamicstreamingtask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TranscodeTask'].nil?
            @TranscodeTask = ReduceMediaBitrateTranscodeResult.new
            @TranscodeTask.deserialize(params['TranscodeTask'])
          end
          unless params['AdaptiveDynamicStreamingTask'].nil?
            @AdaptiveDynamicStreamingTask = ReduceMediaBitrateAdaptiveDynamicStreamingResult.new
            @AdaptiveDynamicStreamingTask.deserialize(params['AdaptiveDynamicStreamingTask'])
          end
        end
      end

      # 降码率任务信息
      class ReduceMediaBitrateTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频处理任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param FileName: 媒体文件名称。
        # @type FileName: String
        # @param FileUrl: 媒体文件地址。
        # @type FileUrl: String
        # @param MetaData: 原始视频的元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param MediaProcessResultSet: 降码率任务执行状态与结果。
        # @type MediaProcessResultSet: Array
        # @param TasksPriority: 任务流的优先级，取值范围为 [-10, 10]。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式。
        # <li>Finish：只有当任务流全部执行完毕时，才发起一次事件通知；</li>
        # <li>None：不接受该任务流回调。</li>
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :TaskId, :Status, :FileId, :FileName, :FileUrl, :MetaData, :MediaProcessResultSet, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId
        
        def initialize(taskid=nil, status=nil, fileid=nil, filename=nil, fileurl=nil, metadata=nil, mediaprocessresultset=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil)
          @TaskId = taskid
          @Status = status
          @FileId = fileid
          @FileName = filename
          @FileUrl = fileurl
          @MetaData = metadata
          @MediaProcessResultSet = mediaprocessresultset
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileUrl = params['FileUrl']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          unless params['MediaProcessResultSet'].nil?
            @MediaProcessResultSet = []
            params['MediaProcessResultSet'].each do |i|
              reducemediabitratemediaprocesstaskresult_tmp = ReduceMediaBitrateMediaProcessTaskResult.new
              reducemediabitratemediaprocesstaskresult_tmp.deserialize(i)
              @MediaProcessResultSet << reducemediabitratemediaprocesstaskresult_tmp
            end
          end
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # 降码率任务转码结果类型
      class ReduceMediaBitrateTranscodeResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 转码任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.TranscodeTaskInput`
        # @param Output: 转码任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaTranscodeItem`
        # @param Progress: 转码进度，取值范围 [0-100] 。
        # @type Progress: Integer
        # @param BeginProcessTime: 转码任务开始执行的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type BeginProcessTime: String
        # @param FinishTime: 转码任务执行完毕的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type FinishTime: String

        attr_accessor :Status, :ErrCodeExt, :Message, :Input, :Output, :Progress, :BeginProcessTime, :FinishTime
        
        def initialize(status=nil, errcodeext=nil, message=nil, input=nil, output=nil, progress=nil, beginprocesstime=nil, finishtime=nil)
          @Status = status
          @ErrCodeExt = errcodeext
          @Message = message
          @Input = input
          @Output = output
          @Progress = progress
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
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
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
        end
      end

      # Referer 防盗链配置
      class RefererAuthPolicy < TencentCloud::Common::AbstractModel
        # @param Status: [Referer 防盗链](https://cloud.tencent.com/document/product/266/14046)设置状态，可选值：
        # <li>Enabled: 启用；</li>
        # <li>Disabled: 禁用。</li>
        # @type Status: String
        # @param AuthType: Referer 校验类型，可选值：
        # <li>Black：黑名单方式校验。HTTP 请求携带了 Referers 列表中的某个 Referer 将被拒绝访问。</li>
        # <li>White：白名单方式校验。HTTP 请求携带了 Referers 列表中的 Referer 时才允许访问。</li>
        # 当 Status 取值为 Enabled 时，AuthType 必须赋值。
        # @type AuthType: String
        # @param Referers: 用于校验的 Referer 列表，最大支持20个 Referer。当 Status 取值为 Enabled 时， Referers 不能为空数组。Referer 的格式参考域名的格式。
        # @type Referers: Array
        # @param BlankRefererAllowed: 是否允许空 Referer 访问本域名，可选值：
        # <li>Yes： 是。</li>
        # <li>No： 否。</li>
        # 当 Status 取值为 Enabled 时，BlankRefererAllowed 必须赋值。
        # @type BlankRefererAllowed: String

        attr_accessor :Status, :AuthType, :Referers, :BlankRefererAllowed
        
        def initialize(status=nil, authtype=nil, referers=nil, blankrefererallowed=nil)
          @Status = status
          @AuthType = authtype
          @Referers = referers
          @BlankRefererAllowed = blankrefererallowed
        end

        def deserialize(params)
          @Status = params['Status']
          @AuthType = params['AuthType']
          @Referers = params['Referers']
          @BlankRefererAllowed = params['BlankRefererAllowed']
        end
      end

      # RefreshUrlCache请求参数结构体
      class RefreshUrlCacheRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 刷新的 URL 列表，单次最多指定20个 URL。
        # @type Urls: Array
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :Urls, :SubAppId
        
        def initialize(urls=nil, subappid=nil)
          @Urls = urls
          @SubAppId = subappid
        end

        def deserialize(params)
          @Urls = params['Urls']
          @SubAppId = params['SubAppId']
        end
      end

      # RefreshUrlCache返回参数结构体
      class RefreshUrlCacheResponse < TencentCloud::Common::AbstractModel
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

      # 智能去除水印任务的输入。
      class RemoveWaterMarkTaskInput < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String

        attr_accessor :FileId
        
        def initialize(fileid=nil)
          @FileId = fileid
        end

        def deserialize(params)
          @FileId = params['FileId']
        end
      end

      # 智能去除水印任务的输出。
      class RemoveWaterMarkTaskOutput < TencentCloud::Common::AbstractModel
        # @param FileId: 视频 ID。
        # @type FileId: String
        # @param MetaData: 元信息。包括大小、时长、视频流信息、音频流信息等。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`

        attr_accessor :FileId, :MetaData
        
        def initialize(fileid=nil, metadata=nil)
          @FileId = fileid
          @MetaData = metadata
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
        end
      end

      # RemoveWatermark请求参数结构体
      class RemoveWatermarkRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID 。
        # @type FileId: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 该字段已无效。
        # @type TasksNotifyMode: String

        attr_accessor :FileId, :SubAppId, :SessionId, :SessionContext, :TasksPriority, :TasksNotifyMode
        
        def initialize(fileid=nil, subappid=nil, sessionid=nil, sessioncontext=nil, taskspriority=nil, tasksnotifymode=nil)
          @FileId = fileid
          @SubAppId = subappid
          @SessionId = sessionid
          @SessionContext = sessioncontext
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SubAppId = params['SubAppId']
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
        end
      end

      # RemoveWatermark返回参数结构体
      class RemoveWatermarkResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID 。
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

      # 智能去除水印任务信息，仅当 TaskType 为 RemoveWatermark，该字段有值。
      class RemoveWatermarkTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID 。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能去除水印任务的输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.RemoveWaterMarkTaskInput`
        # @param Output: 智能去除水印任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.RemoveWaterMarkTaskOutput`
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String

        attr_accessor :TaskId, :Status, :ErrCodeExt, :ErrCode, :Message, :Input, :Output, :SessionId, :SessionContext
        
        def initialize(taskid=nil, status=nil, errcodeext=nil, errcode=nil, message=nil, input=nil, output=nil, sessionid=nil, sessioncontext=nil)
          @TaskId = taskid
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = RemoveWaterMarkTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = RemoveWaterMarkTaskOutput.new
            @Output.deserialize(params['Output'])
          end
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # ResetProcedureTemplate请求参数结构体
      class ResetProcedureTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: AI 智能内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: AI 智能内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: AI 内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :Comment, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :SubAppId
        
        def initialize(name=nil, comment=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, subappid=nil)
          @Name = name
          @Comment = comment
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
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
          @SubAppId = params['SubAppId']
        end
      end

      # ResetProcedureTemplate返回参数结构体
      class ResetProcedureTemplateResponse < TencentCloud::Common::AbstractModel
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

      # 播放器子流名字信息
      class ResolutionNameInfo < TencentCloud::Common::AbstractModel
        # @param MinEdgeLength: 视频短边长度，单位：像素。
        # @type MinEdgeLength: Integer
        # @param Name: 展示名字。
        # @type Name: String

        attr_accessor :MinEdgeLength, :Name
        
        def initialize(minedgelength=nil, name=nil)
          @MinEdgeLength = minedgelength
          @Name = name
        end

        def deserialize(params)
          @MinEdgeLength = params['MinEdgeLength']
          @Name = params['Name']
        end
      end

      # 标签键值。参考[标签](https://cloud.tencent.com/document/product/651)。
      class ResourceTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键。
        # @type TagKey: String
        # @param TagValue: 标签值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # RestoreMedia请求参数结构体
      class RestoreMediaRequest < TencentCloud::Common::AbstractModel
        # @param FileIds: 媒体文件唯一标识列表。
        # @type FileIds: Array
        # @param RestoreDay: 解冻出的临时媒体文件的可访问持续时长，单位为“天”。
        # @type RestoreDay: Integer
        # @param RestoreTier: 解冻模式。当媒体文件当前的存储类型为归档存储时，有以下取值：
        # <li>极速模式：Expedited，解冻任务在5分钟后完成。</li>
        # <li>标准模式：Standard，解冻任务在5小时后完成 。</li>
        # <li>批量模式：Bulk，，解冻任务在12小时后完成。</li>
        # 当媒体文件的存储类型为深度归档存储时，有以下取值：
        # <li>标准模式：Standard，解冻任务在24小时后完成。</li>
        # <li>批量模式：Bulk，解冻任务在48小时后完成。</li>
        # @type RestoreTier: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileIds, :RestoreDay, :RestoreTier, :SubAppId
        
        def initialize(fileids=nil, restoreday=nil, restoretier=nil, subappid=nil)
          @FileIds = fileids
          @RestoreDay = restoreday
          @RestoreTier = restoretier
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @RestoreDay = params['RestoreDay']
          @RestoreTier = params['RestoreTier']
          @SubAppId = params['SubAppId']
        end
      end

      # RestoreMedia返回参数结构体
      class RestoreMediaResponse < TencentCloud::Common::AbstractModel
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

      # 取回视频任务信息
      class RestoreMediaTask < TencentCloud::Common::AbstractModel
        # @param FileId: 文件ID。
        # @type FileId: String
        # @param OriginalStorageClass: 文件原始存储类型。
        # @type OriginalStorageClass: String
        # @param TargetStorageClass: 文件目标存储类型。对于临时取回，目标存储类型与原始存储类型相同。
        # @type TargetStorageClass: String
        # @param RestoreTier: 取回模式，取值：
        # <li>Expedited：极速模式</li>
        # <li>Standard：标准模式</li>
        # <li>Bulk：批量模式</li>
        # @type RestoreTier: String
        # @param RestoreDay: 临时取回副本有效期，单位：天。对于永久取回，取值为0。
        # @type RestoreDay: Integer
        # @param Status: 该字段已废弃。
        # @type Status: Integer
        # @param Message: 该字段已废弃。
        # @type Message: String

        attr_accessor :FileId, :OriginalStorageClass, :TargetStorageClass, :RestoreTier, :RestoreDay, :Status, :Message
        
        def initialize(fileid=nil, originalstorageclass=nil, targetstorageclass=nil, restoretier=nil, restoreday=nil, status=nil, message=nil)
          @FileId = fileid
          @OriginalStorageClass = originalstorageclass
          @TargetStorageClass = targetstorageclass
          @RestoreTier = restoretier
          @RestoreDay = restoreday
          @Status = status
          @Message = message
        end

        def deserialize(params)
          @FileId = params['FileId']
          @OriginalStorageClass = params['OriginalStorageClass']
          @TargetStorageClass = params['TargetStorageClass']
          @RestoreTier = params['RestoreTier']
          @RestoreDay = params['RestoreDay']
          @Status = params['Status']
          @Message = params['Message']
        end
      end

      # ReviewAudioVideo请求参数结构体
      class ReviewAudioVideoRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID，即该文件在云点播上的全局唯一标识符，在上传成功后由云点播后台分配。可以在 [视频上传完成事件通知](/document/product/266/7830) 或 [云点播控制台](https://console.cloud.tencent.com/vod/media) 获取该字段。
        # @type FileId: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param SessionContext: 来源上下文，用于透传用户请求信息，音视频审核完成回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String

        attr_accessor :FileId, :SubAppId, :TasksPriority, :SessionContext, :SessionId, :ExtInfo
        
        def initialize(fileid=nil, subappid=nil, taskspriority=nil, sessioncontext=nil, sessionid=nil, extinfo=nil)
          @FileId = fileid
          @SubAppId = subappid
          @TasksPriority = taskspriority
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SubAppId = params['SubAppId']
          @TasksPriority = params['TasksPriority']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
        end
      end

      # ReviewAudioVideo返回参数结构体
      class ReviewAudioVideoResponse < TencentCloud::Common::AbstractModel
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

      # 音视频审核片段。
      class ReviewAudioVideoSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉及令人反感的信息的分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段鉴别涉及违规信息的结果建议，取值范围：
        # <li>review：疑似违规，建议复审；</li>
        # <li>block：确认违规，建议封禁。</li>
        # @type Suggestion: String
        # @param Label: 嫌疑片段最可能的违规的标签，取值范围：
        # <li>Porn：色情；</li>
        # <li>Terrorism：暴恐；</li>
        # <li>Political：令人不适宜的信息。</li>
        # @type Label: String
        # @param SubLabel: 当 Form 为 Image 或 Voice 时有效，表示当前标签（Label）下的二级标签。
        # 当 Form 为 Image 且 Label 为 Porn 时，取值范围：
        # <li>porn：色情；</li>
        # <li>vulgar：低俗。</li>

        # 当 Form 为 Image 且 Label 为 Terrorism 时，取值范围：
        # <li>guns：武器枪支；</li>
        # <li>bloody：血腥画面；</li>
        # <li>banners：暴恐旗帜；</li>
        # <li> scenario：暴恐画面；</li>
        # <li>explosion：爆炸火灾。</li>

        # 当 Form 为 Image 且 Label 为 Political 时，取值范围：
        # <li>violation_photo：违规图标；</li>
        # <li>nation_politician：国家领导人；</li>
        # <li>province_politician：省部级领导人；</li>
        # <li>county_politician：市/县级领导人；</li>
        # <li>sensitive_politician：敏感相关人物；</li>
        # <li>foreign_politician：国外政治人物；</li>
        # <li>sensitive_entertainment：敏感娱乐明星；</li>
        # <li>sensitive_military：敏感军事人物。</li>

        # 当 Form 为 Voice 且 Label 为 Porn 时，取值范围：
        # <li>moan：娇喘。</li>
        # @type SubLabel: String
        # @param Form: 嫌疑片段违禁的形式，取值范围：
        # <li>Image：画面上的人物或图标；</li>
        # <li>OCR：画面上的文字；</li>
        # <li>ASR：语音中的文字；</li>
        # <li>Voice：声音。</li>
        # @type Form: String
        # @param AreaCoordSet: 当 Form 为 Image 或 OCR 时有效，表示嫌疑人物、图标或文字出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array
        # @param Text: 当 Form 为 OCR 或 ASR 时有效，表示识别出来的 OCR 或 ASR 文本内容。
        # @type Text: String
        # @param KeywordSet: 当 Form 为 OCR 或 ASR 时有效，表示嫌疑片段命中的违规关键词列表。
        # @type KeywordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :Label, :SubLabel, :Form, :AreaCoordSet, :Text, :KeywordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, label=nil, sublabel=nil, form=nil, areacoordset=nil, text=nil, keywordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Form = form
          @AreaCoordSet = areacoordset
          @Text = text
          @KeywordSet = keywordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Form = params['Form']
          @AreaCoordSet = params['AreaCoordSet']
          @Text = params['Text']
          @KeywordSet = params['KeywordSet']
        end
      end

      # 音视频审核任务信息。
      class ReviewAudioVideoTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 音视频审核任务的输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.ReviewAudioVideoTaskInput`
        # @param Output: 音视频审核任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ReviewAudioVideoTaskOutput`
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，音视频审核完成回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String

        attr_accessor :TaskId, :Status, :ErrCodeExt, :Message, :Input, :Output, :SessionId, :SessionContext
        
        def initialize(taskid=nil, status=nil, errcodeext=nil, message=nil, input=nil, output=nil, sessionid=nil, sessioncontext=nil)
          @TaskId = taskid
          @Status = status
          @ErrCodeExt = errcodeext
          @Message = message
          @Input = input
          @Output = output
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = ReviewAudioVideoTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = ReviewAudioVideoTaskOutput.new
            @Output.deserialize(params['Output'])
          end
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # 音视频审核任务的输入。
      class ReviewAudioVideoTaskInput < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String

        attr_accessor :FileId
        
        def initialize(fileid=nil)
          @FileId = fileid
        end

        def deserialize(params)
          @FileId = params['FileId']
        end
      end

      # 音视频审核任务的输出。
      class ReviewAudioVideoTaskOutput < TencentCloud::Common::AbstractModel
        # @param Suggestion: 音视频内容审核的结果建议，取值范围：
        # <li>pass：建议通过；</li>
        # <li>review：建议复审；</li>
        # <li>block：建议封禁。</li>
        # @type Suggestion: String
        # @param Label: 当 Suggestion 为 review 或 block 时有效，表示音视频最可能的违规的标签，取值范围：
        # <li>Porn：色情；</li>
        # <li>Terrorism：暴恐；</li>
        # <li>Political：令人不适宜的信息。</li>
        # @type Label: String
        # @param Form: 当 Suggestion 为 review 或 block 时有效，表示音视频最可能的违禁的形式，取值范围：
        # <li>Image：画面上的人物或图标；</li>
        # <li>OCR：画面上的文字；</li>
        # <li>ASR：语音中的文字；</li>
        # <li>Voice：声音。</li>
        # @type Form: String
        # @param SegmentSet: 有违规信息的嫌疑的视频片段列表。
        # <font color=red>注意</font> ：该列表最多仅展示前 10个 元素。如希望获得完整结果，请从 SegmentSetFileUrl 对应的文件中获取。
        # @type SegmentSet: Array
        # @param SegmentSetFileUrl: 涉及违规信息的嫌疑的视频片段列表文件 URL。文件的内容为 JSON，数据结构与 SegmentSet 字段一致。 （文件不会永久存储，到达SegmentSetFileUrlExpireTime 时间点后文件将被删除）。
        # @type SegmentSetFileUrl: String
        # @param SegmentSetFileUrlExpireTime: 涉及违规信息的嫌疑的视频片段列表文件 URL 失效时间，使用  [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type SegmentSetFileUrlExpireTime: String

        attr_accessor :Suggestion, :Label, :Form, :SegmentSet, :SegmentSetFileUrl, :SegmentSetFileUrlExpireTime
        
        def initialize(suggestion=nil, label=nil, form=nil, segmentset=nil, segmentsetfileurl=nil, segmentsetfileurlexpiretime=nil)
          @Suggestion = suggestion
          @Label = label
          @Form = form
          @SegmentSet = segmentset
          @SegmentSetFileUrl = segmentsetfileurl
          @SegmentSetFileUrlExpireTime = segmentsetfileurlexpiretime
        end

        def deserialize(params)
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @Form = params['Form']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              reviewaudiovideosegmentitem_tmp = ReviewAudioVideoSegmentItem.new
              reviewaudiovideosegmentitem_tmp.deserialize(i)
              @SegmentSet << reviewaudiovideosegmentitem_tmp
            end
          end
          @SegmentSetFileUrl = params['SegmentSetFileUrl']
          @SegmentSetFileUrlExpireTime = params['SegmentSetFileUrlExpireTime']
        end
      end

      # ReviewImage请求参数结构体
      class ReviewImageRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID，即该文件在云点播上的全局唯一标识符。本接口要求媒体文件必须是图片格式。
        # @type FileId: String
        # @param Definition: 图片审核模板 ID，当前固定填 10。
        # @type Definition: Integer
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :FileId, :Definition, :SubAppId
        
        def initialize(fileid=nil, definition=nil, subappid=nil)
          @FileId = fileid
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # ReviewImage返回参数结构体
      class ReviewImageResponse < TencentCloud::Common::AbstractModel
        # @param ReviewResultSet: 图片审核任务结果。
        # @type ReviewResultSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReviewResultSet, :RequestId
        
        def initialize(reviewresultset=nil, requestid=nil)
          @ReviewResultSet = reviewresultset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReviewResultSet'].nil?
            @ReviewResultSet = []
            params['ReviewResultSet'].each do |i|
              contentreviewresult_tmp = ContentReviewResult.new
              contentreviewresult_tmp.deserialize(i)
              @ReviewResultSet << contentreviewresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 华曦达（SDMC）相关的 DRM 密钥提供商信息。
      class SDMCDrmKeyProviderInfo < TencentCloud::Common::AbstractModel
        # @param Uid: 华曦达分配的用户 ID。最大长度为128个字符。
        # @type Uid: String
        # @param SecretId: 华曦达分配的用户密钥 ID。最大长度为128个字符。
        # @type SecretId: String
        # @param SecretKey: 华曦达分配的用户密钥内容。最大长度为128个字符。
        # @type SecretKey: String
        # @param FairPlayCertificateUrl: 华曦达分配的 FairPlay 证书地址。该地址需使用 HTTPS 协议，最大长度为1024个字符。
        # @type FairPlayCertificateUrl: String

        attr_accessor :Uid, :SecretId, :SecretKey, :FairPlayCertificateUrl
        
        def initialize(uid=nil, secretid=nil, secretkey=nil, fairplaycertificateurl=nil)
          @Uid = uid
          @SecretId = secretid
          @SecretKey = secretkey
          @FairPlayCertificateUrl = fairplaycertificateurl
        end

        def deserialize(params)
          @Uid = params['Uid']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @FairPlayCertificateUrl = params['FairPlayCertificateUrl']
        end
      end

      # 对视频做采样截图任务输入参数类型
      class SampleSnapshotTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array

        attr_accessor :Definition, :WatermarkSet
        
        def initialize(definition=nil, watermarkset=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
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
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当截图配置宽高参数与原始视频的宽高比不一致时，对截图的处理方式，即为“填充”。可选填充方式：
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

      # SearchMedia请求参数结构体
      class SearchMediaRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param FileIds: 文件 ID 集合，匹配集合中的任意元素。
        # <li>数组长度限制：10。</li>
        # <li>单个 ID 长度限制：40个字符。</li>
        # @type FileIds: Array
        # @param Names: 文件名集合，模糊匹配媒体文件的文件名，匹配度越高，排序越优先。
        # <li>单个文件名长度限制：40个字符。</li>
        # <li>数组长度限制：10。</li>
        # @type Names: Array
        # @param NamePrefixes: 文件名前缀，前缀匹配媒体文件的文件名。
        # <li>单个文件名前缀长度限制：20个字符。</li>
        # <li>数组长度限制：10。</li>
        # @type NamePrefixes: Array
        # @param Descriptions: 文件描述集合，模糊匹配媒体文件的描述，匹配度越高，排序越优先。
        # <li>单个描述长度限制：100个字符。</li>
        # <li>数组长度限制：10。</li>
        # @type Descriptions: Array
        # @param ClassIds: 分类 ID 集合，匹配集合指定 ID 的分类及其所有子类。
        # <li>数组长度限制：10。</li>
        # @type ClassIds: Array
        # @param Tags: 标签集合，匹配集合中任意元素。
        # <li>单个标签长度限制：16个字符。</li>
        # <li>数组长度限制：10。</li>
        # @type Tags: Array
        # @param Categories: 文件类型。匹配集合中的任意元素：
        # <li>Video: 视频文件</li>
        # <li>Audio: 音频文件</li>
        # <li>Image: 图片文件</li>
        # @type Categories: Array
        # @param SourceTypes: 媒体文件来源集合，来源取值参见 [SourceType](https://cloud.tencent.com/document/product/266/31773#MediaSourceData)。
        # <li>数组长度限制：10。</li>
        # @type SourceTypes: Array
        # @param StreamIds: 推流直播码集合。匹配集合中的任意元素。
        # <li>数组长度限制：10。</li>
        # @type StreamIds: Array
        # @param Vids: 直播录制文件的唯一标识。匹配集合中的任意元素。
        # <li>数组长度限制：10。</li>
        # @type Vids: Array
        # @param CreateTime: 匹配创建时间在此时间段内的文件。
        # <li>包含所指定的头尾时间点。</li>
        # @type CreateTime: :class:`Tencentcloud::Vod.v20180717.models.TimeRange`
        # @param ExpireTime: 匹配过期时间在此时间段内的文件，无法检索到已过期文件。
        # <li>包含所指定的头尾时间点。</li>
        # @type ExpireTime: :class:`Tencentcloud::Vod.v20180717.models.TimeRange`
        # @param Sort: 排序方式。
        # <li>Sort.Field 可选 CreateTime 。</li>
        # <li>当 Text、 Names 或 Descriptions 不为空时，Sort.Field 字段无效， 搜索结果将以匹配度排序。</li>
        # @type Sort: :class:`Tencentcloud::Vod.v20180717.models.SortBy`
        # @param Offset: <div id="p_offset">分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # <li>取值范围：Offset + Limit 不超过5000。（参见：<a href="#maxResultsDesc">接口返回结果数限制</a>）</li></div>
        # @type Offset: Integer
        # @param Limit: <div id="p_limit">分页返回的记录条数，默认值：10。将返回第 Offset 到第 Offset+Limit-1 条。
        # <li>取值范围：Offset + Limit 不超过5000。（参见：<a href="#maxResultsDesc">接口返回结果数限制</a>）</li></div>
        # @type Limit: Integer
        # @param Filters: 指定所有媒体文件需要返回的信息，可同时指定多个信息，N 从 0 开始递增。如果未填写该字段，默认返回所有信息。选项有：
        # <li>basicInfo（视频基础信息）。</li>
        # <li>metaData（视频元信息）。</li>
        # <li>transcodeInfo（视频转码结果信息）。</li>
        # <li>animatedGraphicsInfo（视频转动图结果信息）。</li>
        # <li>imageSpriteInfo（视频雪碧图信息）。</li>
        # <li>snapshotByTimeOffsetInfo（视频指定时间点截图信息）。</li>
        # <li>sampleSnapshotInfo（采样截图信息）。</li>
        # <li>keyFrameDescInfo（打点信息）。</li>
        # <li>adaptiveDynamicStreamingInfo（转自适应码流信息）。</li>
        # <li>miniProgramReviewInfo（小程序审核信息）。</li>
        # @type Filters: Array
        # @param StorageRegions: 媒体文件存储地区，如 ap-chongqing，参见[地域列表](https://cloud.tencent.com/document/product/266/9760#.E5.B7.B2.E6.94.AF.E6.8C.81.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)。
        # <li>单个存储地区长度限制：20个字符。</li>
        # <li>数组长度限制：20。</li>
        # @type StorageRegions: Array
        # @param StorageClasses: 存储类型数组。可选值有：
        # <li> STANDARD：标准存储。</li>
        # <li> STANDARD_IA：低频存储。</li>
        # <li> ARCHIVE：归档存储。</li>
        # <li> DEEP_ARCHIVE：深度归档存储。</li>
        # @type StorageClasses: Array
        # @param TrtcSdkAppIds: TRTC 应用 ID 集合。匹配集合中的任意元素。
        # <li>数组长度限制：10。</li>
        # @type TrtcSdkAppIds: Array
        # @param TrtcRoomIds: TRTC 房间 ID 集合。匹配集合中的任意元素。
        # <li>单个房间 ID 长度限制：64个字符；</li>
        # <li>数组长度限制：10。</li>
        # @type TrtcRoomIds: Array
        # @param Text: （不推荐：应使用 Names、NamePrefixes 或 Descriptions 替代）
        # 搜索文本，模糊匹配媒体文件名称或描述信息，匹配项越多，匹配度越高，排序越优先。长度限制：64个字符。
        # @type Text: String
        # @param SourceType: （不推荐：应使用 SourceTypes 替代）
        # 媒体文件来源，来源取值参见 [SourceType](https://cloud.tencent.com/document/product/266/31773#MediaSourceData)。
        # @type SourceType: String
        # @param StreamId: （不推荐：应使用 StreamIds 替代）
        # 推流直播码。
        # @type StreamId: String
        # @param Vid: （不推荐：应使用 Vids 替代）
        # 直播录制文件的唯一标识。
        # @type Vid: String
        # @param StartTime: （不推荐：应使用 CreateTime 替代）
        # 创建时间的开始时间。
        # <li>大于等于开始时间。</li>
        # <li>当 CreateTime.After 也存在时，将优先使用 CreateTime.After。</li>
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        # @type StartTime: String
        # @param EndTime: （不推荐：应使用 CreateTime 替代）
        # 创建时间的结束时间。
        # <li>小于结束时间。</li>
        # <li>当 CreateTime.Before 也存在时，将优先使用 CreateTime.Before。</li>
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        # @type EndTime: String

        attr_accessor :SubAppId, :FileIds, :Names, :NamePrefixes, :Descriptions, :ClassIds, :Tags, :Categories, :SourceTypes, :StreamIds, :Vids, :CreateTime, :ExpireTime, :Sort, :Offset, :Limit, :Filters, :StorageRegions, :StorageClasses, :TrtcSdkAppIds, :TrtcRoomIds, :Text, :SourceType, :StreamId, :Vid, :StartTime, :EndTime
        
        def initialize(subappid=nil, fileids=nil, names=nil, nameprefixes=nil, descriptions=nil, classids=nil, tags=nil, categories=nil, sourcetypes=nil, streamids=nil, vids=nil, createtime=nil, expiretime=nil, sort=nil, offset=nil, limit=nil, filters=nil, storageregions=nil, storageclasses=nil, trtcsdkappids=nil, trtcroomids=nil, text=nil, sourcetype=nil, streamid=nil, vid=nil, starttime=nil, endtime=nil)
          @SubAppId = subappid
          @FileIds = fileids
          @Names = names
          @NamePrefixes = nameprefixes
          @Descriptions = descriptions
          @ClassIds = classids
          @Tags = tags
          @Categories = categories
          @SourceTypes = sourcetypes
          @StreamIds = streamids
          @Vids = vids
          @CreateTime = createtime
          @ExpireTime = expiretime
          @Sort = sort
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @StorageRegions = storageregions
          @StorageClasses = storageclasses
          @TrtcSdkAppIds = trtcsdkappids
          @TrtcRoomIds = trtcroomids
          @Text = text
          @SourceType = sourcetype
          @StreamId = streamid
          @Vid = vid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @FileIds = params['FileIds']
          @Names = params['Names']
          @NamePrefixes = params['NamePrefixes']
          @Descriptions = params['Descriptions']
          @ClassIds = params['ClassIds']
          @Tags = params['Tags']
          @Categories = params['Categories']
          @SourceTypes = params['SourceTypes']
          @StreamIds = params['StreamIds']
          @Vids = params['Vids']
          unless params['CreateTime'].nil?
            @CreateTime = TimeRange.new
            @CreateTime.deserialize(params['CreateTime'])
          end
          unless params['ExpireTime'].nil?
            @ExpireTime = TimeRange.new
            @ExpireTime.deserialize(params['ExpireTime'])
          end
          unless params['Sort'].nil?
            @Sort = SortBy.new
            @Sort.deserialize(params['Sort'])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Filters = params['Filters']
          @StorageRegions = params['StorageRegions']
          @StorageClasses = params['StorageClasses']
          @TrtcSdkAppIds = params['TrtcSdkAppIds']
          @TrtcRoomIds = params['TrtcRoomIds']
          @Text = params['Text']
          @SourceType = params['SourceType']
          @StreamId = params['StreamId']
          @Vid = params['Vid']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # SearchMedia返回参数结构体
      class SearchMediaResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合搜索条件的记录总数。
        # <li>最大值：5000。当命中记录数超过5000时，该字段将返回 5000，而非实际命中总数。</li>
        # @type TotalCount: Integer
        # @param MediaInfoSet: 媒体文件信息列表。
        # @type MediaInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MediaInfoSet, :RequestId
        
        def initialize(totalcount=nil, mediainfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @MediaInfoSet = mediainfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['MediaInfoSet'].nil?
            @MediaInfoSet = []
            params['MediaInfoSet'].each do |i|
              mediainfo_tmp = MediaInfo.new
              mediainfo_tmp.deserialize(i)
              @MediaInfoSet << mediainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 视频拆条任务识别控制参数
      class SegmentConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 视频拆条识别任务开关，可选值：
        # <li>ON：开启智能视频拆条识别任务；</li>
        # <li>OFF：关闭智能视频拆条识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 视频拆条识别任务控制参数
      class SegmentConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 视频拆条识别任务开关，可选值：
        # <li>ON：开启智能视频拆条识别任务；</li>
        # <li>OFF：关闭智能视频拆条识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # SetDrmKeyProviderInfo请求参数结构体
      class SetDrmKeyProviderInfoRequest < TencentCloud::Common::AbstractModel
        # @param SDMCInfo: 华曦达（SDMC）相关的 DRM 密钥提供商信息。
        # @type SDMCInfo: :class:`Tencentcloud::Vod.v20180717.models.SDMCDrmKeyProviderInfo`
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer

        attr_accessor :SDMCInfo, :SubAppId
        
        def initialize(sdmcinfo=nil, subappid=nil)
          @SDMCInfo = sdmcinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          unless params['SDMCInfo'].nil?
            @SDMCInfo = SDMCDrmKeyProviderInfo.new
            @SDMCInfo.deserialize(params['SDMCInfo'])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # SetDrmKeyProviderInfo返回参数结构体
      class SetDrmKeyProviderInfoResponse < TencentCloud::Common::AbstractModel
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

      # 简单加密加解密密钥对。
      class SimpleAesEdkPair < TencentCloud::Common::AbstractModel
        # @param Edk: 加密后的数据密钥。
        # @type Edk: String
        # @param Dk: 数据密钥。返回的数据密钥 DK 为 Base64 编码字符串。
        # @type Dk: String

        attr_accessor :Edk, :Dk
        
        def initialize(edk=nil, dk=nil)
          @Edk = edk
          @Dk = dk
        end

        def deserialize(params)
          @Edk = params['Edk']
          @Dk = params['Dk']
        end
      end

      # SimpleHlsClip请求参数结构体
      class SimpleHlsClipRequest < TencentCloud::Common::AbstractModel
        # @param Url: 需要裁剪的腾讯云点播 HLS 视频 URL。
        # @type Url: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param StartTimeOffset: 裁剪的开始偏移时间，单位秒。默认 0，即从视频开头开始裁剪。负数表示距离视频结束多少秒开始裁剪。例如 -10 表示从倒数第 10 秒开始裁剪。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 裁剪的结束偏移时间，单位秒。默认 0，即裁剪到视频尾部。负数表示距离视频结束多少秒结束裁剪。例如 -10 表示到倒数第 10 秒结束裁剪。
        # @type EndTimeOffset: Float
        # @param IsPersistence: 是否固化。0 不固化，1 固化。默认不固化。
        # @type IsPersistence: Integer
        # @param ExpireTime: 剪辑固化后的视频存储过期时间。格式参照 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。填“9999-12-31T23:59:59Z”表示永不过期。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。仅 IsPersistence 为 1 时有效，默认剪辑固化的视频永不过期。
        # @type ExpireTime: String
        # @param Procedure: 剪辑固化后的视频点播任务流处理，详见[上传指定任务流](https://cloud.tencent.com/document/product/266/9759)。仅 IsPersistence 为 1 时有效。
        # @type Procedure: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # 仅 IsPersistence 为 1 时有效。
        # @type ClassId: Integer
        # @param SourceContext: 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。仅 IsPersistence 为 1 时有效。
        # @type SourceContext: String
        # @param SessionContext: 会话上下文，用于透传用户请求信息，当指定 Procedure 参数后，[任务流状态变更回调](/document/product/266/9636) 将返回该字段值，最长 1000 个字符。仅 IsPersistence 为 1 时有效。
        # @type SessionContext: String

        attr_accessor :Url, :SubAppId, :StartTimeOffset, :EndTimeOffset, :IsPersistence, :ExpireTime, :Procedure, :ClassId, :SourceContext, :SessionContext
        
        def initialize(url=nil, subappid=nil, starttimeoffset=nil, endtimeoffset=nil, ispersistence=nil, expiretime=nil, procedure=nil, classid=nil, sourcecontext=nil, sessioncontext=nil)
          @Url = url
          @SubAppId = subappid
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @IsPersistence = ispersistence
          @ExpireTime = expiretime
          @Procedure = procedure
          @ClassId = classid
          @SourceContext = sourcecontext
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @Url = params['Url']
          @SubAppId = params['SubAppId']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @IsPersistence = params['IsPersistence']
          @ExpireTime = params['ExpireTime']
          @Procedure = params['Procedure']
          @ClassId = params['ClassId']
          @SourceContext = params['SourceContext']
          @SessionContext = params['SessionContext']
        end
      end

      # SimpleHlsClip返回参数结构体
      class SimpleHlsClipResponse < TencentCloud::Common::AbstractModel
        # @param Url: 裁剪后的视频地址。
        # @type Url: String
        # @param MetaData: 裁剪后的视频元信息。目前`Size`，`Rotate`，`VideoDuration`，`AudioDuration` 几个字段暂时缺省，没有真实数据。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param FileId: 剪辑固化后的视频的媒体文件的唯一标识。
        # @type FileId: String
        # @param TaskId: 剪辑固化后的视频任务流 ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :MetaData, :FileId, :TaskId, :RequestId
        
        def initialize(url=nil, metadata=nil, fileid=nil, taskid=nil, requestid=nil)
          @Url = url
          @MetaData = metadata
          @FileId = fileid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          @FileId = params['FileId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 截图输出信息（2017 版）
      class SnapshotByTimeOffset2017 < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param TimeOffset: 截图的具体时间点，单位：毫秒。
        # @type TimeOffset: Integer
        # @param Url: 截图输出文件地址。
        # @type Url: String

        attr_accessor :ErrCode, :TimeOffset, :Url
        
        def initialize(errcode=nil, timeoffset=nil, url=nil)
          @ErrCode = errcode
          @TimeOffset = timeoffset
          @Url = url
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @TimeOffset = params['TimeOffset']
          @Url = params['Url']
        end
      end

      # 视频指定时间点截图任务信息，该结构仅用于 2017 版[指定时间点截图](https://cloud.tencent.com/document/product/266/8102)接口发起的任务。
      class SnapshotByTimeOffsetTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 截图任务 ID。
        # @type TaskId: String
        # @param FileId: 截图文件 ID。
        # @type FileId: String
        # @param Definition: 截图规格，参见[指定时间点截图参数模板](https://cloud.tencent.com/document/product/266/33480#.E6.97.B6.E9.97.B4.E7.82.B9.E6.88.AA.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param SnapshotInfoSet: 截图结果信息。
        # @type SnapshotInfoSet: Array

        attr_accessor :TaskId, :FileId, :Definition, :SnapshotInfoSet
        
        def initialize(taskid=nil, fileid=nil, definition=nil, snapshotinfoset=nil)
          @TaskId = taskid
          @FileId = fileid
          @Definition = definition
          @SnapshotInfoSet = snapshotinfoset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileId = params['FileId']
          @Definition = params['Definition']
          unless params['SnapshotInfoSet'].nil?
            @SnapshotInfoSet = []
            params['SnapshotInfoSet'].each do |i|
              snapshotbytimeoffset2017_tmp = SnapshotByTimeOffset2017.new
              snapshotbytimeoffset2017_tmp.deserialize(i)
              @SnapshotInfoSet << snapshotbytimeoffset2017_tmp
            end
          end
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
        # @param TimeOffsetSet: 截图时间点列表，单位为<font color=red>毫秒</font>。此参数已不再建议使用，建议您使用 ExtTimeOffsetSet 参数。
        # @type TimeOffsetSet: Array
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array

        attr_accessor :Definition, :ExtTimeOffsetSet, :TimeOffsetSet, :WatermarkSet
        
        def initialize(definition=nil, exttimeoffsetset=nil, timeoffsetset=nil, watermarkset=nil)
          @Definition = definition
          @ExtTimeOffsetSet = exttimeoffsetset
          @TimeOffsetSet = timeoffsetset
          @WatermarkSet = watermarkset
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
        end
      end

      # 指定时间点截图模板详情
      class SnapshotByTimeOffsetTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 指定时间点截图模板名称。
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
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当截图配置宽高参数与原始视频的宽高比不一致时，对截图的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
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

      # 排序依据
      class SortBy < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # @type Field: String
        # @param Order: 排序方式，可选值：Asc（升序）、Desc（降序）
        # @type Order: String

        attr_accessor :Field, :Order
        
        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # 指定规格任务统计数据。
      class SpecificationDataItem < TencentCloud::Common::AbstractModel
        # @param Specification: 任务规格。
        # @type Specification: String
        # @param Data: 统计数据。
        # @type Data: Array

        attr_accessor :Specification, :Data
        
        def initialize(specification=nil, data=nil)
          @Specification = specification
          @Data = data
        end

        def deserialize(params)
          @Specification = params['Specification']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              taskstatdataitem_tmp = TaskStatDataItem.new
              taskstatdataitem_tmp.deserialize(i)
              @Data << taskstatdataitem_tmp
            end
          end
        end
      end

      # 视频拆条的结果文件输出。
      class SplitMediaOutputConfig < TencentCloud::Common::AbstractModel
        # @param MediaName: 输出文件名，最长 64 个字符。缺省由系统指定生成文件名。
        # @type MediaName: String
        # @param Type: 输出文件格式，可选值：mp4、hls。默认是 mp4。
        # @type Type: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String

        attr_accessor :MediaName, :Type, :ClassId, :ExpireTime
        
        def initialize(medianame=nil, type=nil, classid=nil, expiretime=nil)
          @MediaName = medianame
          @Type = type
          @ClassId = classid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @MediaName = params['MediaName']
          @Type = params['Type']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # SplitMedia请求参数结构体
      class SplitMediaRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 视频的 ID。
        # @type FileId: String
        # @param Segments: 视频拆条任务信息列表，最多同时支持100个拆条信息。
        # @type Segments: Array
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param SessionContext: 标识来源上下文，用于透传用户请求信息，在 SplitMediaComplete 回调和任务流状态变更回调将返回该字段值，最长 1000个字符。
        # @type SessionContext: String
        # @param SessionId: 用于任务去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param TasksPriority: 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer

        attr_accessor :FileId, :Segments, :SubAppId, :SessionContext, :SessionId, :TasksPriority
        
        def initialize(fileid=nil, segments=nil, subappid=nil, sessioncontext=nil, sessionid=nil, taskspriority=nil)
          @FileId = fileid
          @Segments = segments
          @SubAppId = subappid
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @TasksPriority = taskspriority
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['Segments'].nil?
            @Segments = []
            params['Segments'].each do |i|
              splitmediataskconfig_tmp = SplitMediaTaskConfig.new
              splitmediataskconfig_tmp.deserialize(i)
              @Segments << splitmediataskconfig_tmp
            end
          end
          @SubAppId = params['SubAppId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @TasksPriority = params['TasksPriority']
        end
      end

      # SplitMedia返回参数结构体
      class SplitMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频拆条的任务 ID，可以通过该 ID 查询拆条任务（任务类型为 SplitMedia）的状态。
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

      # 视频拆条任务信息，仅当 TaskType 为 SplitMedia，该字段有值。
      class SplitMediaTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCodeExt: 错误码，空字符串表示成功，其他值表示失败，取值请参考 [视频处理类错误码](https://cloud.tencent.com/document/product/266/50368#.E8.A7.86.E9.A2.91.E5.A4.84.E7.90.86.E7.B1.BB.E9.94.99.E8.AF.AF.E7.A0.81) 列表。
        # @type ErrCodeExt: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败（该字段已不推荐使用，建议使用新的错误码字段 ErrCodeExt）。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileInfoSet: 视频拆条任务详细信息列表。
        # @type FileInfoSet: Array
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :TaskId, :Status, :ErrCodeExt, :ErrCode, :Message, :FileInfoSet, :SessionContext, :SessionId
        
        def initialize(taskid=nil, status=nil, errcodeext=nil, errcode=nil, message=nil, fileinfoset=nil, sessioncontext=nil, sessionid=nil)
          @TaskId = taskid
          @Status = status
          @ErrCodeExt = errcodeext
          @ErrCode = errcode
          @Message = message
          @FileInfoSet = fileinfoset
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCodeExt = params['ErrCodeExt']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['FileInfoSet'].nil?
            @FileInfoSet = []
            params['FileInfoSet'].each do |i|
              splitmediatasksegmentinfo_tmp = SplitMediaTaskSegmentInfo.new
              splitmediatasksegmentinfo_tmp.deserialize(i)
              @FileInfoSet << splitmediatasksegmentinfo_tmp
            end
          end
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # 视频拆条任务配置信息。
      class SplitMediaTaskConfig < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 视频拆条起始的偏移时间，单位：秒。
        # <li>不填或填0，表示转码后的视频从原始视频的起始位置开始；</li>
        # <li>当数值大于0时（假设为 n），表示转码后的视频从原始视频的第 n 秒位置开始；</li>
        # <li>当数值小于0时（假设为 -n），表示转码后的视频从原始视频结束 n 秒前的位置开始。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 视频拆条结束的偏移时间，单位：秒。
        # <li>不填或填0，表示转码后的视频持续到原始视频的末尾终止；</li>
        # <li>当数值大于0时（假设为 n），表示转码后的视频持续到原始视频第 n 秒时终止；</li>
        # <li>当数值小于0时（假设为 -n），表示转码后的视频持续到原始视频结束 n 秒前终止。</li>
        # @type EndTimeOffset: Float
        # @param ProcedureName: [任务流模板](/document/product/266/11700#.E4.BB.BB.E5.8A.A1.E6.B5.81.E6.A8.A1.E6.9D.BF)名字，如果要对生成的新视频执行任务流时填写。
        # @type ProcedureName: String
        # @param OutputConfig: 视频拆条输出信息。
        # @type OutputConfig: :class:`Tencentcloud::Vod.v20180717.models.SplitMediaOutputConfig`

        attr_accessor :StartTimeOffset, :EndTimeOffset, :ProcedureName, :OutputConfig
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, procedurename=nil, outputconfig=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @ProcedureName = procedurename
          @OutputConfig = outputconfig
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @ProcedureName = params['ProcedureName']
          unless params['OutputConfig'].nil?
            @OutputConfig = SplitMediaOutputConfig.new
            @OutputConfig.deserialize(params['OutputConfig'])
          end
        end
      end

      # 视频拆条任务输入信息
      class SplitMediaTaskInput < TencentCloud::Common::AbstractModel
        # @param FileId: 视频的 ID。
        # @type FileId: String
        # @param StartTimeOffset: 视频拆条起始的偏移时间，单位：秒。
        # <li>不填或填0，表示转码后的视频从原始视频的起始位置开始；</li>
        # <li>当数值大于0时（假设为 n），表示转码后的视频从原始视频的第 n 秒位置开始；</li>
        # <li>当数值小于0时（假设为 -n），表示转码后的视频从原始视频结束 n 秒前的位置开始。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 视频拆条结束的偏移时间，单位：秒。
        # <li>不填或填0，表示转码后的视频持续到原始视频的末尾终止；</li>
        # <li>当数值大于0时（假设为 n），表示转码后的视频持续到原始视频第 n 秒时终止；</li>
        # <li>当数值小于0时（假设为 -n），表示转码后的视频持续到原始视频结束 n 秒前终止。</li>
        # @type EndTimeOffset: Float
        # @param ProcedureName: [任务流模板](/document/product/266/11700#.E4.BB.BB.E5.8A.A1.E6.B5.81.E6.A8.A1.E6.9D.BF)名字，如果要对生成的新视频执行任务流时填写。
        # @type ProcedureName: String
        # @param OutputConfig: 视频拆条输出信息。
        # @type OutputConfig: :class:`Tencentcloud::Vod.v20180717.models.SplitMediaOutputConfig`

        attr_accessor :FileId, :StartTimeOffset, :EndTimeOffset, :ProcedureName, :OutputConfig
        
        def initialize(fileid=nil, starttimeoffset=nil, endtimeoffset=nil, procedurename=nil, outputconfig=nil)
          @FileId = fileid
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @ProcedureName = procedurename
          @OutputConfig = outputconfig
        end

        def deserialize(params)
          @FileId = params['FileId']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @ProcedureName = params['ProcedureName']
          unless params['OutputConfig'].nil?
            @OutputConfig = SplitMediaOutputConfig.new
            @OutputConfig.deserialize(params['OutputConfig'])
          end
        end
      end

      # 视频拆条任务信息。
      class SplitMediaTaskSegmentInfo < TencentCloud::Common::AbstractModel
        # @param Input: 视频拆条任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.SplitMediaTaskInput`
        # @param Output: 视频拆条任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.TaskOutputMediaInfo`
        # @param ProcedureTaskId: 若发起视频拆条任务时指定了视频处理流程，则该字段为流程任务 ID。
        # @type ProcedureTaskId: String

        attr_accessor :Input, :Output, :ProcedureTaskId
        
        def initialize(input=nil, output=nil, proceduretaskid=nil)
          @Input = input
          @Output = output
          @ProcedureTaskId = proceduretaskid
        end

        def deserialize(params)
          unless params['Input'].nil?
            @Input = SplitMediaTaskInput.new
            @Input.deserialize(params['Input'])
          end
          unless params['Output'].nil?
            @Output = TaskOutputMediaInfo.new
            @Output.deserialize(params['Output'])
          end
          @ProcedureTaskId = params['ProcedureTaskId']
        end
      end

      # 统计数据
      class StatDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 数据所在时间区间的开始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。如：当时间粒度为天，2018-12-01T00:00:00+08:00，表示2018年12月1日（含）到2018年12月2日（不含）区间。
        # <li>表示小时级别数据时，2019-08-22T00:00:00+08:00表示2019-08-22日0点到1点的统计数据。</li>
        # <li>表示天级别数据时，2019-08-22T00:00:00+08:00表示2019-08-22日的统计数据。</li>
        # @type Time: String
        # @param Value: 数据大小。
        # <li>存储空间的数据，单位是字节。</li>
        # <li>转码时长的数据，单位是秒。</li>
        # <li>流量数据，单位是字节。</li>
        # <li>带宽数据，单位是比特每秒。</li>
        # @type Value: Integer

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 贴图轨上的贴图信息。
      class StickerTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceMedia: 贴图片段的媒体素材来源，可以是：
        # <li>点播的媒体文件 ID；</li>
        # <li>其他媒体文件的下载 URL。</li>
        # 注意：当使用其他媒体文件的下载 URL 作为素材来源，且开启了访问控制（如防盗链）时，需要在 URL 携带访问控制参数（如防盗链签名）。
        # @type SourceMedia: String
        # @param Duration: 贴图的持续时间，单位为秒。
        # @type Duration: Float
        # @param StartTime: 贴图在轨道上的起始时间，单位为秒。
        # @type StartTime: Float
        # @param CoordinateOrigin: 原点位置，取值有：
        # <li>Center：坐标原点为中心位置，如画布中心。</li>
        # 默认值：Center。
        # @type CoordinateOrigin: String
        # @param XPos: 贴图原点距离画布原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 XPos 为画布宽度指定百分比的位置，如 10% 表示 XPos 为画布宽度的 10%。</li><li>当字符串以 px 结尾，表示贴图 XPos 单位为像素，如 100px 表示 XPos 为 100 像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 贴图原点距离画布原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 YPos 为画布高度指定百分比的位置，如 10% 表示 YPos 为画布高度的 10%。</li>
        # <li>当字符串以 px 结尾，表示贴图 YPos 单位为像素，如 100px 表示 YPos 为 100 像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param Width: 贴图的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 Width 为画布宽度的百分比大小，如 10% 表示 Width 为画布宽度的 10%。</li>
        # <li>当字符串以 px 结尾，表示贴图 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取贴图素材本身的 Width、Height。</li>
        # <li>当 Width 为空0，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Width: String
        # @param Height: 贴图的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 Height 为画布高度的百分比大小，如 10% 表示 Height 为画布高度的 10%。</li>
        # <li>当字符串以 px 结尾，表示贴图 Height 单位为像素，如 100px 表示 Hieght 为 100 像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取贴图素材本身的 Width、Height。</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Height: String
        # @param ImageOperations: 对贴图进行的操作，如图像旋转等。
        # @type ImageOperations: Array

        attr_accessor :SourceMedia, :Duration, :StartTime, :CoordinateOrigin, :XPos, :YPos, :Width, :Height, :ImageOperations
        
        def initialize(sourcemedia=nil, duration=nil, starttime=nil, coordinateorigin=nil, xpos=nil, ypos=nil, width=nil, height=nil, imageoperations=nil)
          @SourceMedia = sourcemedia
          @Duration = duration
          @StartTime = starttime
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @Width = width
          @Height = height
          @ImageOperations = imageoperations
        end

        def deserialize(params)
          @SourceMedia = params['SourceMedia']
          @Duration = params['Duration']
          @StartTime = params['StartTime']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          @Width = params['Width']
          @Height = params['Height']
          unless params['ImageOperations'].nil?
            @ImageOperations = []
            params['ImageOperations'].each do |i|
              imagetransform_tmp = ImageTransform.new
              imagetransform_tmp.deserialize(i)
              @ImageOperations << imagetransform_tmp
            end
          end
        end
      end

      # 存储地域信息
      class StorageRegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 存储地域
        # @type Region: String
        # @param Description: 存储地域描述信息
        # @type Description: String
        # @param Status: 状态，是否开通，取值有：
        # <li>opened：已经开通。</li>
        # <li>unopened：未开通。</li>
        # @type Status: String
        # @param IsDefault: 是否默认的存储地域，true：是；false：否
        # @type IsDefault: Boolean

        attr_accessor :Region, :Description, :Status, :IsDefault
        
        def initialize(region=nil, description=nil, status=nil, isdefault=nil)
          @Region = region
          @Description = description
          @Status = status
          @IsDefault = isdefault
        end

        def deserialize(params)
          @Region = params['Region']
          @Description = params['Description']
          @Status = params['Status']
          @IsDefault = params['IsDefault']
        end
      end

      # 云点播存储用量的分区统计数据
      class StorageStatData < TencentCloud::Common::AbstractModel
        # @param Area: 点播存储的计费区域，可能值：
        # <li>Chinese Mainland：中国境内（不包含港澳台）。</li>
        # <li>Outside Chinese Mainland：中国境外。</li>
        # @type Area: String
        # @param TotalStorage: 当前总存储量，单位是字节。
        # @type TotalStorage: Integer
        # @param InfrequentStorage: 当前低频存储量，单位是字节。
        # @type InfrequentStorage: Integer
        # @param StandardStorage: 当前标准存储量，单位是字节。
        # @type StandardStorage: Integer
        # @param ArchiveStorage: 当前归档存储量，单位是字节。
        # @type ArchiveStorage: Integer
        # @param DeepArchiveStorage: 当前深度归档存储量，单位是字节。
        # @type DeepArchiveStorage: Integer

        attr_accessor :Area, :TotalStorage, :InfrequentStorage, :StandardStorage, :ArchiveStorage, :DeepArchiveStorage
        
        def initialize(area=nil, totalstorage=nil, infrequentstorage=nil, standardstorage=nil, archivestorage=nil, deeparchivestorage=nil)
          @Area = area
          @TotalStorage = totalstorage
          @InfrequentStorage = infrequentstorage
          @StandardStorage = standardstorage
          @ArchiveStorage = archivestorage
          @DeepArchiveStorage = deeparchivestorage
        end

        def deserialize(params)
          @Area = params['Area']
          @TotalStorage = params['TotalStorage']
          @InfrequentStorage = params['InfrequentStorage']
          @StandardStorage = params['StandardStorage']
          @ArchiveStorage = params['ArchiveStorage']
          @DeepArchiveStorage = params['DeepArchiveStorage']
        end
      end

      # 子应用信息。
      class SubAppIdInfo < TencentCloud::Common::AbstractModel
        # @param SubAppId: 子应用 ID。
        # @type SubAppId: Integer
        # @param SubAppIdName: 子应用名称。
        # @type SubAppIdName: String
        # @param Description: 子应用简介。
        # @type Description: String
        # @param CreateTime: 子应用创建时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param Status: 子应用状态，有效值：
        # <li>On：启用；</li>
        # <li>Off：停用。</li>
        # <li>Destroying：销毁中。</li>
        # <li>Destroyed：销毁完成。</li>
        # @type Status: String
        # @param Name: 子应用名称（该字段已不推荐使用，建议使用新的子应用名称字段 SubAppIdName）。
        # @type Name: String

        attr_accessor :SubAppId, :SubAppIdName, :Description, :CreateTime, :Status, :Name
        
        def initialize(subappid=nil, subappidname=nil, description=nil, createtime=nil, status=nil, name=nil)
          @SubAppId = subappid
          @SubAppIdName = subappidname
          @Description = description
          @CreateTime = createtime
          @Status = status
          @Name = name
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @SubAppIdName = params['SubAppIdName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @Name = params['Name']
        end
      end

      # 字幕格式列表操作。
      class SubtitleFormatsOperation < TencentCloud::Common::AbstractModel
        # @param Type: 操作类型，取值范围：
        # <li>add：添加 Formats 指定的格式列表；</li>
        # <li>delete：删除 Formats 指定的格式列表；<l/i>
        # <li>reset：将已配置的格式列表重置为  Formats 指定的格式列表。</li>
        # @type Type: String
        # @param Formats: 字幕格式列表，取值范围：
        # <li>vtt：生成 WebVTT 字幕文件；</li>
        # <li>srt：生成 SRT 字幕文件。</li>
        # @type Formats: Array

        attr_accessor :Type, :Formats
        
        def initialize(type=nil, formats=nil)
          @Type = type
          @Formats = formats
        end

        def deserialize(params)
          @Type = params['Type']
          @Formats = params['Formats']
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
        # @param CycleConfig: 水印周期配置，用于配置水印周期性地显示与隐藏。
        # 主要使用场景是：为了视频防遮标，在视频多个地方设置水印，这些水印按固定顺序周期性地显示与隐藏。
        # 例如，设置 A、B、C、D 4 个水印分别位于视频的左上角、右上角、右下角、左下角处，视频开始时，{ A 显示 5 秒 -> B 显示 5 秒 -> C 显示 5 秒 -> D 显示 5 秒 } -> A 显示 5 秒 -> B 显示 5 秒 -> ...，任何时刻只显示一处水印。
        # 花括号 {} 表示由 A、B、C、D 4 个水印组成的大周期，可以看出每个大周期持续 20 秒。
        # 可以看出，A、B、C、D 都是周期性地显示 5 秒、隐藏 15 秒，且四者有固定的显示顺序。
        # 此配置项即用来描述单个水印的周期配置。
        # @type CycleConfig: :class:`Tencentcloud::Vod.v20180717.models.WatermarkCycleConfigForUpdate`

        attr_accessor :Width, :Height, :CycleConfig
        
        def initialize(width=nil, height=nil, cycleconfig=nil)
          @Width = width
          @Height = height
          @CycleConfig = cycleconfig
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          unless params['CycleConfig'].nil?
            @CycleConfig = WatermarkCycleConfigForUpdate.new
            @CycleConfig.deserialize(params['CycleConfig'])
          end
        end
      end

      # 极速高清参数配置。
      class TEHDConfig < TencentCloud::Common::AbstractModel
        # @param Type: 极速高清类型，可选值：<li>TEHD-100 表示极速高清-100;</li> <li>OFF 表示关闭极速高清。</li>不填表示 OFF。
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
        # @param Type: 极速高清类型，可选值：<li>TEHD-100 表示极速高清-100;</li> <li>OFF 表示关闭极速高清。</li>不填表示不修改。
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

      # 视频处理任务的输出媒体文件信息
      class TaskOutputMediaInfo < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param MediaBasicInfo: 转拉完成后生成的媒体文件基础信息。
        # @type MediaBasicInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaBasicInfo`

        attr_accessor :FileId, :MediaBasicInfo
        
        def initialize(fileid=nil, mediabasicinfo=nil)
          @FileId = fileid
          @MediaBasicInfo = mediabasicinfo
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['MediaBasicInfo'].nil?
            @MediaBasicInfo = MediaBasicInfo.new
            @MediaBasicInfo.deserialize(params['MediaBasicInfo'])
          end
        end
      end

      # 任务概要信息
      class TaskSimpleInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态。取值：WAITING（等待中）、PROCESSING（处理中）、FINISH（已完成）。
        # @type Status: String
        # @param FileId: 视频 ID。
        # @type FileId: String
        # @param TaskType: 任务类型，取值：
        # <li>Procedure：视频处理任务；</li>
        # <li>EditMedia：视频编辑任务</li>
        # <li>ReduceMediaBitrate：降码率任务</li>
        # <li>WechatDistribute：微信发布任务。</li>
        # 兼容 2017 版的任务类型：
        # <li>Transcode：视频转码任务；</li>
        # <li>SnapshotByTimeOffset：视频截图任务；</li>
        # <li>Concat：视频拼接任务；</li>
        # <li>Clip：视频剪辑任务；</li>
        # <li>ImageSprites：截取雪碧图任务。</li>
        # @type TaskType: String
        # @param CreateTime: 任务创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param BeginProcessTime: 任务开始执行时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。若任务尚未开始，该字段为空。
        # @type BeginProcessTime: String
        # @param FinishTime: 任务结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。若任务尚未完成，该字段为空。
        # @type FinishTime: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息。
        # @type SessionContext: String

        attr_accessor :TaskId, :Status, :FileId, :TaskType, :CreateTime, :BeginProcessTime, :FinishTime, :SessionId, :SessionContext
        
        def initialize(taskid=nil, status=nil, fileid=nil, tasktype=nil, createtime=nil, beginprocesstime=nil, finishtime=nil, sessionid=nil, sessioncontext=nil)
          @TaskId = taskid
          @Status = status
          @FileId = fileid
          @TaskType = tasktype
          @CreateTime = createtime
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @FileId = params['FileId']
          @TaskType = params['TaskType']
          @CreateTime = params['CreateTime']
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # 视频处理任务统计数据。
      class TaskStatData < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型。
        # <li> Transcoding: 普通转码</li>
        # <li> Transcoding-TESHD: 极速高清转码</li>
        # <li> Editing: 视频编辑</li>
        # <li> Editing-TESHD: 极速高清视频编辑</li>
        # <li> AdaptiveBitrateStreaming: 自适应码流</li>
        # <li> ContentAudit: 内容审核</li>
        # <li> ContentRecognition: 内容识别</li>
        # <li> RemoveWatermark: 去水印</li>
        # <li> ExtractTraceWatermark: 提取水印</li>
        # <li>Transcode: 转码，包含普通转码、极速高清和视频编辑（不推荐使用）</li>
        # @type TaskType: String
        # @param Summary: 任务数统计数据概览，用量单位为秒。
        # @type Summary: Array
        # @param Details: 不同规格任务统计数据详情。
        # 转码规格：
        # <li>Remuxing: 转封装</li>
        # <li>Audio: 音频转码</li>
        # <li>Standard.H264.SD: H.264编码方式标清转码</li>
        # <li>Standard.H264.HD: H.264编码方式高清转码</li>
        # <li>Standard.H264.FHD: H.264编码方式全高清转码</li>
        # <li>Standard.H264.2K: H.264编码方式2K转码</li>
        # <li>Standard.H264.4K: H.264编码方式4K转码</li>
        # <li>Standard.H265.SD: H.265编码方式标清转码</li>
        # <li>Standard.H265.HD: H.265编码方式高清转码</li>
        # <li>Standard.H265.FHD: H.265编码方式全高清转码</li>
        # <li>Standard.H265.2K: H.265编码方式2K转码</li>
        # <li>Standard.H265.4K: H.265编码方式4K转码</li>
        # <li>TESHD-10.H264.SD: H.264编码方式标清极速高清转码</li>
        # <li>TESHD-10.H264.HD: H.264编码方式高清极速高清转码</li>
        # <li>TESHD-10.H264.FHD: H.264编码方式全高清极速高清转码</li>
        # <li>TESHD-10.H264.2K: H.264编码方式2K极速高清转码</li>
        # <li>TESHD-10.H264.4K: H.264编码方式4K极速高清转码</li>
        # <li>TESHD-10.H265.SD: H.265编码方式标清极速高清转码</li>
        # <li>TESHD-10.H265.HD: H.265编码方式高清极速高清转码</li>
        # <li>TESHD-10.H265.FHD: H.265编码方式全高清极速高清转码</li>
        # <li>TESHD-10.H265.2K: H.265编码方式2K极速高清转码</li>
        # <li>TESHD-10.H265.4K: H.265编码方式4K极速高清转码</li>
        # <li>Edit.Audio: 音频编辑</li>
        # <li>Edit.H264.SD: H.264编码方式标清视频编辑</li>
        # <li>Edit.H264.HD: H.264编码方式高清视频编辑</li>
        # <li>Edit.H264.FHD: H.264编码方式全高清视频编辑</li>
        # <li>Edit.H264.2K: H.264编码方式2K视频编辑</li>
        # <li>Edit.H264.4K: H.264编码方式4K视频编辑</li>
        # <li>Edit.H265.SD: H.265编码方式标清视频编辑</li>
        # <li>Edit.H265.HD: H.265编码方式高清视频编辑</li>
        # <li>Edit.H265.FHD: H.265编码方式全高清视频编辑</li>
        # <li>Edit.H265.2K: H.265编码方式2K视频编辑</li>
        # <li>Edit.H265.4K: H.265编码方式4K视频编辑</li>
        # <li>Edit.TESHD-10.H264.SD: H.264编码方式标清极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H264.HD: H.264编码方式高清极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H264.FHD: H.264编码方式全高清极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H264.2K: H.264编码方式2K极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H264.4K: H.264编码方式4K极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H265.SD: H.265编码方式标清极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H265.HD: H.265编码方式高清极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H265.FHD: H.265编码方式全高清极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H265.2K: H.265编码方式2K极速高清视频编辑</li>
        # <li>Edit.TESHD-10.H265.4K: H.265编码方式4K极速高清视频编辑</li>
        # 去水印规格：
        # <li>480P: 短边 ≤ 480px</li>
        # <li>720P: 短边 ≤ 720px</li>
        # <li>1080P: 短边 ≤ 1080px</li>
        # <li>2K: 短边 ≤ 1440px</li>
        # <li>4K: 短边 ≤ 2160px</li>
        # <li>8K: 短边 ≤ 4320px</li>
        # @type Details: Array

        attr_accessor :TaskType, :Summary, :Details
        
        def initialize(tasktype=nil, summary=nil, details=nil)
          @TaskType = tasktype
          @Summary = summary
          @Details = details
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          unless params['Summary'].nil?
            @Summary = []
            params['Summary'].each do |i|
              taskstatdataitem_tmp = TaskStatDataItem.new
              taskstatdataitem_tmp.deserialize(i)
              @Summary << taskstatdataitem_tmp
            end
          end
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              specificationdataitem_tmp = SpecificationDataItem.new
              specificationdataitem_tmp.deserialize(i)
              @Details << specificationdataitem_tmp
            end
          end
        end
      end

      # 任务统计数据，包括任务数和用量。
      class TaskStatDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 数据所在时间区间的开始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。如：当时间粒度为天，2018-12-01T00:00:00+08:00，表示2018年12月1日（含）到2018年12月2日（不含）区间。
        # @type Time: String
        # @param Count: 任务数。
        # @type Count: Integer
        # @param Usage: 任务用量。
        # @type Usage: Integer

        attr_accessor :Time, :Count, :Usage
        
        def initialize(time=nil, count=nil, usage=nil)
          @Time = time
          @Count = count
          @Usage = usage
        end

        def deserialize(params)
          @Time = params['Time']
          @Count = params['Count']
          @Usage = params['Usage']
        end
      end

      # 临时凭证
      class TempCertificate < TencentCloud::Common::AbstractModel
        # @param SecretId: 临时安全证书 Id。
        # @type SecretId: String
        # @param SecretKey: 临时安全证书 Key。
        # @type SecretKey: String
        # @param Token: Token 值。
        # @type Token: String
        # @param ExpiredTime: 证书无效的时间，返回 Unix 时间戳，精确到秒。
        # @type ExpiredTime: Integer

        attr_accessor :SecretId, :SecretKey, :Token, :ExpiredTime
        
        def initialize(secretid=nil, secretkey=nil, token=nil, expiredtime=nil)
          @SecretId = secretid
          @SecretKey = secretkey
          @Token = token
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # 鉴别涉及令人不安全的信息的任务控制参数
      class TerrorismConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴别涉及令人不安全的信息的任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismImgReviewTemplateInfo`
        # @param OcrReviewInfo: 文字鉴别涉及令人不安全的信息的任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismOcrReviewTemplateInfo`

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

      # 鉴别涉及令人不安全的信息的任务控制参数。
      class TerrorismConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴别涉及令人不安全的信息的任务控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismImgReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本鉴别涉及令人不安全的信息的任务控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismOcrReviewTemplateInfoForUpdate`

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

      # 图片画面审核涉及令人不安全的信息的任务结果类型
      class TerrorismImageResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 鉴别涉及令人不安全的信息的评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 鉴别涉及令人不安全的信息的结果建议，取值范围：
        # <li>pass；</li>
        # <li>review；</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 鉴别涉及令人不安全的信息的结果标签，取值范围：
        # <li>guns：武器枪支；</li>
        # <li>crowd：人群聚集；</li>
        # <li>police：警察部队；</li>
        # <li>bloody：血腥画面；</li>
        # <li>banners：暴恐旗帜；</li>
        # <li>explosion：爆炸火灾；</li>
        # <li>scenario：暴恐画面。</li>
        # @type Label: String

        attr_accessor :Confidence, :Suggestion, :Label
        
        def initialize(confidence=nil, suggestion=nil, label=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
        end
      end

      # 画面鉴别涉及令人不安全的信息的任务控制参数
      class TerrorismImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴别涉及令人不安全的信息的任务开关，可选值：
        # <li>ON：开启画面鉴别涉及令人不安全的信息的任务；</li>
        # <li>OFF：关闭画面鉴别涉及令人不安全的信息的任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴别涉及令人不安全的信息的过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>guns：武器枪支；</li>
        # <li>crowd：人群聚集；</li>
        # <li>bloody：血腥画面；</li>
        # <li>police：警察部队；</li>
        # <li>banners：暴恐旗帜；</li>
        # <li>militant：武装分子；</li>
        # <li>explosion：爆炸火灾；</li>
        # <li>terrorists：暴恐人物；</li>
        # <li>scenario：暴恐画面。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 90 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 80 分。取值范围：0~100。
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

      # 画面鉴别涉及令人不安全的信息的任务控制参数。
      class TerrorismImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴别涉及令人不安全的信息的任务开关，可选值：
        # <li>ON：开启画面鉴别涉及令人不安全的信息的任务；</li>
        # <li>OFF：关闭画面鉴别涉及令人不安全的信息的任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴别涉及令人不安全的信息的过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>guns：武器枪支；</li>
        # <li>crowd：人群聚集；</li>
        # <li>bloody：血腥画面；</li>
        # <li>police：警察部队；</li>
        # <li>banners：暴恐旗帜；</li>
        # <li>militant：武装分子；</li>
        # <li>explosion：爆炸火灾；</li>
        # <li>terrorists：暴恐人物；</li>
        # <li>scenario：暴恐画面。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 文本鉴别涉及令人不安全的信息的任务控制参数
      class TerrorismOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴别涉及令人不安全的信息的任务开关，可选值：
        # <li>ON：开启文本鉴别涉及令人不安全的信息的任务；</li>
        # <li>OFF：关闭文本鉴别涉及令人不安全的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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

      # 文本鉴别涉及令人不安全的信息的任务控制参数
      class TerrorismOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴别涉及令人不安全的信息的任务开关，可选值：
        # <li>ON：开启文本鉴别涉及令人不安全的信息的任务；</li>
        # <li>OFF：关闭文本鉴别涉及令人不安全的信息的任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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

      # 用于描述一个时间段的通用数据类型。
      class TimeRange < TencentCloud::Common::AbstractModel
        # @param After: <li>大于等于此时间（起始时间）。</li>
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        # @type After: String
        # @param Before: <li>小于此时间（结束时间）。</li>
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        # @type Before: String

        attr_accessor :After, :Before
        
        def initialize(after=nil, before=nil)
          @After = after
          @Before = before
        end

        def deserialize(params)
          @After = params['After']
          @Before = params['Before']
        end
      end

      # 溯源水印参数
      class TraceWatermarkInput < TencentCloud::Common::AbstractModel
        # @param Switch: 溯源水印任务开关，此字段必填，可选值：
        # <li>ON：开启溯源水印；</li>
        # <li>OFF：关闭溯源水印。</li>
        # @type Switch: String
        # @param Definition: 该字段已废弃，请勿使用。
        # @type Definition: Integer

        attr_accessor :Switch, :Definition
        
        def initialize(switch=nil, definition=nil)
          @Switch = switch
          @Definition = definition
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Definition = params['Definition']
        end
      end

      # 视频转码播放信息（2017 版）
      class TranscodePlayInfo2017 < TencentCloud::Common::AbstractModel
        # @param Url: 播放地址。
        # @type Url: String
        # @param Definition: 转码规格 ID，参见[转码参数模板](https://cloud.tencent.com/document/product/266/33476)。
        # @type Definition: Integer
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和， 单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer

        attr_accessor :Url, :Definition, :Bitrate, :Height, :Width
        
        def initialize(url=nil, definition=nil, bitrate=nil, height=nil, width=nil)
          @Url = url
          @Definition = definition
          @Bitrate = bitrate
          @Height = height
          @Width = width
        end

        def deserialize(params)
          @Url = params['Url']
          @Definition = params['Definition']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
        end
      end

      # 视频转码任务信息，该结构仅用于对 2017 版[视频转码](https://cloud.tencent.com/document/product/266/7822)接口发起的任务。
      class TranscodeTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 转码任务 ID。
        # @type TaskId: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 被转码文件 ID。
        # @type FileId: String
        # @param FileName: 被转码文件名称。
        # @type FileName: String
        # @param Duration: 视频时长，单位：秒。
        # @type Duration: Integer
        # @param CoverUrl: 封面地址。
        # @type CoverUrl: String
        # @param PlayInfoSet: 视频转码后生成的播放信息。
        # @type PlayInfoSet: Array

        attr_accessor :TaskId, :ErrCode, :Message, :FileId, :FileName, :Duration, :CoverUrl, :PlayInfoSet
        
        def initialize(taskid=nil, errcode=nil, message=nil, fileid=nil, filename=nil, duration=nil, coverurl=nil, playinfoset=nil)
          @TaskId = taskid
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileName = filename
          @Duration = duration
          @CoverUrl = coverurl
          @PlayInfoSet = playinfoset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @Duration = params['Duration']
          @CoverUrl = params['CoverUrl']
          unless params['PlayInfoSet'].nil?
            @PlayInfoSet = []
            params['PlayInfoSet'].each do |i|
              transcodeplayinfo2017_tmp = TranscodePlayInfo2017.new
              transcodeplayinfo2017_tmp.deserialize(i)
              @PlayInfoSet << transcodeplayinfo2017_tmp
            end
          end
        end
      end

      # 转码任务输入参数类型
      class TranscodeTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频转码模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array
        # @param TraceWatermark: 溯源水印。
        # @type TraceWatermark: :class:`Tencentcloud::Vod.v20180717.models.TraceWatermarkInput`
        # @param MosaicSet: 马赛克列表，最大可支持 10 张。
        # @type MosaicSet: Array
        # @param HeadTailSet: 片头片尾列表，支持多片头片尾，最大可支持 10 个。
        # @type HeadTailSet: Array
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

        attr_accessor :Definition, :WatermarkSet, :TraceWatermark, :MosaicSet, :HeadTailSet, :StartTimeOffset, :EndTimeOffset
        
        def initialize(definition=nil, watermarkset=nil, tracewatermark=nil, mosaicset=nil, headtailset=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
          @TraceWatermark = tracewatermark
          @MosaicSet = mosaicset
          @HeadTailSet = headtailset
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
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
          unless params['TraceWatermark'].nil?
            @TraceWatermark = TraceWatermarkInput.new
            @TraceWatermark.deserialize(params['TraceWatermark'])
          end
          unless params['MosaicSet'].nil?
            @MosaicSet = []
            params['MosaicSet'].each do |i|
              mosaicinput_tmp = MosaicInput.new
              mosaicinput_tmp.deserialize(i)
              @MosaicSet << mosaicinput_tmp
            end
          end
          unless params['HeadTailSet'].nil?
            @HeadTailSet = []
            params['HeadTailSet'].each do |i|
              headtailtaskinput_tmp = HeadTailTaskInput.new
              headtailtaskinput_tmp.deserialize(i)
              @HeadTailSet << headtailtaskinput_tmp
            end
          end
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoTemplate: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，仅当 RemoveAudio 为 0，该字段有效 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioTemplate: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfo`
        # @param TEHDConfig: 极速高清转码参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.TEHDConfig`
        # @param ContainerType: 封装格式过滤条件，可选值：
        # <li>Video：视频格式，可以同时包含视频流和音频流的封装格式；</li>
        # <li>PureAudio：纯音频格式，只能包含音频流的封装格式板。</li>
        # @type ContainerType: String
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Container, :Name, :Comment, :Type, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig, :ContainerType, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, container=nil, name=nil, comment=nil, type=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil, containertype=nil, createtime=nil, updatetime=nil)
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
        end
      end

      # 转场操作
      class TransitionOpertion < TencentCloud::Common::AbstractModel
        # @param Type: 转场类型，取值有：
        # <ul>
        # <li>图像的转场操作，用于两个视频片段图像间的转场处理：
        # <ul>
        # <li>ImageFadeInFadeOut：图像淡入淡出。 </li>
        # <li>BowTieHorizontal：水平蝴蝶结。 </li>
        # <li>BowTieVertical：垂直蝴蝶结。 </li>
        # <li>ButterflyWaveScrawler：晃动。 </li>
        # <li>Cannabisleaf：枫叶。 </li>
        # <li>Circle：弧形收放。 </li>
        # <li>CircleCrop：圆环聚拢。 </li>
        # <li>Circleopen：椭圆聚拢。 </li>
        # <li>Crosswarp：横向翘曲。 </li>
        # <li>Cube：立方体。 </li>
        # <li>DoomScreenTransition：幕布。 </li>
        # <li>Doorway：门廊。 </li>
        # <li>Dreamy：波浪。 </li>
        # <li>DreamyZoom：水平聚拢。 </li>
        # <li>FilmBurn：火烧云。 </li>
        # <li>GlitchMemories：抖动。 </li>
        # <li>Heart：心形。 </li>
        # <li>InvertedPageCurl：翻页。 </li>
        # <li>Luma：腐蚀。 </li>
        # <li>Mosaic：九宫格。 </li>
        # <li>Pinwheel：风车。 </li>
        # <li>PolarFunction：椭圆扩散。 </li>
        # <li>PolkaDotsCurtain：弧形扩散。 </li>
        # <li>Radial：雷达扫描 </li>
        # <li>RotateScaleFade：上下收放。 </li>
        # <li>Squeeze：上下聚拢。 </li>
        # <li>Swap：放大切换。 </li>
        # <li>Swirl：螺旋。 </li>
        # <li>UndulatingBurnOutSwirl：水流蔓延。 </li>
        # <li>Windowblinds：百叶窗。 </li>
        # <li>WipeDown：向下收起。 </li>
        # <li>WipeLeft：向左收起。 </li>
        # <li>WipeRight：向右收起。 </li>
        # <li>WipeUp：向上收起。 </li>
        # <li>ZoomInCircles：水波纹。 </li>
        # </ul>
        # </li>
        # <li>音频的转场操作，用于两个音频片段间的转场处理：
        # <ul>
        # <li>AudioFadeInFadeOut：声音淡入淡出。 </li>
        # </ul>
        # </li>
        # </ul>
        # @type Type: String

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # TRTC伴生录制信息。
      class TrtcRecordInfo < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC 应用 ID。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC 房间 ID。
        # @type RoomId: String
        # @param TaskId: 录制任务 ID。
        # @type TaskId: String
        # @param UserIds: 参与录制的用户 ID 列表。
        # @type UserIds: Array

        attr_accessor :SdkAppId, :RoomId, :TaskId, :UserIds
        
        def initialize(sdkappid=nil, roomid=nil, taskid=nil, userids=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @TaskId = taskid
          @UserIds = userids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @TaskId = params['TaskId']
          @UserIds = params['UserIds']
        end
      end

      # 基于签名的 Key 防盗链信息
      class UrlSignatureAuthPolicy < TencentCloud::Common::AbstractModel
        # @param Status: [Key 防盗链](https://cloud.tencent.com/document/product/266/14047)设置状态，可选值：
        # <li>Enabled: 启用。</li>
        # <li>Disabled: 禁用。</li>
        # @type Status: String
        # @param EncryptedKey: [Key 防盗链](https://cloud.tencent.com/document/product/266/14047)中用于生成签名的密钥。
        # EncryptedKey 字符串的长度为8~40个字节，不能包含不可见字符。
        # @type EncryptedKey: String

        attr_accessor :Status, :EncryptedKey
        
        def initialize(status=nil, encryptedkey=nil)
          @Status = status
          @EncryptedKey = encryptedkey
        end

        def deserialize(params)
          @Status = params['Status']
          @EncryptedKey = params['EncryptedKey']
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
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 用户自定义音视频审核任务控制参数
      class UserDefineConfigureInfo < TencentCloud::Common::AbstractModel
        # @param FaceReviewInfo: 用户自定义人物音视频审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineFaceReviewTemplateInfo`
        # @param AsrReviewInfo: 用户自定义语音音视频审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineAsrTextReviewTemplateInfo`
        # @param OcrReviewInfo: 用户自定义文本音视频审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineOcrTextReviewTemplateInfo`

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

      # 用户自定义音视频审核任务控制参数。
      class UserDefineConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param FaceReviewInfo: 用户自定义人物音视频审核控制参数。
        # @type FaceReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineFaceReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 用户自定义语音音视频审核控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineAsrTextReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 用户自定义文本音视频审核控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineOcrTextReviewTemplateInfoForUpdate`

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

      # 用户自定义人物音视频审核任务控制参数
      class UserDefineFaceReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定义人物音视频审核任务开关，可选值：
        # <li>ON：开启自定义人物音视频审核任务；</li>
        # <li>OFF：关闭自定义人物音视频审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义人物过滤标签，音视频审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义人物库的时，需要添加对应人物标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 97 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 95 分。取值范围：0~100。
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

      # 用户自定义人物音视频审核任务控制参数。
      class UserDefineFaceReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定义人物音视频审核任务开关，可选值：
        # <li>ON：开启自定义人物音视频审核任务；</li>
        # <li>OFF：关闭自定义人物音视频审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义人物过滤标签，音视频审核结果包含选择的标签则返回结果，如果过滤标签为空，则音视频审核结果全部返回。如果要使用标签过滤功能，添加自定义人物库的时，需要添加对应人物标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当音视频审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当音视频审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 用户自定义文本音视频审核任务控制参数
      class UserDefineOcrTextReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定文本音视频审核任务开关，可选值：
        # <li>ON：开启自定义文本音视频审核任务；</li>
        # <li>OFF：关闭自定义文本音视频审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义文本过滤标签，音视频审核结果包含选择的标签则返回结果，如果过滤标签为空，则音视频审核结果全部返回。如果要使用标签过滤功能，添加自定义文本关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
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

      # 用户自定义文本音视频审核任务控制参数。
      class UserDefineOcrTextReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定文本音视频审核任务开关，可选值：
        # <li>ON：开启自定义文本音视频审核任务；</li>
        # <li>OFF：关闭自定义文本音视频审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义文本过滤标签，音视频审核结果包含选择的标签则返回结果，如果过滤标签为空，则音视频审核结果全部返回。如果要使用标签过滤功能，添加自定义文本关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当审核达到该分数以上，认为需人工复核。取值范围：0~100。
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

      # 视频流配置参数
      class VideoTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码；</li>
        # <li>libx265：H.265 编码；</li>
        # <li>av1：AOMedia Video 1 编码；</li>
        # <li>H.266：H.266 编码。</li>
        # <font color=red>注意：</font>
        # <li> av1，H.266 编码容器目前只支持 mp4 ；</li>
        # <li> H.266 目前只支持恒定 CRF 码率控制方式。 </li>
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
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 8192]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 8192]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊填充。</li>
        # 默认值：black 。
        # @type FillType: String
        # @param Vcrf: 视频恒定码率控制因子，取值范围为[1, 51]。

        # <font color=red>注意：</font>
        # <li>如果指定该参数，将使用 CRF 的码率控制方式做转码（视频码率将不再生效）；</li>
        # <li>当指定视频流编码格式为 H.266 时，该字段必填，推荐值为 28；</li>
        # <li>如果没有特殊需求，不建议指定该参数。</li>
        # @type Vcrf: Integer
        # @param Gop: 关键帧 I 帧之间的间隔，取值范围：0 和 [1, 100000]，单位：帧数。
        # 当填 0 或不填时，系统将自动设置 gop 长度。
        # @type Gop: Integer
        # @param PreserveHDRSwitch: 当原始视频为 HDR（High Dynamic Range）时，转码输出是否依然保持 HDR。取值范围：
        # <li>ON: 如果原始文件是 HDR，则转码输出保持 HDR；否则转码输出为 SDR （Standard Dynamic Range）。</li>
        # <li>OFF: 无论原始文件是 HDR 还是 SDR，转码输出均为 SDR。</li>
        # 默认值：OFF。
        # @type PreserveHDRSwitch: String

        attr_accessor :Codec, :Fps, :Bitrate, :ResolutionAdaptive, :Width, :Height, :FillType, :Vcrf, :Gop, :PreserveHDRSwitch
        
        def initialize(codec=nil, fps=nil, bitrate=nil, resolutionadaptive=nil, width=nil, height=nil, filltype=nil, vcrf=nil, gop=nil, preservehdrswitch=nil)
          @Codec = codec
          @Fps = fps
          @Bitrate = bitrate
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
          @FillType = filltype
          @Vcrf = vcrf
          @Gop = gop
          @PreserveHDRSwitch = preservehdrswitch
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
          @Bitrate = params['Bitrate']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
          @FillType = params['FillType']
          @Vcrf = params['Vcrf']
          @Gop = params['Gop']
          @PreserveHDRSwitch = params['PreserveHDRSwitch']
        end
      end

      # 视频流配置参数
      class VideoTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码；</li>
        # <li>libx265：H.265 编码；</li>
        # <li>av1：AOMedia Video 1 编码；</li>
        # <li>H.266：H.266 编码。</li>
        # <font color=red>注意：</font>
        # <li> av1，H.266 编码容器目前只支持 mp4 ；</li>
        # <li> H.266 目前只支持恒定 CRF 码率控制方式。 </li>
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
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 8192]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 8192]，单位：px。
        # @type Height: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊填充。</li>
        # @type FillType: String
        # @param Vcrf: 视频恒定码率控制因子，取值范围为[1, 51]，填 0 表示禁用该参数。

        # <font color=red>注意：</font>
        # <li>如果指定该参数，将使用 CRF 的码率控制方式做转码（视频码率将不再生效）；</li>
        # <li>当指定视频流编码格式为 H.266 时，该字段必填，推荐值为 28；</li>
        # <li>如果没有特殊需求，不建议指定该参数。</li>
        # @type Vcrf: Integer
        # @param Gop: 关键帧 I 帧之间的间隔，取值范围：0 和 [1, 100000]，单位：帧数。
        # 当填 0 或不填时，系统将自动设置 gop 长度。
        # @type Gop: Integer
        # @param PreserveHDRSwitch: 当原始视频为 HDR（High Dynamic Range）时，转码输出是否依然保持 HDR。取值范围：
        # <li>ON: 如果原始文件是 HDR，则转码输出保持 HDR；否则转码输出为 SDR （Standard Dynamic Range）。</li>
        # <li>OFF: 无论原始文件是 HDR 还是 SDR，转码输出均为 SDR。</li>
        # @type PreserveHDRSwitch: String

        attr_accessor :Codec, :Fps, :Bitrate, :ResolutionAdaptive, :Width, :Height, :FillType, :Vcrf, :Gop, :PreserveHDRSwitch
        
        def initialize(codec=nil, fps=nil, bitrate=nil, resolutionadaptive=nil, width=nil, height=nil, filltype=nil, vcrf=nil, gop=nil, preservehdrswitch=nil)
          @Codec = codec
          @Fps = fps
          @Bitrate = bitrate
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
          @FillType = filltype
          @Vcrf = vcrf
          @Gop = gop
          @PreserveHDRSwitch = preservehdrswitch
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
          @Bitrate = params['Bitrate']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
          @FillType = params['FillType']
          @Vcrf = params['Vcrf']
          @Gop = params['Gop']
          @PreserveHDRSwitch = params['PreserveHDRSwitch']
        end
      end

      # 视频轨的视频片段信息。
      class VideoTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceMedia: 视频片段的媒体素材来源，可以是：
        # <li>点播的媒体文件 ID；</li>
        # <li>其他媒体文件的下载 URL。</li>
        # 注意：当使用其他媒体文件的下载 URL 作为素材来源，且开启了访问控制（如防盗链）时，需要在 URL 携带访问控制参数（如防盗链签名）。
        # @type SourceMedia: String
        # @param SourceMediaStartTime: 视频片段取自素材文件的起始时间，单位为秒。默认为0。
        # @type SourceMediaStartTime: Float
        # @param Duration: 视频片段时长，单位为秒。默认取视频素材本身长度，表示截取全部素材。如果源文件是图片，Duration需要大于0。
        # @type Duration: Float
        # @param CoordinateOrigin: 视频原点位置，取值有：
        # <li>Center：坐标原点为中心位置，如画布中心。</li>
        # 默认值 ：Center。
        # @type CoordinateOrigin: String
        # @param XPos: 视频片段原点距离画布原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 XPos 为画布宽度指定百分比的位置，如 10% 表示 XPos 为画布口宽度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 XPos 单位为像素，如 100px 表示 XPos 为100像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 视频片段原点距离画布原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 YPos 为画布高度指定百分比的位置，如 10% 表示 YPos 为画布高度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 YPos 单位为像素，如 100px 表示 YPos 为100像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param Width: 视频片段的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 Width 为画布宽度的百分比大小，如 10% 表示 Width 为画布宽度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 Width 单位为像素，如 100px 表示 Width 为100像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取视频素材本身的 Width、Height。</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Width: String
        # @param Height: 视频片段的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 Height 为画布高度的百分比大小，如 10% 表示 Height 为画布高度的 10%；
        # </li><li>当字符串以 px 结尾，表示视频片段 Height 单位为像素，如 100px 表示 Height 为100像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取视频素材本身的 Width、Height。</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Height: String
        # @param ImageOperations: 对图像进行的操作，如图像旋转等。
        # @type ImageOperations: Array
        # @param AudioOperations: 对音频进行操作，如静音等。
        # @type AudioOperations: Array

        attr_accessor :SourceMedia, :SourceMediaStartTime, :Duration, :CoordinateOrigin, :XPos, :YPos, :Width, :Height, :ImageOperations, :AudioOperations
        
        def initialize(sourcemedia=nil, sourcemediastarttime=nil, duration=nil, coordinateorigin=nil, xpos=nil, ypos=nil, width=nil, height=nil, imageoperations=nil, audiooperations=nil)
          @SourceMedia = sourcemedia
          @SourceMediaStartTime = sourcemediastarttime
          @Duration = duration
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @Width = width
          @Height = height
          @ImageOperations = imageoperations
          @AudioOperations = audiooperations
        end

        def deserialize(params)
          @SourceMedia = params['SourceMedia']
          @SourceMediaStartTime = params['SourceMediaStartTime']
          @Duration = params['Duration']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          @Width = params['Width']
          @Height = params['Height']
          unless params['ImageOperations'].nil?
            @ImageOperations = []
            params['ImageOperations'].each do |i|
              imagetransform_tmp = ImageTransform.new
              imagetransform_tmp.deserialize(i)
              @ImageOperations << imagetransform_tmp
            end
          end
          unless params['AudioOperations'].nil?
            @AudioOperations = []
            params['AudioOperations'].each do |i|
              audiotransform_tmp = AudioTransform.new
              audiotransform_tmp.deserialize(i)
              @AudioOperations << audiotransform_tmp
            end
          end
        end
      end

      # 水印周期配置。
      class WatermarkCycleConfigForUpdate < TencentCloud::Common::AbstractModel
        # @param StartTime: 水印在视频里第一次出现的播放时间点，单位：秒。
        # @type StartTime: Float
        # @param DisplayDuration: 在一个水印周期内，水印显示的持续时间，单位：秒。
        # @type DisplayDuration: Float
        # @param CycleDuration: 一个水印周期的持续时间，单位：秒。
        # 填 0 表示水印只持续一个水印周期（即在整个视频里只显示 DisplayDuration 秒）。
        # @type CycleDuration: Float

        attr_accessor :StartTime, :DisplayDuration, :CycleDuration
        
        def initialize(starttime=nil, displayduration=nil, cycleduration=nil)
          @StartTime = starttime
          @DisplayDuration = displayduration
          @CycleDuration = cycleduration
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @DisplayDuration = params['DisplayDuration']
          @CycleDuration = params['CycleDuration']
        end
      end

      # 视频处理任务中的水印参数类型
      class WatermarkInput < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板 ID。
        # @type Definition: Integer
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

        attr_accessor :Definition, :TextContent, :SvgContent, :StartTimeOffset, :EndTimeOffset
        
        def initialize(definition=nil, textcontent=nil, svgcontent=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Definition = definition
          @TextContent = textcontent
          @SvgContent = svgcontent
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Definition = params['Definition']
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
        # @type ImageTemplate: :class:`Tencentcloud::Vod.v20180717.models.ImageWatermarkTemplate`
        # @param TextTemplate: 文字水印模板，仅当 Type 为 text，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTemplate: :class:`Tencentcloud::Vod.v20180717.models.TextWatermarkTemplateInput`
        # @param SvgTemplate: SVG 水印模板，当 Type 为 svg，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SvgTemplate: :class:`Tencentcloud::Vod.v20180717.models.SvgWatermarkInput`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
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

      # WeChatMiniProgramPublish请求参数结构体
      class WeChatMiniProgramPublishRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param SubAppId: <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        # @type SubAppId: Integer
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为0代表原始视频。
        # @type SourceDefinition: Integer

        attr_accessor :FileId, :SubAppId, :SourceDefinition
        
        def initialize(fileid=nil, subappid=nil, sourcedefinition=nil)
          @FileId = fileid
          @SubAppId = subappid
          @SourceDefinition = sourcedefinition
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SubAppId = params['SubAppId']
          @SourceDefinition = params['SourceDefinition']
        end
      end

      # WeChatMiniProgramPublish返回参数结构体
      class WeChatMiniProgramPublishResponse < TencentCloud::Common::AbstractModel
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

      # 微信小程序发布任务信息
      class WechatMiniProgramPublishTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态，取值：
        # WAITING：等待中；
        # PROCESSING：处理中；
        # FINISH：已完成。
        # @type Status: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 发布视频文件 ID。
        # @type FileId: String
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为 0 代表原始视频。
        # @type SourceDefinition: Integer
        # @param PublishResult: 微信小程序视频发布状态，取值：
        # <li>Pass：发布成功；</li>
        # <li>Failed：发布失败；</li>
        # <li>Rejected：音视频审核未通过。</li>
        # @type PublishResult: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :SourceDefinition, :PublishResult
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, sourcedefinition=nil, publishresult=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @SourceDefinition = sourcedefinition
          @PublishResult = publishresult
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @SourceDefinition = params['SourceDefinition']
          @PublishResult = params['PublishResult']
        end
      end

      # 微信小程序发布任务类型
      class WechatMiniProgramPublishTaskInput < TencentCloud::Common::AbstractModel
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为 0 代表原始视频。
        # @type SourceDefinition: Integer

        attr_accessor :SourceDefinition
        
        def initialize(sourcedefinition=nil)
          @SourceDefinition = sourcedefinition
        end

        def deserialize(params)
          @SourceDefinition = params['SourceDefinition']
        end
      end

      # 微信发布任务信息
      class WechatPublishTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态，取值：
        # WAITING：等待中；
        # PROCESSING：处理中；
        # FINISH：已完成。
        # @type Status: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 发布视频文件 ID。
        # @type FileId: String
        # @param Definition: 微信发布模板 ID。
        # @type Definition: Integer
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为 0 代表原始视频。
        # @type SourceDefinition: Integer
        # @param WechatStatus: 微信发布状态，取值：
        # <li>FAIL：失败；</li>
        # <li>SUCCESS：成功；</li>
        # <li>AUDITNOTPASS：审核未通过；</li>
        # <li>NOTTRIGGERED：尚未发起微信发布。</li>
        # @type WechatStatus: String
        # @param WechatVid: 微信 Vid。
        # @type WechatVid: String
        # @param WechatUrl: 微信地址。
        # @type WechatUrl: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :Definition, :SourceDefinition, :WechatStatus, :WechatVid, :WechatUrl
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, definition=nil, sourcedefinition=nil, wechatstatus=nil, wechatvid=nil, wechaturl=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @Definition = definition
          @SourceDefinition = sourcedefinition
          @WechatStatus = wechatstatus
          @WechatVid = wechatvid
          @WechatUrl = wechaturl
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @Definition = params['Definition']
          @SourceDefinition = params['SourceDefinition']
          @WechatStatus = params['WechatStatus']
          @WechatVid = params['WechatVid']
          @WechatUrl = params['WechatUrl']
        end
      end

    end
  end
end

