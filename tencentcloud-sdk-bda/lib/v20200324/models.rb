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
  module Bda
    module V20200324
      # CreateSegmentationTask请求参数结构体
      class CreateSegmentationTaskRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 需要分割的视频URL，可外网访问。
        # @type VideoUrl: String
        # @param BackgroundImageUrl: 背景图片URL。
        # 可以将视频背景替换为输入的图片。
        # 如果不输入背景图片，则输出人像区域mask。
        # @type BackgroundImageUrl: String
        # @param Config: 预留字段，后期用于展示更多识别信息。
        # @type Config: String

        attr_accessor :VideoUrl, :BackgroundImageUrl, :Config

        def initialize(videourl=nil, backgroundimageurl=nil, config=nil)
          @VideoUrl = videourl
          @BackgroundImageUrl = backgroundimageurl
          @Config = config
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          @Config = params['Config']
        end
      end

      # CreateSegmentationTask返回参数结构体
      class CreateSegmentationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务标识ID,可以用与追溯任务状态，查看任务结果
        # @type TaskID: String
        # @param EstimatedProcessingTime: 预估处理时间，单位为秒
        # @type EstimatedProcessingTime: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :EstimatedProcessingTime, :RequestId

        def initialize(taskid=nil, estimatedprocessingtime=nil, requestid=nil)
          @TaskID = taskid
          @EstimatedProcessingTime = estimatedprocessingtime
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @EstimatedProcessingTime = params['EstimatedProcessingTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSegmentationTask请求参数结构体
      class DescribeSegmentationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 在提交分割任务成功时返回的任务标识ID。
        # @type TaskID: String

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # DescribeSegmentationTask返回参数结构体
      class DescribeSegmentationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskStatus: 当前任务状态：
        # QUEUING 排队中
        # PROCESSING 处理中
        # FINISHED 处理完成
        # @type TaskStatus: String
        # @param ResultVideoUrl: 分割后视频URL, 存储于腾讯云COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultVideoUrl: String
        # @param ResultVideoMD5: 分割后视频MD5，用于校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultVideoMD5: String
        # @param VideoBasicInformation: 视频基本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoBasicInformation: :class:`Tencentcloud::Bda.v20200324.models.VideoBasicInformation`
        # @param ErrorMsg: 分割任务错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskStatus, :ResultVideoUrl, :ResultVideoMD5, :VideoBasicInformation, :ErrorMsg, :RequestId

        def initialize(taskstatus=nil, resultvideourl=nil, resultvideomd5=nil, videobasicinformation=nil, errormsg=nil, requestid=nil)
          @TaskStatus = taskstatus
          @ResultVideoUrl = resultvideourl
          @ResultVideoMD5 = resultvideomd5
          @VideoBasicInformation = videobasicinformation
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskStatus = params['TaskStatus']
          @ResultVideoUrl = params['ResultVideoUrl']
          @ResultVideoMD5 = params['ResultVideoMD5']
          unless params['VideoBasicInformation'].nil?
            @VideoBasicInformation = VideoBasicInformation.new
            @VideoBasicInformation.deserialize(params['VideoBasicInformation'])
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 图像坐标信息。
      class ImageRect < TencentCloud::Common::AbstractModel
        # @param X: 左上角横坐标。
        # @type X: Integer
        # @param Y: 左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人体宽度。
        # @type Width: Integer
        # @param Height: 人体高度。
        # @type Height: Integer
        # @param Label: 分割选项名称。
        # @type Label: String

        attr_accessor :X, :Y, :Width, :Height, :Label

        def initialize(x=nil, y=nil, width=nil, height=nil, label=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
          @Label = label
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
          @Label = params['Label']
        end
      end

      # SegmentCustomizedPortraitPic请求参数结构体
      class SegmentCustomizedPortraitPicRequest < TencentCloud::Common::AbstractModel
        # @param SegmentationOptions: 此参数为分割选项，请根据需要选择自己所想从图片中分割的部分。注意所有选项均为非必选，如未选择则值默认为false, 但是必须要保证多于一个选项的描述为true。
        # @type SegmentationOptions: :class:`Tencentcloud::Bda.v20200324.models.SegmentationOptions`
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 图片分辨率须小于2000*2000。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片分辨率须小于2000*2000 ，图片 base64 编码后大小不可超过5M。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String

        attr_accessor :SegmentationOptions, :Image, :Url

        def initialize(segmentationoptions=nil, image=nil, url=nil)
          @SegmentationOptions = segmentationoptions
          @Image = image
          @Url = url
        end

        def deserialize(params)
          unless params['SegmentationOptions'].nil?
            @SegmentationOptions = SegmentationOptions.new
            @SegmentationOptions.deserialize(params['SegmentationOptions'])
          end
          @Image = params['Image']
          @Url = params['Url']
        end
      end

      # SegmentCustomizedPortraitPic返回参数结构体
      class SegmentCustomizedPortraitPicResponse < TencentCloud::Common::AbstractModel
        # @param PortraitImage: 根据指定标签分割输出的透明背景人像图片的 base64 数据。
        # @type PortraitImage: String
        # @param MaskImage: 指定标签处理后的Mask。一个通过 Base64 编码的文件，解码后文件由 Float 型浮点数组成。这些浮点数代表原图从左上角开始的每一行的每一个像素点，每一个浮点数的值是原图相应像素点位于人体轮廓内的置信度（0-1）转化的灰度值（0-255）
        # @type MaskImage: String
        # @param ImageRects: 坐标信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageRects: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PortraitImage, :MaskImage, :ImageRects, :RequestId

        def initialize(portraitimage=nil, maskimage=nil, imagerects=nil, requestid=nil)
          @PortraitImage = portraitimage
          @MaskImage = maskimage
          @ImageRects = imagerects
          @RequestId = requestid
        end

        def deserialize(params)
          @PortraitImage = params['PortraitImage']
          @MaskImage = params['MaskImage']
          unless params['ImageRects'].nil?
            @ImageRects = []
            params['ImageRects'].each do |i|
              imagerect_tmp = ImageRect.new
              imagerect_tmp.deserialize(i)
              @ImageRects << imagerect_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SegmentPortraitPic请求参数结构体
      class SegmentPortraitPicRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 图片分辨率须小于2000*2000。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片分辨率须小于2000*2000 ，图片 base64 编码后大小不可超过5M。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param RspImgType: 返回图像方式（base64 或 Url ) ，二选一。url有效期为30分钟。
        # @type RspImgType: String
        # @param Scene: 适用场景类型。

        # 取值：GEN/GS。GEN为通用场景模式；GS为绿幕场景模式，针对绿幕场景下的人像分割效果更好。
        # 两种模式选择一种传入，默认为GEN。
        # @type Scene: String

        attr_accessor :Image, :Url, :RspImgType, :Scene

        def initialize(image=nil, url=nil, rspimgtype=nil, scene=nil)
          @Image = image
          @Url = url
          @RspImgType = rspimgtype
          @Scene = scene
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          @RspImgType = params['RspImgType']
          @Scene = params['Scene']
        end
      end

      # SegmentPortraitPic返回参数结构体
      class SegmentPortraitPicResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 处理后的图片 base64 数据，透明背景图。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultImage: String
        # @param ResultMask: 一个通过 base64 编码的文件，解码后文件由 Float 型浮点数组成。这些浮点数代表原图从左上角开始的每一行的每一个像素点，每一个浮点数的值是原图相应像素点位于人体轮廓内的置信度（0-1）转化的灰度值（0-255）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultMask: String
        # @param HasForeground: 图片是否存在前景。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasForeground: Boolean
        # @param ResultImageUrl: 支持将处理过的图片 base64 数据，透明背景图以Url的形式返回值，Url有效期为30分钟。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultImageUrl: String
        # @param ResultMaskUrl: 一个通过 base64 编码的文件，解码后文件由 Float 型浮点数组成。支持以Url形式的返回值；Url有效期为30分钟。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultMaskUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultMask, :HasForeground, :ResultImageUrl, :ResultMaskUrl, :RequestId

        def initialize(resultimage=nil, resultmask=nil, hasforeground=nil, resultimageurl=nil, resultmaskurl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultMask = resultmask
          @HasForeground = hasforeground
          @ResultImageUrl = resultimageurl
          @ResultMaskUrl = resultmaskurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultMask = params['ResultMask']
          @HasForeground = params['HasForeground']
          @ResultImageUrl = params['ResultImageUrl']
          @ResultMaskUrl = params['ResultMaskUrl']
          @RequestId = params['RequestId']
        end
      end

      # 此参数为分割选项，请根据需要选择自己所想从图片中分割的部分。注意所有选项均为非必选，如未选择则值默认为false, 但是必须要保证多于一个选项的描述为true。
      class SegmentationOptions < TencentCloud::Common::AbstractModel
        # @param Background: 分割选项-背景
        # @type Background: Boolean
        # @param Hair: 分割选项-头发
        # @type Hair: Boolean
        # @param LeftEyebrow: 分割选项-左眉
        # @type LeftEyebrow: Boolean
        # @param RightEyebrow: 分割选项-右眉
        # @type RightEyebrow: Boolean
        # @param LeftEye: 分割选项-左眼
        # @type LeftEye: Boolean
        # @param RightEye: 分割选项-右眼
        # @type RightEye: Boolean
        # @param Nose: 分割选项-鼻子
        # @type Nose: Boolean
        # @param UpperLip: 分割选项-上唇
        # @type UpperLip: Boolean
        # @param LowerLip: 分割选项-下唇
        # @type LowerLip: Boolean
        # @param Tooth: 分割选项-牙齿
        # @type Tooth: Boolean
        # @param Mouth: 分割选项-口腔（不包含牙齿）
        # @type Mouth: Boolean
        # @param LeftEar: 分割选项-左耳
        # @type LeftEar: Boolean
        # @param RightEar: 分割选项-右耳
        # @type RightEar: Boolean
        # @param Face: 分割选项-面部(不包含眼、耳、口、鼻等五官及头发。)
        # @type Face: Boolean
        # @param Head: 复合分割选项-头部(包含所有的头部元素，相关装饰除外)
        # @type Head: Boolean
        # @param Body: 分割选项-身体（包含脖子）
        # @type Body: Boolean
        # @param Hat: 分割选项-帽子
        # @type Hat: Boolean
        # @param Headdress: 分割选项-头饰
        # @type Headdress: Boolean
        # @param Earrings: 分割选项-耳环
        # @type Earrings: Boolean
        # @param Necklace: 分割选项-项链
        # @type Necklace: Boolean
        # @param Belongings: 分割选项-随身物品（ 例如伞、包、手机等。 ）
        # @type Belongings: Boolean

        attr_accessor :Background, :Hair, :LeftEyebrow, :RightEyebrow, :LeftEye, :RightEye, :Nose, :UpperLip, :LowerLip, :Tooth, :Mouth, :LeftEar, :RightEar, :Face, :Head, :Body, :Hat, :Headdress, :Earrings, :Necklace, :Belongings

        def initialize(background=nil, hair=nil, lefteyebrow=nil, righteyebrow=nil, lefteye=nil, righteye=nil, nose=nil, upperlip=nil, lowerlip=nil, tooth=nil, mouth=nil, leftear=nil, rightear=nil, face=nil, head=nil, body=nil, hat=nil, headdress=nil, earrings=nil, necklace=nil, belongings=nil)
          @Background = background
          @Hair = hair
          @LeftEyebrow = lefteyebrow
          @RightEyebrow = righteyebrow
          @LeftEye = lefteye
          @RightEye = righteye
          @Nose = nose
          @UpperLip = upperlip
          @LowerLip = lowerlip
          @Tooth = tooth
          @Mouth = mouth
          @LeftEar = leftear
          @RightEar = rightear
          @Face = face
          @Head = head
          @Body = body
          @Hat = hat
          @Headdress = headdress
          @Earrings = earrings
          @Necklace = necklace
          @Belongings = belongings
        end

        def deserialize(params)
          @Background = params['Background']
          @Hair = params['Hair']
          @LeftEyebrow = params['LeftEyebrow']
          @RightEyebrow = params['RightEyebrow']
          @LeftEye = params['LeftEye']
          @RightEye = params['RightEye']
          @Nose = params['Nose']
          @UpperLip = params['UpperLip']
          @LowerLip = params['LowerLip']
          @Tooth = params['Tooth']
          @Mouth = params['Mouth']
          @LeftEar = params['LeftEar']
          @RightEar = params['RightEar']
          @Face = params['Face']
          @Head = params['Head']
          @Body = params['Body']
          @Hat = params['Hat']
          @Headdress = params['Headdress']
          @Earrings = params['Earrings']
          @Necklace = params['Necklace']
          @Belongings = params['Belongings']
        end
      end

      # TerminateSegmentationTask请求参数结构体
      class TerminateSegmentationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 在提交分割任务成功时返回的任务标识ID。
        # @type TaskID: String

        attr_accessor :TaskID

        def initialize(taskid=nil)
          @TaskID = taskid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
        end
      end

      # TerminateSegmentationTask返回参数结构体
      class TerminateSegmentationTaskResponse < TencentCloud::Common::AbstractModel
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

      # 视频基础信息
      class VideoBasicInformation < TencentCloud::Common::AbstractModel
        # @param FrameWidth: 视频宽度
        # @type FrameWidth: Integer
        # @param FrameHeight: 视频高度
        # @type FrameHeight: Integer
        # @param FramesPerSecond: 视频帧速率(FPS)
        # @type FramesPerSecond: Integer
        # @param Duration: 视频时长
        # @type Duration: Float
        # @param TotalFrames: 视频帧数
        # @type TotalFrames: Integer

        attr_accessor :FrameWidth, :FrameHeight, :FramesPerSecond, :Duration, :TotalFrames

        def initialize(framewidth=nil, frameheight=nil, framespersecond=nil, duration=nil, totalframes=nil)
          @FrameWidth = framewidth
          @FrameHeight = frameheight
          @FramesPerSecond = framespersecond
          @Duration = duration
          @TotalFrames = totalframes
        end

        def deserialize(params)
          @FrameWidth = params['FrameWidth']
          @FrameHeight = params['FrameHeight']
          @FramesPerSecond = params['FramesPerSecond']
          @Duration = params['Duration']
          @TotalFrames = params['TotalFrames']
        end
      end

    end
  end
end

