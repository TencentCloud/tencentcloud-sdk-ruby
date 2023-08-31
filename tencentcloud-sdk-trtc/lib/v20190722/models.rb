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
  module Trtc
    module V20190722
      # 造成异常体验可能的异常事件类型
      class AbnormalEvent < TencentCloud::Common::AbstractModel
        # @param AbnormalEventId: 异常事件ID，具体值查看附录：异常体验ID映射表：https://cloud.tencent.com/document/product/647/44916
        # @type AbnormalEventId: Integer
        # @param PeerId: 远端用户ID,""：表示异常事件不是由远端用户产生
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerId: String

        attr_accessor :AbnormalEventId, :PeerId

        def initialize(abnormaleventid=nil, peerid=nil)
          @AbnormalEventId = abnormaleventid
          @PeerId = peerid
        end

        def deserialize(params)
          @AbnormalEventId = params['AbnormalEventId']
          @PeerId = params['PeerId']
        end
      end

      # 用户的异常体验及可能的原因
      class AbnormalExperience < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ExperienceId: 异常体验ID
        # @type ExperienceId: Integer
        # @param RoomId: 字符串房间号
        # @type RoomId: String
        # @param AbnormalEventList: 异常事件数组
        # @type AbnormalEventList: Array
        # @param EventTime: 异常事件的上报时间
        # @type EventTime: Integer

        attr_accessor :UserId, :ExperienceId, :RoomId, :AbnormalEventList, :EventTime

        def initialize(userid=nil, experienceid=nil, roomid=nil, abnormaleventlist=nil, eventtime=nil)
          @UserId = userid
          @ExperienceId = experienceid
          @RoomId = roomid
          @AbnormalEventList = abnormaleventlist
          @EventTime = eventtime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @ExperienceId = params['ExperienceId']
          @RoomId = params['RoomId']
          unless params['AbnormalEventList'].nil?
            @AbnormalEventList = []
            params['AbnormalEventList'].each do |i|
              abnormalevent_tmp = AbnormalEvent.new
              abnormalevent_tmp.deserialize(i)
              @AbnormalEventList << abnormalevent_tmp
            end
          end
          @EventTime = params['EventTime']
        end
      end

      # 转推服务加入TRTC房间的机器人参数。
      class AgentParams < TencentCloud::Common::AbstractModel
        # @param UserId: 转推服务在TRTC房间使用的[UserId](https://cloud.tencent.com/document/product/647/46351#userid)，注意这个userId不能与其他TRTC或者转推服务等已经使用的UserId重复，建议可以把房间ID作为userId的标识的一部分。
        # @type UserId: String
        # @param UserSig: 转推服务加入TRTC房间的用户签名，当前 UserId 对应的验证签名，相当于登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String
        # @param MaxIdleTime: 所有参与混流转推的主播持续离开TRTC房间超过MaxIdleTime的时长，自动停止转推，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于 86400秒(24小时)。
        # @type MaxIdleTime: Integer

        attr_accessor :UserId, :UserSig, :MaxIdleTime

        def initialize(userid=nil, usersig=nil, maxidletime=nil)
          @UserId = userid
          @UserSig = usersig
          @MaxIdleTime = maxidletime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          @MaxIdleTime = params['MaxIdleTime']
        end
      end

      # 音频编码参数。
      class AudioEncode < TencentCloud::Common::AbstractModel
        # @param SampleRate: 输出流音频采样率。取值为[48000, 44100, 32000, 24000, 16000, 8000]，单位是Hz。
        # @type SampleRate: Integer
        # @param Channel: 输出流音频声道数，取值范围[1,2]，1表示混流输出音频为单声道，2表示混流输出音频为双声道。
        # @type Channel: Integer
        # @param BitRate: 输出流音频码率。取值范围[8,500]，单位为kbps。
        # @type BitRate: Integer
        # @param Codec: 输出流音频编码类型，取值范围[0, 1, 2]，0为LC-AAC，1为HE-AAC，2为HE-AACv2。默认值为0。当音频编码设置为HE-AACv2时，只支持输出流音频声道数为双声道。HE-AAC和HE-AACv2支持的输出流音频采样率范围为[48000, 44100, 32000, 24000, 16000]。
        # @type Codec: Integer

        attr_accessor :SampleRate, :Channel, :BitRate, :Codec

        def initialize(samplerate=nil, channel=nil, bitrate=nil, codec=nil)
          @SampleRate = samplerate
          @Channel = channel
          @BitRate = bitrate
          @Codec = codec
        end

        def deserialize(params)
          @SampleRate = params['SampleRate']
          @Channel = params['Channel']
          @BitRate = params['BitRate']
          @Codec = params['Codec']
        end
      end

      # 录制音频转码参数。
      class AudioParams < TencentCloud::Common::AbstractModel
        # @param SampleRate: 音频采样率枚举值:(注意1 代表48000HZ, 2 代表44100HZ, 3 代表16000HZ)
        # 1：48000Hz（默认）;
        # 2：44100Hz
        # 3：16000Hz。
        # @type SampleRate: Integer
        # @param Channel: 声道数枚举值:
        # 1：单声道;
        # 2：双声道（默认）。
        # @type Channel: Integer
        # @param BitRate: 音频码率: 取值范围[32000, 128000] ，单位bps，默认64000bps。
        # @type BitRate: Integer

        attr_accessor :SampleRate, :Channel, :BitRate

        def initialize(samplerate=nil, channel=nil, bitrate=nil)
          @SampleRate = samplerate
          @Channel = channel
          @BitRate = bitrate
        end

        def deserialize(params)
          @SampleRate = params['SampleRate']
          @Channel = params['Channel']
          @BitRate = params['BitRate']
        end
      end

      # 第三方云存储的账号信息。
      class CloudStorage < TencentCloud::Common::AbstractModel
        # @param Vendor: 第三方云储存的供应商:
        # 0：腾讯云存储 COS，暂不支持其他家。
        # @type Vendor: Integer
        # @param Region: 第三方云存储的地域信息。
        # @type Region: String
        # @param Bucket: 第三方存储桶信息。
        # @type Bucket: String
        # @param AccessKey: 第三方存储的access_key账号信息。
        # 若存储至腾讯云COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretId值。
        # @type AccessKey: String
        # @param SecretKey: 第三方存储的secret_key账号信息。
        # 若存储至腾讯云COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretKey值。
        # @type SecretKey: String
        # @param FileNamePrefix: 第三方云存储bucket 的指定位置，由字符串数组组成。合法的字符串范围a~z,A~Z,0~9,'_'和'-'，举个例子，录制文件xxx.m3u8在 ["prefix1", "prefix2"]作用下，会变成prefix1/prefix2/TaskId/xxx.m3u8。
        # @type FileNamePrefix: Array

        attr_accessor :Vendor, :Region, :Bucket, :AccessKey, :SecretKey, :FileNamePrefix

        def initialize(vendor=nil, region=nil, bucket=nil, accesskey=nil, secretkey=nil, filenameprefix=nil)
          @Vendor = vendor
          @Region = region
          @Bucket = bucket
          @AccessKey = accesskey
          @SecretKey = secretkey
          @FileNamePrefix = filenameprefix
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @FileNamePrefix = params['FileNamePrefix']
        end
      end

      # 点播相关参数。
      class CloudVod < TencentCloud::Common::AbstractModel
        # @param TencentVod: 腾讯云点播相关参数。
        # @type TencentVod: :class:`Tencentcloud::Trtc.v20190722.models.TencentVod`

        attr_accessor :TencentVod

        def initialize(tencentvod=nil)
          @TencentVod = tencentvod
        end

        def deserialize(params)
          unless params['TencentVod'].nil?
            @TencentVod = TencentVod.new
            @TencentVod.deserialize(params['TencentVod'])
          end
        end
      end

      # CreateCloudRecording请求参数结构体
      class CreateCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和录制的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，录制的TRTC房间所对应的RoomId。
        # @type RoomId: String
        # @param UserId: 录制机器人用于进入TRTC房间拉流的[UserId](https://cloud.tencent.com/document/product/647/46351#userid)，注意这个UserId不能与其他TRTC房间内的主播或者其他录制任务等已经使用的UserId重复，建议可以把房间ID作为userId的标识的一部分，即录制机器人进入房间的userid应保证独立且唯一。
        # @type UserId: String
        # @param UserSig: 录制机器人用于进入TRTC房间拉流的用户签名，当前 UserId 对应的验证签名，相当于登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String
        # @param RecordParams: 云端录制控制参数。
        # @type RecordParams: :class:`Tencentcloud::Trtc.v20190722.models.RecordParams`
        # @param StorageParams: 云端录制文件上传到云存储的参数(目前支持云点播VOD和对象存储COS)。点播和对象存储的参数必填其中之一，不支持同时设置点播和对象存储。
        # @type StorageParams: :class:`Tencentcloud::Trtc.v20190722.models.StorageParams`
        # @param RoomIdType: TRTC房间号的类型，必须和录制的房间所对应的RoomId类型相同:
        # 0: 字符串类型的RoomId
        # 1: 32位整型的RoomId（默认）
        # @type RoomIdType: Integer
        # @param MixTranscodeParams: 混流的转码参数，录制模式为混流的时候可以设置。
        # @type MixTranscodeParams: :class:`Tencentcloud::Trtc.v20190722.models.MixTranscodeParams`
        # @param MixLayoutParams: 混流的布局参数，录制模式为混流的时候可以设置。
        # @type MixLayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.MixLayoutParams`
        # @param ResourceExpiredHour: 接口可以调用的时效性，从成功开启录制并获得任务ID后开始计算，超时后无法调用查询、更新和停止等接口，但是录制任务不会停止。 参数的单位是小时，默认72小时（3天），最大可设置720小时（30天），最小设置6小时。举例说明：如果不设置该参数，那么开始录制成功后，查询、更新和停止录制的调用时效为72个小时。
        # @type ResourceExpiredHour: Integer
        # @param PrivateMapKey: TRTC房间权限加密串，只有在TRTC控制台启用了高级权限控制的时候需要携带，在TRTC控制台如果开启高级权限控制后，TRTC 的后台服务系统会校验一个叫做 [PrivateMapKey] 的“权限票据”，权限票据中包含了一个加密后的 RoomId 和一个加密后的“权限位列表”。由于 PrivateMapKey 中包含 RoomId，所以只提供了 UserSig 没有提供 PrivateMapKey 时，并不能进入指定的房间。
        # @type PrivateMapKey: String

        attr_accessor :SdkAppId, :RoomId, :UserId, :UserSig, :RecordParams, :StorageParams, :RoomIdType, :MixTranscodeParams, :MixLayoutParams, :ResourceExpiredHour, :PrivateMapKey

        def initialize(sdkappid=nil, roomid=nil, userid=nil, usersig=nil, recordparams=nil, storageparams=nil, roomidtype=nil, mixtranscodeparams=nil, mixlayoutparams=nil, resourceexpiredhour=nil, privatemapkey=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserId = userid
          @UserSig = usersig
          @RecordParams = recordparams
          @StorageParams = storageparams
          @RoomIdType = roomidtype
          @MixTranscodeParams = mixtranscodeparams
          @MixLayoutParams = mixlayoutparams
          @ResourceExpiredHour = resourceexpiredhour
          @PrivateMapKey = privatemapkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          unless params['RecordParams'].nil?
            @RecordParams = RecordParams.new
            @RecordParams.deserialize(params['RecordParams'])
          end
          unless params['StorageParams'].nil?
            @StorageParams = StorageParams.new
            @StorageParams.deserialize(params['StorageParams'])
          end
          @RoomIdType = params['RoomIdType']
          unless params['MixTranscodeParams'].nil?
            @MixTranscodeParams = MixTranscodeParams.new
            @MixTranscodeParams.deserialize(params['MixTranscodeParams'])
          end
          unless params['MixLayoutParams'].nil?
            @MixLayoutParams = MixLayoutParams.new
            @MixLayoutParams.deserialize(params['MixLayoutParams'])
          end
          @ResourceExpiredHour = params['ResourceExpiredHour']
          @PrivateMapKey = params['PrivateMapKey']
        end
      end

      # CreateCloudRecording返回参数结构体
      class CreateCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。任务 ID需要业务保存下来，作为下次针对这个录制任务操作的参数。
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

      # CreatePicture请求参数结构体
      class CreatePictureRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer
        # @param Content: 图片内容经base64编码后的string格式,最大长度为2M
        # @type Content: String
        # @param Suffix: 图片后缀名
        # @type Suffix: String
        # @param Height: 图片长度
        # @type Height: Integer
        # @param Width: 图片宽度
        # @type Width: Integer
        # @param XPosition: 显示位置x轴方向
        # @type XPosition: Integer
        # @param YPosition: 显示位置y轴方向
        # @type YPosition: Integer

        attr_accessor :SdkAppId, :Content, :Suffix, :Height, :Width, :XPosition, :YPosition

        def initialize(sdkappid=nil, content=nil, suffix=nil, height=nil, width=nil, xposition=nil, yposition=nil)
          @SdkAppId = sdkappid
          @Content = content
          @Suffix = suffix
          @Height = height
          @Width = width
          @XPosition = xposition
          @YPosition = yposition
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Content = params['Content']
          @Suffix = params['Suffix']
          @Height = params['Height']
          @Width = params['Width']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
        end
      end

      # CreatePicture返回参数结构体
      class CreatePictureResponse < TencentCloud::Common::AbstractModel
        # @param PictureId: 图片id
        # @type PictureId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PictureId, :RequestId

        def initialize(pictureid=nil, requestid=nil)
          @PictureId = pictureid
          @RequestId = requestid
        end

        def deserialize(params)
          @PictureId = params['PictureId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCloudRecording请求参数结构体
      class DeleteCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 录制任务的唯一Id，在启动录制成功后会返回。
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

      # DeleteCloudRecording返回参数结构体
      class DeleteCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。
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

      # DeletePicture请求参数结构体
      class DeletePictureRequest < TencentCloud::Common::AbstractModel
        # @param PictureId: 图片id
        # @type PictureId: Integer
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer

        attr_accessor :PictureId, :SdkAppId

        def initialize(pictureid=nil, sdkappid=nil)
          @PictureId = pictureid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @PictureId = params['PictureId']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DeletePicture返回参数结构体
      class DeletePictureResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCallDetailInfo请求参数结构体
      class DescribeCallDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        # @type CommId: String
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777），
        # 注意：支持查询14天内的数据。
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：DataType 不为null ，与StartTime间隔时间不超过1小时；DataType 为null，与StartTime间隔时间不超过4小时。
        # @type EndTime: Integer
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）。
        # @type SdkAppId: Integer
        # @param UserIds: 需查询的用户数组，默认不填返回6个用户。
        # @type UserIds: Array
        # @param DataType: 需查询的指标，不填则只返回用户列表，填all则返回所有指标。
        # appCpu：APP CPU使用率；
        # sysCpu：系统 CPU使用率；
        # aBit：上/下行音频码率；单位：bps
        # aBlock：音频卡顿时长；单位：ms
        # bigvBit：上/下行视频码率；单位：bps
        # bigvCapFps：视频采集帧率；
        # bigvEncFps：视频发送帧率；
        # bigvDecFps：渲染帧率；
        # bigvBlock：视频卡顿时长；单位：ms
        # aLoss：上/下行音频丢包率；
        # bigvLoss：上/下行视频丢包率；
        # bigvWidth：上/下行分辨率宽；
        # bigvHeight：上/下行分辨率高
        # @type DataType: Array
        # @param PageNumber: 当前页数，默认为0，
        # 注意：PageNumber和PageSize 其中一个不填均默认返回6条数据。
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，默认为6，
        # 范围：[1，100]
        # 注意：DataType不为null，UserIds长度不能超过6，PageSize最大值不超过6；
        # DataType 为null，UserIds长度不超过100，PageSize最大不超过100。
        # @type PageSize: Integer

        attr_accessor :CommId, :StartTime, :EndTime, :SdkAppId, :UserIds, :DataType, :PageNumber, :PageSize

        def initialize(commid=nil, starttime=nil, endtime=nil, sdkappid=nil, userids=nil, datatype=nil, pagenumber=nil, pagesize=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @UserIds = userids
          @DataType = datatype
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @UserIds = params['UserIds']
          @DataType = params['DataType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeCallDetailInfo返回参数结构体
      class DescribeCallDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的用户总条数
        # @type Total: Integer
        # @param UserList: 用户信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param Data: 质量数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :UserList, :Data, :RequestId

        def initialize(total=nil, userlist=nil, data=nil, requestid=nil)
          @Total = total
          @UserList = userlist
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              userinformation_tmp = UserInformation.new
              userinformation_tmp.deserialize(i)
              @UserList << userinformation_tmp
            end
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              qualitydata_tmp = QualityData.new
              qualitydata_tmp.deserialize(i)
              @Data << qualitydata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRecording请求参数结构体
      class DescribeCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 录制任务的唯一Id，在启动录制成功后会返回。
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

      # DescribeCloudRecording返回参数结构体
      class DescribeCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务的唯一Id。
        # @type TaskId: String
        # @param Status: 云端录制任务的状态信息。
        # Idle：表示当前录制任务空闲中
        # InProgress：表示当前录制任务正在进行中。
        # Exited：表示当前录制任务正在退出的过程中。
        # @type Status: String
        # @param StorageFileList: 录制文件信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageFileList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :StorageFileList, :RequestId

        def initialize(taskid=nil, status=nil, storagefilelist=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @StorageFileList = storagefilelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['StorageFileList'].nil?
            @StorageFileList = []
            params['StorageFileList'].each do |i|
              storagefile_tmp = StorageFile.new
              storagefile_tmp.deserialize(i)
              @StorageFileList << storagefile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMixTranscodingUsage请求参数结构体
      class DescribeMixTranscodingUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeMixTranscodingUsage返回参数结构体
      class DescribeMixTranscodingUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细。
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePicture请求参数结构体
      class DescribePictureRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param PictureId: 图片ID，不填时返回该应用下所有图片
        # @type PictureId: Integer
        # @param PageSize: 每页数量，不填时默认为10
        # @type PageSize: Integer
        # @param PageNo: 页码，不填时默认为1
        # @type PageNo: Integer

        attr_accessor :SdkAppId, :PictureId, :PageSize, :PageNo

        def initialize(sdkappid=nil, pictureid=nil, pagesize=nil, pageno=nil)
          @SdkAppId = sdkappid
          @PictureId = pictureid
          @PageSize = pagesize
          @PageNo = pageno
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PictureId = params['PictureId']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
        end
      end

      # DescribePicture返回参数结构体
      class DescribePictureResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的图片记录数
        # @type Total: Integer
        # @param PictureInfo: 图片信息列表
        # @type PictureInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :PictureInfo, :RequestId

        def initialize(total=nil, pictureinfo=nil, requestid=nil)
          @Total = total
          @PictureInfo = pictureinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['PictureInfo'].nil?
            @PictureInfo = []
            params['PictureInfo'].each do |i|
              pictureinfo_tmp = PictureInfo.new
              pictureinfo_tmp.deserialize(i)
              @PictureInfo << pictureinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordStatistic请求参数结构体
      class DescribeRecordStatisticRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始日期，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束日期，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: 应用ID，可不传。传应用ID时返回的是该应用的用量，不传时返回多个应用的合计值。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeRecordStatistic返回参数结构体
      class DescribeRecordStatisticResponse < TencentCloud::Common::AbstractModel
        # @param SdkAppIdUsages: 应用的用量信息数组。
        # @type SdkAppIdUsages: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SdkAppIdUsages, :RequestId

        def initialize(sdkappidusages=nil, requestid=nil)
          @SdkAppIdUsages = sdkappidusages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SdkAppIdUsages'].nil?
            @SdkAppIdUsages = []
            params['SdkAppIdUsages'].each do |i|
              sdkappidrecordusage_tmp = SdkAppIdRecordUsage.new
              sdkappidrecordusage_tmp.deserialize(i)
              @SdkAppIdUsages << sdkappidrecordusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordingUsage请求参数结构体
      class DescribeRecordingUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param MixType: 查询单流录制或合流录制，值为"single"或"multi"。
        # @type MixType: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :MixType, :SdkAppId

        def initialize(starttime=nil, endtime=nil, mixtype=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MixType = mixtype
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MixType = params['MixType']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeRecordingUsage返回参数结构体
      class DescribeRecordingUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细。
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelayUsage请求参数结构体
      class DescribeRelayUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeRelayUsage返回参数结构体
      class DescribeRelayUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细。
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomInfo请求参数结构体
      class DescribeRoomInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：与StartTime间隔时间不超过24小时。
        # @type EndTime: Integer
        # @param RoomId: 房间号（如：223)
        # @type RoomId: String
        # @param PageNumber: 当前页数，默认为0，
        # 注意：PageNumber和PageSize 其中一个不填均默认返回10条数据。
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，默认为10，
        # 范围：[1，100]
        # @type PageSize: Integer

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId, :PageNumber, :PageSize

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil, pagenumber=nil, pagesize=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeRoomInfo返回参数结构体
      class DescribeRoomInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回当页数据总数
        # @type Total: Integer
        # @param RoomList: 房间信息列表
        # @type RoomList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RoomList, :RequestId

        def initialize(total=nil, roomlist=nil, requestid=nil)
          @Total = total
          @RoomList = roomlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['RoomList'].nil?
            @RoomList = []
            params['RoomList'].each do |i|
              roomstate_tmp = RoomState.new
              roomstate_tmp.deserialize(i)
              @RoomList << roomstate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScaleInfo请求参数结构体
      class DescribeScaleInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据。
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877），建议与StartTime间隔时间超过24小时。
        # 注意：按天统计，结束时间大于前一天，否则查询数据为空（如：需查询20号数据，结束时间需晚于20号0点）。
        # @type EndTime: Integer

        attr_accessor :SdkAppId, :StartTime, :EndTime

        def initialize(sdkappid=nil, starttime=nil, endtime=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeScaleInfo返回参数结构体
      class DescribeScaleInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据条数
        # @type Total: Integer
        # @param ScaleList: 返回的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScaleList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ScaleList, :RequestId

        def initialize(total=nil, scalelist=nil, requestid=nil)
          @Total = total
          @ScaleList = scalelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ScaleList'].nil?
            @ScaleList = []
            params['ScaleList'].each do |i|
              scaleinfomation_tmp = ScaleInfomation.new
              scaleinfomation_tmp.deserialize(i)
              @ScaleList << scaleinfomation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketQualityData请求参数结构体
      class DescribeTRTCMarketQualityDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketQualityData返回参数结构体
      class DescribeTRTCMarketQualityDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketQualityMetricData请求参数结构体
      class DescribeTRTCMarketQualityMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketQualityMetricData返回参数结构体
      class DescribeTRTCMarketQualityMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketScaleData请求参数结构体
      class DescribeTRTCMarketScaleDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketScaleData返回参数结构体
      class DescribeTRTCMarketScaleDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketScaleMetricData请求参数结构体
      class DescribeTRTCMarketScaleMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketScaleMetricData返回参数结构体
      class DescribeTRTCMarketScaleMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeQualityData请求参数结构体
      class DescribeTRTCRealTimeQualityDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeQualityData返回参数结构体
      class DescribeTRTCRealTimeQualityDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeQualityMetricData请求参数结构体
      class DescribeTRTCRealTimeQualityMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeQualityMetricData返回参数结构体
      class DescribeTRTCRealTimeQualityMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeScaleData请求参数结构体
      class DescribeTRTCRealTimeScaleDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeScaleData返回参数结构体
      class DescribeTRTCRealTimeScaleDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeScaleMetricData请求参数结构体
      class DescribeTRTCRealTimeScaleMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeScaleMetricData返回参数结构体
      class DescribeTRTCRealTimeScaleMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrtcMcuTranscodeTime请求参数结构体
      class DescribeTrtcMcuTranscodeTimeRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: 应用ID，可不传。传应用ID时返回的是该应用的用量，不传时返回多个应用的合计值。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeTrtcMcuTranscodeTime返回参数结构体
      class DescribeTrtcMcuTranscodeTimeResponse < TencentCloud::Common::AbstractModel
        # @param Usages: 应用的用量信息数组。
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
              onesdkappidtranscodetimeusagesinfo_tmp = OneSdkAppIdTranscodeTimeUsagesInfo.new
              onesdkappidtranscodetimeusagesinfo_tmp.deserialize(i)
              @Usages << onesdkappidtranscodetimeusagesinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrtcRoomUsage请求参数结构体
      class DescribeTrtcRoomUsageRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppid: TRTC的SdkAppId，和房间所对应的SdkAppId相同。
        # @type SdkAppid: Integer
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD HH:MM，精确到分钟级。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD HH:MM，单次查询不超过24h。
        # @type EndTime: String

        attr_accessor :SdkAppid, :StartTime, :EndTime

        def initialize(sdkappid=nil, starttime=nil, endtime=nil)
          @SdkAppid = sdkappid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppid = params['SdkAppid']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeTrtcRoomUsage返回参数结构体
      class DescribeTrtcRoomUsageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 房间维度用量数据，csv文件格式，单位：秒。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrtcUsage请求参数结构体
      class DescribeTrtcUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeTrtcUsage返回参数结构体
      class DescribeTrtcUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细。
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnusualEvent请求参数结构体
      class DescribeUnusualEventRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）注意：与StartTime间隔时间不超过1小时。
        # @type EndTime: Integer
        # @param RoomId: 房间号，查询房间内任意20条以内异常体验事件
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeUnusualEvent返回参数结构体
      class DescribeUnusualEventResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据总条数
        # 范围：[0，20]
        # @type Total: Integer
        # @param AbnormalExperienceList: 异常体验列表
        # @type AbnormalExperienceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AbnormalExperienceList, :RequestId

        def initialize(total=nil, abnormalexperiencelist=nil, requestid=nil)
          @Total = total
          @AbnormalExperienceList = abnormalexperiencelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['AbnormalExperienceList'].nil?
            @AbnormalExperienceList = []
            params['AbnormalExperienceList'].each do |i|
              abnormalexperience_tmp = AbnormalExperience.new
              abnormalexperience_tmp.deserialize(i)
              @AbnormalExperienceList << abnormalexperience_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserEvent请求参数结构体
      class DescribeUserEventRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        # @type CommId: String
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：查询时间大于房间结束时间，以房间结束时间为准。
        # @type EndTime: Integer
        # @param UserId: 用户UserId
        # @type UserId: String
        # @param RoomId: 房间号（如：223）
        # @type RoomId: String
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer

        attr_accessor :CommId, :StartTime, :EndTime, :UserId, :RoomId, :SdkAppId

        def initialize(commid=nil, starttime=nil, endtime=nil, userid=nil, roomid=nil, sdkappid=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @UserId = userid
          @RoomId = roomid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserId = params['UserId']
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeUserEvent返回参数结构体
      class DescribeUserEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的事件列表，若没有数据，会返回空数组。
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
              eventlist_tmp = EventList.new
              eventlist_tmp.deserialize(i)
              @Data << eventlist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserInfo请求参数结构体
      class DescribeUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        # @type CommId: String
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：与StartTime间隔时间不超过4小时。
        # @type EndTime: Integer
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param UserIds: 需查询的用户数组，不填默认返回6个用户
        # 范围：[1，100]。
        # @type UserIds: Array
        # @param PageNumber: 当前页数，默认为0，
        # 注意：PageNumber和PageSize 其中一个不填均默认返回6条数据。
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，默认为6，
        # 范围：[1，100]。
        # @type PageSize: Integer

        attr_accessor :CommId, :StartTime, :EndTime, :SdkAppId, :UserIds, :PageNumber, :PageSize

        def initialize(commid=nil, starttime=nil, endtime=nil, sdkappid=nil, userids=nil, pagenumber=nil, pagesize=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @UserIds = userids
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @UserIds = params['UserIds']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeUserInfo返回参数结构体
      class DescribeUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的用户总条数
        # @type Total: Integer
        # @param UserList: 用户信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :UserList, :RequestId

        def initialize(total=nil, userlist=nil, requestid=nil)
          @Total = total
          @UserList = userlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              userinformation_tmp = UserInformation.new
              userinformation_tmp.deserialize(i)
              @UserList << userinformation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DismissRoomByStrRoomId请求参数结构体
      class DismissRoomByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 字符串类型房间号。
        # 本接口仅支持解散字符串类型房间号，如需解散数字类型房间号，请使用：DismissRoom
        # @type RoomId: String

        attr_accessor :SdkAppId, :RoomId

        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # DismissRoomByStrRoomId返回参数结构体
      class DismissRoomByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # DismissRoom请求参数结构体
      class DismissRoomRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer

        attr_accessor :SdkAppId, :RoomId

        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # DismissRoom返回参数结构体
      class DismissRoomResponse < TencentCloud::Common::AbstractModel
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

      # MCU混流输出流编码参数
      class EncodeParams < TencentCloud::Common::AbstractModel
        # @param AudioSampleRate: 混流-输出流音频采样率。取值为[48000, 44100, 32000, 24000, 16000, 8000]，单位是Hz。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioSampleRate: Integer
        # @param AudioBitrate: 混流-输出流音频码率。取值范围[8,500]，单位为kbps。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioBitrate: Integer
        # @param AudioChannels: 混流-输出流音频声道数，取值范围[1,2]，1表示混流输出音频为单声道，2表示混流输出音频为双声道。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioChannels: Integer
        # @param VideoWidth: 混流-输出流宽，音视频输出时必填。取值范围[0,1920]，单位为像素值。
        # @type VideoWidth: Integer
        # @param VideoHeight: 混流-输出流高，音视频输出时必填。取值范围[0,1080]，单位为像素值。
        # @type VideoHeight: Integer
        # @param VideoBitrate: 混流-输出流码率，音视频输出时必填。取值范围[1,10000]，单位为kbps。
        # @type VideoBitrate: Integer
        # @param VideoFramerate: 混流-输出流帧率，音视频输出时必填。取值范围[1,60]，表示混流的输出帧率可选范围为1到60fps。
        # @type VideoFramerate: Integer
        # @param VideoGop: 混流-输出流gop，音视频输出时必填。取值范围[1,5]，单位为秒。
        # @type VideoGop: Integer
        # @param BackgroundColor: 混流-输出流背景色，取值是十进制整数。常用的颜色有：
        # 红色：0xff0000，对应的十进制整数是16724736。
        # 黄色：0xffff00。对应的十进制整数是16776960。
        # 绿色：0x33cc00。对应的十进制整数是3394560。
        # 蓝色：0x0066ff。对应的十进制整数是26367。
        # 黑色：0x000000。对应的十进制整数是0。
        # 白色：0xFFFFFF。对应的十进制整数是16777215。
        # 灰色：0x999999。对应的十进制整数是10066329。
        # @type BackgroundColor: Integer
        # @param BackgroundImageId: 混流-输出流背景图片，取值为实时音视频控制台上传的图片ID。
        # @type BackgroundImageId: Integer
        # @param AudioCodec: 混流-输出流音频编码类型，取值范围[0,1, 2]，0为LC-AAC，1为HE-AAC，2为HE-AACv2。默认值为0。当音频编码设置为HE-AACv2时，只支持输出流音频声道数为双声道。HE-AAC和HE-AACv2支持的输出流音频采样率范围为[48000, 44100, 32000, 24000, 16000]。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioCodec: Integer
        # @param BackgroundImageUrl: 混流-输出流背景图片URL地址，支持png、jpg、jpeg、bmp格式，暂不支持透明通道。URL链接长度限制为512字节。BackgroundImageUrl和BackgroundImageId参数都填时，以BackgroundImageUrl为准。图片大小限制不超过2MB。
        # @type BackgroundImageUrl: String

        attr_accessor :AudioSampleRate, :AudioBitrate, :AudioChannels, :VideoWidth, :VideoHeight, :VideoBitrate, :VideoFramerate, :VideoGop, :BackgroundColor, :BackgroundImageId, :AudioCodec, :BackgroundImageUrl

        def initialize(audiosamplerate=nil, audiobitrate=nil, audiochannels=nil, videowidth=nil, videoheight=nil, videobitrate=nil, videoframerate=nil, videogop=nil, backgroundcolor=nil, backgroundimageid=nil, audiocodec=nil, backgroundimageurl=nil)
          @AudioSampleRate = audiosamplerate
          @AudioBitrate = audiobitrate
          @AudioChannels = audiochannels
          @VideoWidth = videowidth
          @VideoHeight = videoheight
          @VideoBitrate = videobitrate
          @VideoFramerate = videoframerate
          @VideoGop = videogop
          @BackgroundColor = backgroundcolor
          @BackgroundImageId = backgroundimageid
          @AudioCodec = audiocodec
          @BackgroundImageUrl = backgroundimageurl
        end

        def deserialize(params)
          @AudioSampleRate = params['AudioSampleRate']
          @AudioBitrate = params['AudioBitrate']
          @AudioChannels = params['AudioChannels']
          @VideoWidth = params['VideoWidth']
          @VideoHeight = params['VideoHeight']
          @VideoBitrate = params['VideoBitrate']
          @VideoFramerate = params['VideoFramerate']
          @VideoGop = params['VideoGop']
          @BackgroundColor = params['BackgroundColor']
          @BackgroundImageId = params['BackgroundImageId']
          @AudioCodec = params['AudioCodec']
          @BackgroundImageUrl = params['BackgroundImageUrl']
        end
      end

      # sdk或webrtc的事件列表。
      class EventList < TencentCloud::Common::AbstractModel
        # @param Content: 数据内容
        # @type Content: Array
        # @param PeerId: 发送端的userId
        # @type PeerId: String

        attr_accessor :Content, :PeerId

        def initialize(content=nil, peerid=nil)
          @Content = content
          @PeerId = peerid
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              eventmessage_tmp = EventMessage.new
              eventmessage_tmp.deserialize(i)
              @Content << eventmessage_tmp
            end
          end
          @PeerId = params['PeerId']
        end
      end

      # 事件信息，包括，事件时间戳，事件ID,
      class EventMessage < TencentCloud::Common::AbstractModel
        # @param Type: 视频流类型：
        # 0：与视频无关的事件；
        # 2：视频为大画面；
        # 3：视频为小画面；
        # 7：视频为旁路画面；
        # @type Type: Integer
        # @param Time: 事件上报的时间戳，unix时间（1589891188801ms)
        # @type Time: Integer
        # @param EventId: 事件Id：分为sdk的事件和webrtc的事件，详情见：附录/事件 ID 映射表：https://cloud.tencent.com/document/product/647/44916
        # @type EventId: Integer
        # @param ParamOne: 事件的第一个参数，如视频分辨率宽
        # @type ParamOne: Integer
        # @param ParamTwo: 事件的第二个参数，如视频分辨率高
        # @type ParamTwo: Integer

        attr_accessor :Type, :Time, :EventId, :ParamOne, :ParamTwo

        def initialize(type=nil, time=nil, eventid=nil, paramone=nil, paramtwo=nil)
          @Type = type
          @Time = time
          @EventId = eventid
          @ParamOne = paramone
          @ParamTwo = paramtwo
        end

        def deserialize(params)
          @Type = params['Type']
          @Time = params['Time']
          @EventId = params['EventId']
          @ParamOne = params['ParamOne']
          @ParamTwo = params['ParamTwo']
        end
      end

      # MCU混流布局参数
      class LayoutParams < TencentCloud::Common::AbstractModel
        # @param Template: 混流布局模板ID，0为悬浮模板(默认);1为九宫格模板;2为屏幕分享模板;3为画中画模板;4为自定义模板。
        # @type Template: Integer
        # @param MainVideoUserId: 屏幕分享模板、悬浮模板、画中画模板中有效，代表大画面对应的用户ID。
        # @type MainVideoUserId: String
        # @param MainVideoStreamType: 屏幕分享模板、悬浮模板、画中画模板中有效，代表大画面对应的流类型，0为摄像头，1为屏幕分享。左侧大画面为web用户时此值填0。
        # @type MainVideoStreamType: Integer
        # @param SmallVideoLayoutParams: 画中画模板中有效，代表小画面的布局参数。
        # @type SmallVideoLayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.SmallVideoLayoutParams`
        # @param MainVideoRightAlign: 屏幕分享模板有效。设置为1时代表大画面居右，小画面居左布局。默认为0。
        # @type MainVideoRightAlign: Integer
        # @param MixVideoUids: 指定混视频的用户ID列表。设置此参数后，输出流混合此参数中包含用户的音视频，以及其他用户的纯音频。悬浮模板、九宫格、屏幕分享模板有效，最多可设置16个用户。
        # @type MixVideoUids: Array
        # @param PresetLayoutConfig: 自定义模板中有效，指定用户视频在混合画面中的位置。
        # @type PresetLayoutConfig: Array
        # @param PlaceHolderMode: 自定义模板中有效，设置为1时代表启用占位图功能，0时代表不启用占位图功能，默认为0。启用占位图功能时，在预设位置的用户没有上行视频时可显示对应的占位图。
        # @type PlaceHolderMode: Integer
        # @param PureAudioHoldPlaceMode: 悬浮模板、九宫格、屏幕分享模板生效，用于控制纯音频上行是否占用画面布局位置。设置为0是代表后台默认处理方式，悬浮小画面占布局位置，九宫格画面占布局位置、屏幕分享小画面不占布局位置；设置为1时代表纯音频上行占布局位置；设置为2时代表纯音频上行不占布局位置。默认为0。
        # @type PureAudioHoldPlaceMode: Integer
        # @param WaterMarkParams: 水印参数。
        # @type WaterMarkParams: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkParams`
        # @param RenderMode: 屏幕分享模板、悬浮模板、九宫格模板、画中画模版有效，画面在输出时的显示模式：0为裁剪，1为缩放，2为缩放并显示黑底，不填采用后台的默认渲染方式（屏幕分享大画面为缩放，其他为裁剪）。若此参数不生效，请提交工单寻求帮助。
        # @type RenderMode: Integer

        attr_accessor :Template, :MainVideoUserId, :MainVideoStreamType, :SmallVideoLayoutParams, :MainVideoRightAlign, :MixVideoUids, :PresetLayoutConfig, :PlaceHolderMode, :PureAudioHoldPlaceMode, :WaterMarkParams, :RenderMode

        def initialize(template=nil, mainvideouserid=nil, mainvideostreamtype=nil, smallvideolayoutparams=nil, mainvideorightalign=nil, mixvideouids=nil, presetlayoutconfig=nil, placeholdermode=nil, pureaudioholdplacemode=nil, watermarkparams=nil, rendermode=nil)
          @Template = template
          @MainVideoUserId = mainvideouserid
          @MainVideoStreamType = mainvideostreamtype
          @SmallVideoLayoutParams = smallvideolayoutparams
          @MainVideoRightAlign = mainvideorightalign
          @MixVideoUids = mixvideouids
          @PresetLayoutConfig = presetlayoutconfig
          @PlaceHolderMode = placeholdermode
          @PureAudioHoldPlaceMode = pureaudioholdplacemode
          @WaterMarkParams = watermarkparams
          @RenderMode = rendermode
        end

        def deserialize(params)
          @Template = params['Template']
          @MainVideoUserId = params['MainVideoUserId']
          @MainVideoStreamType = params['MainVideoStreamType']
          unless params['SmallVideoLayoutParams'].nil?
            @SmallVideoLayoutParams = SmallVideoLayoutParams.new
            @SmallVideoLayoutParams.deserialize(params['SmallVideoLayoutParams'])
          end
          @MainVideoRightAlign = params['MainVideoRightAlign']
          @MixVideoUids = params['MixVideoUids']
          unless params['PresetLayoutConfig'].nil?
            @PresetLayoutConfig = []
            params['PresetLayoutConfig'].each do |i|
              presetlayoutconfig_tmp = PresetLayoutConfig.new
              presetlayoutconfig_tmp.deserialize(i)
              @PresetLayoutConfig << presetlayoutconfig_tmp
            end
          end
          @PlaceHolderMode = params['PlaceHolderMode']
          @PureAudioHoldPlaceMode = params['PureAudioHoldPlaceMode']
          unless params['WaterMarkParams'].nil?
            @WaterMarkParams = WaterMarkParams.new
            @WaterMarkParams.deserialize(params['WaterMarkParams'])
          end
          @RenderMode = params['RenderMode']
        end
      end

      # 指定动态布局中悬浮布局和屏幕分享布局的大画面信息，只在悬浮布局和屏幕分享布局有效。
      class MaxVideoUser < TencentCloud::Common::AbstractModel
        # @param UserMediaStream: 用户媒体流参数。
        # @type UserMediaStream: :class:`Tencentcloud::Trtc.v20190722.models.UserMediaStream`

        attr_accessor :UserMediaStream

        def initialize(usermediastream=nil)
          @UserMediaStream = usermediastream
        end

        def deserialize(params)
          unless params['UserMediaStream'].nil?
            @UserMediaStream = UserMediaStream.new
            @UserMediaStream.deserialize(params['UserMediaStream'])
          end
        end
      end

      # 混流转推的音频相关参数。
      class McuAudioParams < TencentCloud::Common::AbstractModel
        # @param AudioEncode: 音频编码参数。
        # @type AudioEncode: :class:`Tencentcloud::Trtc.v20190722.models.AudioEncode`
        # @param SubscribeAudioList: 音频用户白名单，start时，为空或不填表示混所有主播音频，填具体值表示混指定主播音频；update时，不填表示不更新，为空表示更新为混所有主播音频，填具体值表示更新为混指定主播音频。
        # 使用黑白名单时，黑白名单必须同时填写。都不填写时表示不更新。同一个用户同时在黑白名单时，以黑名单为主。
        # @type SubscribeAudioList: Array
        # @param UnSubscribeAudioList: 音频用户黑名单，为空或不填表示无黑名单，填具体值表示不混指定主播音频。update时，不填表示不更新，为空表示更新为清空黑名单，填具体值表示更新为不混指定主播音频。
        # 使用黑白名单时，黑白名单必须同时填写。都不填写时表示不更新。同一个用户同时在黑白名单时，以黑名单为主。
        # @type UnSubscribeAudioList: Array

        attr_accessor :AudioEncode, :SubscribeAudioList, :UnSubscribeAudioList

        def initialize(audioencode=nil, subscribeaudiolist=nil, unsubscribeaudiolist=nil)
          @AudioEncode = audioencode
          @SubscribeAudioList = subscribeaudiolist
          @UnSubscribeAudioList = unsubscribeaudiolist
        end

        def deserialize(params)
          unless params['AudioEncode'].nil?
            @AudioEncode = AudioEncode.new
            @AudioEncode.deserialize(params['AudioEncode'])
          end
          unless params['SubscribeAudioList'].nil?
            @SubscribeAudioList = []
            params['SubscribeAudioList'].each do |i|
              mcuuserinfoparams_tmp = McuUserInfoParams.new
              mcuuserinfoparams_tmp.deserialize(i)
              @SubscribeAudioList << mcuuserinfoparams_tmp
            end
          end
          unless params['UnSubscribeAudioList'].nil?
            @UnSubscribeAudioList = []
            params['UnSubscribeAudioList'].each do |i|
              mcuuserinfoparams_tmp = McuUserInfoParams.new
              mcuuserinfoparams_tmp.deserialize(i)
              @UnSubscribeAudioList << mcuuserinfoparams_tmp
            end
          end
        end
      end

      # 混流自定义裁剪参数
      class McuCustomCrop < TencentCloud::Common::AbstractModel
        # @param LocationX: 自定义裁剪起始位置的X偏移，单位为像素值，大于等于0。
        # @type LocationX: Integer
        # @param LocationY: 自定义裁剪起始位置的Y偏移，单位为像素值，大于等于0。
        # @type LocationY: Integer
        # @param Width: 自定义裁剪画面的宽度，单位为像素值，大于0，且LocationX+Width不超过10000
        # @type Width: Integer
        # @param Height: 自定义裁剪画面的高度，单位为像素值，大于0，且LocationY+Height不超过10000
        # @type Height: Integer

        attr_accessor :LocationX, :LocationY, :Width, :Height

        def initialize(locationx=nil, locationy=nil, width=nil, height=nil)
          @LocationX = locationx
          @LocationY = locationy
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 回推房间参数。
      class McuFeedBackRoomParams < TencentCloud::Common::AbstractModel
        # @param RoomId: 回推房间的RoomId。
        # @type RoomId: String
        # @param RoomIdType: 房间类型，必须和回推房间所对应的RoomId类型相同，0为整形房间号，1为字符串房间号。
        # @type RoomIdType: Integer
        # @param UserId: 回推房间使用的UserId(https://cloud.tencent.com/document/product/647/46351#userid)，注意这个userId不能与其他TRTC或者转推服务等已经使用的UserId重复，建议可以把房间ID作为userId的标识的一部分。
        # @type UserId: String
        # @param UserSig: 回推房间UserId对应的用户签名，相当于登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String

        attr_accessor :RoomId, :RoomIdType, :UserId, :UserSig

        def initialize(roomid=nil, roomidtype=nil, userid=nil, usersig=nil)
          @RoomId = roomid
          @RoomIdType = roomidtype
          @UserId = userid
          @UserSig = usersig
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @RoomIdType = params['RoomIdType']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
        end
      end

      # 混流布局参数。
      class McuLayout < TencentCloud::Common::AbstractModel
        # @param UserMediaStream: 用户媒体流参数。不填时腾讯云后台按照上行主播的进房顺序自动填充。
        # @type UserMediaStream: :class:`Tencentcloud::Trtc.v20190722.models.UserMediaStream`
        # @param ImageWidth: 子画面在输出时的宽度，单位为像素值，不填默认为0。
        # @type ImageWidth: Integer
        # @param ImageHeight: 子画面在输出时的高度，单位为像素值，不填默认为0。
        # @type ImageHeight: Integer
        # @param LocationX: 子画面在输出时的X偏移，单位为像素值，LocationX与ImageWidth之和不能超过混流输出的总宽度，不填默认为0。
        # @type LocationX: Integer
        # @param LocationY: 子画面在输出时的Y偏移，单位为像素值，LocationY与ImageHeight之和不能超过混流输出的总高度，不填默认为0。
        # @type LocationY: Integer
        # @param ZOrder: 子画面在输出时的层级，不填默认为0。
        # @type ZOrder: Integer
        # @param RenderMode: 子画面在输出时的显示模式：0为裁剪，1为缩放并显示背景，2为缩放并显示黑底。不填默认为0。
        # @type RenderMode: Integer
        # @param BackGroundColor: 【此参数配置无效，暂不支持】子画面的背景颜色，常用的颜色有：
        # 红色：0xcc0033。
        # 黄色：0xcc9900。
        # 绿色：0xcccc33。
        # 蓝色：0x99CCFF。
        # 黑色：0x000000。
        # 白色：0xFFFFFF。
        # 灰色：0x999999。
        # @type BackGroundColor: String
        # @param BackgroundImageUrl: 子画面的背景图url，填写该参数，当用户关闭摄像头或未进入TRTC房间时，会在布局位置填充为指定图片。若指定图片与布局位置尺寸比例不一致，则会对图片进行拉伸处理，优先级高于BackGroundColor。
        # @type BackgroundImageUrl: String
        # @param CustomCrop: 客户自定义裁剪，针对原始输入流裁剪
        # @type CustomCrop: :class:`Tencentcloud::Trtc.v20190722.models.McuCustomCrop`
        # @param BackgroundRenderMode: 子背景图在输出时的显示模式：0为裁剪，1为缩放并显示背景，2为缩放并显示黑底，3为变比例伸缩。不填默认为3。
        # @type BackgroundRenderMode: Integer

        attr_accessor :UserMediaStream, :ImageWidth, :ImageHeight, :LocationX, :LocationY, :ZOrder, :RenderMode, :BackGroundColor, :BackgroundImageUrl, :CustomCrop, :BackgroundRenderMode

        def initialize(usermediastream=nil, imagewidth=nil, imageheight=nil, locationx=nil, locationy=nil, zorder=nil, rendermode=nil, backgroundcolor=nil, backgroundimageurl=nil, customcrop=nil, backgroundrendermode=nil)
          @UserMediaStream = usermediastream
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @LocationX = locationx
          @LocationY = locationy
          @ZOrder = zorder
          @RenderMode = rendermode
          @BackGroundColor = backgroundcolor
          @BackgroundImageUrl = backgroundimageurl
          @CustomCrop = customcrop
          @BackgroundRenderMode = backgroundrendermode
        end

        def deserialize(params)
          unless params['UserMediaStream'].nil?
            @UserMediaStream = UserMediaStream.new
            @UserMediaStream.deserialize(params['UserMediaStream'])
          end
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @ZOrder = params['ZOrder']
          @RenderMode = params['RenderMode']
          @BackGroundColor = params['BackGroundColor']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          unless params['CustomCrop'].nil?
            @CustomCrop = McuCustomCrop.new
            @CustomCrop.deserialize(params['CustomCrop'])
          end
          @BackgroundRenderMode = params['BackgroundRenderMode']
        end
      end

      # 混流布局参数。
      class McuLayoutParams < TencentCloud::Common::AbstractModel
        # @param MixLayoutMode: 布局模式：动态布局（1：悬浮布局（默认），2：屏幕分享布局，3：九宫格布局），静态布局（4：自定义布局）。
        # @type MixLayoutMode: Integer
        # @param PureAudioHoldPlaceMode: 纯音频上行是否占布局位置，只在动态布局中有效。0表示纯音频不占布局位置，1表示纯音频占布局位置，不填默认为0。
        # @type PureAudioHoldPlaceMode: Integer
        # @param MixLayoutList: 自定义模板中有效，指定用户视频在混合画面中的位置。
        # @type MixLayoutList: Array
        # @param MaxVideoUser: 指定动态布局中悬浮布局和屏幕分享布局的大画面信息，只在悬浮布局和屏幕分享布局有效。
        # @type MaxVideoUser: :class:`Tencentcloud::Trtc.v20190722.models.MaxVideoUser`
        # @param RenderMode: 屏幕分享模板、悬浮模板、九宫格模版有效，画面在输出时的显示模式：0为裁剪，1为缩放，2为缩放并显示黑底
        # @type RenderMode: Integer

        attr_accessor :MixLayoutMode, :PureAudioHoldPlaceMode, :MixLayoutList, :MaxVideoUser, :RenderMode

        def initialize(mixlayoutmode=nil, pureaudioholdplacemode=nil, mixlayoutlist=nil, maxvideouser=nil, rendermode=nil)
          @MixLayoutMode = mixlayoutmode
          @PureAudioHoldPlaceMode = pureaudioholdplacemode
          @MixLayoutList = mixlayoutlist
          @MaxVideoUser = maxvideouser
          @RenderMode = rendermode
        end

        def deserialize(params)
          @MixLayoutMode = params['MixLayoutMode']
          @PureAudioHoldPlaceMode = params['PureAudioHoldPlaceMode']
          unless params['MixLayoutList'].nil?
            @MixLayoutList = []
            params['MixLayoutList'].each do |i|
              mculayout_tmp = McuLayout.new
              mculayout_tmp.deserialize(i)
              @MixLayoutList << mculayout_tmp
            end
          end
          unless params['MaxVideoUser'].nil?
            @MaxVideoUser = MaxVideoUser.new
            @MaxVideoUser.deserialize(params['MaxVideoUser'])
          end
          @RenderMode = params['RenderMode']
        end
      end

      # 音量布局SEI参数，可以自定义AppData和PayloadType类型。
      # 该参数内容可以为空，表示携带默认的音量布局SEI。
      class McuLayoutVolume < TencentCloud::Common::AbstractModel
        # @param AppData: AppData的内容，会被写入自定义SEI中的app_data字段，长度需小于4096。
        # @type AppData: String
        # @param PayloadType: SEI消息的payload_type，默认值100，取值范围100-254（244除外，244为我们内部自定义的时间戳SEI）
        # @type PayloadType: Integer
        # @param Interval: SEI发送间隔，单位毫秒，默认值为1000。
        # @type Interval: Integer
        # @param FollowIdr: 取值范围[0,1]，填1：发送关键帧时会确保带SEI；填0：发送关键帧时不确保带SEI。默认值为0。
        # @type FollowIdr: Integer

        attr_accessor :AppData, :PayloadType, :Interval, :FollowIdr

        def initialize(appdata=nil, payloadtype=nil, interval=nil, followidr=nil)
          @AppData = appdata
          @PayloadType = payloadtype
          @Interval = interval
          @FollowIdr = followidr
        end

        def deserialize(params)
          @AppData = params['AppData']
          @PayloadType = params['PayloadType']
          @Interval = params['Interval']
          @FollowIdr = params['FollowIdr']
        end
      end

      # 自定义透传SEI
      class McuPassThrough < TencentCloud::Common::AbstractModel
        # @param PayloadContent: 透传SEI的payload内容。
        # @type PayloadContent: String
        # @param PayloadType: SEI消息的payload_type，取值范围5、100-254（244除外，244为我们内部自定义的时间戳SEI）。
        # @type PayloadType: Integer
        # @param PayloadUuid: PayloadType为5，PayloadUuid必须填写。PayloadType不是5时，不需要填写，填写会被后台忽略。该值必须是32长度的十六进制。
        # @type PayloadUuid: String
        # @param Interval: SEI发送间隔，单位毫秒，默认值为1000。
        # @type Interval: Integer
        # @param FollowIdr: 取值范围[0,1]，填1：发送关键帧时会确保带SEI；填0：发送关键帧时不确保带SEI。默认值为0。
        # @type FollowIdr: Integer

        attr_accessor :PayloadContent, :PayloadType, :PayloadUuid, :Interval, :FollowIdr

        def initialize(payloadcontent=nil, payloadtype=nil, payloaduuid=nil, interval=nil, followidr=nil)
          @PayloadContent = payloadcontent
          @PayloadType = payloadtype
          @PayloadUuid = payloaduuid
          @Interval = interval
          @FollowIdr = followidr
        end

        def deserialize(params)
          @PayloadContent = params['PayloadContent']
          @PayloadType = params['PayloadType']
          @PayloadUuid = params['PayloadUuid']
          @Interval = params['Interval']
          @FollowIdr = params['FollowIdr']
        end
      end

      # 转推参数。
      class McuPublishCdnParam < TencentCloud::Common::AbstractModel
        # @param PublishCdnUrl: CDN转推URL。
        # @type PublishCdnUrl: String
        # @param IsTencentCdn: 是否是腾讯云CDN，0为转推非腾讯云CDN，1为转推腾讯CDN，不携带该参数默认为1。注意：1，为避免误产生转推费用，该参数建议明确填写，转推非腾讯云CDN时会产生转推费用，详情参见接口文档说明；2，国内站默认只支持转推腾讯云CDN，如您有转推第三方CDN需求，请联系腾讯云技术支持。
        # @type IsTencentCdn: Integer

        attr_accessor :PublishCdnUrl, :IsTencentCdn

        def initialize(publishcdnurl=nil, istencentcdn=nil)
          @PublishCdnUrl = publishcdnurl
          @IsTencentCdn = istencentcdn
        end

        def deserialize(params)
          @PublishCdnUrl = params['PublishCdnUrl']
          @IsTencentCdn = params['IsTencentCdn']
        end
      end

      # 混流SEI参数
      class McuSeiParams < TencentCloud::Common::AbstractModel
        # @param LayoutVolume: 音量布局SEI
        # @type LayoutVolume: :class:`Tencentcloud::Trtc.v20190722.models.McuLayoutVolume`
        # @param PassThrough: 透传SEI
        # @type PassThrough: :class:`Tencentcloud::Trtc.v20190722.models.McuPassThrough`

        attr_accessor :LayoutVolume, :PassThrough

        def initialize(layoutvolume=nil, passthrough=nil)
          @LayoutVolume = layoutvolume
          @PassThrough = passthrough
        end

        def deserialize(params)
          unless params['LayoutVolume'].nil?
            @LayoutVolume = McuLayoutVolume.new
            @LayoutVolume.deserialize(params['LayoutVolume'])
          end
          unless params['PassThrough'].nil?
            @PassThrough = McuPassThrough.new
            @PassThrough.deserialize(params['PassThrough'])
          end
        end
      end

      # 混流用户参数
      class McuUserInfoParams < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户参数。
        # @type UserInfo: :class:`Tencentcloud::Trtc.v20190722.models.MixUserInfo`

        attr_accessor :UserInfo

        def initialize(userinfo=nil)
          @UserInfo = userinfo
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = MixUserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
        end
      end

      # 混流转推的视频相关参数。
      class McuVideoParams < TencentCloud::Common::AbstractModel
        # @param VideoEncode: 输出流视频编码参数。
        # @type VideoEncode: :class:`Tencentcloud::Trtc.v20190722.models.VideoEncode`
        # @param LayoutParams: 混流布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.McuLayoutParams`
        # @param BackGroundColor: 整个画布背景颜色，常用的颜色有：
        # 红色：0xcc0033。
        # 黄色：0xcc9900。
        # 绿色：0xcccc33。
        # 蓝色：0x99CCFF。
        # 黑色：0x000000。
        # 白色：0xFFFFFF。
        # 灰色：0x999999。
        # @type BackGroundColor: String
        # @param BackgroundImageUrl: 整个画布的背景图url，优先级高于BackGroundColor。
        # @type BackgroundImageUrl: String
        # @param WaterMarkList: 混流布局的水印参数。
        # @type WaterMarkList: Array
        # @param BackgroundRenderMode: 背景图在输出时的显示模式：0为裁剪，1为缩放并显示黑底，2为变比例伸缩。后台默认为变比例伸缩。
        # @type BackgroundRenderMode: Integer

        attr_accessor :VideoEncode, :LayoutParams, :BackGroundColor, :BackgroundImageUrl, :WaterMarkList, :BackgroundRenderMode

        def initialize(videoencode=nil, layoutparams=nil, backgroundcolor=nil, backgroundimageurl=nil, watermarklist=nil, backgroundrendermode=nil)
          @VideoEncode = videoencode
          @LayoutParams = layoutparams
          @BackGroundColor = backgroundcolor
          @BackgroundImageUrl = backgroundimageurl
          @WaterMarkList = watermarklist
          @BackgroundRenderMode = backgroundrendermode
        end

        def deserialize(params)
          unless params['VideoEncode'].nil?
            @VideoEncode = VideoEncode.new
            @VideoEncode.deserialize(params['VideoEncode'])
          end
          unless params['LayoutParams'].nil?
            @LayoutParams = McuLayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          @BackGroundColor = params['BackGroundColor']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          unless params['WaterMarkList'].nil?
            @WaterMarkList = []
            params['WaterMarkList'].each do |i|
              mcuwatermarkparams_tmp = McuWaterMarkParams.new
              mcuwatermarkparams_tmp.deserialize(i)
              @WaterMarkList << mcuwatermarkparams_tmp
            end
          end
          @BackgroundRenderMode = params['BackgroundRenderMode']
        end
      end

      # 图片水印参数。
      class McuWaterMarkImage < TencentCloud::Common::AbstractModel
        # @param WaterMarkUrl: 水印图片URL地址，支持png、jpg、jpeg格式。图片大小限制不超过5MB。
        # @type WaterMarkUrl: String
        # @param WaterMarkWidth: 水印在输出时的宽。单位为像素值。
        # @type WaterMarkWidth: Integer
        # @param WaterMarkHeight: 水印在输出时的高。单位为像素值。
        # @type WaterMarkHeight: Integer
        # @param LocationX: 水印在输出时的X偏移。单位为像素值。
        # @type LocationX: Integer
        # @param LocationY: 水印在输出时的Y偏移。单位为像素值。
        # @type LocationY: Integer
        # @param ZOrder: 水印在输出时的层级，不填默认为0。
        # @type ZOrder: Integer

        attr_accessor :WaterMarkUrl, :WaterMarkWidth, :WaterMarkHeight, :LocationX, :LocationY, :ZOrder

        def initialize(watermarkurl=nil, watermarkwidth=nil, watermarkheight=nil, locationx=nil, locationy=nil, zorder=nil)
          @WaterMarkUrl = watermarkurl
          @WaterMarkWidth = watermarkwidth
          @WaterMarkHeight = watermarkheight
          @LocationX = locationx
          @LocationY = locationy
          @ZOrder = zorder
        end

        def deserialize(params)
          @WaterMarkUrl = params['WaterMarkUrl']
          @WaterMarkWidth = params['WaterMarkWidth']
          @WaterMarkHeight = params['WaterMarkHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @ZOrder = params['ZOrder']
        end
      end

      # 水印参数。
      class McuWaterMarkParams < TencentCloud::Common::AbstractModel
        # @param WaterMarkType: 水印类型，0为图片（默认），1为文字。
        # @type WaterMarkType: Integer
        # @param WaterMarkImage: 图片水印参数。WaterMarkType为0指定。
        # @type WaterMarkImage: :class:`Tencentcloud::Trtc.v20190722.models.McuWaterMarkImage`
        # @param WaterMarkText: 文字水印参数。WaterMarkType为1指定。
        # @type WaterMarkText: :class:`Tencentcloud::Trtc.v20190722.models.McuWaterMarkText`

        attr_accessor :WaterMarkType, :WaterMarkImage, :WaterMarkText

        def initialize(watermarktype=nil, watermarkimage=nil, watermarktext=nil)
          @WaterMarkType = watermarktype
          @WaterMarkImage = watermarkimage
          @WaterMarkText = watermarktext
        end

        def deserialize(params)
          @WaterMarkType = params['WaterMarkType']
          unless params['WaterMarkImage'].nil?
            @WaterMarkImage = McuWaterMarkImage.new
            @WaterMarkImage.deserialize(params['WaterMarkImage'])
          end
          unless params['WaterMarkText'].nil?
            @WaterMarkText = McuWaterMarkText.new
            @WaterMarkText.deserialize(params['WaterMarkText'])
          end
        end
      end

      # 文字水印参数。
      class McuWaterMarkText < TencentCloud::Common::AbstractModel
        # @param Text: 文字水印内容。
        # @type Text: String
        # @param WaterMarkWidth: 水印在输出时的宽。单位为像素值。
        # @type WaterMarkWidth: Integer
        # @param WaterMarkHeight: 水印在输出时的高。单位为像素值。
        # @type WaterMarkHeight: Integer
        # @param LocationX: 水印在输出时的X偏移。单位为像素值。
        # @type LocationX: Integer
        # @param LocationY: 水印在输出时的Y偏移。单位为像素值。
        # @type LocationY: Integer
        # @param FontSize: 字体大小
        # @type FontSize: Integer
        # @param FontColor: 字体颜色，默认为白色。常用的颜色有： 红色：0xcc0033。 黄色：0xcc9900。 绿色：0xcccc33。 蓝色：0x99CCFF。 黑色：0x000000。 白色：0xFFFFFF。 灰色：0x999999。
        # @type FontColor: String
        # @param BackGroundColor: 字体背景色，不配置默认为透明。常用的颜色有： 红色：0xcc0033。 黄色：0xcc9900。 绿色：0xcccc33。 蓝色：0x99CCFF。 黑色：0x000000。 白色：0xFFFFFF。 灰色：0x999999。
        # @type BackGroundColor: String

        attr_accessor :Text, :WaterMarkWidth, :WaterMarkHeight, :LocationX, :LocationY, :FontSize, :FontColor, :BackGroundColor

        def initialize(text=nil, watermarkwidth=nil, watermarkheight=nil, locationx=nil, locationy=nil, fontsize=nil, fontcolor=nil, backgroundcolor=nil)
          @Text = text
          @WaterMarkWidth = watermarkwidth
          @WaterMarkHeight = watermarkheight
          @LocationX = locationx
          @LocationY = locationy
          @FontSize = fontsize
          @FontColor = fontcolor
          @BackGroundColor = backgroundcolor
        end

        def deserialize(params)
          @Text = params['Text']
          @WaterMarkWidth = params['WaterMarkWidth']
          @WaterMarkHeight = params['WaterMarkHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @BackGroundColor = params['BackGroundColor']
        end
      end

      # 用户自定义混流布局参数列表。
      class MixLayout < TencentCloud::Common::AbstractModel
        # @param Top: 画布上该画面左上角的 y 轴坐标，取值范围 [0, 1920]，不能超过画布的高。
        # @type Top: Integer
        # @param Left: 画布上该画面左上角的 x 轴坐标，取值范围 [0, 1920]，不能超过画布的宽。
        # @type Left: Integer
        # @param Width: 画布上该画面宽度的相对值，取值范围 [0, 1920]，与Left相加不应超过画布的宽。
        # @type Width: Integer
        # @param Height: 画布上该画面高度的相对值，取值范围 [0, 1920]，与Top相加不应超过画布的高。
        # @type Height: Integer
        # @param UserId: 字符串内容为待显示在该画面的主播对应的UserId，如果不指定，会按照主播加入房间的顺序匹配。
        # @type UserId: String
        # @param Alpha: 画布的透明度值，取值范围[0, 255]。0表示不透明，255表示全透明。默认值为0。
        # @type Alpha: Integer
        # @param RenderMode: 0 ：拉伸模式，这个模式下整个视频内容会全部显示，并填满子画面，在源视频和目的视频宽高比不一致的时候，画面不会缺少内容，但是画面可能产生形变；

        # 1 ：剪裁模式（默认），这个模式下会严格按照目的视频的宽高比对源视频剪裁之后再拉伸，并填满子画面画布，在源视频和目的视频宽高比不一致的时候，画面保持不变形，但是会被剪裁；

        # 2 ：填黑模式，这个模式下会严格保持源视频的宽高比进行等比缩放，在源视频和目的视频宽高比不一致的时候，画面的上下侧边缘或者左右侧边缘会露出子画面画布的背景；

        # 3 ：智能拉伸模式，这个模式类似剪裁模式，区别是在源视频和目的视频宽高比不一致的时候，限制了最大剪裁比例为画面的宽度或者高度的20%；
        # @type RenderMode: Integer
        # @param MediaId: 对应订阅流的主辅路标识：
        # 0：主流（默认）；
        # 1：辅流；
        # @type MediaId: Integer
        # @param ImageLayer: 该画布的图层顺序, 这个值越小表示图层越靠后。默认值为0。
        # @type ImageLayer: Integer
        # @param SubBackgroundImage: 图片的url地址， 只支持jpg， png，大小限制不超过5M，宽高比不一致的处理方案同 RenderMode。
        # @type SubBackgroundImage: String

        attr_accessor :Top, :Left, :Width, :Height, :UserId, :Alpha, :RenderMode, :MediaId, :ImageLayer, :SubBackgroundImage

        def initialize(top=nil, left=nil, width=nil, height=nil, userid=nil, alpha=nil, rendermode=nil, mediaid=nil, imagelayer=nil, subbackgroundimage=nil)
          @Top = top
          @Left = left
          @Width = width
          @Height = height
          @UserId = userid
          @Alpha = alpha
          @RenderMode = rendermode
          @MediaId = mediaid
          @ImageLayer = imagelayer
          @SubBackgroundImage = subbackgroundimage
        end

        def deserialize(params)
          @Top = params['Top']
          @Left = params['Left']
          @Width = params['Width']
          @Height = params['Height']
          @UserId = params['UserId']
          @Alpha = params['Alpha']
          @RenderMode = params['RenderMode']
          @MediaId = params['MediaId']
          @ImageLayer = params['ImageLayer']
          @SubBackgroundImage = params['SubBackgroundImage']
        end
      end

      # 录制的混流布局参数。
      class MixLayoutParams < TencentCloud::Common::AbstractModel
        # @param MixLayoutMode: 布局模式:
        # 1：悬浮布局；
        # 2：屏幕分享布局；
        # 3：九宫格布局（默认）；
        # 4：自定义布局；

        # 悬浮布局：默认第一个进入房间的主播（也可以指定一个主播）的视频画面会铺满整个屏幕。其他主播的视频画面从左下角开始依次按照进房顺序水平排列，显示为小画面，小画面悬浮于大画面之上。当画面数量小于等于17个时，每行4个（4 x 4排列）。当画面数量大于17个时，重新布局小画面为每行5个（5 x 5）排列。最多支持25个画面，如果用户只发送音频，仍然会占用画面位置。

        # 屏幕分享布局：指定一个主播在屏幕左侧的大画面位置（如果不指定，那么大画面位置为背景色），其他主播自上而下依次垂直排列于右侧。当画面数量少于17个的时候，右侧每列最多8人，最多占据两列。当画面数量多于17个的时候，超过17个画面的主播从左下角开始依次水平排列。最多支持25个画面，如果主播只发送音频，仍然会占用画面位置。

        # 九宫格布局：根据主播的数量自动调整每个画面的大小，每个主播的画面大小一致，最多支持25个画面。

        # 自定义布局：根据需要在MixLayoutList内定制每个主播画面的布局。
        # @type MixLayoutMode: Integer
        # @param MixLayoutList: 如果MixLayoutMode 选择为4自定义布局模式的话，设置此参数为每个主播所对应的布局画面的详细信息，最大不超过25个。
        # @type MixLayoutList: Array
        # @param BackGroundColor: 录制背景颜色，RGB的颜色表的16进制表示，每个颜色通过8bit长度标识，默认为黑色。比如橙色对应的RGB为 R:255 G:165 B:0, 那么对应的字符串描述为#FFA500，格式规范：‘#‘开头，后面跟固定RGB的颜色值
        # @type BackGroundColor: String
        # @param MaxResolutionUserId: 在布局模式为1：悬浮布局和 2：屏幕分享布局时，设定为显示大视频画面的UserId。不填的话：悬浮布局默认是第一个进房间的主播，屏幕分享布局默认是背景色
        # @type MaxResolutionUserId: String
        # @param MediaId: 主辅路标识，
        # 0：主流（默认）；
        # 1：辅流（屏幕分享）；
        # 这个位置的MediaId代表的是对应MaxResolutionUserId的主辅路，MixLayoutList内代表的是自定义用户的主辅路。
        # @type MediaId: Integer
        # @param BackgroundImageUrl: 图片的url地址， 只支持jpg， png，大小限制不超过5M，url不可包含中文。
        # @type BackgroundImageUrl: String
        # @param PlaceHolderMode: 设置为1时代表启用占位图功能，0时代表不启用占位图功能，默认为0。启用占位图功能时，在预设位置的用户没有上行视频时可显示对应的占位图。
        # @type PlaceHolderMode: Integer
        # @param BackgroundImageRenderMode: 背景画面宽高比不一致的时候处理方案，与MixLayoufList定义的RenderMode一致。
        # @type BackgroundImageRenderMode: Integer
        # @param DefaultSubBackgroundImage: 子画面占位图url地址， 只支持jpg， png，大小限制不超过5M，宽高比不一致的处理方案同 RenderMode。
        # @type DefaultSubBackgroundImage: String
        # @param WaterMarkList: 水印布局参数， 最多支持25个。
        # @type WaterMarkList: Array
        # @param RenderMode: 模板布局下，背景画面宽高比不一致的时候处理方案。自定义布局不生效，与MixLayoufList定义的RenderMode一致。
        # @type RenderMode: Integer
        # @param MaxResolutionUserAlign: 屏幕分享模板有效。设置为1时代表大画面居右，小画面居左布局。默认为0。
        # @type MaxResolutionUserAlign: Integer

        attr_accessor :MixLayoutMode, :MixLayoutList, :BackGroundColor, :MaxResolutionUserId, :MediaId, :BackgroundImageUrl, :PlaceHolderMode, :BackgroundImageRenderMode, :DefaultSubBackgroundImage, :WaterMarkList, :RenderMode, :MaxResolutionUserAlign

        def initialize(mixlayoutmode=nil, mixlayoutlist=nil, backgroundcolor=nil, maxresolutionuserid=nil, mediaid=nil, backgroundimageurl=nil, placeholdermode=nil, backgroundimagerendermode=nil, defaultsubbackgroundimage=nil, watermarklist=nil, rendermode=nil, maxresolutionuseralign=nil)
          @MixLayoutMode = mixlayoutmode
          @MixLayoutList = mixlayoutlist
          @BackGroundColor = backgroundcolor
          @MaxResolutionUserId = maxresolutionuserid
          @MediaId = mediaid
          @BackgroundImageUrl = backgroundimageurl
          @PlaceHolderMode = placeholdermode
          @BackgroundImageRenderMode = backgroundimagerendermode
          @DefaultSubBackgroundImage = defaultsubbackgroundimage
          @WaterMarkList = watermarklist
          @RenderMode = rendermode
          @MaxResolutionUserAlign = maxresolutionuseralign
        end

        def deserialize(params)
          @MixLayoutMode = params['MixLayoutMode']
          unless params['MixLayoutList'].nil?
            @MixLayoutList = []
            params['MixLayoutList'].each do |i|
              mixlayout_tmp = MixLayout.new
              mixlayout_tmp.deserialize(i)
              @MixLayoutList << mixlayout_tmp
            end
          end
          @BackGroundColor = params['BackGroundColor']
          @MaxResolutionUserId = params['MaxResolutionUserId']
          @MediaId = params['MediaId']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          @PlaceHolderMode = params['PlaceHolderMode']
          @BackgroundImageRenderMode = params['BackgroundImageRenderMode']
          @DefaultSubBackgroundImage = params['DefaultSubBackgroundImage']
          unless params['WaterMarkList'].nil?
            @WaterMarkList = []
            params['WaterMarkList'].each do |i|
              watermark_tmp = WaterMark.new
              watermark_tmp.deserialize(i)
              @WaterMarkList << watermark_tmp
            end
          end
          @RenderMode = params['RenderMode']
          @MaxResolutionUserAlign = params['MaxResolutionUserAlign']
        end
      end

      # 录制的音视频转码参数。
      class MixTranscodeParams < TencentCloud::Common::AbstractModel
        # @param VideoParams: 录制视频转码参数，注意如果设置了这个参数，那么里面的字段都是必填的，没有默认值，如果不填这个参数，那么取值为默认值。
        # @type VideoParams: :class:`Tencentcloud::Trtc.v20190722.models.VideoParams`
        # @param AudioParams: 录制音频转码参数，注意如果设置了这个参数，那么里面的字段都是必填的，没有默认值，如果不填这个参数，那么取值为默认值。
        # @type AudioParams: :class:`Tencentcloud::Trtc.v20190722.models.AudioParams`

        attr_accessor :VideoParams, :AudioParams

        def initialize(videoparams=nil, audioparams=nil)
          @VideoParams = videoparams
          @AudioParams = audioparams
        end

        def deserialize(params)
          unless params['VideoParams'].nil?
            @VideoParams = VideoParams.new
            @VideoParams.deserialize(params['VideoParams'])
          end
          unless params['AudioParams'].nil?
            @AudioParams = AudioParams.new
            @AudioParams.deserialize(params['AudioParams'])
          end
        end
      end

      # TRTC用户参数。
      class MixUserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID。
        # @type UserId: String
        # @param RoomId: 动态布局时房间信息必须和主房间信息保持一致，自定义布局时房间信息必须和MixLayoutList中对应用户的房间信息保持一致，不填时默认与主房间信息一致。
        # @type RoomId: String
        # @param RoomIdType: 房间号类型，0为整形房间号，1为字符串房间号。
        # @type RoomIdType: Integer

        attr_accessor :UserId, :RoomId, :RoomIdType

        def initialize(userid=nil, roomid=nil, roomidtype=nil)
          @UserId = userid
          @RoomId = roomid
          @RoomIdType = roomidtype
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RoomId = params['RoomId']
          @RoomIdType = params['RoomIdType']
        end
      end

      # ModifyCloudRecording请求参数结构体
      class ModifyCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 录制任务的唯一Id，在启动录制成功后会返回。
        # @type TaskId: String
        # @param MixLayoutParams: 需要更新的混流的布局参数。
        # @type MixLayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.MixLayoutParams`
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeStreamUserIds`

        attr_accessor :SdkAppId, :TaskId, :MixLayoutParams, :SubscribeStreamUserIds

        def initialize(sdkappid=nil, taskid=nil, mixlayoutparams=nil, subscribestreamuserids=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @MixLayoutParams = mixlayoutparams
          @SubscribeStreamUserIds = subscribestreamuserids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          unless params['MixLayoutParams'].nil?
            @MixLayoutParams = MixLayoutParams.new
            @MixLayoutParams.deserialize(params['MixLayoutParams'])
          end
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeStreamUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
        end
      end

      # ModifyCloudRecording返回参数结构体
      class ModifyCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。
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

      # ModifyPicture请求参数结构体
      class ModifyPictureRequest < TencentCloud::Common::AbstractModel
        # @param PictureId: 图片id
        # @type PictureId: Integer
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer
        # @param Height: 图片长度
        # @type Height: Integer
        # @param Width: 图片宽度
        # @type Width: Integer
        # @param XPosition: 显示位置x轴方向
        # @type XPosition: Integer
        # @param YPosition: 显示位置y轴方向
        # @type YPosition: Integer

        attr_accessor :PictureId, :SdkAppId, :Height, :Width, :XPosition, :YPosition

        def initialize(pictureid=nil, sdkappid=nil, height=nil, width=nil, xposition=nil, yposition=nil)
          @PictureId = pictureid
          @SdkAppId = sdkappid
          @Height = height
          @Width = width
          @XPosition = xposition
          @YPosition = yposition
        end

        def deserialize(params)
          @PictureId = params['PictureId']
          @SdkAppId = params['SdkAppId']
          @Height = params['Height']
          @Width = params['Width']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
        end
      end

      # ModifyPicture返回参数结构体
      class ModifyPictureResponse < TencentCloud::Common::AbstractModel
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

      # 旁路转码时长的查询结果
      class OneSdkAppIdTranscodeTimeUsagesInfo < TencentCloud::Common::AbstractModel
        # @param SdkAppIdTranscodeTimeUsages: 旁路转码时长查询结果数组
        # @type SdkAppIdTranscodeTimeUsages: Array
        # @param TotalNum: 查询记录数量
        # @type TotalNum: Integer
        # @param SdkAppId: 所查询的应用ID，可能值为:1-应用的应用ID，2-total，显示为total则表示查询的是所有应用的用量合计值。
        # @type SdkAppId: String

        attr_accessor :SdkAppIdTranscodeTimeUsages, :TotalNum, :SdkAppId

        def initialize(sdkappidtranscodetimeusages=nil, totalnum=nil, sdkappid=nil)
          @SdkAppIdTranscodeTimeUsages = sdkappidtranscodetimeusages
          @TotalNum = totalnum
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          unless params['SdkAppIdTranscodeTimeUsages'].nil?
            @SdkAppIdTranscodeTimeUsages = []
            params['SdkAppIdTranscodeTimeUsages'].each do |i|
              sdkappidtrtcmcutranscodetimeusage_tmp = SdkAppIdTrtcMcuTranscodeTimeUsage.new
              sdkappidtrtcmcutranscodetimeusage_tmp.deserialize(i)
              @SdkAppIdTranscodeTimeUsages << sdkappidtrtcmcutranscodetimeusage_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @SdkAppId = params['SdkAppId']
        end
      end

      # MCU混流的输出参数
      class OutputParams < TencentCloud::Common::AbstractModel
        # @param StreamId: 直播流 ID，由用户自定义设置，该流 ID 不能与用户旁路的流 ID 相同，限制64字节。
        # @type StreamId: String
        # @param PureAudioStream: 取值范围[0,1]， 填0：直播流为音视频(默认); 填1：直播流为纯音频
        # @type PureAudioStream: Integer
        # @param RecordId: 自定义录制文件名称前缀。请先在实时音视频控制台开通录制功能，https://cloud.tencent.com/document/product/647/50768。
        # 【注意】该方式仅对旧版云端录制功能的应用生效，新版云端录制功能的应用请用接口CreateCloudRecording发起录制。新、旧云端录制类型判断方式请见：https://cloud.tencent.com/document/product/647/50768#record
        # @type RecordId: String
        # @param RecordAudioOnly: 取值范围[0,1]，填0无实际含义; 填1：指定录制文件格式为mp3。此参数不建议使用，建议在实时音视频控制台配置纯音频录制模板。
        # @type RecordAudioOnly: Integer

        attr_accessor :StreamId, :PureAudioStream, :RecordId, :RecordAudioOnly

        def initialize(streamid=nil, pureaudiostream=nil, recordid=nil, recordaudioonly=nil)
          @StreamId = streamid
          @PureAudioStream = pureaudiostream
          @RecordId = recordid
          @RecordAudioOnly = recordaudioonly
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @PureAudioStream = params['PureAudioStream']
          @RecordId = params['RecordId']
          @RecordAudioOnly = params['RecordAudioOnly']
        end
      end

      # 图片列表信息
      class PictureInfo < TencentCloud::Common::AbstractModel
        # @param Height: 图片长度
        # @type Height: Integer
        # @param Width: 图片宽度
        # @type Width: Integer
        # @param XPosition: 显示位置x轴方向
        # @type XPosition: Integer
        # @param YPosition: 显示位置y轴方向
        # @type YPosition: Integer
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer
        # @param PictureId: 图片id
        # @type PictureId: Integer

        attr_accessor :Height, :Width, :XPosition, :YPosition, :SdkAppId, :PictureId

        def initialize(height=nil, width=nil, xposition=nil, yposition=nil, sdkappid=nil, pictureid=nil)
          @Height = height
          @Width = width
          @XPosition = xposition
          @YPosition = yposition
          @SdkAppId = sdkappid
          @PictureId = pictureid
        end

        def deserialize(params)
          @Height = params['Height']
          @Width = params['Width']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
          @SdkAppId = params['SdkAppId']
          @PictureId = params['PictureId']
        end
      end

      # 自定义模板中有效，指定用户视频在混合画面中的位置。
      class PresetLayoutConfig < TencentCloud::Common::AbstractModel
        # @param UserId: 指定显示在该画面上的用户ID。如果不指定用户ID，会按照用户加入房间的顺序自动匹配PresetLayoutConfig中的画面设置。
        # @type UserId: String
        # @param StreamType: 当该画面指定用户时，代表用户的流类型。0为摄像头，1为屏幕分享。小画面为web用户时此值填0。
        # @type StreamType: Integer
        # @param ImageWidth: 该画面在输出时的宽度，单位为像素值，不填默认为0。
        # @type ImageWidth: Integer
        # @param ImageHeight: 该画面在输出时的高度，单位为像素值，不填默认为0。
        # @type ImageHeight: Integer
        # @param LocationX: 该画面在输出时的X偏移，单位为像素值，LocationX与ImageWidth之和不能超过混流输出的总宽度，不填默认为0。
        # @type LocationX: Integer
        # @param LocationY: 该画面在输出时的Y偏移，单位为像素值，LocationY与ImageHeight之和不能超过混流输出的总高度，不填默认为0。
        # @type LocationY: Integer
        # @param ZOrder: 该画面在输出时的层级，不填默认为0。
        # @type ZOrder: Integer
        # @param RenderMode: 该画面在输出时的显示模式：0为裁剪，1为缩放，2为缩放并显示黑底。不填默认为0。
        # @type RenderMode: Integer
        # @param MixInputType: 该当前位置用户混入的流类型：0为混入音视频，1为只混入视频，2为只混入音频。默认为0，建议配合指定用户ID使用。
        # @type MixInputType: Integer
        # @param PlaceImageId: 占位图ID。启用占位图功能时，在当前位置的用户没有上行视频时显示占位图。占位图大小不能超过2M，在实时音视频控制台上传并生成，https://cloud.tencent.com/document/product/647/50769
        # @type PlaceImageId: Integer

        attr_accessor :UserId, :StreamType, :ImageWidth, :ImageHeight, :LocationX, :LocationY, :ZOrder, :RenderMode, :MixInputType, :PlaceImageId

        def initialize(userid=nil, streamtype=nil, imagewidth=nil, imageheight=nil, locationx=nil, locationy=nil, zorder=nil, rendermode=nil, mixinputtype=nil, placeimageid=nil)
          @UserId = userid
          @StreamType = streamtype
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @LocationX = locationx
          @LocationY = locationy
          @ZOrder = zorder
          @RenderMode = rendermode
          @MixInputType = mixinputtype
          @PlaceImageId = placeimageid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @StreamType = params['StreamType']
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @ZOrder = params['ZOrder']
          @RenderMode = params['RenderMode']
          @MixInputType = params['MixInputType']
          @PlaceImageId = params['PlaceImageId']
        end
      end

      # 第三方CDN转推参数
      class PublishCdnParams < TencentCloud::Common::AbstractModel
        # @param BizId: 腾讯云直播BizId。
        # @type BizId: Integer
        # @param PublishCdnUrls: 第三方CDN转推的目的地址，同时只支持转推一个第三方CDN地址。
        # @type PublishCdnUrls: Array

        attr_accessor :BizId, :PublishCdnUrls

        def initialize(bizid=nil, publishcdnurls=nil)
          @BizId = bizid
          @PublishCdnUrls = publishcdnurls
        end

        def deserialize(params)
          @BizId = params['BizId']
          @PublishCdnUrls = params['PublishCdnUrls']
        end
      end

      # Es返回的质量数据
      class QualityData < TencentCloud::Common::AbstractModel
        # @param Content: 数据内容
        # @type Content: Array
        # @param UserId: 用户ID
        # @type UserId: String
        # @param PeerId: 对端Id,为空时表示上行数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerId: String
        # @param DataType: 数据类型
        # @type DataType: String

        attr_accessor :Content, :UserId, :PeerId, :DataType

        def initialize(content=nil, userid=nil, peerid=nil, datatype=nil)
          @Content = content
          @UserId = userid
          @PeerId = peerid
          @DataType = datatype
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              timevalue_tmp = TimeValue.new
              timevalue_tmp.deserialize(i)
              @Content << timevalue_tmp
            end
          end
          @UserId = params['UserId']
          @PeerId = params['PeerId']
          @DataType = params['DataType']
        end
      end

      # 云端录制控制参数。
      class RecordParams < TencentCloud::Common::AbstractModel
        # @param RecordMode: 录制模式：
        # 1：单流录制，分别录制房间的订阅UserId的音频和视频，将录制文件上传至云存储；
        # 2：混流录制，将房间内订阅UserId的音视频混录成一个音视频文件，将录制文件上传至云存储；
        # @type RecordMode: Integer
        # @param MaxIdleTime: 房间内持续没有用户（主播）上行推流的状态超过MaxIdleTime的时长，自动停止录制，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于 86400秒(24小时)。
        # @type MaxIdleTime: Integer
        # @param StreamType: 录制的媒体流类型：
        # 0：录制音频+视频流（默认）;
        # 1：仅录制音频流；
        # 2：仅录制视频流，
        # @type StreamType: Integer
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeStreamUserIds`
        # @param OutputFormat: 输出文件的格式，上传到云点播时此参数无效，存储到云点播时请关注TencentVod内的MediaType参数。0：(默认)输出文件为hls格式。1：输出文件格式为hls+mp4。2：输出文件格式为hls+aac 。3：输出文件格式为mp4。4：输出文件格式为aac。
        # @type OutputFormat: Integer
        # @param AvMerge: 单流录制模式下，用户的音视频是否合并，0：单流音视频不合并（默认）。1：单流音视频合并成一个ts。混流录制此参数无需设置，默认音视频合并。
        # @type AvMerge: Integer
        # @param MaxMediaFileDuration: 如果是aac或者mp4文件格式，超过长度限制后，系统会自动拆分视频文件。单位：分钟。默认为1440min（24h），取值范围为1-1440。【单文件限制最大为2G，满足文件大小 >2G 或录制时长度 > 24h任意一个条件，文件都会自动切分】
        # Hls 格式录制此参数不生效。
        # @type MaxMediaFileDuration: Integer
        # @param MediaId: 指定录制主辅流，0：主流+辅流（默认）；1:主流；2:辅流。
        # @type MediaId: Integer

        attr_accessor :RecordMode, :MaxIdleTime, :StreamType, :SubscribeStreamUserIds, :OutputFormat, :AvMerge, :MaxMediaFileDuration, :MediaId

        def initialize(recordmode=nil, maxidletime=nil, streamtype=nil, subscribestreamuserids=nil, outputformat=nil, avmerge=nil, maxmediafileduration=nil, mediaid=nil)
          @RecordMode = recordmode
          @MaxIdleTime = maxidletime
          @StreamType = streamtype
          @SubscribeStreamUserIds = subscribestreamuserids
          @OutputFormat = outputformat
          @AvMerge = avmerge
          @MaxMediaFileDuration = maxmediafileduration
          @MediaId = mediaid
        end

        def deserialize(params)
          @RecordMode = params['RecordMode']
          @MaxIdleTime = params['MaxIdleTime']
          @StreamType = params['StreamType']
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeStreamUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
          @OutputFormat = params['OutputFormat']
          @AvMerge = params['AvMerge']
          @MaxMediaFileDuration = params['MaxMediaFileDuration']
          @MediaId = params['MediaId']
        end
      end

      # 录制的使用信息。
      class RecordUsage < TencentCloud::Common::AbstractModel
        # @param TimeKey: 本组数据对应的时间点，格式如:2020-09-07或2020-09-07 00:05:05。
        # @type TimeKey: String
        # @param Class1VideoTime: 视频时长-标清SD，单位：秒。
        # @type Class1VideoTime: Integer
        # @param Class2VideoTime: 视频时长-高清HD，单位：秒。
        # @type Class2VideoTime: Integer
        # @param Class3VideoTime: 视频时长-超清HD，单位：秒。
        # @type Class3VideoTime: Integer
        # @param AudioTime: 语音时长，单位：秒。
        # @type AudioTime: Integer

        attr_accessor :TimeKey, :Class1VideoTime, :Class2VideoTime, :Class3VideoTime, :AudioTime

        def initialize(timekey=nil, class1videotime=nil, class2videotime=nil, class3videotime=nil, audiotime=nil)
          @TimeKey = timekey
          @Class1VideoTime = class1videotime
          @Class2VideoTime = class2videotime
          @Class3VideoTime = class3videotime
          @AudioTime = audiotime
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @Class1VideoTime = params['Class1VideoTime']
          @Class2VideoTime = params['Class2VideoTime']
          @Class3VideoTime = params['Class3VideoTime']
          @AudioTime = params['AudioTime']
        end
      end

      # RemoveUserByStrRoomId请求参数结构体
      class RemoveUserByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: String
        # @param UserIds: 要移出的用户列表，最多10个。
        # @type UserIds: Array

        attr_accessor :SdkAppId, :RoomId, :UserIds

        def initialize(sdkappid=nil, roomid=nil, userids=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserIds = userids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserIds = params['UserIds']
        end
      end

      # RemoveUserByStrRoomId返回参数结构体
      class RemoveUserByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # RemoveUser请求参数结构体
      class RemoveUserRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer
        # @param UserIds: 要移出的用户列表，最多10个。
        # @type UserIds: Array

        attr_accessor :SdkAppId, :RoomId, :UserIds

        def initialize(sdkappid=nil, roomid=nil, userids=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserIds = userids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserIds = params['UserIds']
        end
      end

      # RemoveUser返回参数结构体
      class RemoveUserResponse < TencentCloud::Common::AbstractModel
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

      # 房间信息列表
      class RoomState < TencentCloud::Common::AbstractModel
        # @param CommId: 通话ID（唯一标识一次通话）
        # @type CommId: String
        # @param RoomString: 房间号
        # @type RoomString: String
        # @param CreateTime: 房间创建时间
        # @type CreateTime: Integer
        # @param DestroyTime: 房间销毁时间
        # @type DestroyTime: Integer
        # @param IsFinished: 房间是否已经结束
        # @type IsFinished: Boolean
        # @param UserId: 房间创建者Id
        # @type UserId: String

        attr_accessor :CommId, :RoomString, :CreateTime, :DestroyTime, :IsFinished, :UserId

        def initialize(commid=nil, roomstring=nil, createtime=nil, destroytime=nil, isfinished=nil, userid=nil)
          @CommId = commid
          @RoomString = roomstring
          @CreateTime = createtime
          @DestroyTime = destroytime
          @IsFinished = isfinished
          @UserId = userid
        end

        def deserialize(params)
          @CommId = params['CommId']
          @RoomString = params['RoomString']
          @CreateTime = params['CreateTime']
          @DestroyTime = params['DestroyTime']
          @IsFinished = params['IsFinished']
          @UserId = params['UserId']
        end
      end

      # SeriesInfo类型的二维数组
      class RowValues < TencentCloud::Common::AbstractModel
        # @param RowValue: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowValue: Array

        attr_accessor :RowValue

        def initialize(rowvalue=nil)
          @RowValue = rowvalue
        end

        def deserialize(params)
          @RowValue = params['RowValue']
        end
      end

      # 历史规模信息
      class ScaleInfomation < TencentCloud::Common::AbstractModel
        # @param Time: 每天开始的时间
        # @type Time: Integer
        # @param UserNumber: 房间人数，用户重复进入同一个房间为1次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserNumber: Integer
        # @param UserCount: 房间人次，用户每次进入房间为一次
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserCount: Integer
        # @param RoomNumbers: sdkappid下一天内的房间数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomNumbers: Integer

        attr_accessor :Time, :UserNumber, :UserCount, :RoomNumbers

        def initialize(time=nil, usernumber=nil, usercount=nil, roomnumbers=nil)
          @Time = time
          @UserNumber = usernumber
          @UserCount = usercount
          @RoomNumbers = roomnumbers
        end

        def deserialize(params)
          @Time = params['Time']
          @UserNumber = params['UserNumber']
          @UserCount = params['UserCount']
          @RoomNumbers = params['RoomNumbers']
        end
      end

      # SdkAppId级别录制时长数据。
      class SdkAppIdRecordUsage < TencentCloud::Common::AbstractModel
        # @param SdkAppId: SdkAppId的值。
        # @type SdkAppId: String
        # @param Usages: 统计的时间点数据。
        # @type Usages: Array

        attr_accessor :SdkAppId, :Usages

        def initialize(sdkappid=nil, usages=nil)
          @SdkAppId = sdkappid
          @Usages = usages
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['Usages'].nil?
            @Usages = []
            params['Usages'].each do |i|
              recordusage_tmp = RecordUsage.new
              recordusage_tmp.deserialize(i)
              @Usages << recordusage_tmp
            end
          end
        end
      end

      # 查询旁路转码计费时长。
      # 查询时间小于等于1天时，返回每5分钟粒度的数据；查询时间大于1天时，返回按天汇总的数据。
      class SdkAppIdTrtcMcuTranscodeTimeUsage < TencentCloud::Common::AbstractModel
        # @param TimeKey: 本组数据对应的时间点，格式如：2020-09-07或2020-09-07 00:05:05。
        # @type TimeKey: String
        # @param AudioTime: 语音时长，单位：秒。
        # @type AudioTime: Integer
        # @param VideoTimeSd: 视频时长-标清SD，单位：秒。
        # @type VideoTimeSd: Integer
        # @param VideoTimeHd: 视频时长-高清HD，单位：秒。
        # @type VideoTimeHd: Integer
        # @param VideoTimeFhd: 视频时长-全高清FHD，单位：秒。
        # @type VideoTimeFhd: Integer
        # @param Flux: 带宽，单位：Mbps。
        # @type Flux: Float

        attr_accessor :TimeKey, :AudioTime, :VideoTimeSd, :VideoTimeHd, :VideoTimeFhd, :Flux

        def initialize(timekey=nil, audiotime=nil, videotimesd=nil, videotimehd=nil, videotimefhd=nil, flux=nil)
          @TimeKey = timekey
          @AudioTime = audiotime
          @VideoTimeSd = videotimesd
          @VideoTimeHd = videotimehd
          @VideoTimeFhd = videotimefhd
          @Flux = flux
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @AudioTime = params['AudioTime']
          @VideoTimeSd = params['VideoTimeSd']
          @VideoTimeHd = params['VideoTimeHd']
          @VideoTimeFhd = params['VideoTimeFhd']
          @Flux = params['Flux']
        end
      end

      # SeriesInfo类型
      class SeriesInfo < TencentCloud::Common::AbstractModel
        # @param Columns: 数据列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Values: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Columns, :Values

        def initialize(columns=nil, values=nil)
          @Columns = columns
          @Values = values
        end

        def deserialize(params)
          @Columns = params['Columns']
          @Values = params['Values']
        end
      end

      # SeriesInfos类型
      class SeriesInfos < TencentCloud::Common::AbstractModel
        # @param Columns: 数据列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Values: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Columns, :Values

        def initialize(columns=nil, values=nil)
          @Columns = columns
          @Values = values
        end

        def deserialize(params)
          @Columns = params['Columns']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              rowvalues_tmp = RowValues.new
              rowvalues_tmp.deserialize(i)
              @Values << rowvalues_tmp
            end
          end
        end
      end

      # 单流旁路转推的用户上行信息。
      class SingleSubscribeParams < TencentCloud::Common::AbstractModel
        # @param UserMediaStream: 用户媒体流参数。
        # @type UserMediaStream: :class:`Tencentcloud::Trtc.v20190722.models.UserMediaStream`

        attr_accessor :UserMediaStream

        def initialize(usermediastream=nil)
          @UserMediaStream = usermediastream
        end

        def deserialize(params)
          unless params['UserMediaStream'].nil?
            @UserMediaStream = UserMediaStream.new
            @UserMediaStream.deserialize(params['UserMediaStream'])
          end
        end
      end

      # 画中画模板中有效，代表小画面的布局参数
      class SmallVideoLayoutParams < TencentCloud::Common::AbstractModel
        # @param UserId: 代表小画面对应的用户ID。
        # @type UserId: String
        # @param StreamType: 代表小画面对应的流类型，0为摄像头，1为屏幕分享。小画面为web用户时此值填0。
        # @type StreamType: Integer
        # @param ImageWidth: 小画面在输出时的宽度，单位为像素值，不填默认为0。
        # @type ImageWidth: Integer
        # @param ImageHeight: 小画面在输出时的高度，单位为像素值，不填默认为0。
        # @type ImageHeight: Integer
        # @param LocationX: 小画面在输出时的X偏移，单位为像素值，LocationX与ImageWidth之和不能超过混流输出的总宽度，不填默认为0。
        # @type LocationX: Integer
        # @param LocationY: 小画面在输出时的Y偏移，单位为像素值，LocationY与ImageHeight之和不能超过混流输出的总高度，不填默认为0。
        # @type LocationY: Integer

        attr_accessor :UserId, :StreamType, :ImageWidth, :ImageHeight, :LocationX, :LocationY

        def initialize(userid=nil, streamtype=nil, imagewidth=nil, imageheight=nil, locationx=nil, locationy=nil)
          @UserId = userid
          @StreamType = streamtype
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @LocationX = locationx
          @LocationY = locationy
        end

        def deserialize(params)
          @UserId = params['UserId']
          @StreamType = params['StreamType']
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
        end
      end

      # StartMCUMixTranscodeByStrRoomId请求参数结构体
      class StartMCUMixTranscodeByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param StrRoomId: 字符串房间号。
        # @type StrRoomId: String
        # @param OutputParams: 混流输出控制参数。
        # @type OutputParams: :class:`Tencentcloud::Trtc.v20190722.models.OutputParams`
        # @param EncodeParams: 混流输出编码参数。
        # @type EncodeParams: :class:`Tencentcloud::Trtc.v20190722.models.EncodeParams`
        # @param LayoutParams: 混流输出布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.LayoutParams`
        # @param PublishCdnParams: 第三方CDN转推参数。如需转推至腾讯云云直播，此参数无需填写，会默认转推
        # @type PublishCdnParams: :class:`Tencentcloud::Trtc.v20190722.models.PublishCdnParams`

        attr_accessor :SdkAppId, :StrRoomId, :OutputParams, :EncodeParams, :LayoutParams, :PublishCdnParams

        def initialize(sdkappid=nil, strroomid=nil, outputparams=nil, encodeparams=nil, layoutparams=nil, publishcdnparams=nil)
          @SdkAppId = sdkappid
          @StrRoomId = strroomid
          @OutputParams = outputparams
          @EncodeParams = encodeparams
          @LayoutParams = layoutparams
          @PublishCdnParams = publishcdnparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StrRoomId = params['StrRoomId']
          unless params['OutputParams'].nil?
            @OutputParams = OutputParams.new
            @OutputParams.deserialize(params['OutputParams'])
          end
          unless params['EncodeParams'].nil?
            @EncodeParams = EncodeParams.new
            @EncodeParams.deserialize(params['EncodeParams'])
          end
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = PublishCdnParams.new
            @PublishCdnParams.deserialize(params['PublishCdnParams'])
          end
        end
      end

      # StartMCUMixTranscodeByStrRoomId返回参数结构体
      class StartMCUMixTranscodeByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # StartMCUMixTranscode请求参数结构体
      class StartMCUMixTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer
        # @param OutputParams: 混流输出控制参数。
        # @type OutputParams: :class:`Tencentcloud::Trtc.v20190722.models.OutputParams`
        # @param EncodeParams: 混流输出编码参数。
        # @type EncodeParams: :class:`Tencentcloud::Trtc.v20190722.models.EncodeParams`
        # @param LayoutParams: 混流输出布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.LayoutParams`
        # @param PublishCdnParams: 第三方CDN转推参数。如需转推至腾讯云云直播，此参数无需填写，会默认转推
        # @type PublishCdnParams: :class:`Tencentcloud::Trtc.v20190722.models.PublishCdnParams`

        attr_accessor :SdkAppId, :RoomId, :OutputParams, :EncodeParams, :LayoutParams, :PublishCdnParams

        def initialize(sdkappid=nil, roomid=nil, outputparams=nil, encodeparams=nil, layoutparams=nil, publishcdnparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @OutputParams = outputparams
          @EncodeParams = encodeparams
          @LayoutParams = layoutparams
          @PublishCdnParams = publishcdnparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          unless params['OutputParams'].nil?
            @OutputParams = OutputParams.new
            @OutputParams.deserialize(params['OutputParams'])
          end
          unless params['EncodeParams'].nil?
            @EncodeParams = EncodeParams.new
            @EncodeParams.deserialize(params['EncodeParams'])
          end
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = PublishCdnParams.new
            @PublishCdnParams.deserialize(params['PublishCdnParams'])
          end
        end
      end

      # StartMCUMixTranscode返回参数结构体
      class StartMCUMixTranscodeResponse < TencentCloud::Common::AbstractModel
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

      # StartPublishCdnStream请求参数结构体
      class StartPublishCdnStreamRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: 主房间信息RoomId，转推的TRTC房间所对应的RoomId。
        # @type RoomId: String
        # @param RoomIdType: 主房间信息RoomType，必须和转推的房间所对应的RoomId类型相同，0为整形房间号，1为字符串房间号。
        # @type RoomIdType: Integer
        # @param AgentParams: 转推服务加入TRTC房间的机器人参数。
        # @type AgentParams: :class:`Tencentcloud::Trtc.v20190722.models.AgentParams`
        # @param WithTranscoding: 是否转码，0表示无需转码，1表示需要转码。是否收取转码费是由WithTranscoding参数决定的，WithTranscoding为0，表示旁路转推，不会收取转码费用，WithTranscoding为1，表示混流转推，会收取转码费用。
        # @type WithTranscoding: Integer
        # @param AudioParams: 转推流的音频编码参数。由于音频是必转码的（不会收取转码费用），所以启动任务的时候，必须填写。
        # @type AudioParams: :class:`Tencentcloud::Trtc.v20190722.models.McuAudioParams`
        # @param VideoParams: 转推流的视频编码参数，不填表示纯音频转推。
        # @type VideoParams: :class:`Tencentcloud::Trtc.v20190722.models.McuVideoParams`
        # @param SingleSubscribeParams: 需要单流旁路转推的用户上行参数，单流旁路转推时，WithTranscoding需要设置为0。
        # @type SingleSubscribeParams: :class:`Tencentcloud::Trtc.v20190722.models.SingleSubscribeParams`
        # @param PublishCdnParams: 转推的CDN参数。和回推房间参数必须要有一个。
        # @type PublishCdnParams: Array
        # @param SeiParams: 混流SEI参数
        # @type SeiParams: :class:`Tencentcloud::Trtc.v20190722.models.McuSeiParams`
        # @param FeedBackRoomParams: 回推房间信息，和转推CDN参数必须要有一个。注：回推房间需使用特殊的SDK版本，如您有需求，请联系腾讯云技术支持。
        # @type FeedBackRoomParams: Array

        attr_accessor :SdkAppId, :RoomId, :RoomIdType, :AgentParams, :WithTranscoding, :AudioParams, :VideoParams, :SingleSubscribeParams, :PublishCdnParams, :SeiParams, :FeedBackRoomParams

        def initialize(sdkappid=nil, roomid=nil, roomidtype=nil, agentparams=nil, withtranscoding=nil, audioparams=nil, videoparams=nil, singlesubscribeparams=nil, publishcdnparams=nil, seiparams=nil, feedbackroomparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @RoomIdType = roomidtype
          @AgentParams = agentparams
          @WithTranscoding = withtranscoding
          @AudioParams = audioparams
          @VideoParams = videoparams
          @SingleSubscribeParams = singlesubscribeparams
          @PublishCdnParams = publishcdnparams
          @SeiParams = seiparams
          @FeedBackRoomParams = feedbackroomparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @RoomIdType = params['RoomIdType']
          unless params['AgentParams'].nil?
            @AgentParams = AgentParams.new
            @AgentParams.deserialize(params['AgentParams'])
          end
          @WithTranscoding = params['WithTranscoding']
          unless params['AudioParams'].nil?
            @AudioParams = McuAudioParams.new
            @AudioParams.deserialize(params['AudioParams'])
          end
          unless params['VideoParams'].nil?
            @VideoParams = McuVideoParams.new
            @VideoParams.deserialize(params['VideoParams'])
          end
          unless params['SingleSubscribeParams'].nil?
            @SingleSubscribeParams = SingleSubscribeParams.new
            @SingleSubscribeParams.deserialize(params['SingleSubscribeParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = []
            params['PublishCdnParams'].each do |i|
              mcupublishcdnparam_tmp = McuPublishCdnParam.new
              mcupublishcdnparam_tmp.deserialize(i)
              @PublishCdnParams << mcupublishcdnparam_tmp
            end
          end
          unless params['SeiParams'].nil?
            @SeiParams = McuSeiParams.new
            @SeiParams.deserialize(params['SeiParams'])
          end
          unless params['FeedBackRoomParams'].nil?
            @FeedBackRoomParams = []
            params['FeedBackRoomParams'].each do |i|
              mcufeedbackroomparams_tmp = McuFeedBackRoomParams.new
              mcufeedbackroomparams_tmp.deserialize(i)
              @FeedBackRoomParams << mcufeedbackroomparams_tmp
            end
          end
        end
      end

      # StartPublishCdnStream返回参数结构体
      class StartPublishCdnStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 用于唯一标识转推任务，由腾讯云服务端生成，后续更新和停止请求都需要携带TaskiD参数。
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

      # StopMCUMixTranscodeByStrRoomId请求参数结构体
      class StopMCUMixTranscodeByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param StrRoomId: 字符串房间号。
        # @type StrRoomId: String

        attr_accessor :SdkAppId, :StrRoomId

        def initialize(sdkappid=nil, strroomid=nil)
          @SdkAppId = sdkappid
          @StrRoomId = strroomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StrRoomId = params['StrRoomId']
        end
      end

      # StopMCUMixTranscodeByStrRoomId返回参数结构体
      class StopMCUMixTranscodeByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # StopMCUMixTranscode请求参数结构体
      class StopMCUMixTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer

        attr_accessor :SdkAppId, :RoomId

        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # StopMCUMixTranscode返回参数结构体
      class StopMCUMixTranscodeResponse < TencentCloud::Common::AbstractModel
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

      # StopPublishCdnStream请求参数结构体
      class StopPublishCdnStreamRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 唯一标识转推任务。
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

      # StopPublishCdnStream返回参数结构体
      class StopPublishCdnStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 转推任务唯一的String Id
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

      # 云端录制查询接口，录制文件的信息
      class StorageFile < TencentCloud::Common::AbstractModel
        # @param UserId: 录制文件对应的UserId，如果是混流的话的这里返回的是空串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param FileName: 录制索引文件名。
        # @type FileName: String
        # @param TrackType: 录制文件流信息。
        # video：视频录制文件
        # audio：音频录制文件
        # audio_video：音视频录制文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrackType: String
        # @param BeginTimeStamp: 录制文件开始Unix时间戳。
        # @type BeginTimeStamp: Integer

        attr_accessor :UserId, :FileName, :TrackType, :BeginTimeStamp

        def initialize(userid=nil, filename=nil, tracktype=nil, begintimestamp=nil)
          @UserId = userid
          @FileName = filename
          @TrackType = tracktype
          @BeginTimeStamp = begintimestamp
        end

        def deserialize(params)
          @UserId = params['UserId']
          @FileName = params['FileName']
          @TrackType = params['TrackType']
          @BeginTimeStamp = params['BeginTimeStamp']
        end
      end

      # 第三方存储参数。
      class StorageParams < TencentCloud::Common::AbstractModel
        # @param CloudStorage: 第三方云存储的账号信息（特别说明：若您选择存储至对象存储COS将会收取录制文件投递至COS的费用，详见云端录制收费说明，存储至VOD将不收取此项费用。）。
        # @type CloudStorage: :class:`Tencentcloud::Trtc.v20190722.models.CloudStorage`
        # @param CloudVod: 腾讯云云点播的账号信息。
        # @type CloudVod: :class:`Tencentcloud::Trtc.v20190722.models.CloudVod`

        attr_accessor :CloudStorage, :CloudVod

        def initialize(cloudstorage=nil, cloudvod=nil)
          @CloudStorage = cloudstorage
          @CloudVod = cloudvod
        end

        def deserialize(params)
          unless params['CloudStorage'].nil?
            @CloudStorage = CloudStorage.new
            @CloudStorage.deserialize(params['CloudStorage'])
          end
          unless params['CloudVod'].nil?
            @CloudVod = CloudVod.new
            @CloudVod.deserialize(params['CloudVod'])
          end
        end
      end

      # 指定订阅流白名单或者黑名单，音频的白名单和音频黑名单不能同时设置，视频亦然。同时实际并发订阅的媒体流路数最大支持25路流，混流场景下视频的多画面最大支持24画面。支持通过设置".*$"通配符，来前缀匹配黑白名单的UserId，注意房间里不能有和通配符规则相同的用户，否则将视为订阅具体用户，前缀规则会失效。
      class SubscribeStreamUserIds < TencentCloud::Common::AbstractModel
        # @param SubscribeAudioUserIds: 订阅音频流白名单，指定订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表订阅UserId 1，2，3的音频流；["1.*$"], 代表订阅UserId前缀为1的音频流。默认不填订阅房间内所有的音频流，订阅列表用户数不超过32。
        # @type SubscribeAudioUserIds: Array
        # @param UnSubscribeAudioUserIds: 订阅音频流黑名单，指定不订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表不订阅UserId 1，2，3的音频流；["1.*$"], 代表不订阅UserId前缀为1的音频流。默认不填订阅房间内所有音频流，订阅列表用户数不超过32。
        # @type UnSubscribeAudioUserIds: Array
        # @param SubscribeVideoUserIds: 订阅视频流白名单，指定订阅哪几个UserId的视频流，例如["1", "2", "3"], 代表订阅UserId  1，2，3的视频流；["1.*$"], 代表订阅UserId前缀为1的视频流。默认不填订阅房间内所有视频流，订阅列表用户数不超过32。
        # @type SubscribeVideoUserIds: Array
        # @param UnSubscribeVideoUserIds: 订阅视频流黑名单，指定不订阅哪几个UserId的视频流，例如["1", "2", "3"], 代表不订阅UserId  1，2，3的视频流；["1.*$"], 代表不订阅UserId前缀为1的视频流。默认不填订阅房间内所有视频流，订阅列表用户数不超过32。
        # @type UnSubscribeVideoUserIds: Array

        attr_accessor :SubscribeAudioUserIds, :UnSubscribeAudioUserIds, :SubscribeVideoUserIds, :UnSubscribeVideoUserIds

        def initialize(subscribeaudiouserids=nil, unsubscribeaudiouserids=nil, subscribevideouserids=nil, unsubscribevideouserids=nil)
          @SubscribeAudioUserIds = subscribeaudiouserids
          @UnSubscribeAudioUserIds = unsubscribeaudiouserids
          @SubscribeVideoUserIds = subscribevideouserids
          @UnSubscribeVideoUserIds = unsubscribevideouserids
        end

        def deserialize(params)
          @SubscribeAudioUserIds = params['SubscribeAudioUserIds']
          @UnSubscribeAudioUserIds = params['UnSubscribeAudioUserIds']
          @SubscribeVideoUserIds = params['SubscribeVideoUserIds']
          @UnSubscribeVideoUserIds = params['UnSubscribeVideoUserIds']
        end
      end

      # TRTC数据大盘/实时监控 API接口数据出参
      class TRTCDataResp < TencentCloud::Common::AbstractModel
        # @param StatementID: StatementID值，监控仪表盘下固定为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatementID: Integer
        # @param Series: 查询结果数据，以Columns-Values形式返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: Array
        # @param Total: Total值，监控仪表盘功能下固定为1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :StatementID, :Series, :Total

        def initialize(statementid=nil, series=nil, total=nil)
          @StatementID = statementid
          @Series = series
          @Total = total
        end

        def deserialize(params)
          @StatementID = params['StatementID']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              seriesinfo_tmp = SeriesInfo.new
              seriesinfo_tmp.deserialize(i)
              @Series << seriesinfo_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # TRTC数据大盘/实时监控 API接口数据出参
      class TRTCDataResult < TencentCloud::Common::AbstractModel
        # @param StatementID: StatementID值，监控仪表盘下固定为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatementID: Integer
        # @param Series: 查询结果数据，以Columns-Values形式返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: Array
        # @param Total: Total值，监控仪表盘功能下固定为1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :StatementID, :Series, :Total

        def initialize(statementid=nil, series=nil, total=nil)
          @StatementID = statementid
          @Series = series
          @Total = total
        end

        def deserialize(params)
          @StatementID = params['StatementID']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              seriesinfos_tmp = SeriesInfos.new
              seriesinfos_tmp.deserialize(i)
              @Series << seriesinfos_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # 腾讯云点播相关参数。
      class TencentVod < TencentCloud::Common::AbstractModel
        # @param Procedure: 媒体后续任务处理操作，即完成媒体上传后，可自动发起任务流操作。参数值为任务流模板名，云点播支持 创建任务流模板 并为模板命名。
        # @type Procedure: String
        # @param ExpireTime: 媒体文件过期时间，为当前时间的绝对过期时间；保存一天，就填"86400"，永久保存就填"0"，默认永久保存。
        # @type ExpireTime: Integer
        # @param StorageRegion: 指定上传园区，仅适用于对上传地域有特殊需求的用户。
        # @type StorageRegion: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 创建分类 接口，创建分类，获得分类 ID。
        # 默认值：0，表示其他分类。
        # @type ClassId: Integer
        # @param SubAppId: 点播 子应用 ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param SessionContext: 任务流上下文，任务完成回调时透传。
        # @type SessionContext: String
        # @param SourceContext: 上传上下文，上传完成回调时透传。
        # @type SourceContext: String
        # @param MediaType: 上传到vod平台的录制文件格式类型，0：mp4(默认), 1: hls, 2:aac(StreamType=1纯音频录制时有效)。
        # @type MediaType: Integer
        # @param UserDefineRecordId: 仅支持API录制上传vod，该参数表示用户可以自定义录制文件名前缀，【限制长度为64字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线和连词符】。前缀与自动生成的录制文件名之间用__UserId_u_分开。
        # @type UserDefineRecordId: String

        attr_accessor :Procedure, :ExpireTime, :StorageRegion, :ClassId, :SubAppId, :SessionContext, :SourceContext, :MediaType, :UserDefineRecordId

        def initialize(procedure=nil, expiretime=nil, storageregion=nil, classid=nil, subappid=nil, sessioncontext=nil, sourcecontext=nil, mediatype=nil, userdefinerecordid=nil)
          @Procedure = procedure
          @ExpireTime = expiretime
          @StorageRegion = storageregion
          @ClassId = classid
          @SubAppId = subappid
          @SessionContext = sessioncontext
          @SourceContext = sourcecontext
          @MediaType = mediatype
          @UserDefineRecordId = userdefinerecordid
        end

        def deserialize(params)
          @Procedure = params['Procedure']
          @ExpireTime = params['ExpireTime']
          @StorageRegion = params['StorageRegion']
          @ClassId = params['ClassId']
          @SubAppId = params['SubAppId']
          @SessionContext = params['SessionContext']
          @SourceContext = params['SourceContext']
          @MediaType = params['MediaType']
          @UserDefineRecordId = params['UserDefineRecordId']
        end
      end

      # 返回的质量数据，时间:值
      class TimeValue < TencentCloud::Common::AbstractModel
        # @param Time: 时间，unix时间戳（1590065877s)
        # @type Time: Integer
        # @param Value: 当前时间返回参数取值，如（bigvCapFps在1590065877取值为0，则Value：0 ）
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

      # 实时音视频用量在某一时间段的统计信息。
      class TrtcUsage < TencentCloud::Common::AbstractModel
        # @param TimeKey: 时间点，格式为YYYY-MM-DD HH:mm:ss。多天查询时，HH:mm:ss为00:00:00。
        # @type TimeKey: String
        # @param UsageValue: 用量数组。每个数值含义与UsageKey对应。单位：分钟。
        # @type UsageValue: Array

        attr_accessor :TimeKey, :UsageValue

        def initialize(timekey=nil, usagevalue=nil)
          @TimeKey = timekey
          @UsageValue = usagevalue
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @UsageValue = params['UsageValue']
        end
      end

      # UpdatePublishCdnStream请求参数结构体
      class UpdatePublishCdnStreamRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 唯一标识转推任务。
        # @type TaskId: String
        # @param SequenceNumber: 客户保证同一个任务，每次更新请求中的SequenceNumber递增，防止请求乱序。
        # @type SequenceNumber: Integer
        # @param WithTranscoding: 是否转码，0表示无需转码，1表示需要转码。
        # @type WithTranscoding: Integer
        # @param AudioParams: 更新相关参数，只支持更新参与混音的主播列表参数。不填表示不更新此参数。
        # @type AudioParams: :class:`Tencentcloud::Trtc.v20190722.models.McuAudioParams`
        # @param VideoParams: 更新视频相关参数，转码时支持更新除编码类型之外的编码参数，视频布局参数，背景图片和背景颜色参数，水印参数。不填表示不更新此参数。
        # @type VideoParams: :class:`Tencentcloud::Trtc.v20190722.models.McuVideoParams`
        # @param SingleSubscribeParams: 更新单流转推的用户上行参数，仅在非转码时有效。不填表示不更新此参数。
        # @type SingleSubscribeParams: :class:`Tencentcloud::Trtc.v20190722.models.SingleSubscribeParams`
        # @param PublishCdnParams: 更新转推的CDN参数。不填表示不更新此参数。
        # @type PublishCdnParams: Array
        # @param SeiParams: 混流SEI参数
        # @type SeiParams: :class:`Tencentcloud::Trtc.v20190722.models.McuSeiParams`
        # @param FeedBackRoomParams: 回推房间信息
        # @type FeedBackRoomParams: Array

        attr_accessor :SdkAppId, :TaskId, :SequenceNumber, :WithTranscoding, :AudioParams, :VideoParams, :SingleSubscribeParams, :PublishCdnParams, :SeiParams, :FeedBackRoomParams

        def initialize(sdkappid=nil, taskid=nil, sequencenumber=nil, withtranscoding=nil, audioparams=nil, videoparams=nil, singlesubscribeparams=nil, publishcdnparams=nil, seiparams=nil, feedbackroomparams=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @SequenceNumber = sequencenumber
          @WithTranscoding = withtranscoding
          @AudioParams = audioparams
          @VideoParams = videoparams
          @SingleSubscribeParams = singlesubscribeparams
          @PublishCdnParams = publishcdnparams
          @SeiParams = seiparams
          @FeedBackRoomParams = feedbackroomparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          @SequenceNumber = params['SequenceNumber']
          @WithTranscoding = params['WithTranscoding']
          unless params['AudioParams'].nil?
            @AudioParams = McuAudioParams.new
            @AudioParams.deserialize(params['AudioParams'])
          end
          unless params['VideoParams'].nil?
            @VideoParams = McuVideoParams.new
            @VideoParams.deserialize(params['VideoParams'])
          end
          unless params['SingleSubscribeParams'].nil?
            @SingleSubscribeParams = SingleSubscribeParams.new
            @SingleSubscribeParams.deserialize(params['SingleSubscribeParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = []
            params['PublishCdnParams'].each do |i|
              mcupublishcdnparam_tmp = McuPublishCdnParam.new
              mcupublishcdnparam_tmp.deserialize(i)
              @PublishCdnParams << mcupublishcdnparam_tmp
            end
          end
          unless params['SeiParams'].nil?
            @SeiParams = McuSeiParams.new
            @SeiParams.deserialize(params['SeiParams'])
          end
          unless params['FeedBackRoomParams'].nil?
            @FeedBackRoomParams = []
            params['FeedBackRoomParams'].each do |i|
              mcufeedbackroomparams_tmp = McuFeedBackRoomParams.new
              mcufeedbackroomparams_tmp.deserialize(i)
              @FeedBackRoomParams << mcufeedbackroomparams_tmp
            end
          end
        end
      end

      # UpdatePublishCdnStream返回参数结构体
      class UpdatePublishCdnStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 转推任务唯一的String Id
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

      # 用户信息，包括用户进房时间，退房时间等
      class UserInformation < TencentCloud::Common::AbstractModel
        # @param RoomStr: 房间号
        # @type RoomStr: String
        # @param UserId: 用户Id
        # @type UserId: String
        # @param JoinTs: 用户进房时间
        # @type JoinTs: Integer
        # @param LeaveTs: 用户退房时间，用户没有退房则返回当前时间
        # @type LeaveTs: Integer
        # @param DeviceType: 终端类型
        # @type DeviceType: String
        # @param SdkVersion: Sdk版本号
        # @type SdkVersion: String
        # @param ClientIp: 客户端IP地址
        # @type ClientIp: String
        # @param Finished: 判断用户是否已经离开房间
        # @type Finished: Boolean

        attr_accessor :RoomStr, :UserId, :JoinTs, :LeaveTs, :DeviceType, :SdkVersion, :ClientIp, :Finished

        def initialize(roomstr=nil, userid=nil, joints=nil, leavets=nil, devicetype=nil, sdkversion=nil, clientip=nil, finished=nil)
          @RoomStr = roomstr
          @UserId = userid
          @JoinTs = joints
          @LeaveTs = leavets
          @DeviceType = devicetype
          @SdkVersion = sdkversion
          @ClientIp = clientip
          @Finished = finished
        end

        def deserialize(params)
          @RoomStr = params['RoomStr']
          @UserId = params['UserId']
          @JoinTs = params['JoinTs']
          @LeaveTs = params['LeaveTs']
          @DeviceType = params['DeviceType']
          @SdkVersion = params['SdkVersion']
          @ClientIp = params['ClientIp']
          @Finished = params['Finished']
        end
      end

      # 用户媒体流参数。
      class UserMediaStream < TencentCloud::Common::AbstractModel
        # @param UserInfo: TRTC用户参数。
        # @type UserInfo: :class:`Tencentcloud::Trtc.v20190722.models.MixUserInfo`
        # @param StreamType: 主辅路流类型，0为摄像头，1为屏幕分享，不填默认为0。
        # @type StreamType: Integer

        attr_accessor :UserInfo, :StreamType

        def initialize(userinfo=nil, streamtype=nil)
          @UserInfo = userinfo
          @StreamType = streamtype
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = MixUserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @StreamType = params['StreamType']
        end
      end

      # 视频编码参数。
      class VideoEncode < TencentCloud::Common::AbstractModel
        # @param Width: 输出流宽，音视频输出时必填。取值范围[0,1920]，单位为像素值。
        # @type Width: Integer
        # @param Height: 输出流高，音视频输出时必填。取值范围[0,1080]，单位为像素值。
        # @type Height: Integer
        # @param Fps: 输出流帧率，音视频输出时必填。取值范围[1,60]，表示混流的输出帧率可选范围为1到60fps。
        # @type Fps: Integer
        # @param BitRate: 输出流码率，音视频输出时必填。取值范围[1,10000]，单位为kbps。
        # @type BitRate: Integer
        # @param Gop: 输出流gop，音视频输出时必填。取值范围[1,5]，单位为秒。
        # @type Gop: Integer

        attr_accessor :Width, :Height, :Fps, :BitRate, :Gop

        def initialize(width=nil, height=nil, fps=nil, bitrate=nil, gop=nil)
          @Width = width
          @Height = height
          @Fps = fps
          @BitRate = bitrate
          @Gop = gop
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @BitRate = params['BitRate']
          @Gop = params['Gop']
        end
      end

      # 录制视频转码参数。
      class VideoParams < TencentCloud::Common::AbstractModel
        # @param Width: 视频的宽度值，单位为像素，默认值360。不能超过1920，与height的乘积不能超过1920*1080。
        # @type Width: Integer
        # @param Height: 视频的高度值，单位为像素，默认值640。不能超过1920，与width的乘积不能超过1920*1080。
        # @type Height: Integer
        # @param Fps: 视频的帧率，范围[1, 60]，默认15。
        # @type Fps: Integer
        # @param BitRate: 视频的码率,单位是bps，范围[64000, 8192000]，默认550000bps。
        # @type BitRate: Integer
        # @param Gop: 视频关键帧时间间隔，单位秒，默认值10秒。
        # @type Gop: Integer

        attr_accessor :Width, :Height, :Fps, :BitRate, :Gop

        def initialize(width=nil, height=nil, fps=nil, bitrate=nil, gop=nil)
          @Width = width
          @Height = height
          @Fps = fps
          @BitRate = bitrate
          @Gop = gop
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @BitRate = params['BitRate']
          @Gop = params['Gop']
        end
      end

      # 水印布局参数
      class WaterMark < TencentCloud::Common::AbstractModel
        # @param WaterMarkType: 水印类型，0为图片（默认），1为文字，2为时间戳。
        # @type WaterMarkType: Integer
        # @param WaterMarkImage: 水印为图片时的参数列表，水印为图片时校验必填。
        # @type WaterMarkImage: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkImage`
        # @param WaterMarkChar: 水印为文字时的参数列表，水印为文字时校验必填。
        # @type WaterMarkChar: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkChar`
        # @param WaterMarkTimestamp: 水印为时间戳时的参数列表，水印为时间戳时校验必填。
        # @type WaterMarkTimestamp: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkTimestamp`

        attr_accessor :WaterMarkType, :WaterMarkImage, :WaterMarkChar, :WaterMarkTimestamp

        def initialize(watermarktype=nil, watermarkimage=nil, watermarkchar=nil, watermarktimestamp=nil)
          @WaterMarkType = watermarktype
          @WaterMarkImage = watermarkimage
          @WaterMarkChar = watermarkchar
          @WaterMarkTimestamp = watermarktimestamp
        end

        def deserialize(params)
          @WaterMarkType = params['WaterMarkType']
          unless params['WaterMarkImage'].nil?
            @WaterMarkImage = WaterMarkImage.new
            @WaterMarkImage.deserialize(params['WaterMarkImage'])
          end
          unless params['WaterMarkChar'].nil?
            @WaterMarkChar = WaterMarkChar.new
            @WaterMarkChar.deserialize(params['WaterMarkChar'])
          end
          unless params['WaterMarkTimestamp'].nil?
            @WaterMarkTimestamp = WaterMarkTimestamp.new
            @WaterMarkTimestamp.deserialize(params['WaterMarkTimestamp'])
          end
        end
      end

      # 自定义文字水印数据结构
      class WaterMarkChar < TencentCloud::Common::AbstractModel
        # @param Top: 文字水印的起始坐标Y值，从左上角开始
        # @type Top: Integer
        # @param Left: 文字水印的起始坐标X值，从左上角开始
        # @type Left: Integer
        # @param Width: 文字水印的宽度，单位像素值
        # @type Width: Integer
        # @param Height: 文字水印的高度，单位像素值
        # @type Height: Integer
        # @param Chars: 水印文字的内容
        # @type Chars: String
        # @param FontSize: 水印文字的大小，单位像素，默认14
        # @type FontSize: Integer
        # @param FontColor: 水印文字的颜色，默认白色
        # @type FontColor: String
        # @param BackGroundColor: 水印文字的背景色，为空代表背景透明，默认为空
        # @type BackGroundColor: String

        attr_accessor :Top, :Left, :Width, :Height, :Chars, :FontSize, :FontColor, :BackGroundColor

        def initialize(top=nil, left=nil, width=nil, height=nil, chars=nil, fontsize=nil, fontcolor=nil, backgroundcolor=nil)
          @Top = top
          @Left = left
          @Width = width
          @Height = height
          @Chars = chars
          @FontSize = fontsize
          @FontColor = fontcolor
          @BackGroundColor = backgroundcolor
        end

        def deserialize(params)
          @Top = params['Top']
          @Left = params['Left']
          @Width = params['Width']
          @Height = params['Height']
          @Chars = params['Chars']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @BackGroundColor = params['BackGroundColor']
        end
      end

      # 水印类型为图片的参数列表
      class WaterMarkImage < TencentCloud::Common::AbstractModel
        # @param WaterMarkUrl: 下载的url地址， 只支持jpg， png，大小限制不超过5M。
        # @type WaterMarkUrl: String
        # @param Top: 画布上该画面左上角的 y 轴坐标，取值范围 [0, 2560]，不能超过画布的高。
        # @type Top: Integer
        # @param Left: 画布上该画面左上角的 x 轴坐标，取值范围 [0, 2560]，不能超过画布的宽。
        # @type Left: Integer
        # @param Width: 画布上该画面宽度的相对值，取值范围 [0, 2560]，与Left相加不应超过画布的宽。
        # @type Width: Integer
        # @param Height: 画布上该画面高度的相对值，取值范围 [0, 2560]，与Top相加不应超过画布的高。
        # @type Height: Integer

        attr_accessor :WaterMarkUrl, :Top, :Left, :Width, :Height

        def initialize(watermarkurl=nil, top=nil, left=nil, width=nil, height=nil)
          @WaterMarkUrl = watermarkurl
          @Top = top
          @Left = left
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @WaterMarkUrl = params['WaterMarkUrl']
          @Top = params['Top']
          @Left = params['Left']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # MCU混流水印参数
      class WaterMarkParams < TencentCloud::Common::AbstractModel
        # @param WaterMarkId: 混流-水印图片ID。取值为实时音视频控制台上传的图片ID。
        # @type WaterMarkId: Integer
        # @param WaterMarkWidth: 混流-水印宽。单位为像素值。水印宽+X偏移不能超过整个画布宽。
        # @type WaterMarkWidth: Integer
        # @param WaterMarkHeight: 混流-水印高。单位为像素值。水印高+Y偏移不能超过整个画布高。
        # @type WaterMarkHeight: Integer
        # @param LocationX: 水印在输出时的X偏移。单位为像素值。水印宽+X偏移不能超过整个画布宽。
        # @type LocationX: Integer
        # @param LocationY: 水印在输出时的Y偏移。单位为像素值。水印高+Y偏移不能超过整个画布高。
        # @type LocationY: Integer
        # @param WaterMarkUrl: 混流-水印图片URL地址，支持png、jpg、jpeg、bmp格式，暂不支持透明通道。URL链接长度限制为512字节。WaterMarkUrl和WaterMarkId参数都填时，以WaterMarkUrl为准。图片大小限制不超过2MB。
        # @type WaterMarkUrl: String

        attr_accessor :WaterMarkId, :WaterMarkWidth, :WaterMarkHeight, :LocationX, :LocationY, :WaterMarkUrl

        def initialize(watermarkid=nil, watermarkwidth=nil, watermarkheight=nil, locationx=nil, locationy=nil, watermarkurl=nil)
          @WaterMarkId = watermarkid
          @WaterMarkWidth = watermarkwidth
          @WaterMarkHeight = watermarkheight
          @LocationX = locationx
          @LocationY = locationy
          @WaterMarkUrl = watermarkurl
        end

        def deserialize(params)
          @WaterMarkId = params['WaterMarkId']
          @WaterMarkWidth = params['WaterMarkWidth']
          @WaterMarkHeight = params['WaterMarkHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @WaterMarkUrl = params['WaterMarkUrl']
        end
      end

      # 时间戳水印数据结构
      class WaterMarkTimestamp < TencentCloud::Common::AbstractModel
        # @param Pos: 时间戳的位置，取值范围0-6，分别代表上左，上右，下左，下右，上居中，下居中，居中
        # @type Pos: Integer
        # @param TimeZone: 显示时间戳的时区，默认东八区
        # @type TimeZone: Integer

        attr_accessor :Pos, :TimeZone

        def initialize(pos=nil, timezone=nil)
          @Pos = pos
          @TimeZone = timezone
        end

        def deserialize(params)
          @Pos = params['Pos']
          @TimeZone = params['TimeZone']
        end
      end

    end
  end
end

