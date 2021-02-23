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
  module Ticm
    module V20181127
      # 识别出人脸对应的候选人。
      class Candidate < TencentCloud::Common::AbstractModel
        # @param Name: 识别出人脸对应的候选人数组。当前返回相似度最高的候选人。
        # @type Name: String
        # @param Confidence: 相似度，0-100之间。
        # @type Confidence: Integer

        attr_accessor :Name, :Confidence
        
        def initialize(name=nil, confidence=nil)
          @Name = name
          @Confidence = confidence
        end

        def deserialize(params)
          @Name = params['Name']
          @Confidence = params['Confidence']
        end
      end

      # DescribeVideoTask请求参数结构体
      class DescribeVideoTaskRequest < TencentCloud::Common::AbstractModel
        # @param VodTaskId: 需要查询的视频审核的任务ID
        # @type VodTaskId: String

        attr_accessor :VodTaskId
        
        def initialize(vodtaskid=nil)
          @VodTaskId = vodtaskid
        end

        def deserialize(params)
          @VodTaskId = params['VodTaskId']
        end
      end

      # DescribeVideoTask返回参数结构体
      class DescribeVideoTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，取值：
        # WAITING：等待中；
        # PROCESSING：处理中；
        # FINISH：已完成。
        # @type Status: String
        # @param BeginProcessTime: 任务开始执行的时间，采用 ISO 日期格式。
        # @type BeginProcessTime: String
        # @param FinishTime: 任务执行完毕的时间，采用 ISO 日期格式。
        # @type FinishTime: String
        # @param PornResult: 视频内容审核智能画面鉴黄任务的查询结果。
        # @type PornResult: :class:`Tencentcloud::Ticm.v20181127.models.VodPornReviewResult`
        # @param TerrorismResult: 视频内容审核智能画面鉴恐任务的查询结果。
        # @type TerrorismResult: :class:`Tencentcloud::Ticm.v20181127.models.VodTerrorismReviewResult`
        # @param PoliticalResult: 视频内容审核智能画面鉴政任务的查询结果。
        # @type PoliticalResult: :class:`Tencentcloud::Ticm.v20181127.models.VodPoliticalReviewResult`
        # @param PoliticalOcrResult: 视频内容审核 Ocr 文字鉴政任务的查询结果。
        # @type PoliticalOcrResult: :class:`Tencentcloud::Ticm.v20181127.models.VodPoliticalOcrReviewResult`
        # @param PornAsrResult: 视频内容审核 Asr 文字鉴黄任务的查询结果。
        # @type PornAsrResult: :class:`Tencentcloud::Ticm.v20181127.models.VodPornAsrReviewResult`
        # @param PoliticalAsrResult: 视频内容审核 Asr 文字鉴政任务的查询结果。
        # @type PoliticalAsrResult: :class:`Tencentcloud::Ticm.v20181127.models.VodPoliticalAsrReviewResult`
        # @param PornOcrResult: 视频内容审核 Ocr 文字鉴黄任务的查询结果。
        # @type PornOcrResult: :class:`Tencentcloud::Ticm.v20181127.models.VodPornOcrResult`
        # @param MetaData: 原始视频的元信息。
        # @type MetaData: :class:`Tencentcloud::Ticm.v20181127.models.VodMetaData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :BeginProcessTime, :FinishTime, :PornResult, :TerrorismResult, :PoliticalResult, :PoliticalOcrResult, :PornAsrResult, :PoliticalAsrResult, :PornOcrResult, :MetaData, :RequestId
        
        def initialize(status=nil, beginprocesstime=nil, finishtime=nil, pornresult=nil, terrorismresult=nil, politicalresult=nil, politicalocrresult=nil, pornasrresult=nil, politicalasrresult=nil, pornocrresult=nil, metadata=nil, requestid=nil)
          @Status = status
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
          @PornResult = pornresult
          @TerrorismResult = terrorismresult
          @PoliticalResult = politicalresult
          @PoliticalOcrResult = politicalocrresult
          @PornAsrResult = pornasrresult
          @PoliticalAsrResult = politicalasrresult
          @PornOcrResult = pornocrresult
          @MetaData = metadata
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
          unless params['PornResult'].nil?
            @PornResult = VodPornReviewResult.new.deserialize(params['PornResult'])
          end
          unless params['TerrorismResult'].nil?
            @TerrorismResult = VodTerrorismReviewResult.new.deserialize(params['TerrorismResult'])
          end
          unless params['PoliticalResult'].nil?
            @PoliticalResult = VodPoliticalReviewResult.new.deserialize(params['PoliticalResult'])
          end
          unless params['PoliticalOcrResult'].nil?
            @PoliticalOcrResult = VodPoliticalOcrReviewResult.new.deserialize(params['PoliticalOcrResult'])
          end
          unless params['PornAsrResult'].nil?
            @PornAsrResult = VodPornAsrReviewResult.new.deserialize(params['PornAsrResult'])
          end
          unless params['PoliticalAsrResult'].nil?
            @PoliticalAsrResult = VodPoliticalAsrReviewResult.new.deserialize(params['PoliticalAsrResult'])
          end
          unless params['PornOcrResult'].nil?
            @PornOcrResult = VodPornOcrResult.new.deserialize(params['PornOcrResult'])
          end
          unless params['MetaData'].nil?
            @MetaData = VodMetaData.new.deserialize(params['MetaData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 恶心识别结果。
      class DisgustResult < TencentCloud::Common::AbstractModel
        # @param Code: 该识别场景的错误码：
        # 0表示成功，
        # -1表示系统错误，
        # -2表示引擎错误。
        # @type Code: Integer
        # @param Msg: 错误码描述信息。
        # @type Msg: String
        # @param Suggestion: 识别场景的审核结论：
        # PASS：正常
        # REVIEW：疑似
        # BLOCK：违规
        # @type Suggestion: String
        # @param Confidence: 图像恶心的分数，0-100之间，分数越高恶心几率越大。
        # @type Confidence: Integer

        attr_accessor :Code, :Msg, :Suggestion, :Confidence
        
        def initialize(code=nil, msg=nil, suggestion=nil, confidence=nil)
          @Code = code
          @Msg = msg
          @Suggestion = suggestion
          @Confidence = confidence
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @Suggestion = params['Suggestion']
          @Confidence = params['Confidence']
        end
      end

      # 识别出的人脸在图片中的位置。
      class FaceRect < TencentCloud::Common::AbstractModel
        # @param X: 人脸区域左上角横坐标。
        # @type X: Integer
        # @param Y: 人脸区域左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人脸区域宽度。
        # @type Width: Integer
        # @param Height: 人脸区域高度。
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

      # 人脸识别结果。
      class FaceResult < TencentCloud::Common::AbstractModel
        # @param FaceRect: 检测出的人脸框位置。
        # @type FaceRect: :class:`Tencentcloud::Ticm.v20181127.models.FaceRect`
        # @param Candidates: 候选人列表。当前返回相似度最高的候选人。
        # @type Candidates: Array

        attr_accessor :FaceRect, :Candidates
        
        def initialize(facerect=nil, candidates=nil)
          @FaceRect = facerect
          @Candidates = candidates
        end

        def deserialize(params)
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new.deserialize(params['FaceRect'])
          end
          unless params['Candidates'].nil?
            @Candidates = []
            params['Candidates'].each do |i|
              @Candidates << Candidate.new.deserialize(i)
            end
          end
        end
      end

      # ImageModeration请求参数结构体
      class ImageModerationRequest < TencentCloud::Common::AbstractModel
        # @param Scenes: 本次调用支持的识别场景，可选值如下：
        # 1. PORN，即色情识别
        # 2. TERRORISM，即暴恐识别
        # 3. POLITICS，即政治敏感识别

        # 支持多场景（Scenes）一起检测。例如，使用 Scenes=["PORN", "TERRORISM"]，即对一张图片同时进行色情识别和暴恐识别。
        # @type Scenes: Array
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        #  • 图片格式：PNG、JPG、JPEG。
        #  • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        #  • 图片像素：大于50*50像素，否则影响识别效果；
        #  • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param Config: 预留字段，后期用于展示更多识别信息。
        # @type Config: String
        # @param Extra: 透传字段，透传简单信息。
        # @type Extra: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # @type ImageBase64: String

        attr_accessor :Scenes, :ImageUrl, :Config, :Extra, :ImageBase64
        
        def initialize(scenes=nil, imageurl=nil, config=nil, extra=nil, imagebase64=nil)
          @Scenes = scenes
          @ImageUrl = imageurl
          @Config = config
          @Extra = extra
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @Scenes = params['Scenes']
          @ImageUrl = params['ImageUrl']
          @Config = params['Config']
          @Extra = params['Extra']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # ImageModeration返回参数结构体
      class ImageModerationResponse < TencentCloud::Common::AbstractModel
        # @param Suggestion: 识别场景的审核结论：
        # PASS：正常
        # REVIEW：疑似
        # BLOCK：违规
        # @type Suggestion: String
        # @param PornResult: 色情识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornResult: :class:`Tencentcloud::Ticm.v20181127.models.PornResult`
        # @param TerrorismResult: 暴恐识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismResult: :class:`Tencentcloud::Ticm.v20181127.models.TerrorismResult`
        # @param PoliticsResult: 政治敏感识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticsResult: :class:`Tencentcloud::Ticm.v20181127.models.PoliticsResult`
        # @param Extra: 透传字段，透传简单信息。
        # @type Extra: String
        # @param DisgustResult: 恶心内容识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisgustResult: :class:`Tencentcloud::Ticm.v20181127.models.DisgustResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Suggestion, :PornResult, :TerrorismResult, :PoliticsResult, :Extra, :DisgustResult, :RequestId
        
        def initialize(suggestion=nil, pornresult=nil, terrorismresult=nil, politicsresult=nil, extra=nil, disgustresult=nil, requestid=nil)
          @Suggestion = suggestion
          @PornResult = pornresult
          @TerrorismResult = terrorismresult
          @PoliticsResult = politicsresult
          @Extra = extra
          @DisgustResult = disgustresult
          @RequestId = requestid
        end

        def deserialize(params)
          @Suggestion = params['Suggestion']
          unless params['PornResult'].nil?
            @PornResult = PornResult.new.deserialize(params['PornResult'])
          end
          unless params['TerrorismResult'].nil?
            @TerrorismResult = TerrorismResult.new.deserialize(params['TerrorismResult'])
          end
          unless params['PoliticsResult'].nil?
            @PoliticsResult = PoliticsResult.new.deserialize(params['PoliticsResult'])
          end
          @Extra = params['Extra']
          unless params['DisgustResult'].nil?
            @DisgustResult = DisgustResult.new.deserialize(params['DisgustResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 政治敏感识别结果。
      class PoliticsResult < TencentCloud::Common::AbstractModel
        # @param Code: 该识别场景的错误码：
        # 0表示成功，
        # -1表示系统错误，
        # -2表示引擎错误，
        # -1400表示图片解码失败，
        # -1401表示图片不符合规范。
        # @type Code: Integer
        # @param Msg: 错误码描述信息。
        # @type Msg: String
        # @param Suggestion: 识别场景的审核结论：
        # PASS：正常
        # REVIEW：疑似
        # BLOCK：违规
        # @type Suggestion: String
        # @param Confidence: 图像涉政的分数，0-100之间，分数越高涉政几率越大。
        # Type为DNA时：
        # 0到75，Suggestion建议为PASS
        # 75到90，Suggestion建议为REVIEW
        # 90到100，Suggestion建议为BLOCK
        # Type为FACE时：
        # 0到55，Suggestion建议为PASS
        # 55到60，Suggestion建议为REVIEW
        # 60到100，Suggestion建议为BLOCK
        # @type Confidence: Integer
        # @param FaceResults: Type取值为‘FACE’时，人脸识别的结果列表。基于图片中实际检测到的人脸数，返回数组最大值不超过5个。
        # @type FaceResults: Array
        # @param Type: 取值'DNA' 或‘FACE’。DNA表示结论和置信度来自图像指纹，FACE表示结论和置信度来自人脸识别。
        # @type Type: String
        # @param AdvancedInfo: 鉴政识别返回的详细标签后期开放。
        # @type AdvancedInfo: String

        attr_accessor :Code, :Msg, :Suggestion, :Confidence, :FaceResults, :Type, :AdvancedInfo
        
        def initialize(code=nil, msg=nil, suggestion=nil, confidence=nil, faceresults=nil, type=nil, advancedinfo=nil)
          @Code = code
          @Msg = msg
          @Suggestion = suggestion
          @Confidence = confidence
          @FaceResults = faceresults
          @Type = type
          @AdvancedInfo = advancedinfo
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @Suggestion = params['Suggestion']
          @Confidence = params['Confidence']
          unless params['FaceResults'].nil?
            @FaceResults = []
            params['FaceResults'].each do |i|
              @FaceResults << FaceResult.new.deserialize(i)
            end
          end
          @Type = params['Type']
          @AdvancedInfo = params['AdvancedInfo']
        end
      end

      # 色情识别结果。
      class PornResult < TencentCloud::Common::AbstractModel
        # @param Code: 该识别场景的错误码：
        # 0表示成功，
        # -1表示系统错误，
        # -2表示引擎错误，
        # -1400表示图片解码失败。
        # @type Code: Integer
        # @param Msg: 错误码描述信息。
        # @type Msg: String
        # @param Suggestion: 识别场景的审核结论：
        # PASS：正常
        # REVIEW：疑似
        # BLOCK：违规
        # @type Suggestion: String
        # @param Confidence: 算法对于Suggestion的置信度，0-100之间，值越高，表示对于Suggestion越确定。
        # @type Confidence: Integer
        # @param AdvancedInfo: 预留字段，后期用于展示更多识别信息。
        # @type AdvancedInfo: String
        # @param Type: 取值'LABEL‘，LABEL表示结论和置信度来自标签分类。
        # @type Type: String

        attr_accessor :Code, :Msg, :Suggestion, :Confidence, :AdvancedInfo, :Type
        
        def initialize(code=nil, msg=nil, suggestion=nil, confidence=nil, advancedinfo=nil, type=nil)
          @Code = code
          @Msg = msg
          @Suggestion = suggestion
          @Confidence = confidence
          @AdvancedInfo = advancedinfo
          @Type = type
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @Suggestion = params['Suggestion']
          @Confidence = params['Confidence']
          @AdvancedInfo = params['AdvancedInfo']
          @Type = params['Type']
        end
      end

      # 暴恐识别结果。
      class TerrorismResult < TencentCloud::Common::AbstractModel
        # @param Code: 该识别场景的错误码：
        # 0表示成功，
        # -1表示系统错误，
        # -2表示引擎错误，
        # -1400表示图片解码失败。
        # @type Code: Integer
        # @param Msg: 错误码描述信息。
        # @type Msg: String
        # @param Suggestion: 识别场景的审核结论：
        # PASS：正常
        # REVIEW：疑似
        # BLOCK：违规
        # @type Suggestion: String
        # @param Confidence: 图像涉恐的分数，0-100之间，分数越高涉恐几率越大。
        # Type为LABEL时：
        # 0到86，Suggestion建议为PASS
        # 86到91，Suggestion建议为REVIEW
        # 91到100，Suggestion建议为BLOCK
        # Type为FACE时：
        # 0到55，Suggestion建议为PASS
        # 55到60，Suggestion建议为REVIEW
        # 60到100，Suggestion建议为BLOCK
        # @type Confidence: Integer
        # @param FaceResults: Type取值为‘FACE’时，人脸识别的结果列表。基于图片中实际检测到的人脸数，返回数组最大值不超过5个。
        # @type FaceResults: Array
        # @param AdvancedInfo: 暴恐识别返回的详细标签后期开放。
        # @type AdvancedInfo: String
        # @param Type: 取值'LABEL' 或‘FACE’，LABEL表示结论和置信度来自标签分类，FACE表示结论和置信度来自人脸识别。
        # @type Type: String

        attr_accessor :Code, :Msg, :Suggestion, :Confidence, :FaceResults, :AdvancedInfo, :Type
        
        def initialize(code=nil, msg=nil, suggestion=nil, confidence=nil, faceresults=nil, advancedinfo=nil, type=nil)
          @Code = code
          @Msg = msg
          @Suggestion = suggestion
          @Confidence = confidence
          @FaceResults = faceresults
          @AdvancedInfo = advancedinfo
          @Type = type
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @Suggestion = params['Suggestion']
          @Confidence = params['Confidence']
          unless params['FaceResults'].nil?
            @FaceResults = []
            params['FaceResults'].each do |i|
              @FaceResults << FaceResult.new.deserialize(i)
            end
          end
          @AdvancedInfo = params['AdvancedInfo']
          @Type = params['Type']
        end
      end

      # VideoModeration请求参数结构体
      class VideoModerationRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 需要审核的视频的URL地址
        # @type VideoUrl: String
        # @param DeveloperId: 开发者标识
        # @type DeveloperId: String
        # @param CBUrl: 审核完成后回调地址
        # @type CBUrl: String
        # @param Extra: 透传字段，透传简单信息。
        # @type Extra: String

        attr_accessor :VideoUrl, :DeveloperId, :CBUrl, :Extra
        
        def initialize(videourl=nil, developerid=nil, cburl=nil, extra=nil)
          @VideoUrl = videourl
          @DeveloperId = developerid
          @CBUrl = cburl
          @Extra = extra
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @DeveloperId = params['DeveloperId']
          @CBUrl = params['CBUrl']
          @Extra = params['Extra']
        end
      end

      # VideoModeration返回参数结构体
      class VideoModerationResponse < TencentCloud::Common::AbstractModel
        # @param VodTaskId: 视频审核任务ID
        # @type VodTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VodTaskId, :RequestId
        
        def initialize(vodtaskid=nil, requestid=nil)
          @VodTaskId = vodtaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @VodTaskId = params['VodTaskId']
          @RequestId = params['RequestId']
        end
      end

      # 内容审核 Asr 文字审核嫌疑片段
      class VodAsrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段审核结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param KeywordSet: 嫌疑关键词列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 文件音频流信息
      class VodAudioStreamItem < TencentCloud::Common::AbstractModel
        # @param Bitrate: 音频流的码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param SamplingRate: 音频流的采样率，单位：hz。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SamplingRate: Integer
        # @param Codec: 音频流的编码格式，例如 aac。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 媒体文件元信息。
      class VodMetaData < TencentCloud::Common::AbstractModel
        # @param Size: 上传的媒体文件大小（视频为 HLS 时，大小是 m3u8 和 ts 文件大小的总和），单位：字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Size: Integer
        # @param Container: 容器类型，例如 m4a，mp4 等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Container: String
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Duration: 视频时长，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Float
        # @param Rotate: 视频拍摄时的选择角度，单位：度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rotate: Integer
        # @param VideoStreamSet: 视频流信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoStreamSet: Array
        # @param AudioStreamSet: 音频流信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioStreamSet: Array
        # @param VideoDuration: 视频时长，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoDuration: Float
        # @param AudioDuration: 音频时长，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              @VideoStreamSet << VodVideoStreamItem.new.deserialize(i)
            end
          end
          unless params['AudioStreamSet'].nil?
            @AudioStreamSet = []
            params['AudioStreamSet'].each do |i|
              @AudioStreamSet << VodAudioStreamItem.new.deserialize(i)
            end
          end
          @VideoDuration = params['VideoDuration']
          @AudioDuration = params['AudioDuration']
        end
      end

      # 内容审核 Ocr 文字审核嫌疑片段
      class VodOcrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段审核结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param KeywordSet: 嫌疑关键词列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeywordSet: Array
        # @param AreaCoordSet: 嫌疑文字出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCoordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :KeywordSet, :AreaCoordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, keywordset=nil, areacoordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @KeywordSet = keywordset
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @KeywordSet = params['KeywordSet']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 内容审核 Asr 文字鉴政、敏感任务结果类型
      class VodPoliticalAsrReviewResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param Code: 错误码，0：成功，其他值：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Confidence: 嫌疑片段审核结果建议，取值范围：
        # pass。
        # review。
        # block。

        # Asr 文字涉政、敏感评分，分值为0到100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉政、敏感结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉政、敏感嫌疑的视频片段列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentSet: Array

        attr_accessor :Status, :Code, :Msg, :Confidence, :Suggestion, :SegmentSet
        
        def initialize(status=nil, code=nil, msg=nil, confidence=nil, suggestion=nil, segmentset=nil)
          @Status = status
          @Code = code
          @Msg = msg
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Status = params['Status']
          @Code = params['Code']
          @Msg = params['Msg']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              @SegmentSet << VodAsrTextSegmentItem.new.deserialize(i)
            end
          end
        end
      end

      # 内容审核 Ocr 文字鉴政、敏感任务结果类型
      class VodPoliticalOcrReviewResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param Code: 错误码，0：成功，其他值：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Confidence: Ocr 文字涉政、敏感评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉政、敏感结果建议，取值范围：
        # pass。
        # review。
        # block。
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉政、敏感嫌疑的视频片段列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentSet: Array

        attr_accessor :Status, :Code, :Msg, :Confidence, :Suggestion, :SegmentSet
        
        def initialize(status=nil, code=nil, msg=nil, confidence=nil, suggestion=nil, segmentset=nil)
          @Status = status
          @Code = code
          @Msg = msg
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Status = params['Status']
          @Code = params['Code']
          @Msg = params['Msg']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              @SegmentSet << VodOcrTextSegmentItem.new.deserialize(i)
            end
          end
        end
      end

      # 涉政信息
      class VodPoliticalReviewResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param Code: 错误码，0：成功，其他值：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Confidence: 视频涉政评分，分值为0到100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: 涉政结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Label: 视频鉴政结果标签，取值范围：
        # politician：政治人物。
        # violation_photo：违规图标。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param SegmentSet: 有涉政嫌疑的视频片段列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentSet: Array

        attr_accessor :Status, :Code, :Msg, :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(status=nil, code=nil, msg=nil, confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Status = status
          @Code = code
          @Msg = msg
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Status = params['Status']
          @Code = params['Code']
          @Msg = params['Msg']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              @SegmentSet << VodPoliticalReviewSegmentItem.new.deserialize(i)
            end
          end
        end
      end

      # 内容审核鉴政任务结果类型
      class VodPoliticalReviewSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉政分数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段鉴政结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Name: 涉政人物、违规图标名字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Label: 嫌疑片段鉴政结果标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        # PicUrlExpireTime 时间点后图片将被删除）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param PicUrlExpireTimeStamp: 嫌疑图片 URL 失效时间，使用 ISO 日期格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PicUrlExpireTimeStamp: Integer
        # @param AreaCoordSet: 涉政人物、违规图标出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCoordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :Name, :Label, :Url, :PicUrlExpireTimeStamp, :AreaCoordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, name=nil, label=nil, url=nil, picurlexpiretimestamp=nil, areacoordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @Name = name
          @Label = label
          @Url = url
          @PicUrlExpireTimeStamp = picurlexpiretimestamp
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Name = params['Name']
          @Label = params['Label']
          @Url = params['Url']
          @PicUrlExpireTimeStamp = params['PicUrlExpireTimeStamp']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # Asr 文字涉黄信息
      class VodPornAsrReviewResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param Code: 错误码，0：成功，其他值：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Confidence: Asr 文字涉黄评分，分值为0到100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉黄结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉黄嫌疑的视频片段列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentSet: Array

        attr_accessor :Status, :Code, :Msg, :Confidence, :Suggestion, :SegmentSet
        
        def initialize(status=nil, code=nil, msg=nil, confidence=nil, suggestion=nil, segmentset=nil)
          @Status = status
          @Code = code
          @Msg = msg
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Status = params['Status']
          @Code = params['Code']
          @Msg = params['Msg']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              @SegmentSet << VodAsrTextSegmentItem.new.deserialize(i)
            end
          end
        end
      end

      # 内容审核 Ocr 文字鉴黄任务结果类型
      class VodPornOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param Code: 错误码，0：成功，其他值：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Confidence: Ocr 文字涉黄评分，分值为0到100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉黄结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉黄嫌疑的视频片段列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentSet: Array

        attr_accessor :Status, :Code, :Msg, :Confidence, :Suggestion, :SegmentSet
        
        def initialize(status=nil, code=nil, msg=nil, confidence=nil, suggestion=nil, segmentset=nil)
          @Status = status
          @Code = code
          @Msg = msg
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Status = params['Status']
          @Code = params['Code']
          @Msg = params['Msg']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              @SegmentSet << VodOcrTextSegmentItem.new.deserialize(i)
            end
          end
        end
      end

      # 内容审核鉴黄任务结果类型
      class VodPornReviewResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param Code: 错误码，0：成功，其他值：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Confidence: 视频鉴黄评分，分值为0到100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: 鉴黄结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Label: 视频鉴黄结果标签，取值范围：
        # porn：色情。
        # sexy：性感。
        # vulgar：低俗。
        # intimacy：亲密行为。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param SegmentSet: 有涉黄嫌疑的视频片段列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentSet: Array

        attr_accessor :Status, :Code, :Msg, :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(status=nil, code=nil, msg=nil, confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Status = status
          @Code = code
          @Msg = msg
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Status = params['Status']
          @Code = params['Code']
          @Msg = params['Msg']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              @SegmentSet << VodPornReviewSegmentItem.new.deserialize(i)
            end
          end
        end
      end

      # 内容审核涉黄/暴恐嫌疑片段
      class VodPornReviewSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉黄分数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Label: 嫌疑片段鉴黄结果标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Suggestion: 嫌疑片段鉴黄结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        # PicUrlExpireTime 时间点后图片将被删除）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param PicUrlExpireTimeStamp: 嫌疑图片 URL 失效时间，使用 ISO 日期格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PicUrlExpireTimeStamp: Integer

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Label, :Suggestion, :Url, :PicUrlExpireTimeStamp
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, label=nil, suggestion=nil, url=nil, picurlexpiretimestamp=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Label = label
          @Suggestion = suggestion
          @Url = url
          @PicUrlExpireTimeStamp = picurlexpiretimestamp
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Url = params['Url']
          @PicUrlExpireTimeStamp = params['PicUrlExpireTimeStamp']
        end
      end

      # 暴恐信息
      class VodTerrorismReviewResult < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频暴恐评分，分值为0到100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Float
        # @param Suggestion: 暴恐结果建议，取值范围：
        # pass。
        # review。
        # block。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Suggestion: String
        # @param Label: 视频暴恐结果标签，取值范围：
        # guns：武器枪支。
        # crowd：人群聚集。
        # police：警察部队。
        # bloody：血腥画面。
        # banners：暴恐旗帜。
        # militant：武装分子。
        # explosion：爆炸火灾。
        # terrorists：暴恐人物。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param Code: 错误码，0：成功，其他值：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param SegmentSet: 有暴恐嫌疑的视频片段列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :Label, :Status, :Code, :Msg, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, label=nil, status=nil, code=nil, msg=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @Status = status
          @Code = code
          @Msg = msg
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @Status = params['Status']
          @Code = params['Code']
          @Msg = params['Msg']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              @SegmentSet << VodPornReviewSegmentItem.new.deserialize(i)
            end
          end
        end
      end

      # 文件视频流信息
      class VodVideoStreamItem < TencentCloud::Common::AbstractModel
        # @param Bitrate: 视频流的码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Height: 视频流的高度，单位：px。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Width: 视频流的宽度，单位：px。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Codec: 视频流的编码格式，例如 h264。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Codec: String
        # @param Fps: 帧率，单位：hz。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

    end
  end
end

