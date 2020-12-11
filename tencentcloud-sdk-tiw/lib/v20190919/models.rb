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
  module Tiw
    module V20190919
      # 混流画布参数
      class Canvas < TencentCloud::Common::AbstractModel
        # @param LayoutParams: 混流画布宽高配置
        # @type LayoutParams: :class:`Tencentcloud::Tiw.v20190919.models.LayoutParams`
        # @param BackgroundColor: 背景颜色，默认为黑色，格式为RGB格式，如红色为"#FF0000"
        # @type BackgroundColor: String

        attr_accessor :LayoutParams, :BackgroundColor
        
        def initialize(layoutparams=nil, backgroundcolor=nil)
          @LayoutParams = layoutparams
          @BackgroundColor = backgroundcolor
        end

        def deserialize(params)
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new.deserialize(params[LayoutParams])
          end
          @BackgroundColor = params['BackgroundColor']
        end
      end

      # 实时录制视频拼接参数
      class Concat < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启拼接功能
        # 在开启了视频拼接功能的情况下，实时录制服务会把同一个用户因为暂停导致的多段视频拼接成一个视频
        # @type Enabled: Boolean
        # @param Image: 视频拼接时使用的垫片图片下载地址，不填默认用全黑的图片进行视频垫片
        # @type Image: String

        attr_accessor :Enabled, :Image
        
        def initialize(enabled=nil, image=nil)
          @Enabled = enabled
          @Image = image
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Image = params['Image']
        end
      end

      # CreateTranscode请求参数结构体
      class CreateTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Url: 需要进行转码文件地址
        # @type Url: String
        # @param IsStaticPPT: 是否为静态PPT，默认为False；
        # 如果IsStaticPPT为False，后缀名为.ppt或.pptx的文档会动态转码成HTML5页面，其他格式的文档会静态转码成图片；如果IsStaticPPT为True，所有格式的文档会静态转码成图片；
        # @type IsStaticPPT: Boolean
        # @param MinResolution: 转码后文档的最小分辨率，不传、传空字符串或分辨率格式错误则使用文档原分辨率

        # 注意分辨率宽高中间为英文字母"xyz"的"x"
        # @type MinResolution: String
        # @param ThumbnailResolution: 动态PPT转码可以为文件生成该分辨率的缩略图，不传、传空字符串或分辨率格式错误则不生成缩略图，分辨率格式同MinResolution

        # 静态转码这个参数不起作用
        # @type ThumbnailResolution: String
        # @param CompressFileType: 转码文件压缩格式，不传、传空字符串或不是指定的格式则不生成压缩文件，目前支持如下压缩格式：

        # zip： 生成`.zip`压缩包
        # tar.gz： 生成`.tar.gz`压缩包
        # @type CompressFileType: String

        attr_accessor :SdkAppId, :Url, :IsStaticPPT, :MinResolution, :ThumbnailResolution, :CompressFileType
        
        def initialize(sdkappid=nil, url=nil, isstaticppt=nil, minresolution=nil, thumbnailresolution=nil, compressfiletype=nil)
          @SdkAppId = sdkappid
          @Url = url
          @IsStaticPPT = isstaticppt
          @MinResolution = minresolution
          @ThumbnailResolution = thumbnailresolution
          @CompressFileType = compressfiletype
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Url = params['Url']
          @IsStaticPPT = params['IsStaticPPT']
          @MinResolution = params['MinResolution']
          @ThumbnailResolution = params['ThumbnailResolution']
          @CompressFileType = params['CompressFileType']
        end
      end

      # CreateTranscode返回参数结构体
      class CreateTranscodeResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 文档转码任务的唯一标识Id，用于查询该任务的进度以及转码结果
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

      # 自定义混流布局参数
      class CustomLayout < TencentCloud::Common::AbstractModel
        # @param Canvas: 混流画布参数
        # @type Canvas: :class:`Tencentcloud::Tiw.v20190919.models.Canvas`
        # @param InputStreamList: 流布局参数，每路流的布局不能超出画布区域
        # @type InputStreamList: Array

        attr_accessor :Canvas, :InputStreamList
        
        def initialize(canvas=nil, inputstreamlist=nil)
          @Canvas = canvas
          @InputStreamList = inputstreamlist
        end

        def deserialize(params)
          unless params['Canvas'].nil?
            @Canvas = Canvas.new.deserialize(params[Canvas])
          end
          @InputStreamList = params['InputStreamList']
        end
      end

      # DescribeOnlineRecordCallback请求参数结构体
      class DescribeOnlineRecordCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的SdkAppId
        # @type SdkAppId: Integer

        attr_accessor :SdkAppId
        
        def initialize(sdkappid=nil)
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeOnlineRecordCallback返回参数结构体
      class DescribeOnlineRecordCallbackResponse < TencentCloud::Common::AbstractModel
        # @param Callback: 实时录制事件回调地址，如果未设置回调地址，该字段为空字符串
        # @type Callback: String
        # @param CallbackKey: 实时录制回调鉴权密钥
        # @type CallbackKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Callback, :CallbackKey, :RequestId
        
        def initialize(callback=nil, callbackkey=nil, requestid=nil)
          @Callback = callback
          @CallbackKey = callbackkey
          @RequestId = requestid
        end

        def deserialize(params)
          @Callback = params['Callback']
          @CallbackKey = params['CallbackKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOnlineRecord请求参数结构体
      class DescribeOnlineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 实时录制任务Id
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId
        
        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeOnlineRecord返回参数结构体
      class DescribeOnlineRecordResponse < TencentCloud::Common::AbstractModel
        # @param FinishReason: 录制结束原因，
        # - AUTO: 房间内长时间没有音视频上行及白板操作导致自动停止录制
        # - USER_CALL: 主动调用了停止录制接口
        # - EXCEPTION: 录制异常结束
        # @type FinishReason: String
        # @param TaskId: 需要查询结果的录制任务Id
        # @type TaskId: String
        # @param Status: 录制任务状态
        # - PREPARED: 表示录制正在准备中（进房/启动录制服务等操作）
        # - RECORDING: 表示录制已开始
        # - PAUSED: 表示录制已暂停
        # - STOPPED: 表示录制已停止，正在处理并上传视频
        # - FINISHED: 表示视频处理并上传完成，成功生成录制结果
        # @type Status: String
        # @param RoomId: 房间号
        # @type RoomId: Integer
        # @param GroupId: 白板的群组 Id
        # @type GroupId: String
        # @param RecordUserId: 录制用户Id
        # @type RecordUserId: String
        # @param RecordStartTime: 实际开始录制时间，Unix 时间戳，单位秒
        # @type RecordStartTime: Integer
        # @param RecordStopTime: 实际停止录制时间，Unix 时间戳，单位秒
        # @type RecordStopTime: Integer
        # @param TotalTime: 回放视频总时长（单位：毫秒）
        # @type TotalTime: Integer
        # @param ExceptionCnt: 录制过程中出现异常的次数
        # @type ExceptionCnt: Integer
        # @param OmittedDurations: 拼接视频中被忽略的时间段，只有开启视频拼接功能的时候，这个参数才是有效的
        # @type OmittedDurations: Array
        # @param VideoInfos: 录制视频列表
        # @type VideoInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FinishReason, :TaskId, :Status, :RoomId, :GroupId, :RecordUserId, :RecordStartTime, :RecordStopTime, :TotalTime, :ExceptionCnt, :OmittedDurations, :VideoInfos, :RequestId
        
        def initialize(finishreason=nil, taskid=nil, status=nil, roomid=nil, groupid=nil, recorduserid=nil, recordstarttime=nil, recordstoptime=nil, totaltime=nil, exceptioncnt=nil, omitteddurations=nil, videoinfos=nil, requestid=nil)
          @FinishReason = finishreason
          @TaskId = taskid
          @Status = status
          @RoomId = roomid
          @GroupId = groupid
          @RecordUserId = recorduserid
          @RecordStartTime = recordstarttime
          @RecordStopTime = recordstoptime
          @TotalTime = totaltime
          @ExceptionCnt = exceptioncnt
          @OmittedDurations = omitteddurations
          @VideoInfos = videoinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          @TaskId = params['TaskId']
          @Status = params['Status']
          @RoomId = params['RoomId']
          @GroupId = params['GroupId']
          @RecordUserId = params['RecordUserId']
          @RecordStartTime = params['RecordStartTime']
          @RecordStopTime = params['RecordStopTime']
          @TotalTime = params['TotalTime']
          @ExceptionCnt = params['ExceptionCnt']
          @OmittedDurations = params['OmittedDurations']
          @VideoInfos = params['VideoInfos']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTranscodeCallback请求参数结构体
      class DescribeTranscodeCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的SdkAppId
        # @type SdkAppId: Integer

        attr_accessor :SdkAppId
        
        def initialize(sdkappid=nil)
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeTranscodeCallback返回参数结构体
      class DescribeTranscodeCallbackResponse < TencentCloud::Common::AbstractModel
        # @param Callback: 文档转码回调地址
        # @type Callback: String
        # @param CallbackKey: 文档转码回调鉴权密钥
        # @type CallbackKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Callback, :CallbackKey, :RequestId
        
        def initialize(callback=nil, callbackkey=nil, requestid=nil)
          @Callback = callback
          @CallbackKey = callbackkey
          @RequestId = requestid
        end

        def deserialize(params)
          @Callback = params['Callback']
          @CallbackKey = params['CallbackKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTranscode请求参数结构体
      class DescribeTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 文档转码任务的唯一标识Id
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId
        
        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeTranscode返回参数结构体
      class DescribeTranscodeResponse < TencentCloud::Common::AbstractModel
        # @param Pages: 文档的总页数
        # @type Pages: Integer
        # @param Progress: 转码的当前进度,取值范围为0~100
        # @type Progress: Integer
        # @param Resolution: 文档的分辨率
        # @type Resolution: String
        # @param ResultUrl: 转码完成后结果的URL
        # 动态转码：PPT转动态H5的链接
        # 静态转码：文档每一页的图片URL前缀，比如，该URL前缀为`http://example.com/g0jb42ps49vtebjshilb/`，那么文档第1页的图片URL为
        # `http://example.com/g0jb42ps49vtebjshilb/1.jpg`，其它页以此类推
        # @type ResultUrl: String
        # @param Status: 任务的当前状态
        # - QUEUED: 正在排队等待转换
        # - PROCESSING: 转换中
        # - FINISHED: 转换完成
        # @type Status: String
        # @param TaskId: 转码任务的唯一标识Id
        # @type TaskId: String
        # @param Title: 文档的文件名
        # @type Title: String
        # @param ThumbnailUrl: 缩略图URL前缀，比如，该URL前缀为`http://example.com/g0jb42ps49vtebjshilb/ `，那么动态PPT第1页的缩略图URL为
        # `http://example.com/g0jb42ps49vtebjshilb/1.jpg`，其它页以此类推

        # 如果发起文档转码请求参数中带了ThumbnailResolution参数，并且转码类型为动态转码，该参数不为空，其余情况该参数为空字符串
        # @type ThumbnailUrl: String
        # @param ThumbnailResolution: 动态转码缩略图生成分辨率
        # @type ThumbnailResolution: String
        # @param CompressFileUrl: 转码压缩文件下载的URL，如果发起文档转码请求参数中`CompressFileType`为空或者不是支持的压缩格式，该参数为空字符串
        # @type CompressFileUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Pages, :Progress, :Resolution, :ResultUrl, :Status, :TaskId, :Title, :ThumbnailUrl, :ThumbnailResolution, :CompressFileUrl, :RequestId
        
        def initialize(pages=nil, progress=nil, resolution=nil, resulturl=nil, status=nil, taskid=nil, title=nil, thumbnailurl=nil, thumbnailresolution=nil, compressfileurl=nil, requestid=nil)
          @Pages = pages
          @Progress = progress
          @Resolution = resolution
          @ResultUrl = resulturl
          @Status = status
          @TaskId = taskid
          @Title = title
          @ThumbnailUrl = thumbnailurl
          @ThumbnailResolution = thumbnailresolution
          @CompressFileUrl = compressfileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Pages = params['Pages']
          @Progress = params['Progress']
          @Resolution = params['Resolution']
          @ResultUrl = params['ResultUrl']
          @Status = params['Status']
          @TaskId = params['TaskId']
          @Title = params['Title']
          @ThumbnailUrl = params['ThumbnailUrl']
          @ThumbnailResolution = params['ThumbnailResolution']
          @CompressFileUrl = params['CompressFileUrl']
          @RequestId = params['RequestId']
        end
      end

      # 自定义混流配置布局参数
      class LayoutParams < TencentCloud::Common::AbstractModel
        # @param Width: 流画面宽，取值范围[2,3000]
        # @type Width: Integer
        # @param Height: 流画面高，取值范围[2,3000]
        # @type Height: Integer
        # @param X: 当前画面左上角顶点相对于Canvas左上角顶点的x轴偏移量，默认为0，取值范围[0,3000]
        # @type X: Integer
        # @param Y: 当前画面左上角顶点相对于Canvas左上角顶点的y轴偏移量，默认为0， 取值范围[0,3000]
        # @type Y: Integer
        # @param ZOrder: 画面z轴位置，默认为0
        # z轴确定了重叠画面的遮盖顺序，z轴值大的画面处于顶层
        # @type ZOrder: Integer

        attr_accessor :Width, :Height, :X, :Y, :ZOrder
        
        def initialize(width=nil, height=nil, x=nil, y=nil, zorder=nil)
          @Width = width
          @Height = height
          @X = x
          @Y = y
          @ZOrder = zorder
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @X = params['X']
          @Y = params['Y']
          @ZOrder = params['ZOrder']
        end
      end

      # 混流配置
      class MixStream < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启混流
        # @type Enabled: Boolean
        # @param DisableAudio: 是否禁用音频混流
        # @type DisableAudio: Boolean
        # @param ModelId: 内置混流布局模板ID, 取值 [1, 2], 区别见内置混流布局模板样式示例说明
        # 在没有填Custom字段时候，ModelId是必填的
        # @type ModelId: Integer
        # @param TeacherId: 老师用户ID
        # 此字段只有在ModelId填了的情况下生效
        # 填写TeacherId的效果是把指定为TeacherId的用户视频流显示在内置模板的第一个小画面中
        # @type TeacherId: String
        # @param Custom: 自定义混流布局参数
        # 当此字段存在时，ModelId 及 TeacherId 字段将被忽略
        # @type Custom: :class:`Tencentcloud::Tiw.v20190919.models.CustomLayout`

        attr_accessor :Enabled, :DisableAudio, :ModelId, :TeacherId, :Custom
        
        def initialize(enabled=nil, disableaudio=nil, modelid=nil, teacherid=nil, custom=nil)
          @Enabled = enabled
          @DisableAudio = disableaudio
          @ModelId = modelid
          @TeacherId = teacherid
          @Custom = custom
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @DisableAudio = params['DisableAudio']
          @ModelId = params['ModelId']
          @TeacherId = params['TeacherId']
          unless params['Custom'].nil?
            @Custom = CustomLayout.new.deserialize(params[Custom])
          end
        end
      end

      # 拼接视频中被忽略的时间段
      class OmittedDuration < TencentCloud::Common::AbstractModel
        # @param VideoTime: 录制暂停时间戳对应的视频播放时间(单位: 毫秒)
        # @type VideoTime: Integer
        # @param PauseTime: 录制暂停时间戳(单位: 毫秒)
        # @type PauseTime: Integer
        # @param ResumeTime: 录制恢复时间戳(单位: 毫秒)
        # @type ResumeTime: Integer

        attr_accessor :VideoTime, :PauseTime, :ResumeTime
        
        def initialize(videotime=nil, pausetime=nil, resumetime=nil)
          @VideoTime = videotime
          @PauseTime = pausetime
          @ResumeTime = resumetime
        end

        def deserialize(params)
          @VideoTime = params['VideoTime']
          @PauseTime = params['PauseTime']
          @ResumeTime = params['ResumeTime']
        end
      end

      # PauseOnlineRecord请求参数结构体
      class PauseOnlineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 实时录制任务 Id
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId
        
        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # PauseOnlineRecord返回参数结构体
      class PauseOnlineRecordResponse < TencentCloud::Common::AbstractModel
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

      # ResumeOnlineRecord请求参数结构体
      class ResumeOnlineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 恢复录制的实时录制任务 Id
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId
        
        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # ResumeOnlineRecord返回参数结构体
      class ResumeOnlineRecordResponse < TencentCloud::Common::AbstractModel
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

      # SetOnlineRecordCallbackKey请求参数结构体
      class SetOnlineRecordCallbackKeyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的SdkAppId
        # @type SdkAppId: Integer
        # @param CallbackKey: 设置实时录制回调鉴权密钥，最长64字符，如果传入空字符串，那么删除现有的鉴权回调密钥。回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
        # @type CallbackKey: String

        attr_accessor :SdkAppId, :CallbackKey
        
        def initialize(sdkappid=nil, callbackkey=nil)
          @SdkAppId = sdkappid
          @CallbackKey = callbackkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CallbackKey = params['CallbackKey']
        end
      end

      # SetOnlineRecordCallbackKey返回参数结构体
      class SetOnlineRecordCallbackKeyResponse < TencentCloud::Common::AbstractModel
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

      # SetOnlineRecordCallback请求参数结构体
      class SetOnlineRecordCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Callback: 实时录制任务结果回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持 http或https协议，即回调地址以http://或https://开头。回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258
        # @type Callback: String

        attr_accessor :SdkAppId, :Callback
        
        def initialize(sdkappid=nil, callback=nil)
          @SdkAppId = sdkappid
          @Callback = callback
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Callback = params['Callback']
        end
      end

      # SetOnlineRecordCallback返回参数结构体
      class SetOnlineRecordCallbackResponse < TencentCloud::Common::AbstractModel
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

      # SetTranscodeCallbackKey请求参数结构体
      class SetTranscodeCallbackKeyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的SdkAppId
        # @type SdkAppId: Integer
        # @param CallbackKey: 设置文档转码回调鉴权密钥，最长64字符，如果传入空字符串，那么删除现有的鉴权回调密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
        # @type CallbackKey: String

        attr_accessor :SdkAppId, :CallbackKey
        
        def initialize(sdkappid=nil, callbackkey=nil)
          @SdkAppId = sdkappid
          @CallbackKey = callbackkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @CallbackKey = params['CallbackKey']
        end
      end

      # SetTranscodeCallbackKey返回参数结构体
      class SetTranscodeCallbackKeyResponse < TencentCloud::Common::AbstractModel
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

      # SetTranscodeCallback请求参数结构体
      class SetTranscodeCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Callback: 文档转码进度回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持http或https协议，即回调地址以http://或https://开头。
        # 回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260
        # @type Callback: String

        attr_accessor :SdkAppId, :Callback
        
        def initialize(sdkappid=nil, callback=nil)
          @SdkAppId = sdkappid
          @Callback = callback
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Callback = params['Callback']
        end
      end

      # SetTranscodeCallback返回参数结构体
      class SetTranscodeCallbackResponse < TencentCloud::Common::AbstractModel
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

      # StartOnlineRecord请求参数结构体
      class StartOnlineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param RoomId: 需要录制的房间号，取值范围: (1, 4294967295)
        # @type RoomId: Integer
        # @param RecordUserId: 用于实时录制服务进房的用户ID，格式为`tic_record_user_${RoomId}_${Random}`，其中 `${RoomId} `与录制房间号对应，`${Random}`为一个随机字符串。
        # 该ID必须是一个单独的未在SDK中使用的ID，实时录制服务使用这个用户ID进入房间进行音视频与白板录制，若该ID和SDK中使用的ID重复，会导致SDK和录制服务互踢，影响正常录制。
        # @type RecordUserId: String
        # @param RecordUserSig: 与RecordUserId对应的签名
        # @type RecordUserSig: String
        # @param GroupId: 白板的 IM 群组 Id，默认同房间号
        # @type GroupId: String
        # @param Concat: 实时录制视频拼接参数
        # @type Concat: :class:`Tencentcloud::Tiw.v20190919.models.Concat`
        # @param Whiteboard: 实时录制白板参数，例如白板宽高等
        # @type Whiteboard: :class:`Tencentcloud::Tiw.v20190919.models.Whiteboard`
        # @param MixStream: 实时录制混流参数
        # 特别说明：
        # 1. 混流功能需要根据额外开通， 请联系腾讯云互动白板客服人员
        # 2. 使用混流功能，必须提供 Extras 参数，且 Extras 参数中必须包含 "MIX_STREAM"
        # @type MixStream: :class:`Tencentcloud::Tiw.v20190919.models.MixStream`
        # @param Extras: 使用到的高级功能列表
        # 可以选值列表：
        # MIX_STREAM - 混流功能
        # @type Extras: Array
        # @param AudioFileNeeded: 是否需要在结果回调中返回各路流的纯音频录制文件，文件格式为mp3
        # @type AudioFileNeeded: Boolean

        attr_accessor :SdkAppId, :RoomId, :RecordUserId, :RecordUserSig, :GroupId, :Concat, :Whiteboard, :MixStream, :Extras, :AudioFileNeeded
        
        def initialize(sdkappid=nil, roomid=nil, recorduserid=nil, recordusersig=nil, groupid=nil, concat=nil, whiteboard=nil, mixstream=nil, extras=nil, audiofileneeded=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @RecordUserId = recorduserid
          @RecordUserSig = recordusersig
          @GroupId = groupid
          @Concat = concat
          @Whiteboard = whiteboard
          @MixStream = mixstream
          @Extras = extras
          @AudioFileNeeded = audiofileneeded
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @RecordUserId = params['RecordUserId']
          @RecordUserSig = params['RecordUserSig']
          @GroupId = params['GroupId']
          unless params['Concat'].nil?
            @Concat = Concat.new.deserialize(params[Concat])
          end
          unless params['Whiteboard'].nil?
            @Whiteboard = Whiteboard.new.deserialize(params[Whiteboard])
          end
          unless params['MixStream'].nil?
            @MixStream = MixStream.new.deserialize(params[MixStream])
          end
          @Extras = params['Extras']
          @AudioFileNeeded = params['AudioFileNeeded']
        end
      end

      # StartOnlineRecord返回参数结构体
      class StartOnlineRecordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 实时录制的任务Id
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

      # StopOnlineRecord请求参数结构体
      class StopOnlineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 需要停止录制的任务 Id
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId
        
        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # StopOnlineRecord返回参数结构体
      class StopOnlineRecordResponse < TencentCloud::Common::AbstractModel
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

      # 流布局参数
      class StreamLayout < TencentCloud::Common::AbstractModel
        # @param LayoutParams: 流布局配置参数
        # @type LayoutParams: :class:`Tencentcloud::Tiw.v20190919.models.LayoutParams`
        # @param InputStreamId: 视频流ID
        # 流ID的取值含义如下：
        # 1. tic_record_user - 表示当前画面用于显示白板视频流
        # 2. tic_substream - 表示当前画面用于显示辅路视频流
        # 3. 特定用户ID - 表示当前画面用于显示指定用户的视频流
        # 4. 不填 - 表示当前画面用于备选，当有新的视频流加入时，会从这些备选的空位中选择一个没有被占用的位置来显示新的视频流画面
        # @type InputStreamId: String
        # @param BackgroundColor: 背景颜色，默认为黑色，格式为RGB格式，如红色为"#FF0000"
        # @type BackgroundColor: String

        attr_accessor :LayoutParams, :InputStreamId, :BackgroundColor
        
        def initialize(layoutparams=nil, inputstreamid=nil, backgroundcolor=nil)
          @LayoutParams = layoutparams
          @InputStreamId = inputstreamid
          @BackgroundColor = backgroundcolor
        end

        def deserialize(params)
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new.deserialize(params[LayoutParams])
          end
          @InputStreamId = params['InputStreamId']
          @BackgroundColor = params['BackgroundColor']
        end
      end

      # 视频信息
      class VideoInfo < TencentCloud::Common::AbstractModel
        # @param VideoPlayTime: 视频开始播放的时间（单位：毫秒）
        # @type VideoPlayTime: Integer
        # @param VideoSize: 视频大小（字节）
        # @type VideoSize: Integer
        # @param VideoFormat: 视频格式
        # @type VideoFormat: String
        # @param VideoDuration: 视频播放时长（单位：毫秒）
        # @type VideoDuration: Integer
        # @param VideoUrl: 视频文件URL
        # @type VideoUrl: String
        # @param VideoId: 视频文件Id
        # @type VideoId: String
        # @param VideoType: 视频流类型
        # - 0：摄像头视频
        # - 1：屏幕分享视频
        # - 2：白板视频
        # - 3：混流视频
        # - 4：纯音频（mp3)
        # @type VideoType: Integer
        # @param UserId: 摄像头/屏幕分享视频所属用户的 Id（白板视频为空、混流视频tic_mixstream_房间号_混流布局类型、辅路视频tic_substream_用户Id）
        # @type UserId: String

        attr_accessor :VideoPlayTime, :VideoSize, :VideoFormat, :VideoDuration, :VideoUrl, :VideoId, :VideoType, :UserId
        
        def initialize(videoplaytime=nil, videosize=nil, videoformat=nil, videoduration=nil, videourl=nil, videoid=nil, videotype=nil, userid=nil)
          @VideoPlayTime = videoplaytime
          @VideoSize = videosize
          @VideoFormat = videoformat
          @VideoDuration = videoduration
          @VideoUrl = videourl
          @VideoId = videoid
          @VideoType = videotype
          @UserId = userid
        end

        def deserialize(params)
          @VideoPlayTime = params['VideoPlayTime']
          @VideoSize = params['VideoSize']
          @VideoFormat = params['VideoFormat']
          @VideoDuration = params['VideoDuration']
          @VideoUrl = params['VideoUrl']
          @VideoId = params['VideoId']
          @VideoType = params['VideoType']
          @UserId = params['UserId']
        end
      end

      # 实时录制白板参数，例如白板宽高等
      class Whiteboard < TencentCloud::Common::AbstractModel
        # @param Width: 实时录制结果里白板视频宽，默认为1280
        # @type Width: Integer
        # @param Height: 实时录制结果里白板视频高，默认为960
        # @type Height: Integer
        # @param InitParam: 白板初始化参数，透传到白板 SDK
        # @type InitParam: String

        attr_accessor :Width, :Height, :InitParam
        
        def initialize(width=nil, height=nil, initparam=nil)
          @Width = width
          @Height = height
          @InitParam = initparam
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @InitParam = params['InitParam']
        end
      end

    end
  end
end

