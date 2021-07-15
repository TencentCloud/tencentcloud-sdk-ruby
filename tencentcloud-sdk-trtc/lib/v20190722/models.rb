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

      # CreatePicture请求参数结构体
      class CreatePictureRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer
        # @param Content: 图片内容经base64编码后的string格式
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

      # CreateTroubleInfo请求参数结构体
      class CreateTroubleInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用的ID
        # @type SdkAppId: String
        # @param RoomId: 房间ID
        # @type RoomId: String
        # @param TeacherUserId: 老师用户ID
        # @type TeacherUserId: String
        # @param StudentUserId: 学生用户ID
        # @type StudentUserId: String
        # @param TroubleUserId: 体验异常端（老师或学生）的用户 ID。
        # @type TroubleUserId: String
        # @param TroubleType: 异常类型。
        # 1. 仅视频异常
        # 2. 仅声音异常
        # 3. 音视频都异常
        # 5. 进房异常
        # 4. 切课
        # 6. 求助
        # 7. 问题反馈
        # 8. 投诉
        # @type TroubleType: Integer
        # @param TroubleTime: 异常发生的UNIX 时间戳，单位为秒。
        # @type TroubleTime: Integer
        # @param TroubleMsg: 异常详情
        # @type TroubleMsg: String

        attr_accessor :SdkAppId, :RoomId, :TeacherUserId, :StudentUserId, :TroubleUserId, :TroubleType, :TroubleTime, :TroubleMsg
        
        def initialize(sdkappid=nil, roomid=nil, teacheruserid=nil, studentuserid=nil, troubleuserid=nil, troubletype=nil, troubletime=nil, troublemsg=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @TeacherUserId = teacheruserid
          @StudentUserId = studentuserid
          @TroubleUserId = troubleuserid
          @TroubleType = troubletype
          @TroubleTime = troubletime
          @TroubleMsg = troublemsg
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @TeacherUserId = params['TeacherUserId']
          @StudentUserId = params['StudentUserId']
          @TroubleUserId = params['TroubleUserId']
          @TroubleType = params['TroubleType']
          @TroubleTime = params['TroubleTime']
          @TroubleMsg = params['TroubleMsg']
        end
      end

      # CreateTroubleInfo返回参数结构体
      class CreateTroubleInfoResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAbnormalEvent请求参数结构体
      class DescribeAbnormalEventRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SDKAppID，查询SDKAppID下任意20条异常体验事件（可能不同房间）
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间,本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间,本地unix时间戳（1588031999s）
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

      # DescribeAbnormalEvent返回参数结构体
      class DescribeAbnormalEventResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据总条数
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

      # DescribeCallDetail请求参数结构体
      class DescribeCallDetailRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： sdkappid_roomgString（房间号_createTime（房间创建时间，unix时间戳，单位为s）例：1400353843_218695_1590065777。通过 DescribeRoomInformation（查询房间列表）接口获取（链接：https://cloud.tencent.com/document/product/647/44050）
        # @type CommId: String
        # @param StartTime: 查询开始时间，14天内。本地unix时间戳（1588031999s），查询实时数据时，查询起止时间不超过1个小时。
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户SDKAppID（1400188366）
        # @type SdkAppId: String
        # @param UserIds: 需查询的用户数组，不填默认返回6个用户,最多可填6个用户
        # @type UserIds: Array
        # @param DataType: 需查询的指标，不填则只返回用户列表，填all则返回所有指标。
        # appCpu：APP CPU使用率；
        # sysCpu：系统 CPU使用率；
        # aBit：上/下行音频码率；
        # aBlock：音频卡顿时长；
        # bigvBit：上/下行视频码率；
        # bigvCapFps：视频采集帧率；
        # bigvEncFps：视频发送帧率；
        # bigvDecFps：渲染帧率；
        # bigvBlock：视频卡顿时长；
        # aLoss：上/下行音频丢包；
        # bigvLoss：上/下行视频丢包；
        # bigvWidth：上/下行分辨率宽；
        # bigvHeight：上/下行分辨率高
        # @type DataType: Array
        # @param PageNumber: 设置分页index，从0开始（PageNumber和PageSize 其中一个不填均默认返回6条数据）
        # @type PageNumber: String
        # @param PageSize: 设置分页大小（PageNumber和PageSize 其中一个不填均默认返回6条数据,DataType，UserIds不为null，PageSize最大不超过6，DataType，UserIds为null，PageSize最大不超过100）
        # @type PageSize: String

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

      # DescribeCallDetail返回参数结构体
      class DescribeCallDetailResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDetailEvent请求参数结构体
      class DescribeDetailEventRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： sdkappid_roomgString（房间号_createTime（房间创建时间，unix时间戳，单位s）。通过 DescribeRoomInformation（查询房间列表）接口获取。（链接：https://cloud.tencent.com/document/product/647/44050）
        # @type CommId: String
        # @param StartTime: 查询开始时间，14天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param UserId: 用户id
        # @type UserId: String
        # @param RoomId: 房间号
        # @type RoomId: String

        attr_accessor :CommId, :StartTime, :EndTime, :UserId, :RoomId
        
        def initialize(commid=nil, starttime=nil, endtime=nil, userid=nil, roomid=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @UserId = userid
          @RoomId = roomid
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserId = params['UserId']
          @RoomId = params['RoomId']
        end
      end

      # DescribeDetailEvent返回参数结构体
      class DescribeDetailEventResponse < TencentCloud::Common::AbstractModel
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

      # DescribeHistoryScale请求参数结构体
      class DescribeHistoryScaleRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，5天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
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

      # DescribeHistoryScale返回参数结构体
      class DescribeHistoryScaleResponse < TencentCloud::Common::AbstractModel
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

      # DescribeRealtimeNetwork请求参数结构体
      class DescribeRealtimeNetworkRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，24小时内，本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param DataType: 需查询的数据类型
        # sendLossRateRaw：上行丢包率
        # recvLossRateRaw：下行丢包率
        # @type DataType: Array

        attr_accessor :StartTime, :EndTime, :SdkAppId, :DataType
        
        def initialize(starttime=nil, endtime=nil, sdkappid=nil, datatype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @DataType = datatype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @DataType = params['DataType']
        end
      end

      # DescribeRealtimeNetwork返回参数结构体
      class DescribeRealtimeNetworkResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询返回的数据
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
              realtimedata_tmp = RealtimeData.new
              realtimedata_tmp.deserialize(i)
              @Data << realtimedata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeQuality请求参数结构体
      class DescribeRealtimeQualityRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，24小时内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param DataType: 查询的数据类型
        # enterTotalSuccPercent：进房成功率
        # fistFreamInSecRate：首帧秒开率
        # blockPercent：视频卡顿率
        # audioBlockPercent：音频卡顿率
        # @type DataType: Array

        attr_accessor :StartTime, :EndTime, :SdkAppId, :DataType
        
        def initialize(starttime=nil, endtime=nil, sdkappid=nil, datatype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @DataType = datatype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @DataType = params['DataType']
        end
      end

      # DescribeRealtimeQuality返回参数结构体
      class DescribeRealtimeQualityResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的数据类型
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
              realtimedata_tmp = RealtimeData.new
              realtimedata_tmp.deserialize(i)
              @Data << realtimedata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeScale请求参数结构体
      class DescribeRealtimeScaleRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，24小时内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param DataType: 查询的数据类型
        # UserNum：通话人数；
        # RoomNum：房间数
        # @type DataType: Array

        attr_accessor :StartTime, :EndTime, :SdkAppId, :DataType
        
        def initialize(starttime=nil, endtime=nil, sdkappid=nil, datatype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @DataType = datatype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @DataType = params['DataType']
        end
      end

      # DescribeRealtimeScale返回参数结构体
      class DescribeRealtimeScaleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的数据数组
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
              realtimedata_tmp = RealtimeData.new
              realtimedata_tmp.deserialize(i)
              @Data << realtimedata_tmp
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

      # DescribeRoomInformation请求参数结构体
      class DescribeRoomInformationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户sdkappid
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，14天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param RoomId: 字符串房间号
        # @type RoomId: String
        # @param PageNumber: 分页index，从0开始（PageNumber和PageSize 其中一个不填均默认返回10条数据）
        # @type PageNumber: String
        # @param PageSize: 分页大小（PageNumber和PageSize 其中一个不填均默认返回10条数据,最大不超过100）
        # @type PageSize: String

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

      # DescribeRoomInformation返回参数结构体
      class DescribeRoomInformationResponse < TencentCloud::Common::AbstractModel
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

      # DescribeTrtcInteractiveTime请求参数结构体
      class DescribeTrtcInteractiveTimeRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: 应用ID，可不传。传应用ID时返回的是该应用的用量，不传时返回所有应用的合计值。
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

      # DescribeTrtcInteractiveTime返回参数结构体
      class DescribeTrtcInteractiveTimeResponse < TencentCloud::Common::AbstractModel
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
              onesdkappidusagesinfo_tmp = OneSdkAppIdUsagesInfo.new
              onesdkappidusagesinfo_tmp.deserialize(i)
              @Usages << onesdkappidusagesinfo_tmp
            end
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

      # DescribeUserInformation请求参数结构体
      class DescribeUserInformationRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： sdkappid_roomgString（房间号_createTime（房间创建时间，unix时间戳，单位为s）例：1400353843_218695_1590065777。通过 DescribeRoomInformation（查询房间列表）接口获取（链接：https://cloud.tencent.com/document/product/647/44050）
        # @type CommId: String
        # @param StartTime: 查询开始时间，14天内。本地unix时间戳（1588031999s）
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳（1588031999s）
        # @type EndTime: Integer
        # @param SdkAppId: 用户SDKAppID（1400188366）
        # @type SdkAppId: String
        # @param UserIds: 需查询的用户数组，不填默认返回6个用户,最多可填6个用户
        # @type UserIds: Array
        # @param PageNumber: 设置分页index，从0开始（PageNumber和PageSize 其中一个不填均默认返回6条数据）
        # @type PageNumber: String
        # @param PageSize: 设置分页大小（PageNumber和PageSize 其中一个不填均默认返回6条数据,PageSize最大不超过100）
        # @type PageSize: String

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

      # DescribeUserInformation返回参数结构体
      class DescribeUserInformationResponse < TencentCloud::Common::AbstractModel
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
        # @param RoomId: 房间号。
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
        # @param AudioSampleRate: 混流-输出流音频采样率。取值为[48000, 44100, 32000, 24000, 16000, 8000]，单位是Hz。
        # @type AudioSampleRate: Integer
        # @param AudioBitrate: 混流-输出流音频码率。取值范围[8,500]，单位为kbps。
        # @type AudioBitrate: Integer
        # @param AudioChannels: 混流-输出流音频声道数，取值范围[1,2]，1表示混流输出音频为单声道，2表示混流输出音频为双声道。
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
        # @param AudioCodec: 混流-输出流音频编码类型，取值范围[0,1, 2]，0为LC-AAC，1为HE-AAC，2为HE-AACv2。默认值为0。当音频编码设置为HE-AACv2时，只支持输出流音频声道数为双声道。HE-AAC和HE-AACv2支持的输出流音频采样率范围为[48000, 44100, 32000, 24000, 16000]
        # @type AudioCodec: Integer

        attr_accessor :AudioSampleRate, :AudioBitrate, :AudioChannels, :VideoWidth, :VideoHeight, :VideoBitrate, :VideoFramerate, :VideoGop, :BackgroundColor, :BackgroundImageId, :AudioCodec
        
        def initialize(audiosamplerate=nil, audiobitrate=nil, audiochannels=nil, videowidth=nil, videoheight=nil, videobitrate=nil, videoframerate=nil, videogop=nil, backgroundcolor=nil, backgroundimageid=nil, audiocodec=nil)
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
        # @param MixVideoUids: 悬浮模板、九宫格、屏幕分享模板有效。设置此参数后，输出流混合此参数中包含用户的音视频，以及其他用户的纯音频。最多可设置16个用户。
        # @type MixVideoUids: Array
        # @param PresetLayoutConfig: 自定义模板中有效，指定用户视频在混合画面中的位置。
        # @type PresetLayoutConfig: Array
        # @param PlaceHolderMode: 自定义模板中有效，设置为1时代表启用占位图功能，0时代表不启用占位图功能，默认为0。启用占位图功能时，在预设位置的用户没有上行视频时可显示对应的占位图。
        # @type PlaceHolderMode: Integer
        # @param PureAudioHoldPlaceMode: 悬浮模板、九宫格、屏幕分享模板生效，用于控制纯音频上行是否占用画面布局位置。设置为0是代表后台默认处理方式，悬浮小画面占布局位置，九宫格画面占布局位置、屏幕分享小画面不占布局位置；设置为1时代表纯音频上行占布局位置；设置为2时代表纯音频上行不占布局位置。默认为0。
        # @type PureAudioHoldPlaceMode: Integer
        # @param WaterMarkParams: 水印参数。
        # @type WaterMarkParams: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkParams`

        attr_accessor :Template, :MainVideoUserId, :MainVideoStreamType, :SmallVideoLayoutParams, :MainVideoRightAlign, :MixVideoUids, :PresetLayoutConfig, :PlaceHolderMode, :PureAudioHoldPlaceMode, :WaterMarkParams
        
        def initialize(template=nil, mainvideouserid=nil, mainvideostreamtype=nil, smallvideolayoutparams=nil, mainvideorightalign=nil, mixvideouids=nil, presetlayoutconfig=nil, placeholdermode=nil, pureaudioholdplacemode=nil, watermarkparams=nil)
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

      # 单个SdkAppId的音视频互动计费时长用量数组和数组长度。
      class OneSdkAppIdUsagesInfo < TencentCloud::Common::AbstractModel
        # @param TotalNum: 该 SdkAppId 对应的用量记录数长度
        # @type TotalNum: Integer
        # @param SdkAppIdTrtcTimeUsages: 用量数组
        # @type SdkAppIdTrtcTimeUsages: Array
        # @param SdkAppId: 应用ID
        # @type SdkAppId: String

        attr_accessor :TotalNum, :SdkAppIdTrtcTimeUsages, :SdkAppId
        
        def initialize(totalnum=nil, sdkappidtrtctimeusages=nil, sdkappid=nil)
          @TotalNum = totalnum
          @SdkAppIdTrtcTimeUsages = sdkappidtrtctimeusages
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['SdkAppIdTrtcTimeUsages'].nil?
            @SdkAppIdTrtcTimeUsages = []
            params['SdkAppIdTrtcTimeUsages'].each do |i|
              sdkappidtrtcusage_tmp = SdkAppIdTrtcUsage.new
              sdkappidtrtcusage_tmp.deserialize(i)
              @SdkAppIdTrtcTimeUsages << sdkappidtrtcusage_tmp
            end
          end
          @SdkAppId = params['SdkAppId']
        end
      end

      # MCU混流的输出参数
      class OutputParams < TencentCloud::Common::AbstractModel
        # @param StreamId: 直播流 ID，由用户自定义设置，该流 ID 不能与用户旁路的流 ID 相同。
        # @type StreamId: String
        # @param PureAudioStream: 取值范围[0,1]， 填0：直播流为音视频(默认); 填1：直播流为纯音频
        # @type PureAudioStream: Integer
        # @param RecordId: 自定义录制文件名称前缀。请先在实时音视频控制台开通录制功能，https://cloud.tencent.com/document/product/647/50768
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
        # @param PlaceImageId: 占位图ID。启用占位图功能时，在当前位置的用户没有上行视频时显示占位图。占位图在实时音视频控制台上传并生成，https://cloud.tencent.com/document/product/647/50769
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

      # 查询秒级监控返回的数据
      class RealtimeData < TencentCloud::Common::AbstractModel
        # @param Content: 返回的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param DataType: 数据类型字段
        # @type DataType: String

        attr_accessor :Content, :DataType
        
        def initialize(content=nil, datatype=nil)
          @Content = content
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
          @DataType = params['DataType']
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

        attr_accessor :TimeKey, :AudioTime, :VideoTimeSd, :VideoTimeHd, :VideoTimeFhd
        
        def initialize(timekey=nil, audiotime=nil, videotimesd=nil, videotimehd=nil, videotimefhd=nil)
          @TimeKey = timekey
          @AudioTime = audiotime
          @VideoTimeSd = videotimesd
          @VideoTimeHd = videotimehd
          @VideoTimeFhd = videotimefhd
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @AudioTime = params['AudioTime']
          @VideoTimeSd = params['VideoTimeSd']
          @VideoTimeHd = params['VideoTimeHd']
          @VideoTimeFhd = params['VideoTimeFhd']
        end
      end

      # 查询音视频互动时长的输出数据。
      # 查询时间小于等于1天时，返回每5分钟粒度的数据；查询时间大于1天时，返回按天汇总的数据。
      class SdkAppIdTrtcUsage < TencentCloud::Common::AbstractModel
        # @param TimeKey: 本组数据对应的时间点，格式如：2020-09-07或2020-09-07 00:05:05。
        # @type TimeKey: String
        # @param AudioTime: 语音时长，单位：秒。
        # @type AudioTime: Integer
        # @param AudioVideoTime: 音视频时长，单位：秒。
        # 2019年10月11日前注册，没有变更为 [新计费模式](https://cloud.tencent.com/document/product/647/17157) 的用户才会返回此值。
        # @type AudioVideoTime: Integer
        # @param VideoTimeSd: 视频时长-标清SD，单位：秒。
        # @type VideoTimeSd: Integer
        # @param VideoTimeHd: 视频时长-高清HD，单位：秒。
        # @type VideoTimeHd: Integer
        # @param VideoTimeHdp: 视频时长-超清HD，单位：秒。
        # @type VideoTimeHdp: Integer

        attr_accessor :TimeKey, :AudioTime, :AudioVideoTime, :VideoTimeSd, :VideoTimeHd, :VideoTimeHdp
        
        def initialize(timekey=nil, audiotime=nil, audiovideotime=nil, videotimesd=nil, videotimehd=nil, videotimehdp=nil)
          @TimeKey = timekey
          @AudioTime = audiotime
          @AudioVideoTime = audiovideotime
          @VideoTimeSd = videotimesd
          @VideoTimeHd = videotimehd
          @VideoTimeHdp = videotimehdp
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @AudioTime = params['AudioTime']
          @AudioVideoTime = params['AudioVideoTime']
          @VideoTimeSd = params['VideoTimeSd']
          @VideoTimeHd = params['VideoTimeHd']
          @VideoTimeHdp = params['VideoTimeHdp']
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
        # @param PublishCdnParams: 第三方CDN转推参数。
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
        # @param PublishCdnParams: 第三方CDN转推参数。
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

      # MCU混流水印参数
      class WaterMarkParams < TencentCloud::Common::AbstractModel
        # @param WaterMarkId: 混流-水印图片ID。取值为实时音视频控制台上传的图片ID。
        # @type WaterMarkId: Integer
        # @param WaterMarkWidth: 混流-水印宽。单位为像素值。
        # @type WaterMarkWidth: Integer
        # @param WaterMarkHeight: 混流-水印高。单位为像素值。
        # @type WaterMarkHeight: Integer
        # @param LocationX: 水印在输出时的X偏移。单位为像素值。
        # @type LocationX: Integer
        # @param LocationY: 水印在输出时的Y偏移。单位为像素值。
        # @type LocationY: Integer

        attr_accessor :WaterMarkId, :WaterMarkWidth, :WaterMarkHeight, :LocationX, :LocationY
        
        def initialize(watermarkid=nil, watermarkwidth=nil, watermarkheight=nil, locationx=nil, locationy=nil)
          @WaterMarkId = watermarkid
          @WaterMarkWidth = watermarkwidth
          @WaterMarkHeight = watermarkheight
          @LocationX = locationx
          @LocationY = locationy
        end

        def deserialize(params)
          @WaterMarkId = params['WaterMarkId']
          @WaterMarkWidth = params['WaterMarkWidth']
          @WaterMarkHeight = params['WaterMarkHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
        end
      end

    end
  end
end

