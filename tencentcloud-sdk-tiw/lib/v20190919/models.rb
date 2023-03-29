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
      # 白板应用
      class ApplicationItem < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用SdkAppId
        # @type SdkAppId: Integer
        # @param AppName: 应用名
        # @type AppName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param TagList: 标签列表
        # @type TagList: Array

        attr_accessor :SdkAppId, :AppName, :CreateTime, :TagList
        
        def initialize(sdkappid=nil, appname=nil, createtime=nil, taglist=nil)
          @SdkAppId = sdkappid
          @AppName = appname
          @CreateTime = createtime
          @TagList = taglist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @AppName = params['AppName']
          @CreateTime = params['CreateTime']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
        end
      end

      # ApplyTiwTrial请求参数结构体
      class ApplyTiwTrialRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ApplyTiwTrial返回参数结构体
      class ApplyTiwTrialResponse < TencentCloud::Common::AbstractModel
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

      # 鉴权参数
      class AuthParam < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用SdkAppId
        # @type SdkAppId: Integer
        # @param UserId: 用户ID
        # @type UserId: String
        # @param UserSig: 用户ID对应的签名
        # @type UserSig: String

        attr_accessor :SdkAppId, :UserId, :UserSig
        
        def initialize(sdkappid=nil, userid=nil, usersig=nil)
          @SdkAppId = sdkappid
          @UserId = userid
          @UserSig = usersig
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
        end
      end

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
            @LayoutParams = LayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
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

      # CreateApplication请求参数结构体
      class CreateApplicationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用SdkAppId
        # @type SdkAppId: Integer
        # @param AppName: App名字
        # @type AppName: String
        # @param SKey: 创建IM应用需要的SKey
        # @type SKey: String
        # @param TinyId: 创建IM应用需要的TinyId
        # @type TinyId: String
        # @param TagList: 需要绑定的标签列表
        # @type TagList: Array

        attr_accessor :SdkAppId, :AppName, :SKey, :TinyId, :TagList
        
        def initialize(sdkappid=nil, appname=nil, skey=nil, tinyid=nil, taglist=nil)
          @SdkAppId = sdkappid
          @AppName = appname
          @SKey = skey
          @TinyId = tinyid
          @TagList = taglist
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @AppName = params['AppName']
          @SKey = params['SKey']
          @TinyId = params['TinyId']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagList << tag_tmp
            end
          end
        end
      end

      # CreateApplication返回参数结构体
      class CreateApplicationResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 客户的AppId
        # @type AppId: Integer
        # @param AppName: App名字
        # @type AppName: String
        # @param SdkAppId: 应用SdkAppId
        # @type SdkAppId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :AppName, :SdkAppId, :RequestId
        
        def initialize(appid=nil, appname=nil, sdkappid=nil, requestid=nil)
          @AppId = appid
          @AppName = appname
          @SdkAppId = sdkappid
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @AppName = params['AppName']
          @SdkAppId = params['SdkAppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateOfflineRecord请求参数结构体
      class CreateOfflineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param RoomId: 录制任务对应的房间号
        # @type RoomId: Integer
        # @param GroupId: 录制任务对应的群组Id
        # @type GroupId: String
        # @param MixStream: 混流参数配置
        # 目前课后录制暂未支持自定义混流布局Custom参数
        # @type MixStream: :class:`Tencentcloud::Tiw.v20190919.models.MixStream`
        # @param Whiteboard: 白板参数配置
        # @type Whiteboard: :class:`Tencentcloud::Tiw.v20190919.models.Whiteboard`

        attr_accessor :SdkAppId, :RoomId, :GroupId, :MixStream, :Whiteboard
        
        def initialize(sdkappid=nil, roomid=nil, groupid=nil, mixstream=nil, whiteboard=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @GroupId = groupid
          @MixStream = mixstream
          @Whiteboard = whiteboard
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @GroupId = params['GroupId']
          unless params['MixStream'].nil?
            @MixStream = MixStream.new
            @MixStream.deserialize(params['MixStream'])
          end
          unless params['Whiteboard'].nil?
            @Whiteboard = Whiteboard.new
            @Whiteboard.deserialize(params['Whiteboard'])
          end
        end
      end

      # CreateOfflineRecord返回参数结构体
      class CreateOfflineRecordResponse < TencentCloud::Common::AbstractModel
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

      # CreateSnapshotTask请求参数结构体
      class CreateSnapshotTaskRequest < TencentCloud::Common::AbstractModel
        # @param Whiteboard: 白板相关参数
        # @type Whiteboard: :class:`Tencentcloud::Tiw.v20190919.models.SnapshotWhiteboard`
        # @param SdkAppId: 白板房间 `SdkAppId`
        # @type SdkAppId: Integer
        # @param RoomId: 白板房间号
        # @type RoomId: Integer
        # @param CallbackURL: 白板板书生成结果通知回调地址
        # @type CallbackURL: String
        # @param COS: 白板板书文件 `COS` 存储参数， 不填默认存储在公共存储桶，公共存储桶的数据仅保存3天
        # @type COS: :class:`Tencentcloud::Tiw.v20190919.models.SnapshotCOS`
        # @param SnapshotMode: 白板板书生成模式，默认为 `AllMarks`。取值说明如下：

        # `AllMarks` - 全量模式，即对于客户端每一次调用 `addSnapshotMark` 接口打上的白板板书生成标志全部都会生成对应的白板板书图片。

        # `LatestMarksOnly` - 单页去重模式，即对于客户端在同一页白板上多次调用 `addSnapshotMark` 打上的白板板书生成标志仅保留最新一次标志来生成对应白板页的白板板书图片。

        # （**注意：`LatestMarksOnly` 模式只有客户端使用v2.6.8及以上版本的白板SDK调用 `addSnapshotMark` 时才生效，否则即使在调用本API是指定了 `LatestMarksOnly` 模式，服务后台会使用默认的 `AllMarks` 模式生成白板板书**）
        # @type SnapshotMode: String

        attr_accessor :Whiteboard, :SdkAppId, :RoomId, :CallbackURL, :COS, :SnapshotMode
        
        def initialize(whiteboard=nil, sdkappid=nil, roomid=nil, callbackurl=nil, cos=nil, snapshotmode=nil)
          @Whiteboard = whiteboard
          @SdkAppId = sdkappid
          @RoomId = roomid
          @CallbackURL = callbackurl
          @COS = cos
          @SnapshotMode = snapshotmode
        end

        def deserialize(params)
          unless params['Whiteboard'].nil?
            @Whiteboard = SnapshotWhiteboard.new
            @Whiteboard.deserialize(params['Whiteboard'])
          end
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @CallbackURL = params['CallbackURL']
          unless params['COS'].nil?
            @COS = SnapshotCOS.new
            @COS.deserialize(params['COS'])
          end
          @SnapshotMode = params['SnapshotMode']
        end
      end

      # CreateSnapshotTask返回参数结构体
      class CreateSnapshotTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 白板板书生成任务ID，只有任务创建成功的时候才会返回此字段
        # @type TaskID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskID = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @RequestId = params['RequestId']
        end
      end

      # CreateTranscode请求参数结构体
      class CreateTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Url: 经过URL编码后的转码文件地址。URL 编码会将字符转换为可通过因特网传输的格式，比如文档地址为http://example.com/测试.pdf，经过URL编码之后为http://example.com/%E6%B5%8B%E8%AF%95.pdf。为了提高URL解析的成功率，请对URL进行编码。
        # @type Url: String
        # @param IsStaticPPT: 是否为静态PPT，默认为False；
        # 如果IsStaticPPT为False，后缀名为.ppt或.pptx的文档会动态转码成HTML5页面，其他格式的文档会静态转码成图片；如果IsStaticPPT为True，所有格式的文档会静态转码成图片；
        # @type IsStaticPPT: Boolean
        # @param MinResolution: 注意: 该参数已废弃, 请使用最新的 [云API SDK](https://cloud.tencent.com/document/api/1137/40060#SDK) ，使用 MinScaleResolution字段传递分辨率

        # 转码后文档的最小分辨率，不传、传空字符串或分辨率格式错误则使用文档原分辨率

        # 示例：1280x720，注意分辨率宽高中间为英文字母"xyz"的"x"
        # @type MinResolution: String
        # @param ThumbnailResolution: 动态PPT转码可以为文件生成该分辨率的缩略图，不传、传空字符串或分辨率格式错误则不生成缩略图，分辨率格式同MinResolution
        # @type ThumbnailResolution: String
        # @param CompressFileType: 转码文件压缩格式，不传、传空字符串或不是指定的格式则不生成压缩文件，目前支持如下压缩格式：

        # zip： 生成`.zip`压缩包
        # tar.gz： 生成`.tar.gz`压缩包
        # @type CompressFileType: String
        # @param ExtraData: 内部参数
        # @type ExtraData: String
        # @param Priority: 文档转码优先级， 只有对于PPT动态转码生效，支持填入以下值：<br/>
        # - low: 低优先级转码，对于动态转码，能支持500MB（下载超时时间10分钟）以及2000页文档，但资源有限可能会有比较长时间的排队，请酌情使用该功能。<br/>
        # - 不填表示正常优先级转码，支持200MB文件（下载超时时间2分钟），500页以内的文档进行转码
        # <br/>
        # 注意：对于PDF等静态文件转码，无论是正常优先级或者低优先级，最大只能支持200MB
        # @type Priority: String
        # @param MinScaleResolution: 转码后文档的最小分辨率，不传、传空字符串或分辨率格式错误则使用文档原分辨率。
        # 分辨率越高，效果越清晰，转出来的图片资源体积会越大，课件加载耗时会变长，请根据实际使用场景配置此参数。

        # 示例：1280x720，注意分辨率宽高中间为英文字母"xyz"的"x"
        # @type MinScaleResolution: String
        # @param AutoHandleUnsupportedElement: 是否对不支持元素开启自动处理的功能。默认不开启。

        # 在开启自动处理的情况下，会自动进行如下处理：
        # 1. 墨迹：移除不支持的墨迹（比如使用WPS画的）
        # 2. 自动翻页：移除PPT上所有的自动翻页设置，并设置为单击鼠标翻页
        # 3. 已损坏音视频：移除PPT上对损坏音视频的引用
        # @type AutoHandleUnsupportedElement: Boolean

        attr_accessor :SdkAppId, :Url, :IsStaticPPT, :MinResolution, :ThumbnailResolution, :CompressFileType, :ExtraData, :Priority, :MinScaleResolution, :AutoHandleUnsupportedElement
        
        def initialize(sdkappid=nil, url=nil, isstaticppt=nil, minresolution=nil, thumbnailresolution=nil, compressfiletype=nil, extradata=nil, priority=nil, minscaleresolution=nil, autohandleunsupportedelement=nil)
          @SdkAppId = sdkappid
          @Url = url
          @IsStaticPPT = isstaticppt
          @MinResolution = minresolution
          @ThumbnailResolution = thumbnailresolution
          @CompressFileType = compressfiletype
          @ExtraData = extradata
          @Priority = priority
          @MinScaleResolution = minscaleresolution
          @AutoHandleUnsupportedElement = autohandleunsupportedelement
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Url = params['Url']
          @IsStaticPPT = params['IsStaticPPT']
          @MinResolution = params['MinResolution']
          @ThumbnailResolution = params['ThumbnailResolution']
          @CompressFileType = params['CompressFileType']
          @ExtraData = params['ExtraData']
          @Priority = params['Priority']
          @MinScaleResolution = params['MinScaleResolution']
          @AutoHandleUnsupportedElement = params['AutoHandleUnsupportedElement']
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

      # CreateVideoGenerationTask请求参数结构体
      class CreateVideoGenerationTaskRequest < TencentCloud::Common::AbstractModel
        # @param OnlineRecordTaskId: 录制任务的TaskId
        # @type OnlineRecordTaskId: String
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Whiteboard: 视频生成的白板参数，例如白板宽高等。

        # 此参数与开始录制接口提供的Whiteboard参数互斥，在本接口与开始录制接口都提供了Whiteboard参数时，优先使用本接口指定的Whiteboard参数进行视频生成，否则使用开始录制接口提供的Whiteboard参数进行视频生成。
        # @type Whiteboard: :class:`Tencentcloud::Tiw.v20190919.models.Whiteboard`
        # @param Concat: 视频拼接参数

        # 此参数与开始录制接口提供的Concat参数互斥，在本接口与开始录制接口都提供了Concat参数时，优先使用本接口指定的Concat参数进行视频拼接，否则使用开始录制接口提供的Concat参数进行视频拼接。
        # @type Concat: :class:`Tencentcloud::Tiw.v20190919.models.Concat`
        # @param MixStream: 视频生成混流参数

        # 此参数与开始录制接口提供的MixStream参数互斥，在本接口与开始录制接口都提供了MixStream参数时，优先使用本接口指定的MixStream参数进行视频混流，否则使用开始录制接口提供的MixStream参数进行视频拼混流。
        # @type MixStream: :class:`Tencentcloud::Tiw.v20190919.models.MixStream`
        # @param RecordControl: 视频生成控制参数，用于更精细地指定需要生成哪些流，某一路流是否禁用音频，是否只录制小画面等

        # 此参数与开始录制接口提供的RecordControl参数互斥，在本接口与开始录制接口都提供了RecordControl参数时，优先使用本接口指定的RecordControl参数进行视频生成控制，否则使用开始录制接口提供的RecordControl参数进行视频拼生成控制。
        # @type RecordControl: :class:`Tencentcloud::Tiw.v20190919.models.RecordControl`
        # @param ExtraData: 内部参数
        # @type ExtraData: String

        attr_accessor :OnlineRecordTaskId, :SdkAppId, :Whiteboard, :Concat, :MixStream, :RecordControl, :ExtraData
        
        def initialize(onlinerecordtaskid=nil, sdkappid=nil, whiteboard=nil, concat=nil, mixstream=nil, recordcontrol=nil, extradata=nil)
          @OnlineRecordTaskId = onlinerecordtaskid
          @SdkAppId = sdkappid
          @Whiteboard = whiteboard
          @Concat = concat
          @MixStream = mixstream
          @RecordControl = recordcontrol
          @ExtraData = extradata
        end

        def deserialize(params)
          @OnlineRecordTaskId = params['OnlineRecordTaskId']
          @SdkAppId = params['SdkAppId']
          unless params['Whiteboard'].nil?
            @Whiteboard = Whiteboard.new
            @Whiteboard.deserialize(params['Whiteboard'])
          end
          unless params['Concat'].nil?
            @Concat = Concat.new
            @Concat.deserialize(params['Concat'])
          end
          unless params['MixStream'].nil?
            @MixStream = MixStream.new
            @MixStream.deserialize(params['MixStream'])
          end
          unless params['RecordControl'].nil?
            @RecordControl = RecordControl.new
            @RecordControl.deserialize(params['RecordControl'])
          end
          @ExtraData = params['ExtraData']
        end
      end

      # CreateVideoGenerationTask返回参数结构体
      class CreateVideoGenerationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频生成的任务Id
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
            @Canvas = Canvas.new
            @Canvas.deserialize(params['Canvas'])
          end
          unless params['InputStreamList'].nil?
            @InputStreamList = []
            params['InputStreamList'].each do |i|
              streamlayout_tmp = StreamLayout.new
              streamlayout_tmp.deserialize(i)
              @InputStreamList << streamlayout_tmp
            end
          end
        end
      end

      # 画图数据，Time/Value/Details
      class DataItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # 按月格式yyyy-mm
        # 按天格式yyyy-mm-dd
        # 按分钟格式 yyyy-mm-dd HH:MM:SS
        # @type Time: String
        # @param Value: 画图所需要的值
        # @type Value: Integer
        # @param Details: 各个具体指标的详情
        # @type Details: Array

        attr_accessor :Time, :Value, :Details
        
        def initialize(time=nil, value=nil, details=nil)
          @Time = time
          @Value = value
          @Details = details
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              detail_tmp = Detail.new
              detail_tmp.deserialize(i)
              @Details << detail_tmp
            end
          end
        end
      end

      # DescribeAPIService请求参数结构体
      class DescribeAPIServiceRequest < TencentCloud::Common::AbstractModel
        # @param Service: 目前支持的Service为cos:GetService，cdn:DescribeDomainsConfig
        # @type Service: String
        # @param Data: JSON格式的请求参数
        # @type Data: String

        attr_accessor :Service, :Data
        
        def initialize(service=nil, data=nil)
          @Service = service
          @Data = data
        end

        def deserialize(params)
          @Service = params['Service']
          @Data = params['Data']
        end
      end

      # DescribeAPIService返回参数结构体
      class DescribeAPIServiceResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: Json格式的响应数据
        # @type ResponseData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId
        
        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          @ResponseData = params['ResponseData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationInfos请求参数结构体
      class DescribeApplicationInfosRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeApplicationInfos返回参数结构体
      class DescribeApplicationInfosResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationInfos: 应用列表
        # @type ApplicationInfos: Array
        # @param AllOption: 是否包含所有的应用，0-不包含，1-包含
        # @type AllOption: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationInfos, :AllOption, :RequestId
        
        def initialize(applicationinfos=nil, alloption=nil, requestid=nil)
          @ApplicationInfos = applicationinfos
          @AllOption = alloption
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationInfos'].nil?
            @ApplicationInfos = []
            params['ApplicationInfos'].each do |i|
              applicationitem_tmp = ApplicationItem.new
              applicationitem_tmp.deserialize(i)
              @ApplicationInfos << applicationitem_tmp
            end
          end
          @AllOption = params['AllOption']
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationUsage请求参数结构体
      class DescribeApplicationUsageRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 用量开始时间（包括该时间点）
        # @type BeginTime: String
        # @param EndTime: 用量结束时间（不包括该时间点）
        # @type EndTime: String
        # @param SubProduct: 白板子产品名
        # @type SubProduct: String
        # @param TimeLevel: 时间跨度单位
        # - MONTHLY：月
        # - DAILY：天
        # - MINUTELY：分钟
        # @type TimeLevel: String
        # @param SdkAppId: 白板应用的SdkAppId
        # @type SdkAppId: Integer
        # @param IsWeighted: true: 返回加权求和后的用量数据
        # false: 返回原始用量数据
        # @type IsWeighted: Boolean

        attr_accessor :BeginTime, :EndTime, :SubProduct, :TimeLevel, :SdkAppId, :IsWeighted
        
        def initialize(begintime=nil, endtime=nil, subproduct=nil, timelevel=nil, sdkappid=nil, isweighted=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @SubProduct = subproduct
          @TimeLevel = timelevel
          @SdkAppId = sdkappid
          @IsWeighted = isweighted
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @SubProduct = params['SubProduct']
          @TimeLevel = params['TimeLevel']
          @SdkAppId = params['SdkAppId']
          @IsWeighted = params['IsWeighted']
        end
      end

      # DescribeApplicationUsage返回参数结构体
      class DescribeApplicationUsageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 画图所需的用量数据
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
              dataitem_tmp = DataItem.new
              dataitem_tmp.deserialize(i)
              @Data << dataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBoardSDKLog请求参数结构体
      class DescribeBoardSDKLogRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 白板应用的SdkAppId
        # @type SdkAppId: Integer
        # @param RoomId: 需要查询日志的白板房间号
        # @type RoomId: String
        # @param UserId: 需要查询日志的用户ID
        # @type UserId: String
        # @param TimeRange: 查询时间段，Unix时间戳，单位毫秒，第一个值为开始时间戳，第二个值为结束时间
        # @type TimeRange: Array
        # @param AggregationInterval: 聚合日志条数查询的桶的时间范围，如5m, 1h, 4h等
        # @type AggregationInterval: String
        # @param Query: 额外的查询条件
        # @type Query: String
        # @param Ascending: 是否按时间升序排列
        # @type Ascending: Boolean
        # @param Context: 用于递归拉取的上下文Key，在上一次请求中返回
        # @type Context: String

        attr_accessor :SdkAppId, :RoomId, :UserId, :TimeRange, :AggregationInterval, :Query, :Ascending, :Context
        
        def initialize(sdkappid=nil, roomid=nil, userid=nil, timerange=nil, aggregationinterval=nil, query=nil, ascending=nil, context=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserId = userid
          @TimeRange = timerange
          @AggregationInterval = aggregationinterval
          @Query = query
          @Ascending = ascending
          @Context = context
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @TimeRange = params['TimeRange']
          @AggregationInterval = params['AggregationInterval']
          @Query = params['Query']
          @Ascending = params['Ascending']
          @Context = params['Context']
        end
      end

      # DescribeBoardSDKLog返回参数结构体
      class DescribeBoardSDKLogResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总共能查到日志条数
        # @type Total: Integer
        # @param Sources: 日志详细内容
        # @type Sources: Array
        # @param Buckets: 按时间段聚合后每个时间段的日志条数
        # @type Buckets: Array
        # @param Context: 用于递归拉取的上下文Key，下一次请求的时候带上
        # @type Context: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Sources, :Buckets, :Context, :RequestId
        
        def initialize(total=nil, sources=nil, buckets=nil, context=nil, requestid=nil)
          @Total = total
          @Sources = sources
          @Buckets = buckets
          @Context = context
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          @Sources = params['Sources']
          @Buckets = params['Buckets']
          @Context = params['Context']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIMApplications请求参数结构体
      class DescribeIMApplicationsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIMApplications返回参数结构体
      class DescribeIMApplicationsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeOfflineRecordCallback请求参数结构体
      class DescribeOfflineRecordCallbackRequest < TencentCloud::Common::AbstractModel
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

      # DescribeOfflineRecordCallback返回参数结构体
      class DescribeOfflineRecordCallbackResponse < TencentCloud::Common::AbstractModel
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

      # DescribeOfflineRecord请求参数结构体
      class DescribeOfflineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 课后录制任务的Id
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

      # DescribeOfflineRecord返回参数结构体
      class DescribeOfflineRecordResponse < TencentCloud::Common::AbstractModel
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
        # - FORCE_STOP: 强制停止录制，一般是因为暂停超过90分钟或者录制总时长超过24小时。
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
        # @param ReplayUrl: 回放URL，需配合信令播放器使用。此字段仅适用于`视频生成模式`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplayUrl: String
        # @param Interrupts: 视频流在录制过程中断流次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Interrupts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FinishReason, :TaskId, :Status, :RoomId, :GroupId, :RecordUserId, :RecordStartTime, :RecordStopTime, :TotalTime, :ExceptionCnt, :OmittedDurations, :VideoInfos, :ReplayUrl, :Interrupts, :RequestId
        
        def initialize(finishreason=nil, taskid=nil, status=nil, roomid=nil, groupid=nil, recorduserid=nil, recordstarttime=nil, recordstoptime=nil, totaltime=nil, exceptioncnt=nil, omitteddurations=nil, videoinfos=nil, replayurl=nil, interrupts=nil, requestid=nil)
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
          @ReplayUrl = replayurl
          @Interrupts = interrupts
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
          unless params['OmittedDurations'].nil?
            @OmittedDurations = []
            params['OmittedDurations'].each do |i|
              omittedduration_tmp = OmittedDuration.new
              omittedduration_tmp.deserialize(i)
              @OmittedDurations << omittedduration_tmp
            end
          end
          unless params['VideoInfos'].nil?
            @VideoInfos = []
            params['VideoInfos'].each do |i|
              videoinfo_tmp = VideoInfo.new
              videoinfo_tmp.deserialize(i)
              @VideoInfos << videoinfo_tmp
            end
          end
          @ReplayUrl = params['ReplayUrl']
          unless params['Interrupts'].nil?
            @Interrupts = []
            params['Interrupts'].each do |i|
              interrupt_tmp = Interrupt.new
              interrupt_tmp.deserialize(i)
              @Interrupts << interrupt_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePostpaidUsage请求参数结构体
      class DescribePostpaidUsageRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :BeginTime, :EndTime
        
        def initialize(begintime=nil, endtime=nil)
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribePostpaidUsage返回参数结构体
      class DescribePostpaidUsageResponse < TencentCloud::Common::AbstractModel
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

      # DescribeQualityMetrics请求参数结构体
      class DescribeQualityMetricsRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 白板应用的SdkAppId
        # @type SdkAppId: Integer
        # @param StartTime: 开始时间，Unix时间戳，单位秒，时间跨度不能超过7天
        # @type StartTime: Integer
        # @param EndTime: 结束时间，Unix时间戳，单位秒，时间跨度不能超过7天
        # @type EndTime: Integer
        # @param Metric: 查询的指标，目前支持以下值
        #   - image_load_total_count: 图片加载总数（单位，次）
        #   - image_load_fail_count: 图片加载失败数量（单位，次）
        #   - image_load_success_rate: 图片加载成功率（百分比）
        #   - ppt_load_total_count: PPT加载总数（单位，次）
        #   - ppt_load_fail_count: PPT加载失败总数（单位，次）
        #   - ppt_load_success_rate: PPT加载成功率（单位，百分比）
        #   - verify_sdk_total_count: 白板鉴权总次数（单位，次）
        #   - verify_sdk_fail_count: 白板鉴权失败次数（单位，次）
        #   - verify_sdk_success_rate: 白板鉴权成功率（单位，百分比）
        #   - verify_sdk_in_one_second_rate: 白板鉴权秒开率（单位，百分比）
        #   - verify_sdk_cost_avg: 白板鉴权耗时平均时间（单位，毫秒）
        # @type Metric: String
        # @param Interval: 聚合的时间维度，目前只支持1小时，输入值为"1h"
        # @type Interval: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Metric, :Interval
        
        def initialize(sdkappid=nil, starttime=nil, endtime=nil, metric=nil, interval=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Metric = metric
          @Interval = interval
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Metric = params['Metric']
          @Interval = params['Interval']
        end
      end

      # DescribeQualityMetrics返回参数结构体
      class DescribeQualityMetricsResponse < TencentCloud::Common::AbstractModel
        # @param Metric: 输入的查询指标
        # @type Metric: String
        # @param Content: 时间序列
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Metric, :Content, :RequestId
        
        def initialize(metric=nil, content=nil, requestid=nil)
          @Metric = metric
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Metric = params['Metric']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              timevalue_tmp = TimeValue.new
              timevalue_tmp.deserialize(i)
              @Content << timevalue_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordSearch请求参数结构体
      class DescribeRecordSearchRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRecordSearch返回参数结构体
      class DescribeRecordSearchResponse < TencentCloud::Common::AbstractModel
        # @param RecordTaskSet: 录制任务搜索结果集合
        # @type RecordTaskSet: Array
        # @param TotalCount: 录制总任务数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordTaskSet, :TotalCount, :RequestId
        
        def initialize(recordtaskset=nil, totalcount=nil, requestid=nil)
          @RecordTaskSet = recordtaskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordTaskSet'].nil?
            @RecordTaskSet = []
            params['RecordTaskSet'].each do |i|
              recordtasksearchresult_tmp = RecordTaskSearchResult.new
              recordtasksearchresult_tmp.deserialize(i)
              @RecordTaskSet << recordtasksearchresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomList请求参数结构体
      class DescribeRoomListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 白板应用的SdkAppId
        # @type SdkAppId: Integer
        # @param TimeRange: 查询时间段，Unix时间戳，单位毫秒，第一个值为开始时间戳，第二个值为结束时间
        # @type TimeRange: Array
        # @param Query: 额外的查询条件
        # @type Query: String
        # @param MaxSize: 返回最大的数据条数，默认1000
        # @type MaxSize: Integer

        attr_accessor :SdkAppId, :TimeRange, :Query, :MaxSize
        
        def initialize(sdkappid=nil, timerange=nil, query=nil, maxsize=nil)
          @SdkAppId = sdkappid
          @TimeRange = timerange
          @Query = query
          @MaxSize = maxsize
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TimeRange = params['TimeRange']
          @Query = params['Query']
          @MaxSize = params['MaxSize']
        end
      end

      # DescribeRoomList返回参数结构体
      class DescribeRoomListResponse < TencentCloud::Common::AbstractModel
        # @param RoomList: 白板房间列表
        # @type RoomList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoomList, :RequestId
        
        def initialize(roomlist=nil, requestid=nil)
          @RoomList = roomlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoomList'].nil?
            @RoomList = []
            params['RoomList'].each do |i|
              roomlistitem_tmp = RoomListItem.new
              roomlistitem_tmp.deserialize(i)
              @RoomList << roomlistitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshotTask请求参数结构体
      class DescribeSnapshotTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskID: 查询任务ID
        # @type TaskID: String
        # @param SdkAppId: 任务SdkAppId
        # @type SdkAppId: Integer

        attr_accessor :TaskID, :SdkAppId
        
        def initialize(taskid=nil, sdkappid=nil)
          @TaskID = taskid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeSnapshotTask返回参数结构体
      class DescribeSnapshotTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskID: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskID: String
        # @param Status: 任务状态
        # Running - 任务执行中
        # Finished - 任务已结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param CreateTime: 任务创建时间，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param FinishTime: 任务完成时间，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishTime: Integer
        # @param Result: 任务结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Tiw.v20190919.models.SnapshotResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskID, :Status, :CreateTime, :FinishTime, :Result, :RequestId
        
        def initialize(taskid=nil, status=nil, createtime=nil, finishtime=nil, result=nil, requestid=nil)
          @TaskID = taskid
          @Status = status
          @CreateTime = createtime
          @FinishTime = finishtime
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskID = params['TaskID']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @FinishTime = params['FinishTime']
          unless params['Result'].nil?
            @Result = SnapshotResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTIWDailyUsage请求参数结构体
      class DescribeTIWDailyUsageRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 互动白板应用SdkAppId
        # @type SdkAppId: Integer
        # @param SubProduct: 需要查询的子产品用量，支持传入以下值
        # - sp_tiw_board: 互动白板时长，单位为分钟
        # - sp_tiw_dt: 动态转码页数，单位页
        # - sp_tiw_st: 静态转码页数，单位页
        # - sp_tiw_ric: 实时录制时长，单位分钟

        # 注意：动态转码以1:8的比例计算文档转码页数，静态转码以1:1的比例计算文档转码页数
        # @type SubProduct: String
        # @param StartTime: 开始时间，格式YYYY-MM-DD，查询结果里包括该天数据
        # @type StartTime: String
        # @param EndTime: 结束时间，格式YYYY-MM-DD，查询结果里包括该天数据，单次查询统计区间最多不能超过31天。
        # @type EndTime: String

        attr_accessor :SdkAppId, :SubProduct, :StartTime, :EndTime
        
        def initialize(sdkappid=nil, subproduct=nil, starttime=nil, endtime=nil)
          @SdkAppId = sdkappid
          @SubProduct = subproduct
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SubProduct = params['SubProduct']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeTIWDailyUsage返回参数结构体
      class DescribeTIWDailyUsageResponse < TencentCloud::Common::AbstractModel
        # @param Usages: 指定区间指定产品的用量汇总
        # @type Usages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Usages, :RequestId
        
        def initialize(usages=nil, requestid=nil)
          @Usages = usages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Usages'].nil?
            @Usages = []
            params['Usages'].each do |i|
              usagedataitem_tmp = UsageDataItem.new
              usagedataitem_tmp.deserialize(i)
              @Usages << usagedataitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTIWRoomDailyUsage请求参数结构体
      class DescribeTIWRoomDailyUsageRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 互动白板应用SdkAppId
        # @type SdkAppId: Integer
        # @param SubProduct: 需要查询的子产品用量，支持传入以下值
        # - sp_tiw_board: 互动白板时长，单位为分钟
        # - sp_tiw_ric: 实时录制时长，单位分钟
        # @type SubProduct: String
        # @param StartTime: 开始时间，格式YYYY-MM-DD，查询结果里包括该天数据
        # @type StartTime: String
        # @param EndTime: 结束时间，格式YYYY-MM-DD，查询结果里包括该天数据，单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param RoomIDs: 需要查询的房间ID列表，不填默认查询全部房间
        # @type RoomIDs: Array
        # @param Offset: 查询偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 每次查询返回条目限制，默认为20
        # @type Limit: Integer

        attr_accessor :SdkAppId, :SubProduct, :StartTime, :EndTime, :RoomIDs, :Offset, :Limit
        
        def initialize(sdkappid=nil, subproduct=nil, starttime=nil, endtime=nil, roomids=nil, offset=nil, limit=nil)
          @SdkAppId = sdkappid
          @SubProduct = subproduct
          @StartTime = starttime
          @EndTime = endtime
          @RoomIDs = roomids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @SubProduct = params['SubProduct']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomIDs = params['RoomIDs']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTIWRoomDailyUsage返回参数结构体
      class DescribeTIWRoomDailyUsageResponse < TencentCloud::Common::AbstractModel
        # @param Usages: 指定区间指定产品的房间用量列表
        # @type Usages: Array
        # @param Total: 用量列表总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Usages, :Total, :RequestId
        
        def initialize(usages=nil, total=nil, requestid=nil)
          @Usages = usages
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Usages'].nil?
            @Usages = []
            params['Usages'].each do |i|
              roomusagedataitem_tmp = RoomUsageDataItem.new
              roomusagedataitem_tmp.deserialize(i)
              @Usages << roomusagedataitem_tmp
            end
          end
          @Total = params['Total']
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
        # @param ResourceListUrl: 资源清单文件下载URL(内测体验)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceListUrl: String
        # @param Ext: 文档制作方式(内测体验)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Pages, :Progress, :Resolution, :ResultUrl, :Status, :TaskId, :Title, :ThumbnailUrl, :ThumbnailResolution, :CompressFileUrl, :ResourceListUrl, :Ext, :RequestId
        
        def initialize(pages=nil, progress=nil, resolution=nil, resulturl=nil, status=nil, taskid=nil, title=nil, thumbnailurl=nil, thumbnailresolution=nil, compressfileurl=nil, resourcelisturl=nil, ext=nil, requestid=nil)
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
          @ResourceListUrl = resourcelisturl
          @Ext = ext
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
          @ResourceListUrl = params['ResourceListUrl']
          @Ext = params['Ext']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTranscodeSearch请求参数结构体
      class DescribeTranscodeSearchRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTranscodeSearch返回参数结构体
      class DescribeTranscodeSearchResponse < TencentCloud::Common::AbstractModel
        # @param TranscodeTaskSet: 转码任务搜索结果集合
        # @type TranscodeTaskSet: Array
        # @param TotalCount: 转码总任务数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranscodeTaskSet, :TotalCount, :RequestId
        
        def initialize(transcodetaskset=nil, totalcount=nil, requestid=nil)
          @TranscodeTaskSet = transcodetaskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TranscodeTaskSet'].nil?
            @TranscodeTaskSet = []
            params['TranscodeTaskSet'].each do |i|
              transcodetasksearchresult_tmp = TranscodeTaskSearchResult.new
              transcodetasksearchresult_tmp.deserialize(i)
              @TranscodeTaskSet << transcodetasksearchresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsageSummary请求参数结构体
      class DescribeUsageSummaryRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 统计时间段的开始时间
        # @type BeginTime: String
        # @param EndTime: 统计时间段的结束时间
        # @type EndTime: String
        # @param SubProducts: 需要获取用量的子产品列表
        # @type SubProducts: Array
        # @param IsWeighted: true: 返回加权后的数据
        # false: 返回原始数据
        # @type IsWeighted: Boolean

        attr_accessor :BeginTime, :EndTime, :SubProducts, :IsWeighted
        
        def initialize(begintime=nil, endtime=nil, subproducts=nil, isweighted=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @SubProducts = subproducts
          @IsWeighted = isweighted
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @SubProducts = params['SubProducts']
          @IsWeighted = params['IsWeighted']
        end
      end

      # DescribeUsageSummary返回参数结构体
      class DescribeUsageSummaryResponse < TencentCloud::Common::AbstractModel
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

      # DescribeUserList请求参数结构体
      class DescribeUserListRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 白板应用的SdkAppId
        # @type SdkAppId: Integer
        # @param RoomId: 需要查询用户列表的白板房间号
        # @type RoomId: String
        # @param TimeRange: 查询时间段，Unix时间戳，单位毫秒，第一个值为开始时间戳，第二个值为结束时间
        # @type TimeRange: Array
        # @param Query: 额外的查询条件
        # @type Query: String
        # @param MaxSize: 返回最大的数据条数，默认1000
        # @type MaxSize: Integer

        attr_accessor :SdkAppId, :RoomId, :TimeRange, :Query, :MaxSize
        
        def initialize(sdkappid=nil, roomid=nil, timerange=nil, query=nil, maxsize=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @TimeRange = timerange
          @Query = query
          @MaxSize = maxsize
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @TimeRange = params['TimeRange']
          @Query = params['Query']
          @MaxSize = params['MaxSize']
        end
      end

      # DescribeUserList返回参数结构体
      class DescribeUserListResponse < TencentCloud::Common::AbstractModel
        # @param UserList: 房间内的用户列表
        # @type UserList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserList, :RequestId
        
        def initialize(userlist=nil, requestid=nil)
          @UserList = userlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              userlistitem_tmp = UserListItem.new
              userlistitem_tmp.deserialize(i)
              @UserList << userlistitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserResources请求参数结构体
      class DescribeUserResourcesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserResources返回参数结构体
      class DescribeUserResourcesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeUserStatus请求参数结构体
      class DescribeUserStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserStatus返回参数结构体
      class DescribeUserStatusResponse < TencentCloud::Common::AbstractModel
        # @param AppId: 客户的AppId
        # @type AppId: Integer
        # @param IsTiwUser: 是否开通过白板（试用或正式）

        # 0: 从未开通过白板服务
        # 1: 已经开通过白板服务
        # @type IsTiwUser: Integer
        # @param IsSaaSUser: 是否开通过互动课堂（试用或正式）
        # @type IsSaaSUser: Integer
        # @param IsTiwOfflineRecordUser: 是否使用白板的课后录制
        # @type IsTiwOfflineRecordUser: Integer
        # @param IsAuthenticated: 用户是否实名认证
        # @type IsAuthenticated: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :IsTiwUser, :IsSaaSUser, :IsTiwOfflineRecordUser, :IsAuthenticated, :RequestId
        
        def initialize(appid=nil, istiwuser=nil, issaasuser=nil, istiwofflinerecorduser=nil, isauthenticated=nil, requestid=nil)
          @AppId = appid
          @IsTiwUser = istiwuser
          @IsSaaSUser = issaasuser
          @IsTiwOfflineRecordUser = istiwofflinerecorduser
          @IsAuthenticated = isauthenticated
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @IsTiwUser = params['IsTiwUser']
          @IsSaaSUser = params['IsSaaSUser']
          @IsTiwOfflineRecordUser = params['IsTiwOfflineRecordUser']
          @IsAuthenticated = params['IsAuthenticated']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoGenerationTaskCallback请求参数结构体
      class DescribeVideoGenerationTaskCallbackRequest < TencentCloud::Common::AbstractModel
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

      # DescribeVideoGenerationTaskCallback返回参数结构体
      class DescribeVideoGenerationTaskCallbackResponse < TencentCloud::Common::AbstractModel
        # @param Callback: 录制视频生成回调地址
        # @type Callback: String
        # @param CallbackKey: 录制视频生成回调鉴权密钥
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

      # DescribeVideoGenerationTask请求参数结构体
      class DescribeVideoGenerationTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 录制视频生成的任务Id
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

      # DescribeVideoGenerationTask返回参数结构体
      class DescribeVideoGenerationTaskResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 任务对应的群组Id
        # @type GroupId: String
        # @param RoomId: 任务对应的房间号
        # @type RoomId: Integer
        # @param TaskId: 任务的Id
        # @type TaskId: String
        # @param Progress: 已废弃
        # @type Progress: Integer
        # @param Status: 录制视频生成任务状态
        # - QUEUED: 正在排队
        # - PROCESSING: 正在生成视频
        # - FINISHED: 生成视频结束（成功完成或失败结束，可以通过错误码和错误信息进一步判断）
        # @type Status: String
        # @param TotalTime: 回放视频总时长,单位：毫秒
        # @type TotalTime: Integer
        # @param VideoInfos: 已废弃，请使用`VideoInfoList`参数
        # @type VideoInfos: :class:`Tencentcloud::Tiw.v20190919.models.VideoInfo`
        # @param VideoInfoList: 录制视频生成视频列表
        # @type VideoInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RoomId, :TaskId, :Progress, :Status, :TotalTime, :VideoInfos, :VideoInfoList, :RequestId
        
        def initialize(groupid=nil, roomid=nil, taskid=nil, progress=nil, status=nil, totaltime=nil, videoinfos=nil, videoinfolist=nil, requestid=nil)
          @GroupId = groupid
          @RoomId = roomid
          @TaskId = taskid
          @Progress = progress
          @Status = status
          @TotalTime = totaltime
          @VideoInfos = videoinfos
          @VideoInfoList = videoinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RoomId = params['RoomId']
          @TaskId = params['TaskId']
          @Progress = params['Progress']
          @Status = params['Status']
          @TotalTime = params['TotalTime']
          unless params['VideoInfos'].nil?
            @VideoInfos = VideoInfo.new
            @VideoInfos.deserialize(params['VideoInfos'])
          end
          unless params['VideoInfoList'].nil?
            @VideoInfoList = []
            params['VideoInfoList'].each do |i|
              videoinfo_tmp = VideoInfo.new
              videoinfo_tmp.deserialize(i)
              @VideoInfoList << videoinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteboardApplicationConfig请求参数结构体
      class DescribeWhiteboardApplicationConfigRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskTypes: 需要查询的任务类型
        # recording: 实时录制
        # transcode: 文档转码
        # @type TaskTypes: Array
        # @param SdkAppIds: 需要查询配置的SdkAppId列表
        # @type SdkAppIds: Array

        attr_accessor :SdkAppId, :TaskTypes, :SdkAppIds
        
        def initialize(sdkappid=nil, tasktypes=nil, sdkappids=nil)
          @SdkAppId = sdkappid
          @TaskTypes = tasktypes
          @SdkAppIds = sdkappids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskTypes = params['TaskTypes']
          @SdkAppIds = params['SdkAppIds']
        end
      end

      # DescribeWhiteboardApplicationConfig返回参数结构体
      class DescribeWhiteboardApplicationConfigResponse < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Configs: 白板应用任务相关配置
        # @type Configs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SdkAppId, :Configs, :RequestId
        
        def initialize(sdkappid=nil, configs=nil, requestid=nil)
          @SdkAppId = sdkappid
          @Configs = configs
          @RequestId = requestid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['Configs'].nil?
            @Configs = []
            params['Configs'].each do |i|
              whiteboardapplicationconfig_tmp = WhiteboardApplicationConfig.new
              whiteboardapplicationconfig_tmp.deserialize(i)
              @Configs << whiteboardapplicationconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteboardBucketConfig请求参数结构体
      class DescribeWhiteboardBucketConfigRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskType: 需要查询的任务类型
        # recording: 实时录制
        # transcode: 文档转码
        # @type TaskType: String

        attr_accessor :SdkAppId, :TaskType
        
        def initialize(sdkappid=nil, tasktype=nil)
          @SdkAppId = sdkappid
          @TaskType = tasktype
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskType = params['TaskType']
        end
      end

      # DescribeWhiteboardBucketConfig返回参数结构体
      class DescribeWhiteboardBucketConfigResponse < TencentCloud::Common::AbstractModel
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

      # DescribeWhiteboardPushCallback请求参数结构体
      class DescribeWhiteboardPushCallbackRequest < TencentCloud::Common::AbstractModel
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

      # DescribeWhiteboardPushCallback返回参数结构体
      class DescribeWhiteboardPushCallbackResponse < TencentCloud::Common::AbstractModel
        # @param Callback: 白板推流事件回调地址，如果未设置回调地址，该字段为空字符串
        # @type Callback: String
        # @param CallbackKey: 白板推流回调鉴权密钥
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

      # DescribeWhiteboardPush请求参数结构体
      class DescribeWhiteboardPushRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 白板推流任务Id
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

      # DescribeWhiteboardPush返回参数结构体
      class DescribeWhiteboardPushResponse < TencentCloud::Common::AbstractModel
        # @param FinishReason: 推流结束原因，
        # - AUTO: 房间内长时间没有音视频上行及白板操作导致自动停止推流
        # - USER_CALL: 主动调用了停止推流接口
        # - EXCEPTION: 推流异常结束
        # @type FinishReason: String
        # @param TaskId: 需要查询结果的白板推流任务Id
        # @type TaskId: String
        # @param Status: 推流任务状态
        # - PREPARED: 表示推流正在准备中（进房/启动推流服务等操作）
        # - PUSHING: 表示推流已开始
        # - STOPPED: 表示推流已停止
        # @type Status: String
        # @param RoomId: 房间号
        # @type RoomId: Integer
        # @param GroupId: 白板的群组 Id
        # @type GroupId: String
        # @param PushUserId: 推流用户Id
        # @type PushUserId: String
        # @param PushStartTime: 实际开始推流时间，Unix 时间戳，单位秒
        # @type PushStartTime: Integer
        # @param PushStopTime: 实际停止推流时间，Unix 时间戳，单位秒
        # @type PushStopTime: Integer
        # @param ExceptionCnt: 推流过程中出现异常的次数
        # @type ExceptionCnt: Integer
        # @param IMSyncTime: 白板推流首帧对应的IM时间戳，可用于录制回放时IM聊天消息与白板推流视频进行同步对时。
        # @type IMSyncTime: Integer
        # @param Backup: 备份推流任务结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Backup: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FinishReason, :TaskId, :Status, :RoomId, :GroupId, :PushUserId, :PushStartTime, :PushStopTime, :ExceptionCnt, :IMSyncTime, :Backup, :RequestId
        
        def initialize(finishreason=nil, taskid=nil, status=nil, roomid=nil, groupid=nil, pushuserid=nil, pushstarttime=nil, pushstoptime=nil, exceptioncnt=nil, imsynctime=nil, backup=nil, requestid=nil)
          @FinishReason = finishreason
          @TaskId = taskid
          @Status = status
          @RoomId = roomid
          @GroupId = groupid
          @PushUserId = pushuserid
          @PushStartTime = pushstarttime
          @PushStopTime = pushstoptime
          @ExceptionCnt = exceptioncnt
          @IMSyncTime = imsynctime
          @Backup = backup
          @RequestId = requestid
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          @TaskId = params['TaskId']
          @Status = params['Status']
          @RoomId = params['RoomId']
          @GroupId = params['GroupId']
          @PushUserId = params['PushUserId']
          @PushStartTime = params['PushStartTime']
          @PushStopTime = params['PushStopTime']
          @ExceptionCnt = params['ExceptionCnt']
          @IMSyncTime = params['IMSyncTime']
          @Backup = params['Backup']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteboardPushSearch请求参数结构体
      class DescribeWhiteboardPushSearchRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWhiteboardPushSearch返回参数结构体
      class DescribeWhiteboardPushSearchResponse < TencentCloud::Common::AbstractModel
        # @param WhiteboardPushTaskSet: 推流任务搜索结果集合
        # @type WhiteboardPushTaskSet: Array
        # @param TotalCount: 推流总任务数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhiteboardPushTaskSet, :TotalCount, :RequestId
        
        def initialize(whiteboardpushtaskset=nil, totalcount=nil, requestid=nil)
          @WhiteboardPushTaskSet = whiteboardpushtaskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhiteboardPushTaskSet'].nil?
            @WhiteboardPushTaskSet = []
            params['WhiteboardPushTaskSet'].each do |i|
              whiteboardpushtasksearchresult_tmp = WhiteboardPushTaskSearchResult.new
              whiteboardpushtasksearchresult_tmp.deserialize(i)
              @WhiteboardPushTaskSet << whiteboardpushtasksearchresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 计费用量数据里，带不同指标Tag的详情
      class Detail < TencentCloud::Common::AbstractModel
        # @param TagName: 用量指标
        # @type TagName: String
        # @param Weight: 用量权重
        # @type Weight: Float
        # @param Value: 用量的值
        # @type Value: Float

        attr_accessor :TagName, :Weight, :Value
        
        def initialize(tagname=nil, weight=nil, value=nil)
          @TagName = tagname
          @Weight = weight
          @Value = value
        end

        def deserialize(params)
          @TagName = params['TagName']
          @Weight = params['Weight']
          @Value = params['Value']
        end
      end

      # 实时录制中出现的用户视频流断流次数统计
      class Interrupt < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param Count: 视频流断流次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :UserId, :Count
        
        def initialize(userid=nil, count=nil)
          @UserId = userid
          @Count = count
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Count = params['Count']
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
            @Custom = CustomLayout.new
            @Custom.deserialize(params['Custom'])
          end
        end
      end

      # ModifyApplication请求参数结构体
      class ModifyApplicationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用SdkAppId
        # @type SdkAppId: Integer
        # @param AppName: App名字
        # @type AppName: String

        attr_accessor :SdkAppId, :AppName
        
        def initialize(sdkappid=nil, appname=nil)
          @SdkAppId = sdkappid
          @AppName = appname
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @AppName = params['AppName']
        end
      end

      # ModifyApplication返回参数结构体
      class ModifyApplicationResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAutoRenewFlag请求参数结构体
      class ModifyAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param SubProduct: 资源Id，从DescribeUserResources接口中获取Level=1的正式月功能费的SubProduct，一般为sp_tiw_package
        # @type SubProduct: String
        # @param ResourceId: 资源Id，从DescribeUserResources接口中获取Level=1的正式月功能费资源Id
        # @type ResourceId: String
        # @param AutoRenewFlag: 自动续费标记，0表示默认状态(用户未设置，即初始状态)， 1表示自动续费，2表示明确不自动续费(用户设置)，若业务无续费概念或无需自动续 费，需要设置为0
        # @type AutoRenewFlag: Integer

        attr_accessor :SubProduct, :ResourceId, :AutoRenewFlag
        
        def initialize(subproduct=nil, resourceid=nil, autorenewflag=nil)
          @SubProduct = subproduct
          @ResourceId = resourceid
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @SubProduct = params['SubProduct']
          @ResourceId = params['ResourceId']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # ModifyAutoRenewFlag返回参数结构体
      class ModifyAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWhiteboardApplicationConfig请求参数结构体
      class ModifyWhiteboardApplicationConfigRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Configs: 白板应用任务相关配置
        # @type Configs: Array

        attr_accessor :SdkAppId, :Configs
        
        def initialize(sdkappid=nil, configs=nil)
          @SdkAppId = sdkappid
          @Configs = configs
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['Configs'].nil?
            @Configs = []
            params['Configs'].each do |i|
              whiteboardapplicationconfig_tmp = WhiteboardApplicationConfig.new
              whiteboardapplicationconfig_tmp.deserialize(i)
              @Configs << whiteboardapplicationconfig_tmp
            end
          end
        end
      end

      # ModifyWhiteboardApplicationConfig返回参数结构体
      class ModifyWhiteboardApplicationConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWhiteboardBucketConfig请求参数结构体
      class ModifyWhiteboardBucketConfigRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskType: 需要查询的任务类型
        # recording: 实时录制
        # transcode: 文档转码
        # @type TaskType: String
        # @param BucketName: COS存储桶名字
        # @type BucketName: String
        # @param BucketLocation: COS存储桶地域
        # @type BucketLocation: String
        # @param BucketPrefix: 存储桶里资源前缀
        # @type BucketPrefix: String
        # @param ResultDomain: 返回Url域名
        # @type ResultDomain: String

        attr_accessor :SdkAppId, :TaskType, :BucketName, :BucketLocation, :BucketPrefix, :ResultDomain
        
        def initialize(sdkappid=nil, tasktype=nil, bucketname=nil, bucketlocation=nil, bucketprefix=nil, resultdomain=nil)
          @SdkAppId = sdkappid
          @TaskType = tasktype
          @BucketName = bucketname
          @BucketLocation = bucketlocation
          @BucketPrefix = bucketprefix
          @ResultDomain = resultdomain
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskType = params['TaskType']
          @BucketName = params['BucketName']
          @BucketLocation = params['BucketLocation']
          @BucketPrefix = params['BucketPrefix']
          @ResultDomain = params['ResultDomain']
        end
      end

      # ModifyWhiteboardBucketConfig返回参数结构体
      class ModifyWhiteboardBucketConfigResponse < TencentCloud::Common::AbstractModel
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

      # 录制控制参数， 用于指定全局录制控制及具体流录制控制参数，比如设置需要对哪些流进行录制，是否只录制小画面等
      class RecordControl < TencentCloud::Common::AbstractModel
        # @param Enabled: 设置是否开启录制控制参数，只有设置为true的时候，录制控制参数才生效。
        # @type Enabled: Boolean
        # @param DisableRecord: 设置是否禁用录制的全局控制参数。一般与`StreamControls`参数配合使用。

        # true - 所有流都不录制。
        # false - 所有流都录制。默认为false。

        # 这里的设置对所有流都生效，如果同时在 `StreamControls` 列表中针对指定流设置了控制参数，则优先采用`StreamControls`中设置的控制参数。
        # @type DisableRecord: Boolean
        # @param DisableAudio: 设置是否禁用所有流的音频录制的全局控制参数。一般与`StreamControls`参数配合使用。

        # true - 所有流的录制都不对音频进行录制。
        # false - 所有流的录制都需要对音频进行录制。默认为false。

        # 这里的设置对所有流都生效，如果同时在 `StreamControls` 列表中针对指定流设置了控制参数，则优先采用`StreamControls`中设置的控制参数。
        # @type DisableAudio: Boolean
        # @param PullSmallVideo: 设置是否所有流都只录制小画面的全局控制参数。一般与`StreamControls`参数配合使用。

        # true - 所有流都只录制小画面。设置为true时，请确保上行端在推流的时候同时上行了小画面，否则录制视频可能是黑屏。
        # false - 所有流都录制大画面，默认为false。

        # 这里的设置对所有流都生效，如果同时在 `StreamControls` 列表中针对指定流设置了控制参数，则优先采用`StreamControls`中设置的控制参数。
        # @type PullSmallVideo: Boolean
        # @param StreamControls: 针对具体流指定控制参数，如果列表为空，则所有流采用全局配置的控制参数进行录制。列表不为空，则列表中指定的流将优先按此列表指定的控制参数进行录制。
        # @type StreamControls: Array

        attr_accessor :Enabled, :DisableRecord, :DisableAudio, :PullSmallVideo, :StreamControls
        
        def initialize(enabled=nil, disablerecord=nil, disableaudio=nil, pullsmallvideo=nil, streamcontrols=nil)
          @Enabled = enabled
          @DisableRecord = disablerecord
          @DisableAudio = disableaudio
          @PullSmallVideo = pullsmallvideo
          @StreamControls = streamcontrols
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @DisableRecord = params['DisableRecord']
          @DisableAudio = params['DisableAudio']
          @PullSmallVideo = params['PullSmallVideo']
          unless params['StreamControls'].nil?
            @StreamControls = []
            params['StreamControls'].each do |i|
              streamcontrol_tmp = StreamControl.new
              streamcontrol_tmp.deserialize(i)
              @StreamControls << streamcontrol_tmp
            end
          end
        end
      end

      # 实时录制结果
      class RecordTaskResult < TencentCloud::Common::AbstractModel
        # @param FinishReason: AUTO - 自动停止录制， USER_CALL - 用户主动调用停止录制
        # @type FinishReason: String
        # @param ExceptionCnt: 异常数
        # @type ExceptionCnt: Integer
        # @param RoomId: 房间号
        # @type RoomId: Integer
        # @param GroupId: 分组
        # @type GroupId: String
        # @param RecordStartTime: 录制真实开始时间
        # @type RecordStartTime: Integer
        # @param RecordStopTime: 录制结束时间
        # @type RecordStopTime: Integer
        # @param TotalTime: 录制总时长
        # @type TotalTime: Integer
        # @param VideoInfos: 视频信息列表
        # @type VideoInfos: Array
        # @param OmittedDurations: 被忽略的视频时间段
        # @type OmittedDurations: Array
        # @param Details: 详情
        # @type Details: String
        # @param ErrorCode: 任务失败错误码
        # @type ErrorCode: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String

        attr_accessor :FinishReason, :ExceptionCnt, :RoomId, :GroupId, :RecordStartTime, :RecordStopTime, :TotalTime, :VideoInfos, :OmittedDurations, :Details, :ErrorCode, :ErrorMsg
        
        def initialize(finishreason=nil, exceptioncnt=nil, roomid=nil, groupid=nil, recordstarttime=nil, recordstoptime=nil, totaltime=nil, videoinfos=nil, omitteddurations=nil, details=nil, errorcode=nil, errormsg=nil)
          @FinishReason = finishreason
          @ExceptionCnt = exceptioncnt
          @RoomId = roomid
          @GroupId = groupid
          @RecordStartTime = recordstarttime
          @RecordStopTime = recordstoptime
          @TotalTime = totaltime
          @VideoInfos = videoinfos
          @OmittedDurations = omitteddurations
          @Details = details
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          @ExceptionCnt = params['ExceptionCnt']
          @RoomId = params['RoomId']
          @GroupId = params['GroupId']
          @RecordStartTime = params['RecordStartTime']
          @RecordStopTime = params['RecordStopTime']
          @TotalTime = params['TotalTime']
          unless params['VideoInfos'].nil?
            @VideoInfos = []
            params['VideoInfos'].each do |i|
              videoinfo_tmp = VideoInfo.new
              videoinfo_tmp.deserialize(i)
              @VideoInfos << videoinfo_tmp
            end
          end
          unless params['OmittedDurations'].nil?
            @OmittedDurations = []
            params['OmittedDurations'].each do |i|
              omittedduration_tmp = OmittedDuration.new
              omittedduration_tmp.deserialize(i)
              @OmittedDurations << omittedduration_tmp
            end
          end
          @Details = params['Details']
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # 实时录制任务搜索结果
      class RecordTaskSearchResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param Status: 实时录制任务状态
        # - PAUSED: 录制已暂停
        # - PREPARED: 录制在准备阶段
        # - RECORDING: 正在录制
        # - STOPPED：录制已停止
        # - FINISHED: 录制已结束
        # @type Status: String
        # @param RoomId: 实时录制房间号
        # @type RoomId: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param SdkAppId: 用户应用SdkAppId
        # @type SdkAppId: Integer
        # @param Result: 实时录制结果
        # @type Result: :class:`Tencentcloud::Tiw.v20190919.models.RecordTaskResult`

        attr_accessor :TaskId, :Status, :RoomId, :CreateTime, :SdkAppId, :Result
        
        def initialize(taskid=nil, status=nil, roomid=nil, createtime=nil, sdkappid=nil, result=nil)
          @TaskId = taskid
          @Status = status
          @RoomId = roomid
          @CreateTime = createtime
          @SdkAppId = sdkappid
          @Result = result
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @RoomId = params['RoomId']
          @CreateTime = params['CreateTime']
          @SdkAppId = params['SdkAppId']
          unless params['Result'].nil?
            @Result = RecordTaskResult.new
            @Result.deserialize(params['Result'])
          end
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

      # 日志查询里返回的白板房间数据
      class RoomListItem < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间ID
        # @type RoomId: String
        # @param StartTime: 房间在查询时间段内最早出现的时间，Unix时间戳，单位毫秒
        # @type StartTime: Integer
        # @param EndTime: 房间在查询时间段内最晚出现的时间，Unix时间戳，单位毫秒
        # @type EndTime: Integer
        # @param UserNumber: 房间里成员数
        # @type UserNumber: Integer

        attr_accessor :RoomId, :StartTime, :EndTime, :UserNumber
        
        def initialize(roomid=nil, starttime=nil, endtime=nil, usernumber=nil)
          @RoomId = roomid
          @StartTime = starttime
          @EndTime = endtime
          @UserNumber = usernumber
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserNumber = params['UserNumber']
        end
      end

      # 互动白板房间用量信息
      class RoomUsageDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 日期，格式为YYYY-MM-DD
        # @type Time: String
        # @param SdkAppId: 白板应用SDKAppID
        # @type SdkAppId: Integer
        # @param SubProduct: 互动白板子产品，请求参数传入的一致
        # - sp_tiw_board: 互动白板时长
        # - sp_tiw_ric: 实时录制时长
        # @type SubProduct: String
        # @param Value: 用量值
        # - 白板时长、实时录制时长单位为分钟
        # @type Value: Float
        # @param RoomID: 互动白板房间号
        # @type RoomID: Integer

        attr_accessor :Time, :SdkAppId, :SubProduct, :Value, :RoomID
        
        def initialize(time=nil, sdkappid=nil, subproduct=nil, value=nil, roomid=nil)
          @Time = time
          @SdkAppId = sdkappid
          @SubProduct = subproduct
          @Value = value
          @RoomID = roomid
        end

        def deserialize(params)
          @Time = params['Time']
          @SdkAppId = params['SdkAppId']
          @SubProduct = params['SubProduct']
          @Value = params['Value']
          @RoomID = params['RoomID']
        end
      end

      # SetOfflineRecordCallback请求参数结构体
      class SetOfflineRecordCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Callback: 课后录制任务结果回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持 http或https协议，即回调地址以http://或https://开头
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

      # SetOfflineRecordCallback返回参数结构体
      class SetOfflineRecordCallbackResponse < TencentCloud::Common::AbstractModel
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

      # SetVideoGenerationTaskCallbackKey请求参数结构体
      class SetVideoGenerationTaskCallbackKeyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的SdkAppId
        # @type SdkAppId: Integer
        # @param CallbackKey: 设置视频生成回调鉴权密钥，最长64字符，如果传入空字符串，那么删除现有的鉴权回调密钥
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

      # SetVideoGenerationTaskCallbackKey返回参数结构体
      class SetVideoGenerationTaskCallbackKeyResponse < TencentCloud::Common::AbstractModel
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

      # SetVideoGenerationTaskCallback请求参数结构体
      class SetVideoGenerationTaskCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Callback: 课后录制任务结果回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持 http或https协议，即回调地址以http://或https://开头
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

      # SetVideoGenerationTaskCallback返回参数结构体
      class SetVideoGenerationTaskCallbackResponse < TencentCloud::Common::AbstractModel
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

      # SetWhiteboardPushCallbackKey请求参数结构体
      class SetWhiteboardPushCallbackKeyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的SdkAppId
        # @type SdkAppId: Integer
        # @param CallbackKey: 设置白板推流回调鉴权密钥，最长64字符，如果传入空字符串，那么删除现有的鉴权回调密钥。回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
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

      # SetWhiteboardPushCallbackKey返回参数结构体
      class SetWhiteboardPushCallbackKeyResponse < TencentCloud::Common::AbstractModel
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

      # SetWhiteboardPushCallback请求参数结构体
      class SetWhiteboardPushCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Callback: 白板推流任务结果回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持 http或https协议，即回调地址以http://或https://开头。回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40257
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

      # SetWhiteboardPushCallback返回参数结构体
      class SetWhiteboardPushCallbackResponse < TencentCloud::Common::AbstractModel
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

      # 板书文件存储cos参数
      class SnapshotCOS < TencentCloud::Common::AbstractModel
        # @param Uin: cos所在腾讯云帐号uin
        # @type Uin: Integer
        # @param Region: cos所在地区
        # @type Region: String
        # @param Bucket: cos存储桶名称
        # @type Bucket: String
        # @param TargetDir: 板书文件存储根目录
        # @type TargetDir: String
        # @param Domain: CDN加速域名
        # @type Domain: String

        attr_accessor :Uin, :Region, :Bucket, :TargetDir, :Domain
        
        def initialize(uin=nil, region=nil, bucket=nil, targetdir=nil, domain=nil)
          @Uin = uin
          @Region = region
          @Bucket = bucket
          @TargetDir = targetdir
          @Domain = domain
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @TargetDir = params['TargetDir']
          @Domain = params['Domain']
        end
      end

      # 白板板书结果
      class SnapshotResult < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 任务执行错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param Total: 快照生成图片总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Snapshots: 快照图片链接列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Snapshots: Array

        attr_accessor :ErrorCode, :ErrorMessage, :Total, :Snapshots
        
        def initialize(errorcode=nil, errormessage=nil, total=nil, snapshots=nil)
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @Total = total
          @Snapshots = snapshots
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @Total = params['Total']
          @Snapshots = params['Snapshots']
        end
      end

      # 生成白板板书时的白板参数，例如白板宽高等
      class SnapshotWhiteboard < TencentCloud::Common::AbstractModel
        # @param Width: 白板宽度大小，默认为1280，有效取值范围[0，2560]
        # @type Width: Integer
        # @param Height: 白板高度大小，默认为720，有效取值范围[0，2560]
        # @type Height: Integer
        # @param InitParams: 白板初始化参数的JSON转义字符串，透传到白板 SDK
        # @type InitParams: String

        attr_accessor :Width, :Height, :InitParams
        
        def initialize(width=nil, height=nil, initparams=nil)
          @Width = width
          @Height = height
          @InitParams = initparams
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @InitParams = params['InitParams']
        end
      end

      # StartOnlineRecord请求参数结构体
      class StartOnlineRecordRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param RoomId: 需要录制的房间号，取值范围: (1, 4294967295)
        # @type RoomId: Integer
        # @param RecordUserId: 用于录制服务进房的用户ID，最大长度不能大于60个字节，格式为`tic_record_user_${RoomId}_${Random}`，其中 `${RoomId} `与录制房间号对应，`${Random}`为一个随机字符串。
        # 该ID必须是一个单独的未在SDK中使用的ID，录制服务使用这个用户ID进入房间进行音视频与白板录制，若该ID和SDK中使用的ID重复，会导致SDK和录制服务互踢，影响正常录制。
        # @type RecordUserId: String
        # @param RecordUserSig: 与RecordUserId对应的签名
        # @type RecordUserSig: String
        # @param GroupId: （已废弃，设置无效）白板的 IM 群组 Id，默认同房间号
        # @type GroupId: String
        # @param Concat: 录制视频拼接参数
        # @type Concat: :class:`Tencentcloud::Tiw.v20190919.models.Concat`
        # @param Whiteboard: 录制白板参数，例如白板宽高等
        # @type Whiteboard: :class:`Tencentcloud::Tiw.v20190919.models.Whiteboard`
        # @param MixStream: 录制混流参数
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
        # @param RecordControl: 录制控制参数，用于更精细地指定需要录制哪些流，某一路流是否禁用音频，是否只录制小画面等
        # @type RecordControl: :class:`Tencentcloud::Tiw.v20190919.models.RecordControl`
        # @param RecordMode: 录制模式

        # REALTIME_MODE - 实时录制模式（默认）
        # VIDEO_GENERATION_MODE - 视频生成模式（内测中，需邮件申请开通）
        # @type RecordMode: String
        # @param ChatGroupId: 聊天群组ID，此字段仅适用于`视频生成模式`

        # 在`视频生成模式`下，默认会记录白板群组内的非白板信令消息，如果指定了`ChatGroupId`，则会记录指定群ID的聊天消息。
        # @type ChatGroupId: String
        # @param AutoStopTimeout: 自动停止录制超时时间，单位秒，取值范围[300, 86400], 默认值为300秒。

        # 当超过设定时间房间内没有音视频上行且没有白板操作的时候，录制服务会自动停止当前录制任务。
        # @type AutoStopTimeout: Integer
        # @param ExtraData: 内部参数，可忽略
        # @type ExtraData: String

        attr_accessor :SdkAppId, :RoomId, :RecordUserId, :RecordUserSig, :GroupId, :Concat, :Whiteboard, :MixStream, :Extras, :AudioFileNeeded, :RecordControl, :RecordMode, :ChatGroupId, :AutoStopTimeout, :ExtraData
        
        def initialize(sdkappid=nil, roomid=nil, recorduserid=nil, recordusersig=nil, groupid=nil, concat=nil, whiteboard=nil, mixstream=nil, extras=nil, audiofileneeded=nil, recordcontrol=nil, recordmode=nil, chatgroupid=nil, autostoptimeout=nil, extradata=nil)
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
          @RecordControl = recordcontrol
          @RecordMode = recordmode
          @ChatGroupId = chatgroupid
          @AutoStopTimeout = autostoptimeout
          @ExtraData = extradata
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @RecordUserId = params['RecordUserId']
          @RecordUserSig = params['RecordUserSig']
          @GroupId = params['GroupId']
          unless params['Concat'].nil?
            @Concat = Concat.new
            @Concat.deserialize(params['Concat'])
          end
          unless params['Whiteboard'].nil?
            @Whiteboard = Whiteboard.new
            @Whiteboard.deserialize(params['Whiteboard'])
          end
          unless params['MixStream'].nil?
            @MixStream = MixStream.new
            @MixStream.deserialize(params['MixStream'])
          end
          @Extras = params['Extras']
          @AudioFileNeeded = params['AudioFileNeeded']
          unless params['RecordControl'].nil?
            @RecordControl = RecordControl.new
            @RecordControl.deserialize(params['RecordControl'])
          end
          @RecordMode = params['RecordMode']
          @ChatGroupId = params['ChatGroupId']
          @AutoStopTimeout = params['AutoStopTimeout']
          @ExtraData = params['ExtraData']
        end
      end

      # StartOnlineRecord返回参数结构体
      class StartOnlineRecordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务Id
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

      # StartWhiteboardPush请求参数结构体
      class StartWhiteboardPushRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param RoomId: 需要推流的白板房间号，取值范围: (1, 4294967295)。

        # 1. 白板推流默认以RoomId的字符串表达形式作为IM群组的GroupID（比如RoomId为1234，则IM群组的GroupID为"1234"）加群进行信令同步，请在开始推流前确保相应IM群组已创建完成，否则会导致推流失败。
        # 2. 在没有指定TRTCRoomId和TRTCRoomIdStr的情况下，默认会以RoomId作为白板流进行推流的TRTC房间号。
        # @type RoomId: Integer
        # @param PushUserId: 用于白板推流服务进入白板房间的用户ID。在没有额外指定`IMAuthParam`和`TRTCAuthParam`的情况下，这个用户ID同时会用于IM登录、IM加群、TRTC进房推流等操作。
        # 用户ID最大长度不能大于60个字节，该用户ID必须是一个单独的未同时在其他地方使用的用户ID，白板推流服务使用这个用户ID进入房间进行白板音视频推流，若该用户ID和其他地方同时在使用的用户ID重复，会导致白板推流服务与其他使用场景帐号互踢，影响正常推流。
        # @type PushUserId: String
        # @param PushUserSig: 与PushUserId对应的IM签名(usersig)。
        # @type PushUserSig: String
        # @param Whiteboard: 白板参数，例如白板宽高、背景颜色等
        # @type Whiteboard: :class:`Tencentcloud::Tiw.v20190919.models.Whiteboard`
        # @param AutoStopTimeout: 自动停止推流超时时间，单位秒，取值范围[300, 259200], 默认值为1800秒。

        # 当白板超过设定时间没有操作的时候，白板推流服务会自动停止白板推流。
        # @type AutoStopTimeout: Integer
        # @param AutoManageBackup: 对主白板推流任务进行操作时，是否同时同步操作备份任务
        # @type AutoManageBackup: Boolean
        # @param Backup: 备份白板推流相关参数。

        # 指定了备份参数的情况下，白板推流服务会在房间内新增一路白板画面视频流，即同一个房间内会有两路白板画面推流。
        # @type Backup: :class:`Tencentcloud::Tiw.v20190919.models.WhiteboardPushBackupParam`
        # @param PrivateMapKey: TRTC高级权限控制参数，如果在实时音视频开启了高级权限控制功能，必须提供PrivateMapKey才能保证正常推流。
        # @type PrivateMapKey: String
        # @param VideoFPS: 白板推流视频帧率，取值范围[0, 30]，默认20fps
        # @type VideoFPS: Integer
        # @param VideoBitrate: 白板推流码率， 取值范围[0, 2000]，默认1200kbps。

        # 这里的码率设置是一个参考值，实际推流的时候使用的是动态码率，所以真实码率不会固定为指定值，会在指定值附近波动。
        # @type VideoBitrate: Integer
        # @param AutoRecord: 在实时音视频云端录制模式选择为 `指定用户录制` 模式的时候是否自动录制白板推流。

        # 默认在实时音视频的云端录制模式选择为 `指定用户录制` 模式的情况下，不会自动进行白板推流录制，如果希望进行白板推流录制，请将此参数设置为true。

        # 如果实时音视频的云端录制模式选择为 `全局自动录制` 模式，可忽略此参数。
        # @type AutoRecord: Boolean
        # @param UserDefinedRecordId: 指定白板推流录制的RecordID，指定的RecordID会用于填充实时音视频云端录制完成后的回调消息中的 "userdefinerecordid" 字段内容，便于您更方便的识别录制回调，以及在点播媒体资源管理中查找相应的录制视频文件。

        # 限制长度为64字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线和连词符。

        # 此字段设置后，不管`AutoRecord`字段取值如何，都将自动进行白板推流录制。

        # 默认RecordId生成规则如下：
        # urlencode(SdkAppID_RoomID_PushUserID)

        # 例如：
        # SdkAppID = 12345678，RoomID = 12345，PushUserID = push_user_1
        # 那么：RecordId = 12345678_12345_push_user_1
        # @type UserDefinedRecordId: String
        # @param AutoPublish: 在实时音视频旁路推流模式选择为`指定用户旁路`模式的时候，是否自动旁路白板推流。

        # 默认在实时音视频的旁路推流模式选择为 `指定用户旁路` 模式的情况下，不会自动旁路白板推流，如果希望旁路白板推流，请将此参数设置为true。

        # 如果实时音视频的旁路推流模式选择为 `全局自动旁路` 模式，可忽略此参数。
        # @type AutoPublish: Boolean
        # @param UserDefinedStreamId: 指定实时音视频在旁路白板推流时的StreamID，设置之后，您就可以在腾讯云直播 CDN 上通过标准直播方案（FLV或HLS）播放该用户的音视频流。

        # 限制长度为64字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线和连词符。

        # 此字段设置后，不管`AutoPublish`字段取值如何，都将自动旁路白板推流。

        # 默认StreamID生成规则如下：
        # urlencode(SdkAppID_RoomID_PushUserID_main)

        # 例如：
        # SdkAppID = 12345678，RoomID = 12345，PushUserID = push_user_1
        # 那么：StreamID = 12345678_12345_push_user_1_main
        # @type UserDefinedStreamId: String
        # @param ExtraData: 内部参数，不需要关注此参数
        # @type ExtraData: String
        # @param TRTCRoomId: TRTC数字类型房间号，取值范围: (1, 4294967295)。

        # 在同时指定了RoomId与TRTCRoomId的情况下，优先使用TRTCRoomId作为白板流进行推流的TRTC房间号。

        # 当指定了TRTCRoomIdStr的情况下，此字段将被忽略。
        # @type TRTCRoomId: Integer
        # @param TRTCRoomIdStr: TRTC字符串类型房间号。

        # 在指定了TRTCRoomIdStr的情况下，会优先使用TRTCRoomIdStr作为白板流进行推流的TRTC房间号。
        # @type TRTCRoomIdStr: String
        # @param IMAuthParam: IM鉴权信息参数，用于IM鉴权。
        # 当白板信令所使用的IM应用与白板应用的SdkAppId不一致时，可以通过此参数提供对应IM应用鉴权信息。

        # 如果提供了此参数，白板推流服务会优先使用此参数指定的SdkAppId作为白板信令的传输通道，否则使用公共参数中的SdkAppId作为白板信令的传输通道。
        # @type IMAuthParam: :class:`Tencentcloud::Tiw.v20190919.models.AuthParam`
        # @param TRTCAuthParam: TRTC鉴权信息参数，用于TRTC进房推流鉴权。
        # 当需要推流到的TRTC房间所对应的TRTC应用与白板应用的SdkAppId不一致时，可以通过此参数提供对应的TRTC应用鉴权信息。

        # 如果提供了此参数，白板推流服务会优先使用此参数指定的SdkAppId作为白板推流的目标TRTC应用，否则使用公共参数中的SdkAppId作为白板推流的目标TRTC应用。
        # @type TRTCAuthParam: :class:`Tencentcloud::Tiw.v20190919.models.AuthParam`
        # @param TRTCEnterRoomMode: 内测参数，需要提前申请白名单进行体验。

        # 指定白板推流时推流用户进TRTC房间的进房模式。默认为 TRTCAppSceneVideoCall

        # TRTCAppSceneVideoCall - 视频通话场景，即绝大多数时间都是两人或两人以上视频通话的场景，内部编码器和网络协议优化侧重流畅性，降低通话延迟和卡顿率。
        # TRTCAppSceneLIVE - 直播场景，即绝大多数时间都是一人直播，偶尔有多人视频互动的场景，内部编码器和网络协议优化侧重性能和兼容性，性能和清晰度表现更佳。
        # @type TRTCEnterRoomMode: String

        attr_accessor :SdkAppId, :RoomId, :PushUserId, :PushUserSig, :Whiteboard, :AutoStopTimeout, :AutoManageBackup, :Backup, :PrivateMapKey, :VideoFPS, :VideoBitrate, :AutoRecord, :UserDefinedRecordId, :AutoPublish, :UserDefinedStreamId, :ExtraData, :TRTCRoomId, :TRTCRoomIdStr, :IMAuthParam, :TRTCAuthParam, :TRTCEnterRoomMode
        
        def initialize(sdkappid=nil, roomid=nil, pushuserid=nil, pushusersig=nil, whiteboard=nil, autostoptimeout=nil, automanagebackup=nil, backup=nil, privatemapkey=nil, videofps=nil, videobitrate=nil, autorecord=nil, userdefinedrecordid=nil, autopublish=nil, userdefinedstreamid=nil, extradata=nil, trtcroomid=nil, trtcroomidstr=nil, imauthparam=nil, trtcauthparam=nil, trtcenterroommode=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @PushUserId = pushuserid
          @PushUserSig = pushusersig
          @Whiteboard = whiteboard
          @AutoStopTimeout = autostoptimeout
          @AutoManageBackup = automanagebackup
          @Backup = backup
          @PrivateMapKey = privatemapkey
          @VideoFPS = videofps
          @VideoBitrate = videobitrate
          @AutoRecord = autorecord
          @UserDefinedRecordId = userdefinedrecordid
          @AutoPublish = autopublish
          @UserDefinedStreamId = userdefinedstreamid
          @ExtraData = extradata
          @TRTCRoomId = trtcroomid
          @TRTCRoomIdStr = trtcroomidstr
          @IMAuthParam = imauthparam
          @TRTCAuthParam = trtcauthparam
          @TRTCEnterRoomMode = trtcenterroommode
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @PushUserId = params['PushUserId']
          @PushUserSig = params['PushUserSig']
          unless params['Whiteboard'].nil?
            @Whiteboard = Whiteboard.new
            @Whiteboard.deserialize(params['Whiteboard'])
          end
          @AutoStopTimeout = params['AutoStopTimeout']
          @AutoManageBackup = params['AutoManageBackup']
          unless params['Backup'].nil?
            @Backup = WhiteboardPushBackupParam.new
            @Backup.deserialize(params['Backup'])
          end
          @PrivateMapKey = params['PrivateMapKey']
          @VideoFPS = params['VideoFPS']
          @VideoBitrate = params['VideoBitrate']
          @AutoRecord = params['AutoRecord']
          @UserDefinedRecordId = params['UserDefinedRecordId']
          @AutoPublish = params['AutoPublish']
          @UserDefinedStreamId = params['UserDefinedStreamId']
          @ExtraData = params['ExtraData']
          @TRTCRoomId = params['TRTCRoomId']
          @TRTCRoomIdStr = params['TRTCRoomIdStr']
          unless params['IMAuthParam'].nil?
            @IMAuthParam = AuthParam.new
            @IMAuthParam.deserialize(params['IMAuthParam'])
          end
          unless params['TRTCAuthParam'].nil?
            @TRTCAuthParam = AuthParam.new
            @TRTCAuthParam.deserialize(params['TRTCAuthParam'])
          end
          @TRTCEnterRoomMode = params['TRTCEnterRoomMode']
        end
      end

      # StartWhiteboardPush返回参数结构体
      class StartWhiteboardPushResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 推流任务Id
        # @type TaskId: String
        # @param Backup: 备份任务结果参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Backup: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Backup, :RequestId
        
        def initialize(taskid=nil, backup=nil, requestid=nil)
          @TaskId = taskid
          @Backup = backup
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Backup = params['Backup']
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

      # StopWhiteboardPush请求参数结构体
      class StopWhiteboardPushRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 需要停止的白板推流任务 Id
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

      # StopWhiteboardPush返回参数结构体
      class StopWhiteboardPushResponse < TencentCloud::Common::AbstractModel
        # @param Backup: 备份任务相关参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Backup: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Backup, :RequestId
        
        def initialize(backup=nil, requestid=nil)
          @Backup = backup
          @RequestId = requestid
        end

        def deserialize(params)
          @Backup = params['Backup']
          @RequestId = params['RequestId']
        end
      end

      # 指定流录制的控制参数，比如是否禁用音频、视频是录制大画面还是录制小画面等
      class StreamControl < TencentCloud::Common::AbstractModel
        # @param StreamId: 视频流ID
        # 视频流ID的取值含义如下：
        # 1. tic_record_user - 表示白板视频流
        # 2. tic_substream - 表示辅路视频流
        # 3. 特定用户ID - 表示指定用户的视频流

        # 在实际录制过程中，视频流ID的匹配规则为前缀匹配，只要真实流ID的前缀与指定的流ID一致就认为匹配成功。
        # @type StreamId: String
        # @param DisableRecord: 设置是否对此路流开启录制。

        # true - 表示不对这路流进行录制，录制结果将不包含这路流的视频。
        # false - 表示需要对这路流进行录制，录制结果会包含这路流的视频。

        # 默认为 false。
        # @type DisableRecord: Boolean
        # @param DisableAudio: 设置是否禁用这路流的音频录制。

        # true - 表示不对这路流的音频进行录制，录制结果里这路流的视频将会没有声音。
        # false - 录制视频会保留音频，如果设置为true，则录制视频会丢弃这路流的音频。

        # 默认为 false。
        # @type DisableAudio: Boolean
        # @param PullSmallVideo: 设置当前流录制视频是否只录制小画面。

        # true - 录制小画面。设置为true时，请确保上行端同时上行了小画面，否则录制视频可能是黑屏。
        # false - 录制大画面。

        # 默认为 false。
        # @type PullSmallVideo: Boolean

        attr_accessor :StreamId, :DisableRecord, :DisableAudio, :PullSmallVideo
        
        def initialize(streamid=nil, disablerecord=nil, disableaudio=nil, pullsmallvideo=nil)
          @StreamId = streamid
          @DisableRecord = disablerecord
          @DisableAudio = disableaudio
          @PullSmallVideo = pullsmallvideo
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @DisableRecord = params['DisableRecord']
          @DisableAudio = params['DisableAudio']
          @PullSmallVideo = params['PullSmallVideo']
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
        # @param FillMode: 视频画面填充模式。

        # 0 - 自适应模式，对视频画面进行等比例缩放，在指定区域内显示完整的画面。此模式可能存在黑边。
        # 1 - 全屏模式，对视频画面进行等比例缩放，让画面填充满整个指定区域。此模式不会存在黑边，但会将超出区域的那一部分画面裁剪掉。
        # @type FillMode: Integer

        attr_accessor :LayoutParams, :InputStreamId, :BackgroundColor, :FillMode
        
        def initialize(layoutparams=nil, inputstreamid=nil, backgroundcolor=nil, fillmode=nil)
          @LayoutParams = layoutparams
          @InputStreamId = inputstreamid
          @BackgroundColor = backgroundcolor
          @FillMode = fillmode
        end

        def deserialize(params)
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          @InputStreamId = params['InputStreamId']
          @BackgroundColor = params['BackgroundColor']
          @FillMode = params['FillMode']
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
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

      # 查询指标返回的时间序列
      class TimeValue < TencentCloud::Common::AbstractModel
        # @param Time: Unix时间戳，单位秒
        # @type Time: Integer
        # @param Value: 查询指标对应当前时间的值
        # @type Value: Float

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

      # 转码任务结果
      class TranscodeTaskResult < TencentCloud::Common::AbstractModel
        # @param ResultUrl: 转码结果地址
        # @type ResultUrl: String
        # @param Resolution: 分辨率
        # @type Resolution: String
        # @param Title: 标题（一般为文件名）
        # @type Title: String
        # @param Pages: 转码页数
        # @type Pages: Integer
        # @param ThumbnailUrl: 缩略图URL前缀，比如，该URL前缀为http://example.com/g0jb42ps49vtebjshilb/，那么动态PPT第1页的缩略图URL为
        # http://example.com/g0jb42ps49vtebjshilb/1.jpg，其它页以此类推

        # 如果发起文档转码请求参数中带了ThumbnailResolution参数，并且转码类型为动态转码，该参数不为空，其余情况该参数为空字符串
        # @type ThumbnailUrl: String
        # @param ThumbnailResolution: 动态转码缩略图生成分辨率
        # @type ThumbnailResolution: String
        # @param CompressFileUrl: 转码压缩文件下载的URL，如果发起文档转码请求参数中CompressFileType为空或者不是支持的压缩格式，该参数为空字符串
        # @type CompressFileUrl: String
        # @param ErrorCode: 任务失败错误码
        # @type ErrorCode: Integer
        # @param ErrorMsg: 任务失败错误信息
        # @type ErrorMsg: String

        attr_accessor :ResultUrl, :Resolution, :Title, :Pages, :ThumbnailUrl, :ThumbnailResolution, :CompressFileUrl, :ErrorCode, :ErrorMsg
        
        def initialize(resulturl=nil, resolution=nil, title=nil, pages=nil, thumbnailurl=nil, thumbnailresolution=nil, compressfileurl=nil, errorcode=nil, errormsg=nil)
          @ResultUrl = resulturl
          @Resolution = resolution
          @Title = title
          @Pages = pages
          @ThumbnailUrl = thumbnailurl
          @ThumbnailResolution = thumbnailresolution
          @CompressFileUrl = compressfileurl
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @ResultUrl = params['ResultUrl']
          @Resolution = params['Resolution']
          @Title = params['Title']
          @Pages = params['Pages']
          @ThumbnailUrl = params['ThumbnailUrl']
          @ThumbnailResolution = params['ThumbnailResolution']
          @CompressFileUrl = params['CompressFileUrl']
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # 转码任务搜索结果
      class TranscodeTaskSearchResult < TencentCloud::Common::AbstractModel
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param Status: 任务的当前状态
        # - QUEUED: 正在排队等待转换
        # - PROCESSING: 转换中
        # - FINISHED: 转换完成
        # @type Status: String
        # @param OriginalFilename: 转码文件原始名称
        # @type OriginalFilename: String
        # @param SdkAppId: 用户应用SdkAppId
        # @type SdkAppId: Integer
        # @param Result: 转码任务结果
        # @type Result: :class:`Tencentcloud::Tiw.v20190919.models.TranscodeTaskResult`
        # @param IsStatic: 是否静态转码
        # @type IsStatic: Boolean

        attr_accessor :CreateTime, :TaskId, :Status, :OriginalFilename, :SdkAppId, :Result, :IsStatic
        
        def initialize(createtime=nil, taskid=nil, status=nil, originalfilename=nil, sdkappid=nil, result=nil, isstatic=nil)
          @CreateTime = createtime
          @TaskId = taskid
          @Status = status
          @OriginalFilename = originalfilename
          @SdkAppId = sdkappid
          @Result = result
          @IsStatic = isstatic
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @TaskId = params['TaskId']
          @Status = params['Status']
          @OriginalFilename = params['OriginalFilename']
          @SdkAppId = params['SdkAppId']
          unless params['Result'].nil?
            @Result = TranscodeTaskResult.new
            @Result.deserialize(params['Result'])
          end
          @IsStatic = params['IsStatic']
        end
      end

      # 互动白板用量信息
      class UsageDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 日期，格式为YYYY-MM-DD
        # @type Time: String
        # @param SdkAppId: 白板应用SDKAppID
        # @type SdkAppId: Integer
        # @param SubProduct: 互动白板子产品，请求参数传入的一致
        # - sp_tiw_board: 互动白板时长
        # - sp_tiw_dt: 动态转码页数
        # - sp_tiw_st: 静态转码页数
        # - sp_tiw_ric: 实时录制时长
        # @type SubProduct: String
        # @param Value: 用量值
        # - 静态转码、动态转码单位为页
        # - 白板时长、实时录制时长单位为分钟
        # @type Value: Float

        attr_accessor :Time, :SdkAppId, :SubProduct, :Value
        
        def initialize(time=nil, sdkappid=nil, subproduct=nil, value=nil)
          @Time = time
          @SdkAppId = sdkappid
          @SubProduct = subproduct
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @SdkAppId = params['SdkAppId']
          @SubProduct = params['SubProduct']
          @Value = params['Value']
        end
      end

      # 日志查询里返回的白板用户数据
      class UserListItem < TencentCloud::Common::AbstractModel
        # @param UserId: 房间内的用户ID
        # @type UserId: String
        # @param StartTime: 用户在查询时间段内最早出现的时间，Unix时间戳，单位毫秒
        # @type StartTime: Integer
        # @param EndTime: 用户在查询时间段内最晚出现的时间，Unix时间戳，单位毫秒
        # @type EndTime: Integer

        attr_accessor :UserId, :StartTime, :EndTime
        
        def initialize(userid=nil, starttime=nil, endtime=nil)
          @UserId = userid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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
        # @param Width: 视频分辨率的宽
        # @type Width: Integer
        # @param Height: 视频分辨率的高
        # @type Height: Integer

        attr_accessor :VideoPlayTime, :VideoSize, :VideoFormat, :VideoDuration, :VideoUrl, :VideoId, :VideoType, :UserId, :Width, :Height
        
        def initialize(videoplaytime=nil, videosize=nil, videoformat=nil, videoduration=nil, videourl=nil, videoid=nil, videotype=nil, userid=nil, width=nil, height=nil)
          @VideoPlayTime = videoplaytime
          @VideoSize = videosize
          @VideoFormat = videoformat
          @VideoDuration = videoduration
          @VideoUrl = videourl
          @VideoId = videoid
          @VideoType = videotype
          @UserId = userid
          @Width = width
          @Height = height
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
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 实时录制白板参数，例如白板宽高等
      class Whiteboard < TencentCloud::Common::AbstractModel
        # @param Width: 实时录制结果里白板视频宽，取值必须大于等于2，默认为1280
        # @type Width: Integer
        # @param Height: 实时录制结果里白板视频高，取值必须大于等于2，默认为960
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

      # 白板应用配置，包括资源存储桶，域名，回调地址，回调密钥等
      class WhiteboardApplicationConfig < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型

        # recording: 实时录制
        # transcode: 文档转码
        # @type TaskType: String
        # @param BucketName: 存储桶名字
        # @type BucketName: String
        # @param BucketLocation: 存储桶地域
        # @type BucketLocation: String
        # @param BucketPrefix: 资源在存储桶中的前缀
        # @type BucketPrefix: String
        # @param ResultDomain: 目标CDN域名
        # @type ResultDomain: String
        # @param Callback: 回调地址
        # @type Callback: String
        # @param CallbackKey: 回调鉴权密钥
        # @type CallbackKey: String
        # @param SdkAppId: 配置的应用SdkAppId
        # @type SdkAppId: Integer
        # @param AdminUserId: IM管理员UserId
        # @type AdminUserId: String
        # @param AdminUserSig: IM管理员UserSig
        # @type AdminUserSig: String

        attr_accessor :TaskType, :BucketName, :BucketLocation, :BucketPrefix, :ResultDomain, :Callback, :CallbackKey, :SdkAppId, :AdminUserId, :AdminUserSig
        
        def initialize(tasktype=nil, bucketname=nil, bucketlocation=nil, bucketprefix=nil, resultdomain=nil, callback=nil, callbackkey=nil, sdkappid=nil, adminuserid=nil, adminusersig=nil)
          @TaskType = tasktype
          @BucketName = bucketname
          @BucketLocation = bucketlocation
          @BucketPrefix = bucketprefix
          @ResultDomain = resultdomain
          @Callback = callback
          @CallbackKey = callbackkey
          @SdkAppId = sdkappid
          @AdminUserId = adminuserid
          @AdminUserSig = adminusersig
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @BucketName = params['BucketName']
          @BucketLocation = params['BucketLocation']
          @BucketPrefix = params['BucketPrefix']
          @ResultDomain = params['ResultDomain']
          @Callback = params['Callback']
          @CallbackKey = params['CallbackKey']
          @SdkAppId = params['SdkAppId']
          @AdminUserId = params['AdminUserId']
          @AdminUserSig = params['AdminUserSig']
        end
      end

      # 白板推流备份相关请求参数
      class WhiteboardPushBackupParam < TencentCloud::Common::AbstractModel
        # @param PushUserId: 用于白板推流服务进房的用户ID，
        # 该ID必须是一个单独的未在SDK中使用的ID，白板推流服务将使用这个用户ID进入房间进行白板推流，若该ID和SDK中使用的ID重复，会导致SDK和录制服务互踢，影响正常推流。
        # @type PushUserId: String
        # @param PushUserSig: 与PushUserId对应的签名
        # @type PushUserSig: String

        attr_accessor :PushUserId, :PushUserSig
        
        def initialize(pushuserid=nil, pushusersig=nil)
          @PushUserId = pushuserid
          @PushUserSig = pushusersig
        end

        def deserialize(params)
          @PushUserId = params['PushUserId']
          @PushUserSig = params['PushUserSig']
        end
      end

      # 白板推流任务结果
      class WhiteboardPushResult < TencentCloud::Common::AbstractModel
        # @param FinishReason: AUTO - 自动停止推流， USER_CALL - 用户主动调用停止推流
        # @type FinishReason: String
        # @param ExceptionCnt: 异常数
        # @type ExceptionCnt: Integer
        # @param RoomId: 房间号
        # @type RoomId: Integer
        # @param GroupId: IM群组ID
        # @type GroupId: String
        # @param PushStartTime: 推流真实开始时间
        # @type PushStartTime: Integer
        # @param PushStopTime: 推流结束时间
        # @type PushStopTime: Integer
        # @param IMSyncTime: 白板推流首帧对应的IM时间戳，可用于录制回放时IM聊天消息与白板推流视频进行同步对时。
        # @type IMSyncTime: Integer
        # @param ErrorCode: 任务失败错误码
        # @type ErrorCode: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String

        attr_accessor :FinishReason, :ExceptionCnt, :RoomId, :GroupId, :PushStartTime, :PushStopTime, :IMSyncTime, :ErrorCode, :ErrorMsg
        
        def initialize(finishreason=nil, exceptioncnt=nil, roomid=nil, groupid=nil, pushstarttime=nil, pushstoptime=nil, imsynctime=nil, errorcode=nil, errormsg=nil)
          @FinishReason = finishreason
          @ExceptionCnt = exceptioncnt
          @RoomId = roomid
          @GroupId = groupid
          @PushStartTime = pushstarttime
          @PushStopTime = pushstoptime
          @IMSyncTime = imsynctime
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          @ExceptionCnt = params['ExceptionCnt']
          @RoomId = params['RoomId']
          @GroupId = params['GroupId']
          @PushStartTime = params['PushStartTime']
          @PushStopTime = params['PushStopTime']
          @IMSyncTime = params['IMSyncTime']
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # 实时录制任务搜索结果
      class WhiteboardPushTaskSearchResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param Status: 白板推流任务状态
        # - PREPARED: 推流在准备阶段
        # - PUSHING: 正在推流
        # - STOPPED：推流已停止
        # @type Status: String
        # @param RoomId: 白板推流房间号
        # @type RoomId: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param SdkAppId: 用户应用SdkAppId
        # @type SdkAppId: Integer
        # @param Result: 白板推流结果
        # @type Result: :class:`Tencentcloud::Tiw.v20190919.models.WhiteboardPushResult`
        # @param PushUserId: 白板推流用户ID
        # @type PushUserId: String

        attr_accessor :TaskId, :Status, :RoomId, :CreateTime, :SdkAppId, :Result, :PushUserId
        
        def initialize(taskid=nil, status=nil, roomid=nil, createtime=nil, sdkappid=nil, result=nil, pushuserid=nil)
          @TaskId = taskid
          @Status = status
          @RoomId = roomid
          @CreateTime = createtime
          @SdkAppId = sdkappid
          @Result = result
          @PushUserId = pushuserid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @RoomId = params['RoomId']
          @CreateTime = params['CreateTime']
          @SdkAppId = params['SdkAppId']
          unless params['Result'].nil?
            @Result = WhiteboardPushResult.new
            @Result.deserialize(params['Result'])
          end
          @PushUserId = params['PushUserId']
        end
      end

    end
  end
end

