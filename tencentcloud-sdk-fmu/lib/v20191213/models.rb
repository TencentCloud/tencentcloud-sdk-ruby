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
  module Fmu
    module V20191213
      # BeautifyPic请求参数结构体
      class BeautifyPicRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param Whitening: 美白程度，取值范围[0,100]。0不美白，100代表最高程度。默认值30。
        # @type Whitening: Integer
        # @param Smoothing: 磨皮程度，取值范围[0,100]。0不磨皮，100代表最高程度。默认值10。
        # @type Smoothing: Integer
        # @param FaceLifting: 瘦脸程度，取值范围[0,100]。0不瘦脸，100代表最高程度。默认值70。
        # @type FaceLifting: Integer
        # @param EyeEnlarging: 大眼程度，取值范围[0,100]。0不大眼，100代表最高程度。默认值70。
        # @type EyeEnlarging: Integer
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        # @type RspImgType: String

        attr_accessor :Image, :Url, :Whitening, :Smoothing, :FaceLifting, :EyeEnlarging, :RspImgType

        def initialize(image=nil, url=nil, whitening=nil, smoothing=nil, facelifting=nil, eyeenlarging=nil, rspimgtype=nil)
          @Image = image
          @Url = url
          @Whitening = whitening
          @Smoothing = smoothing
          @FaceLifting = facelifting
          @EyeEnlarging = eyeenlarging
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          @Whitening = params['Whitening']
          @Smoothing = params['Smoothing']
          @FaceLifting = params['FaceLifting']
          @EyeEnlarging = params['EyeEnlarging']
          @RspImgType = params['RspImgType']
        end
      end

      # BeautifyPic返回参数结构体
      class BeautifyPicResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultImage: String
        # @param ResultUrl: RspImgType 为 url 时，返回处理后的图片 url 数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultUrl, :RequestId

        def initialize(resultimage=nil, resulturl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

      # 视频美颜返回结果
      class BeautifyVideoOutput < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 视频美颜输出的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoUrl: String
        # @param VideoMD5: 视频美颜输出的视频MD5，用于校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoMD5: String
        # @param CoverImage: 美颜输出的视频封面图base64字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverImage: String
        # @param Width: 视频宽度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 视频高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Fps: 每秒传输帧数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fps: Float
        # @param DurationInSec: 视频播放时长，单位为秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DurationInSec: Float

        attr_accessor :VideoUrl, :VideoMD5, :CoverImage, :Width, :Height, :Fps, :DurationInSec

        def initialize(videourl=nil, videomd5=nil, coverimage=nil, width=nil, height=nil, fps=nil, durationinsec=nil)
          @VideoUrl = videourl
          @VideoMD5 = videomd5
          @CoverImage = coverimage
          @Width = width
          @Height = height
          @Fps = fps
          @DurationInSec = durationinsec
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @VideoMD5 = params['VideoMD5']
          @CoverImage = params['CoverImage']
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @DurationInSec = params['DurationInSec']
        end
      end

      # BeautifyVideo请求参数结构体
      class BeautifyVideoRequest < TencentCloud::Common::AbstractModel
        # @param Url: 视频url地址
        # @type Url: String
        # @param BeautyParam: 美颜参数 - 美白、平滑、大眼和瘦脸。参数值范围[0, 100]。参数值为0，则不做美颜。参数默认值为0。目前默认取数组第一个元素是对所有人脸美颜。
        # @type BeautyParam: Array
        # @param OutputVideoType: 目前只支持mp4
        # @type OutputVideoType: String

        attr_accessor :Url, :BeautyParam, :OutputVideoType

        def initialize(url=nil, beautyparam=nil, outputvideotype=nil)
          @Url = url
          @BeautyParam = beautyparam
          @OutputVideoType = outputvideotype
        end

        def deserialize(params)
          @Url = params['Url']
          unless params['BeautyParam'].nil?
            @BeautyParam = []
            params['BeautyParam'].each do |i|
              beautyparam_tmp = BeautyParam.new
              beautyparam_tmp.deserialize(i)
              @BeautyParam << beautyparam_tmp
            end
          end
          @OutputVideoType = params['OutputVideoType']
        end
      end

      # BeautifyVideo返回参数结构体
      class BeautifyVideoResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频美颜任务的Job id
        # @type JobId: String
        # @param EstimatedProcessTime: 预估处理时间，粒度为秒
        # @type EstimatedProcessTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :EstimatedProcessTime, :RequestId

        def initialize(jobid=nil, estimatedprocesstime=nil, requestid=nil)
          @JobId = jobid
          @EstimatedProcessTime = estimatedprocesstime
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @EstimatedProcessTime = params['EstimatedProcessTime']
          @RequestId = params['RequestId']
        end
      end

      # 全局美颜参数，针对所有人脸做美颜。参数全部为0，则为不做美颜
      class BeautyParam < TencentCloud::Common::AbstractModel
        # @param WhitenLevel: 美白程度，取值范围[0,100]。0不美白，100代表最高程度。默认值30。
        # @type WhitenLevel: Integer
        # @param SmoothingLevel: 磨皮程度，取值范围[0,100]。0不磨皮，100代表最高程度。默认值30。
        # @type SmoothingLevel: Integer
        # @param EyeEnlargeLevel: 大眼程度，取值范围[0,100]。0不大眼，100代表最高程度。默认值70。
        # @type EyeEnlargeLevel: Integer
        # @param FaceShrinkLevel: 瘦脸程度，取值范围[0,100]。0不瘦脸，100代表最高程度。默认值70。
        # @type FaceShrinkLevel: Integer

        attr_accessor :WhitenLevel, :SmoothingLevel, :EyeEnlargeLevel, :FaceShrinkLevel

        def initialize(whitenlevel=nil, smoothinglevel=nil, eyeenlargelevel=nil, faceshrinklevel=nil)
          @WhitenLevel = whitenlevel
          @SmoothingLevel = smoothinglevel
          @EyeEnlargeLevel = eyeenlargelevel
          @FaceShrinkLevel = faceshrinklevel
        end

        def deserialize(params)
          @WhitenLevel = params['WhitenLevel']
          @SmoothingLevel = params['SmoothingLevel']
          @EyeEnlargeLevel = params['EyeEnlargeLevel']
          @FaceShrinkLevel = params['FaceShrinkLevel']
        end
      end

      # CancelBeautifyVideoJob请求参数结构体
      class CancelBeautifyVideoJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 美颜视频的Job id
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # CancelBeautifyVideoJob返回参数结构体
      class CancelBeautifyVideoJobResponse < TencentCloud::Common::AbstractModel
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

      # CreateModel请求参数结构体
      class CreateModelRequest < TencentCloud::Common::AbstractModel
        # @param LUTFile: 图片base64数据，用于试唇色，要求必须是LUT 格式的cube文件转换成512*512的PNG图片。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。了解 [cube文件转png图片小工具](http://yyb.gtimg.com/aiplat/static/qcloud-cube-to-png.html)。
        # @type LUTFile: String
        # @param Description: 文件描述信息，可用于备注。
        # @type Description: String

        attr_accessor :LUTFile, :Description

        def initialize(lutfile=nil, description=nil)
          @LUTFile = lutfile
          @Description = description
        end

        def deserialize(params)
          @LUTFile = params['LUTFile']
          @Description = params['Description']
        end
      end

      # CreateModel返回参数结构体
      class CreateModelResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 唇色素材ID。
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteModel请求参数结构体
      class DeleteModelRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 素材ID。
        # @type ModelId: String

        attr_accessor :ModelId

        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # DeleteModel返回参数结构体
      class DeleteModelResponse < TencentCloud::Common::AbstractModel
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

      # 人脸框信息
      class FaceRect < TencentCloud::Common::AbstractModel
        # @param X: 人脸框左上角横坐标。
        # @type X: Integer
        # @param Y: 人脸框左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人脸框宽度。
        # @type Width: Integer
        # @param Height: 人脸框高度。
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

      # GetModelList请求参数结构体
      class GetModelListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始序号，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为100。
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

      # GetModelList返回参数结构体
      class GetModelListResponse < TencentCloud::Common::AbstractModel
        # @param ModelIdNum: 唇色素材总数量。
        # @type ModelIdNum: Integer
        # @param ModelInfos: 素材数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelIdNum, :ModelInfos, :RequestId

        def initialize(modelidnum=nil, modelinfos=nil, requestid=nil)
          @ModelIdNum = modelidnum
          @ModelInfos = modelinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelIdNum = params['ModelIdNum']
          unless params['ModelInfos'].nil?
            @ModelInfos = []
            params['ModelInfos'].each do |i|
              modelinfo_tmp = ModelInfo.new
              modelinfo_tmp.deserialize(i)
              @ModelInfos << modelinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 唇色信息
      class LipColorInfo < TencentCloud::Common::AbstractModel
        # @param RGBA: 使用RGBA模型试唇色。
        # @type RGBA: :class:`Tencentcloud::Fmu.v20191213.models.RGBAInfo`
        # @param ModelId: 使用已注册的 LUT 文件试唇色。
        # ModelId 和 RGBA 两个参数只需提供一个，若都提供只使用 ModelId。
        # @type ModelId: String
        # @param FaceRect: 人脸框位置。若不输入则选择 Image 或 Url 中面积最大的人脸。
        # 您可以通过 [人脸检测与分析](https://cloud.tencent.com/document/api/867/32800)  接口获取人脸框位置信息。
        # @type FaceRect: :class:`Tencentcloud::Fmu.v20191213.models.FaceRect`
        # @param ModelAlpha: 涂妆浓淡[0,100]。建议取值50。本参数仅控制ModelId对应的涂妆浓淡。
        # @type ModelAlpha: Integer

        attr_accessor :RGBA, :ModelId, :FaceRect, :ModelAlpha

        def initialize(rgba=nil, modelid=nil, facerect=nil, modelalpha=nil)
          @RGBA = rgba
          @ModelId = modelid
          @FaceRect = facerect
          @ModelAlpha = modelalpha
        end

        def deserialize(params)
          unless params['RGBA'].nil?
            @RGBA = RGBAInfo.new
            @RGBA.deserialize(params['RGBA'])
          end
          @ModelId = params['ModelId']
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new
            @FaceRect.deserialize(params['FaceRect'])
          end
          @ModelAlpha = params['ModelAlpha']
        end
      end

      # LUT素材信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param ModelId: 唇色素材ID
        # @type ModelId: String
        # @param LUTFileUrl: 唇色素材 url 。 LUT 文件 url 5分钟有效。
        # @type LUTFileUrl: String
        # @param Description: 文件描述信息。
        # @type Description: String

        attr_accessor :ModelId, :LUTFileUrl, :Description

        def initialize(modelid=nil, lutfileurl=nil, description=nil)
          @ModelId = modelid
          @LUTFileUrl = lutfileurl
          @Description = description
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @LUTFileUrl = params['LUTFileUrl']
          @Description = params['Description']
        end
      end

      # QueryBeautifyVideoJob请求参数结构体
      class QueryBeautifyVideoJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 视频美颜Job id
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryBeautifyVideoJob返回参数结构体
      class QueryBeautifyVideoJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatus: 当前任务状态：排队中、处理中、处理失败或者处理完成
        # @type JobStatus: String
        # @param BeautifyVideoOutput: 视频美颜输出的结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeautifyVideoOutput: :class:`Tencentcloud::Fmu.v20191213.models.BeautifyVideoOutput`
        # @param JobStatusCode: 当前任务状态码：1：排队中、3: 处理中、5: 处理失败、7:处理完成
        # @type JobStatusCode: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatus, :BeautifyVideoOutput, :JobStatusCode, :RequestId

        def initialize(jobstatus=nil, beautifyvideooutput=nil, jobstatuscode=nil, requestid=nil)
          @JobStatus = jobstatus
          @BeautifyVideoOutput = beautifyvideooutput
          @JobStatusCode = jobstatuscode
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatus = params['JobStatus']
          unless params['BeautifyVideoOutput'].nil?
            @BeautifyVideoOutput = BeautifyVideoOutput.new
            @BeautifyVideoOutput.deserialize(params['BeautifyVideoOutput'])
          end
          @JobStatusCode = params['JobStatusCode']
          @RequestId = params['RequestId']
        end
      end

      # RGBA通道信息
      class RGBAInfo < TencentCloud::Common::AbstractModel
        # @param R: R通道数值。[0,255]。
        # @type R: Integer
        # @param G: G通道数值。[0,255]。
        # @type G: Integer
        # @param B: B通道数值。[0,255]。
        # @type B: Integer
        # @param A: A通道数值。[0,100]。建议取值50。
        # @type A: Integer

        attr_accessor :R, :G, :B, :A

        def initialize(r=nil, g=nil, b=nil, a=nil)
          @R = r
          @G = g
          @B = b
          @A = a
        end

        def deserialize(params)
          @R = params['R']
          @G = params['G']
          @B = params['B']
          @A = params['A']
        end
      end

      # StyleImagePro请求参数结构体
      class StyleImageProRequest < TencentCloud::Common::AbstractModel
        # @param FilterType: 滤镜类型，取值如下：
        # 1.白茶；2 白皙；3.初夏；4.东京；5.告白；6.暖阳；7.蔷薇；8.清澄；9.清透；10.甜薄荷；11.默认；12.心动；13.哑灰；14.樱桃布丁；15.自然；16.清逸；17.黑白；18.水果；19.爱情；20.冬日；21.相片；22.夏日；23.香氛；24.魅惑；25.悸动；26.沙滩；27.街拍；28.甜美；29.初吻；30.午后；31.活力；32.朦胧；33.悦动；34.时尚；35.气泡；36.柠檬；37.棉花糖；38.小溪；39.丽人；40.咖啡；41.嫩芽；42.热情；43.渐暖；44.早餐；45.白茶；46.白嫩；47.圣代；48.森林；49.冲浪；50.奶咖；51.清澈；52.微风；53.日落；54.水光；55.日系；56.星光；57.阳光；58.落叶；59.生机；60.甜心；61.清逸；62.春意；63.罗马；64.青涩；65.清风；66.暖心；67.海水；68.神秘；69.旧调1；70.旧调2；71.雪顶；72.日光；73.浮云；74.流彩；75.胶片；76.回味；77.奶酪；78.蝴蝶。
        # @type FilterType: Integer
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        # 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP 等图片格式，不支持 GIF 图片。
        # @type Url: String
        # @param FilterDegree: 滤镜效果，取值[0,100]，0表示无效果，100表示满滤镜效果。默认值为80。
        # @type FilterDegree: Integer
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。默认为base64。
        # @type RspImgType: String

        attr_accessor :FilterType, :Image, :Url, :FilterDegree, :RspImgType

        def initialize(filtertype=nil, image=nil, url=nil, filterdegree=nil, rspimgtype=nil)
          @FilterType = filtertype
          @Image = image
          @Url = url
          @FilterDegree = filterdegree
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @FilterType = params['FilterType']
          @Image = params['Image']
          @Url = params['Url']
          @FilterDegree = params['FilterDegree']
          @RspImgType = params['RspImgType']
        end
      end

      # StyleImagePro返回参数结构体
      class StyleImageProResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultImage: String
        # @param ResultUrl: RspImgType 为 url 时，返回处理后的图片 url 数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultUrl, :RequestId

        def initialize(resultimage=nil, resulturl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

      # StyleImage请求参数结构体
      class StyleImageRequest < TencentCloud::Common::AbstractModel
        # @param FilterType: 滤镜类型，取值如下：
        # 1.白茶；2 白皙；3.初夏；4.东京；5.告白；6.暖阳；7.蔷薇；8.清澄；9.清透；10.甜薄荷；11.默认；12.心动；13.哑灰；14.樱桃布丁；15.自然；16.清逸；17.黑白；18.水果；19.爱情；20.冬日；21.相片；22.夏日；23.香氛；24.魅惑；25.悸动；26.沙滩；27.街拍；28.甜美；29.初吻；30.午后。
        # @type FilterType: Integer
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        # 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP 等图片格式，不支持 GIF 图片。
        # @type Url: String
        # @param FilterDegree: 滤镜效果，取值[0,100]，0表示无效果，100表示满滤镜效果。默认值为80。
        # @type FilterDegree: Integer
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。默认值为base64。
        # @type RspImgType: String

        attr_accessor :FilterType, :Image, :Url, :FilterDegree, :RspImgType

        def initialize(filtertype=nil, image=nil, url=nil, filterdegree=nil, rspimgtype=nil)
          @FilterType = filtertype
          @Image = image
          @Url = url
          @FilterDegree = filterdegree
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @FilterType = params['FilterType']
          @Image = params['Image']
          @Url = params['Url']
          @FilterDegree = params['FilterDegree']
          @RspImgType = params['RspImgType']
        end
      end

      # StyleImage返回参数结构体
      class StyleImageResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultImage: String
        # @param ResultUrl: RspImgType 为 url 时，返回处理后的图片 url 数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultUrl, :RequestId

        def initialize(resultimage=nil, resulturl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

      # TryLipstickPic请求参数结构体
      class TryLipstickPicRequest < TencentCloud::Common::AbstractModel
        # @param LipColorInfos: 唇色信息。
        # 您可以输入最多3个 LipColorInfo 来实现给一张图中的最多3张人脸试唇色。
        # @type LipColorInfos: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过6M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url ，对应图片 base64 编码后大小不可超过6M。
        # 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        # @type RspImgType: String

        attr_accessor :LipColorInfos, :Image, :Url, :RspImgType

        def initialize(lipcolorinfos=nil, image=nil, url=nil, rspimgtype=nil)
          @LipColorInfos = lipcolorinfos
          @Image = image
          @Url = url
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          unless params['LipColorInfos'].nil?
            @LipColorInfos = []
            params['LipColorInfos'].each do |i|
              lipcolorinfo_tmp = LipColorInfo.new
              lipcolorinfo_tmp.deserialize(i)
              @LipColorInfos << lipcolorinfo_tmp
            end
          end
          @Image = params['Image']
          @Url = params['Url']
          @RspImgType = params['RspImgType']
        end
      end

      # TryLipstickPic返回参数结构体
      class TryLipstickPicResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        # @type ResultImage: String
        # @param ResultUrl: RspImgType 为 url 时，返回处理后的图片 url 数据。
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultUrl, :RequestId

        def initialize(resultimage=nil, resulturl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

