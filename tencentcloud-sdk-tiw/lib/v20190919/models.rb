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
  module Tiw
    module V20190919
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

      # CreatePPTCheckTask请求参数结构体
      class CreatePPTCheckTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Url: 经过URL编码后的PPT文件地址。URL 编码会将字符转换为可通过因特网传输的格式，例如文档地址为http://example.com/测试.pptx，经过URL编码之后为http://example.com/%E6%B5%8B%E8%AF%95.pptx。为了提高URL解析的成功率，请对URL进行编码。
        # @type Url: String
        # @param AutoHandleUnsupportedElement: 是否对不支持元素开启自动处理的功能，默认不开启。
        # true -- 开启
        # false -- 不开启

        # 当设置为`true`时，可配合`AutoHandleUnsupportedElementTypes`参数使用，具体有哪些不兼容元素类型，可参考`AutoHandleUnsupportedElementTypes`参数的说明。
        # @type AutoHandleUnsupportedElement: Boolean
        # @param AutoHandleUnsupportedElementTypes: 此参数仅在`AutoHandleUnsupportedElement`参数为`true`的情况下有效。

        # 指定需要自动处理的不兼容元素类型，默认对所有不兼容的元素进行自动处理。

        # 目前支持检测的不兼容元素类型及对应的自动处理方式如下：
        # 0: 不支持的墨迹类型
        # -- 自动处理方式：移除墨迹

        # 1: 自动翻页
        # -- 自动处理方式：移除自动翻页设置，并修改为单击切换

        # 2: 已损坏音视频
        # -- 自动处理方式：移除对损坏音视频的引用

        # 3: 不可访问资源
        # -- 自动处理方式：移除对不可访问的资源的引用

        # 4: 只读文件
        # -- 自动处理方式：移除只读设置

        # 5: 不支持的元素编辑锁定状态
        # -- 自动处理方式：移除锁定状态

        # 6: 可能有兼容问题的字体
        # -- 自动处理方式： 不支持处理

        # 7: 设置了柔化边缘的GIF图片
        # -- 自动处理方式：移除柔化边缘设置

        # 8: 存在不兼容的空格下划线
        # -- 自动处理方式：通过调整空格下划线前后文本的字体语言体系，保证空格下划线表现正常

        # 9: 存在设置了分段动画的数学公式和文本混合内容
        # -- 自动处理方式： 不支持处理

        # 10: 存在设置了分段动画的渐变色文本
        # -- 自动处理方式： 不支持处理

        # 11: 存在不兼容的分散对齐方式
        # -- 自动处理方式： 不支持处理

        # 12: 存在不兼容的多倍行距设置
        # -- 自动处理方式： 不支持处理

        # 13: 存在带有特殊符号内容的datetime类型的a:fld标签元素
        # -- 自动处理方式： a:fld标签替换为普通文本
        # @type AutoHandleUnsupportedElementTypes: Array

        attr_accessor :SdkAppId, :Url, :AutoHandleUnsupportedElement, :AutoHandleUnsupportedElementTypes

        def initialize(sdkappid=nil, url=nil, autohandleunsupportedelement=nil, autohandleunsupportedelementtypes=nil)
          @SdkAppId = sdkappid
          @Url = url
          @AutoHandleUnsupportedElement = autohandleunsupportedelement
          @AutoHandleUnsupportedElementTypes = autohandleunsupportedelementtypes
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Url = params['Url']
          @AutoHandleUnsupportedElement = params['AutoHandleUnsupportedElement']
          @AutoHandleUnsupportedElementTypes = params['AutoHandleUnsupportedElementTypes']
        end
      end

      # CreatePPTCheckTask返回参数结构体
      class CreatePPTCheckTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 检测任务的唯一标识Id，用于查询该任务的进度以及检测结果
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param AutoHandleUnsupportedElement: 此参数仅对动态转码生效。

        # 是否对不支持元素开启自动处理的功能，默认不开启。
        # true -- 开启
        # false -- 不开启

        # 当设置为`true`时，可配合`AutoHandleUnsupportedElementTypes`参数使用，具体有哪些不兼容元素类型，可参考`AutoHandleUnsupportedElementTypes`参数的说明。
        # @type AutoHandleUnsupportedElement: Boolean
        # @param AutoHandleUnsupportedElementTypes: 此参数仅在`AutoHandleUnsupportedElement`参数为`true`的情况下有效。

        # 指定需要自动处理的不兼容元素类型，默认对所有不兼容的元素进行自动处理。

        # 目前支持检测的不兼容元素类型及对应的自动处理方式如下：
        # 0: 不支持的墨迹类型
        # -- 自动处理方式：移除墨迹

        # 1: 自动翻页
        # -- 自动处理方式：移除自动翻页设置，并修改为单击切换

        # 2: 已损坏音视频
        # -- 自动处理方式：移除对损坏音视频的引用

        # 3: 不可访问资源
        # -- 自动处理方式：移除对不可访问的资源的引用

        # 4: 只读文件
        # -- 自动处理方式：移除只读设置

        # 5: 不支持的元素编辑锁定状态
        # -- 自动处理方式：移除锁定状态

        # 6: 可能有兼容问题的字体
        # -- 自动处理方式： 不支持处理

        # 7: 设置了柔化边缘的GIF图片
        # -- 自动处理方式：移除柔化边缘设置

        # 8: 存在不兼容的空格下划线
        # -- 自动处理方式：通过调整空格下划线前后文本的字体语言体系，保证空格下划线表现正常

        # 9: 存在设置了分段动画的数学公式和文本混合内容
        # -- 自动处理方式： 不支持处理

        # 10: 存在设置了分段动画的渐变色文本
        # -- 自动处理方式： 不支持处理

        # 11: 存在不兼容的分散对齐方式
        # -- 自动处理方式： 不支持处理

        # 12: 存在不兼容的多倍行距设置
        # -- 自动处理方式： 不支持处理

        # 13: 存在带有特殊符号内容的datetime类型的a:fld标签元素
        # -- 自动处理方式： a:fld标签替换为普通文本
        # @type AutoHandleUnsupportedElementTypes: Array
        # @param ExcelParam: Excel表格转码参数，可设置转码时表格纸张大小及纸张方向等参数（仅对转码文件为Excel表格文件的静态转码任务生效）
        # @type ExcelParam: :class:`Tencentcloud::Tiw.v20190919.models.ExcelParam`

        attr_accessor :SdkAppId, :Url, :IsStaticPPT, :MinResolution, :ThumbnailResolution, :CompressFileType, :ExtraData, :Priority, :MinScaleResolution, :AutoHandleUnsupportedElement, :AutoHandleUnsupportedElementTypes, :ExcelParam

        def initialize(sdkappid=nil, url=nil, isstaticppt=nil, minresolution=nil, thumbnailresolution=nil, compressfiletype=nil, extradata=nil, priority=nil, minscaleresolution=nil, autohandleunsupportedelement=nil, autohandleunsupportedelementtypes=nil, excelparam=nil)
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
          @AutoHandleUnsupportedElementTypes = autohandleunsupportedelementtypes
          @ExcelParam = excelparam
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
          @AutoHandleUnsupportedElementTypes = params['AutoHandleUnsupportedElementTypes']
          unless params['ExcelParam'].nil?
            @ExcelParam = ExcelParam.new
            @ExcelParam.deserialize(params['ExcelParam'])
          end
        end
      end

      # CreateTranscode返回参数结构体
      class CreateTranscodeResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 文档转码任务的唯一标识Id，用于查询该任务的进度以及转码结果
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param OnlineRecordTaskId: 实时录制任务的TaskId
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribePPTCheckCallback请求参数结构体
      class DescribePPTCheckCallbackRequest < TencentCloud::Common::AbstractModel
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

      # DescribePPTCheckCallback返回参数结构体
      class DescribePPTCheckCallbackResponse < TencentCloud::Common::AbstractModel
        # @param Callback: 回调地址
        # @type Callback: String
        # @param CallbackKey: 回调鉴权密钥
        # @type CallbackKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribePPTCheck请求参数结构体
      class DescribePPTCheckRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param TaskId: 任务的唯一标识Id
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

      # DescribePPTCheck返回参数结构体
      class DescribePPTCheckResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务的唯一标识Id
        # @type TaskId: String
        # @param IsOK: PPT文件是否正常
        # @type IsOK: Boolean
        # @param ResultUrl: 修复后的PPT URL，只有创建任务时参数AutoHandleUnsupportedElement=true，才返回此参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultUrl: String
        # @param Slides: 错误PPT页面列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Slides: Array
        # @param Status: 任务的当前状态 - QUEUED: 正在排队等待 - PROCESSING: 执行中 - FINISHED: 执行完成
        # @type Status: String
        # @param Progress: 当前进度,取值范围为0~100
        # @type Progress: Integer
        # @param Errs: 错误列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :IsOK, :ResultUrl, :Slides, :Status, :Progress, :Errs, :RequestId

        def initialize(taskid=nil, isok=nil, resulturl=nil, slides=nil, status=nil, progress=nil, errs=nil, requestid=nil)
          @TaskId = taskid
          @IsOK = isok
          @ResultUrl = resulturl
          @Slides = slides
          @Status = status
          @Progress = progress
          @Errs = errs
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @IsOK = params['IsOK']
          @ResultUrl = params['ResultUrl']
          unless params['Slides'].nil?
            @Slides = []
            params['Slides'].each do |i|
              ppterrslide_tmp = PPTErrSlide.new
              ppterrslide_tmp.deserialize(i)
              @Slides << ppterrslide_tmp
            end
          end
          @Status = params['Status']
          @Progress = params['Progress']
          unless params['Errs'].nil?
            @Errs = []
            params['Errs'].each do |i|
              ppterr_tmp = PPTErr.new
              ppterr_tmp.deserialize(i)
              @Errs << ppterr_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRunningTasks请求参数结构体
      class DescribeRunningTasksRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppID: 应用的SdkAppID
        # @type SdkAppID: Integer
        # @param TaskType: 指定需要获取的任务类型。
        # 有效取值如下：
        # - TranscodeH5: 动态转码任务，文档转HTML5页面
        # - TranscodeJPG: 静态转码任务，文档转图片
        # - WhiteboardPush: 白板推流任务
        # - OnlineRecord: 实时录制任务
        # @type TaskType: String
        # @param Offset: 分页获取时的任务偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 每次获取任务列表时最大获取任务数，默认值为100。
        # 有效取值范围：[1, 500]
        # @type Limit: Integer

        attr_accessor :SdkAppID, :TaskType, :Offset, :Limit

        def initialize(sdkappid=nil, tasktype=nil, offset=nil, limit=nil)
          @SdkAppID = sdkappid
          @TaskType = tasktype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SdkAppID = params['SdkAppID']
          @TaskType = params['TaskType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRunningTasks返回参数结构体
      class DescribeRunningTasksResponse < TencentCloud::Common::AbstractModel
        # @param Total: 当前正在执行中的任务总数
        # @type Total: Integer
        # @param Tasks: 任务信息列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Tasks, :RequestId

        def initialize(total=nil, tasks=nil, requestid=nil)
          @Total = total
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              runningtaskitem_tmp = RunningTaskItem.new
              runningtaskitem_tmp.deserialize(i)
              @Tasks << runningtaskitem_tmp
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTranscodeByUrl请求参数结构体
      class DescribeTranscodeByUrlRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Url: 经过URL编码后的转码文件地址。URL 编码会将字符转换为可通过因特网传输的格式，比如文档地址为http://example.com/测试.pdf，经过URL编码之后为http://example.com/%E6%B5%8B%E8%AF%95.pdf。为了提高URL解析的成功率，请对URL进行编码。
        # @type Url: String

        attr_accessor :SdkAppId, :Url

        def initialize(sdkappid=nil, url=nil)
          @SdkAppId = sdkappid
          @Url = url
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Url = params['Url']
        end
      end

      # DescribeTranscodeByUrl返回参数结构体
      class DescribeTranscodeByUrlResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 转码的当前进度,取值范围为0~100
        # @type Progress: Integer
        # @param Status: 任务的当前状态
        # - QUEUED: 正在排队等待转换
        # - PROCESSING: 转换中
        # - FINISHED: 转换完成
        # - EXCEPTION: 转换异常
        # @type Status: String
        # @param TaskId: 转码任务的唯一标识Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Progress, :Status, :TaskId, :RequestId

        def initialize(progress=nil, status=nil, taskid=nil, requestid=nil)
          @Progress = progress
          @Status = status
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @Status = params['Status']
          @TaskId = params['TaskId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param CreateTime: 文档转码任务创建时间，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param AssignTime: 文档转码任务分配时间，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssignTime: Integer
        # @param FinishedTime: 文档转码任务完成时间，单位s
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinishedTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Pages, :Progress, :Resolution, :ResultUrl, :Status, :TaskId, :Title, :ThumbnailUrl, :ThumbnailResolution, :CompressFileUrl, :ResourceListUrl, :Ext, :CreateTime, :AssignTime, :FinishedTime, :RequestId

        def initialize(pages=nil, progress=nil, resolution=nil, resulturl=nil, status=nil, taskid=nil, title=nil, thumbnailurl=nil, thumbnailresolution=nil, compressfileurl=nil, resourcelisturl=nil, ext=nil, createtime=nil, assigntime=nil, finishedtime=nil, requestid=nil)
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
          @CreateTime = createtime
          @AssignTime = assigntime
          @FinishedTime = finishedtime
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
          @CreateTime = params['CreateTime']
          @AssignTime = params['AssignTime']
          @FinishedTime = params['FinishedTime']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeWarningCallback请求参数结构体
      class DescribeWarningCallbackRequest < TencentCloud::Common::AbstractModel
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

      # DescribeWarningCallback返回参数结构体
      class DescribeWarningCallbackResponse < TencentCloud::Common::AbstractModel
        # @param Callback: 告警事件回调地址，如果未设置回调地址，该字段为空字符串
        # @type Callback: String
        # @param CallbackKey: 告警回调鉴权密钥
        # @type CallbackKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # Excel转码相关参数
      class ExcelParam < TencentCloud::Common::AbstractModel
        # @param PaperSize: 表格转码纸张（画布）大小，默认为0。
        # 0 -- A4
        # 1 -- A2
        # 2 -- A0

        # 注：当设置的值超出合法取值范围时，将采用默认值。
        # @type PaperSize: Integer
        # @param PaperDirection: 表格文件转换纸张方向，默认为0。
        # 0 -- 代表垂直方向
        # 非0 -- 代表水平方向
        # @type PaperDirection: Integer

        attr_accessor :PaperSize, :PaperDirection

        def initialize(papersize=nil, paperdirection=nil)
          @PaperSize = papersize
          @PaperDirection = paperdirection
        end

        def deserialize(params)
          @PaperSize = params['PaperSize']
          @PaperDirection = params['PaperDirection']
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

      # PPT错误元素
      class PPTErr < TencentCloud::Common::AbstractModel
        # @param Name: 元素名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 0: 不支持的墨迹类型，1: 不支持自动翻页，2: 存在已损坏音视频，3: 存在不可访问资源，4: 只读文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Detail: 错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: String

        attr_accessor :Name, :Type, :Detail

        def initialize(name=nil, type=nil, detail=nil)
          @Name = name
          @Type = type
          @Detail = detail
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Detail = params['Detail']
        end
      end

      # PPT错误页面列表
      class PPTErrSlide < TencentCloud::Common::AbstractModel
        # @param Page: 异常元素存在的页面，由页面类型+页码组成，页码类型包括：幻灯片、幻灯片母版、幻灯片布局等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Page: String
        # @param Errs: 错误元素列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Errs: Array

        attr_accessor :Page, :Errs

        def initialize(page=nil, errs=nil)
          @Page = page
          @Errs = errs
        end

        def deserialize(params)
          @Page = params['Page']
          unless params['Errs'].nil?
            @Errs = []
            params['Errs'].each do |i|
              ppterr_tmp = PPTErr.new
              ppterr_tmp.deserialize(i)
              @Errs << ppterr_tmp
            end
          end
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

      # 正在运行的任务列表项
      class RunningTaskItem < TencentCloud::Common::AbstractModel
        # @param SdkAppID: 应用SdkAppID
        # @type SdkAppID: Integer
        # @param TaskID: 任务ID
        # @type TaskID: String
        # @param TaskType: 任务类型
        # - TranscodeH5: 动态转码任务，文档转HTML5页面
        # - TranscodeJPG: 静态转码任务，文档转图片
        # - WhiteboardPush: 白板推流任务
        # - OnlineRecord: 实时录制任务
        # @type TaskType: String
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param CancelTime: 任务取消时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CancelTime: String
        # @param Status: 任务状态
        # - QUEUED: 任务正在排队等待执行中
        # - PROCESSING: 任务正在执行中
        # - FINISHED: 任务已完成
        # @type Status: String
        # @param Progress: 任务当前进度
        # @type Progress: Integer
        # @param FileURL: 转码任务中转码文件的原始URL
        # 此参数只有任务类型为TranscodeH5、TranscodeJPG类型时才会有有效值。其他任务类型为空字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileURL: String
        # @param RoomID: 房间号

        # 当任务类型为TranscodeH5、TranscodeJPG时，房间号为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomID: Integer

        attr_accessor :SdkAppID, :TaskID, :TaskType, :CreateTime, :CancelTime, :Status, :Progress, :FileURL, :RoomID

        def initialize(sdkappid=nil, taskid=nil, tasktype=nil, createtime=nil, canceltime=nil, status=nil, progress=nil, fileurl=nil, roomid=nil)
          @SdkAppID = sdkappid
          @TaskID = taskid
          @TaskType = tasktype
          @CreateTime = createtime
          @CancelTime = canceltime
          @Status = status
          @Progress = progress
          @FileURL = fileurl
          @RoomID = roomid
        end

        def deserialize(params)
          @SdkAppID = params['SdkAppID']
          @TaskID = params['TaskID']
          @TaskType = params['TaskType']
          @CreateTime = params['CreateTime']
          @CancelTime = params['CancelTime']
          @Status = params['Status']
          @Progress = params['Progress']
          @FileURL = params['FileURL']
          @RoomID = params['RoomID']
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

      # SetPPTCheckCallbackKey请求参数结构体
      class SetPPTCheckCallbackKeyRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的SdkAppId
        # @type SdkAppId: Integer
        # @param CallbackKey: 设置回调鉴权密钥，最长64字符，如果传入空字符串，那么删除现有的鉴权回调密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
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

      # SetPPTCheckCallbackKey返回参数结构体
      class SetPPTCheckCallbackKeyResponse < TencentCloud::Common::AbstractModel
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

      # SetPPTCheckCallback请求参数结构体
      class SetPPTCheckCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Callback: 进度回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持http或https协议，即回调地址以http://或https://开头。 回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260#c9cbe05f-fe1a-4410-b4dc-40cc301c7b81
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

      # SetPPTCheckCallback返回参数结构体
      class SetPPTCheckCallbackResponse < TencentCloud::Common::AbstractModel
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

      # SetWarningCallback请求参数结构体
      class SetWarningCallbackRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 客户的SdkAppId
        # @type SdkAppId: Integer
        # @param Callback: 告警回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持http或https协议，即回调地址以http://或https://开头。
        # 回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/90112
        # @type Callback: String
        # @param CallbackKey: 设置告警回调鉴权密钥，最长64字符，如果传入空字符串，那么删除现有的鉴权回调密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
        # @type CallbackKey: String

        attr_accessor :SdkAppId, :Callback, :CallbackKey

        def initialize(sdkappid=nil, callback=nil, callbackkey=nil)
          @SdkAppId = sdkappid
          @Callback = callback
          @CallbackKey = callbackkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Callback = params['Callback']
          @CallbackKey = params['CallbackKey']
        end
      end

      # SetWarningCallback返回参数结构体
      class SetWarningCallbackResponse < TencentCloud::Common::AbstractModel
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

      # 板书文件存储cos参数
      class SnapshotCOS < TencentCloud::Common::AbstractModel
        # @param Uin: cos所在腾讯云账号uin
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
        # @param RoomId: 需要录制的白板房间号，取值范围: (1, 4294967295)。

        # 1. 在没有指定`GroupId`的情况下，实时录制默认以`RoomId`的字符串表达形式作为同步白板信令的IM群组ID（比如`RoomId`为12358，则IM群组ID为"12358"），并加群进行信令同步，请在开始录制前确保相应IM群组已创建完成，否则会导致录制失败。
        # 2. 在没有指定`TRTCRoomId`和`TRTCRoomIdStr`的情况下，默认会以`RoomId`作为TRTC房间号进房拉流进行录制。
        # @type RoomId: Integer
        # @param RecordUserId: 用于录制服务进房的用户ID，最大长度不能大于60个字节，格式为`tic_record_user_${RoomId}_${Random}`，其中 `${RoomId} `与录制房间号对应，`${Random}`为一个随机字符串。
        # 该ID必须是一个单独的未在SDK中使用的ID，录制服务使用这个用户ID进入房间进行音视频与白板录制，若该ID和SDK中使用的ID重复，会导致SDK和录制服务互踢，影响正常录制。
        # @type RecordUserId: String
        # @param RecordUserSig: 与`RecordUserId`对应的IM签名
        # @type RecordUserSig: String
        # @param GroupId: 白板进行信令同步的 IM 群组 ID。
        # 在没有指定`GroupId`的情况下，实时录制服务将使用 `RoomId` 的字符串形式作为同步白板信令的IM群组ID。
        # 在指定了`GroupId`的情况下，实时录制将优先使用`GroupId`作为同步白板信令的群组ID。请在开始录制前确保相应的IM群组已创建完成，否则会导致录制失败。
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
        # @param TRTCRoomId: TRTC数字类型房间号，取值范围: (1, 4294967295)。

        # 在同时指定了`RoomId`与`TRTCRoomId`的情况下，优先使用`TRTCRoomId`作为实时录制拉TRTC流的TRTC房间号。

        # 当指定了`TRTCRoomIdStr`的情况下，此字段将被忽略。
        # @type TRTCRoomId: Integer
        # @param TRTCRoomIdStr: TRTC字符串类型房间号。

        # 在指定了`TRTCRoomIdStr`的情况下，会优先使用`TRTCRoomIdStr`作为实时录制拉TRTC流的TRTC房间号。
        # @type TRTCRoomIdStr: String

        attr_accessor :SdkAppId, :RoomId, :RecordUserId, :RecordUserSig, :GroupId, :Concat, :Whiteboard, :MixStream, :Extras, :AudioFileNeeded, :RecordControl, :RecordMode, :ChatGroupId, :AutoStopTimeout, :ExtraData, :TRTCRoomId, :TRTCRoomIdStr

        def initialize(sdkappid=nil, roomid=nil, recorduserid=nil, recordusersig=nil, groupid=nil, concat=nil, whiteboard=nil, mixstream=nil, extras=nil, audiofileneeded=nil, recordcontrol=nil, recordmode=nil, chatgroupid=nil, autostoptimeout=nil, extradata=nil, trtcroomid=nil, trtcroomidstr=nil)
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
          @TRTCRoomId = trtcroomid
          @TRTCRoomIdStr = trtcroomidstr
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
          @TRTCRoomId = params['TRTCRoomId']
          @TRTCRoomIdStr = params['TRTCRoomIdStr']
        end
      end

      # StartOnlineRecord返回参数结构体
      class StartOnlineRecordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

        # 1. 在没有指定`GroupId`的情况下，白板推流默认以`RoomId`的字符串表达形式作为IM群组ID（比如RoomId为1234，则IM群组ID为"1234"），并加群进行信令同步，请在开始推流前确保相应IM群组已创建完成，否则会导致推流失败。
        # 2. 在没有指定`TRTCRoomId`和`TRTCRoomIdStr`的情况下，默认会以`RoomId`作为白板流进行推流的TRTC房间号。
        # @type RoomId: Integer
        # @param PushUserId: 用于白板推流服务进入白板房间的用户ID。在没有额外指定`IMAuthParam`和`TRTCAuthParam`的情况下，这个用户ID同时会用于IM登录、IM加群、TRTC进房推流等操作。
        # 用户ID最大长度不能大于60个字节，该用户ID必须是一个单独的未同时在其他地方使用的用户ID，白板推流服务使用这个用户ID进入房间进行白板音视频推流，若该用户ID和其他地方同时在使用的用户ID重复，会导致白板推流服务与其他使用场景账号互踢，影响正常推流。
        # @type PushUserId: String
        # @param PushUserSig: 与`PushUserId`对应的IM签名(usersig)。
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
        # @param UserDefinedRecordId: 指定白板推流这路流在音视频云端录制中的RecordID，指定的RecordID会用于填充实时音视频云端录制完成后的回调消息中的 "userdefinerecordid" 字段内容，便于您更方便的识别录制回调，以及在点播媒体资源管理中查找相应的录制视频文件。

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
        # @param UserDefinedStreamId: 指定实时音视频在旁路白板推流这路流时的StreamID，设置之后，您就可以在腾讯云直播 CDN 上通过标准直播方案（FLV或HLS）播放该用户的音视频流。

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

        # 在同时指定了`RoomId`与`TRTCRoomId`的情况下，优先使用`TRTCRoomId`作为白板流进行推流的TRTC房间号。

        # 当指定了`TRTCRoomIdStr`的情况下，此字段将被忽略。
        # @type TRTCRoomId: Integer
        # @param TRTCRoomIdStr: TRTC字符串类型房间号。

        # 在指定了`TRTCRoomIdStr`的情况下，会优先使用`TRTCRoomIdStr`作为白板流进行推流的TRTC房间号。
        # @type TRTCRoomIdStr: String
        # @param IMAuthParam: IM鉴权信息参数，用于IM鉴权。
        # 当白板信令所使用的IM应用与白板应用的SdkAppId不一致时，可以通过此参数提供对应IM应用鉴权信息。

        # 如果提供了此参数，白板推流服务会优先使用此参数指定的SdkAppId作为白板信令的传输通道，否则使用公共参数中的SdkAppId作为白板信令的传输通道。
        # @type IMAuthParam: :class:`Tencentcloud::Tiw.v20190919.models.AuthParam`
        # @param TRTCAuthParam: TRTC鉴权信息参数，用于TRTC进房推流鉴权。
        # 当需要推流到的TRTC房间所对应的TRTC应用与白板应用的SdkAppId不一致时，可以通过此参数提供对应的TRTC应用鉴权信息。

        # 如果提供了此参数，白板推流服务会优先使用此参数指定的SdkAppId作为白板推流的目标TRTC应用，否则使用公共参数中的SdkAppId作为白板推流的目标TRTC应用。
        # @type TRTCAuthParam: :class:`Tencentcloud::Tiw.v20190919.models.AuthParam`
        # @param TRTCEnterRoomMode: 指定白板推流时推流用户进TRTC房间的进房模式。默认为 TRTCAppSceneVideoCall

        # TRTCAppSceneVideoCall - 视频通话场景，即绝大多数时间都是两人或两人以上视频通话的场景，内部编码器和网络协议优化侧重流畅性，降低通话延迟和卡顿率。
        # TRTCAppSceneLIVE - 直播场景，即绝大多数时间都是一人直播，偶尔有多人视频互动的场景，内部编码器和网络协议优化侧重性能和兼容性，性能和清晰度表现更佳。
        # @type TRTCEnterRoomMode: String
        # @param GroupId: 白板进行信令同步的 IM 群组 ID。
        # 在没有指定`GroupId`的情况下，白板推流服务将使用 `RoomId` 的字符串形式作为同步白板信令的IM群组ID。
        # 在指定了`GroupId`的情况下，白板推流将优先`GroupId`作为同步白板信令的群组ID。请在开始推流前确保指定的IM群组已创建完成，否则会导致推流失败。
        # @type GroupId: String

        attr_accessor :SdkAppId, :RoomId, :PushUserId, :PushUserSig, :Whiteboard, :AutoStopTimeout, :AutoManageBackup, :Backup, :PrivateMapKey, :VideoFPS, :VideoBitrate, :AutoRecord, :UserDefinedRecordId, :AutoPublish, :UserDefinedStreamId, :ExtraData, :TRTCRoomId, :TRTCRoomIdStr, :IMAuthParam, :TRTCAuthParam, :TRTCEnterRoomMode, :GroupId

        def initialize(sdkappid=nil, roomid=nil, pushuserid=nil, pushusersig=nil, whiteboard=nil, autostoptimeout=nil, automanagebackup=nil, backup=nil, privatemapkey=nil, videofps=nil, videobitrate=nil, autorecord=nil, userdefinedrecordid=nil, autopublish=nil, userdefinedstreamid=nil, extradata=nil, trtcroomid=nil, trtcroomidstr=nil, imauthparam=nil, trtcauthparam=nil, trtcenterroommode=nil, groupid=nil)
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
          @GroupId = groupid
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
          @GroupId = params['GroupId']
        end
      end

      # StartWhiteboardPush返回参数结构体
      class StartWhiteboardPushResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 推流任务Id
        # @type TaskId: String
        # @param Backup: 备份任务结果参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Backup: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

