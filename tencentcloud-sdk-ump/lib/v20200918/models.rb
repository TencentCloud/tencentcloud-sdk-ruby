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
  module Ump
    module V20200918
      # 点位包含铺位信息
      class BunkZone < TencentCloud::Common::AbstractModel
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer
        # @param ZoneName: 点位名称
        # @type ZoneName: String
        # @param BunkCodes: 铺位编码
        # @type BunkCodes: String

        attr_accessor :ZoneId, :ZoneName, :BunkCodes
        
        def initialize(zoneid=nil, zonename=nil, bunkcodes=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @BunkCodes = bunkcodes
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @BunkCodes = params['BunkCodes']
        end
      end

      # 摄像头配置信息
      class CameraConfig < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param FloorId: 楼层ID
        # @type FloorId: Integer
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer
        # @param CameraIp: 摄像头IP
        # @type CameraIp: String
        # @param CameraMac: 摄像头Mac
        # @type CameraMac: String
        # @param CameraType: 摄像头类型:
        # 1: 码流机
        # 2: AI相机
        # @type CameraType: Integer
        # @param CameraFeature: 摄像头功能:
        # 1: 人脸
        # 2: 人体
        # @type CameraFeature: Integer
        # @param CameraState: 摄像头是否启用:
        # 0: 下线
        # 1: 启用
        # @type CameraState: Integer
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer
        # @param ZoneType: 点位类型:
        # 1: 场门
        # 3: 层门
        # 5: 特殊区域
        # 7: 门店
        # 8: 补位
        # 10: 开放式门店
        # 11: 品类区
        # 12: 公共区
        # @type ZoneType: Integer
        # @param Config: 配置
        # @type Config: :class:`Tencentcloud::Ump.v20200918.models.Config`
        # @param Width: 宽
        # @type Width: Integer
        # @param Height: 高
        # @type Height: Integer

        attr_accessor :GroupCode, :MallId, :FloorId, :CameraId, :CameraIp, :CameraMac, :CameraType, :CameraFeature, :CameraState, :ZoneId, :ZoneType, :Config, :Width, :Height
        
        def initialize(groupcode=nil, mallid=nil, floorid=nil, cameraid=nil, cameraip=nil, cameramac=nil, cameratype=nil, camerafeature=nil, camerastate=nil, zoneid=nil, zonetype=nil, config=nil, width=nil, height=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @FloorId = floorid
          @CameraId = cameraid
          @CameraIp = cameraip
          @CameraMac = cameramac
          @CameraType = cameratype
          @CameraFeature = camerafeature
          @CameraState = camerastate
          @ZoneId = zoneid
          @ZoneType = zonetype
          @Config = config
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @FloorId = params['FloorId']
          @CameraId = params['CameraId']
          @CameraIp = params['CameraIp']
          @CameraMac = params['CameraMac']
          @CameraType = params['CameraType']
          @CameraFeature = params['CameraFeature']
          @CameraState = params['CameraState']
          @ZoneId = params['ZoneId']
          @ZoneType = params['ZoneType']
          unless params['Config'].nil?
            @Config = Config.new.deserialize(params['Config'])
          end
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 用于场内上报当前相机的状态
      class CameraState < TencentCloud::Common::AbstractModel
        # @param CameraId: 相机ID
        # @type CameraId: Integer
        # @param State: 相机状态:
        # 10: 初始化
        # 11: 未知状态
        # 12: 网络异常
        # 13: 未授权
        # 14: 相机App异常
        # 15: 相机取流异常
        # 16: 状态正常
        # @type State: Integer

        attr_accessor :CameraId, :State
        
        def initialize(cameraid=nil, state=nil)
          @CameraId = cameraid
          @State = state
        end

        def deserialize(params)
          @CameraId = params['CameraId']
          @State = params['State']
        end
      end

      # 摄像头包含简单的点位信息
      class CameraZones < TencentCloud::Common::AbstractModel
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer
        # @param CameraName: 摄像头名称
        # @type CameraName: String
        # @param CameraFeature: 摄像头功能:
        # 1: 人脸
        # 2: 人体
        # @type CameraFeature: Integer
        # @param CameraIp: 摄像头IP
        # @type CameraIp: String
        # @param CameraState: 摄像头状态:
        # 0: 异常 (不再使用)
        # 1: 正常 (不再使用)
        # 10: 初始化
        # 11: 未知状态 (因服务内部错误产生)
        # 12: 网络异常
        # 13: 未授权
        # 14: 相机App异常
        # 15: 相机取流异常
        # 16: 正常
        # @type CameraState: Integer
        # @param Zones: 点位列表
        # @type Zones: Array
        # @param Pixel: 像素:
        # 130W(1280*960)
        # 200W(1920*1080)
        # 400W(2560*1440)
        # @type Pixel: String
        # @param RTSP: 相机Rtsp地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RTSP: String

        attr_accessor :CameraId, :CameraName, :CameraFeature, :CameraIp, :CameraState, :Zones, :Pixel, :RTSP
        
        def initialize(cameraid=nil, cameraname=nil, camerafeature=nil, cameraip=nil, camerastate=nil, zones=nil, pixel=nil, rtsp=nil)
          @CameraId = cameraid
          @CameraName = cameraname
          @CameraFeature = camerafeature
          @CameraIp = cameraip
          @CameraState = camerastate
          @Zones = zones
          @Pixel = pixel
          @RTSP = rtsp
        end

        def deserialize(params)
          @CameraId = params['CameraId']
          @CameraName = params['CameraName']
          @CameraFeature = params['CameraFeature']
          @CameraIp = params['CameraIp']
          @CameraState = params['CameraState']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              @Zones << BunkZone.new.deserialize(i)
            end
          end
          @Pixel = params['Pixel']
          @RTSP = params['RTSP']
        end
      end

      # 摄像头配置
      class Config < TencentCloud::Common::AbstractModel
        # @param CameraProducer: 摄像头厂商:
        # H: 海康
        # D: 大华
        # Y: 英飞拓
        # L: 联纵
        # @type CameraProducer: String
        # @param RTSP: rtsp 地址
        # @type RTSP: String
        # @param Fps: 摄像头帧率
        # @type Fps: Integer
        # @param DecodeFps: 解码帧率
        # @type DecodeFps: Integer
        # @param PassengerFlow: 是否做客流计算:
        # 0: 否
        # 1: 是
        # @type PassengerFlow: Integer
        # @param FaceExpose: 是否打开人脸曝光:
        # 0: 关闭
        # 1: 开启
        # @type FaceExpose: Integer
        # @param MallArea: 门线标注
        # @type MallArea: Array
        # @param ShopArea: 店门标注
        # @type ShopArea: Array
        # @param TrackAreas: 检测区标注
        # @type TrackAreas: Array
        # @param Zones: 点位列表（品类区）
        # @type Zones: Array

        attr_accessor :CameraProducer, :RTSP, :Fps, :DecodeFps, :PassengerFlow, :FaceExpose, :MallArea, :ShopArea, :TrackAreas, :Zones
        
        def initialize(cameraproducer=nil, rtsp=nil, fps=nil, decodefps=nil, passengerflow=nil, faceexpose=nil, mallarea=nil, shoparea=nil, trackareas=nil, zones=nil)
          @CameraProducer = cameraproducer
          @RTSP = rtsp
          @Fps = fps
          @DecodeFps = decodefps
          @PassengerFlow = passengerflow
          @FaceExpose = faceexpose
          @MallArea = mallarea
          @ShopArea = shoparea
          @TrackAreas = trackareas
          @Zones = zones
        end

        def deserialize(params)
          @CameraProducer = params['CameraProducer']
          @RTSP = params['RTSP']
          @Fps = params['Fps']
          @DecodeFps = params['DecodeFps']
          @PassengerFlow = params['PassengerFlow']
          @FaceExpose = params['FaceExpose']
          unless params['MallArea'].nil?
            @MallArea = []
            params['MallArea'].each do |i|
              @MallArea << Point.new.deserialize(i)
            end
          end
          unless params['ShopArea'].nil?
            @ShopArea = []
            params['ShopArea'].each do |i|
              @ShopArea << Point.new.deserialize(i)
            end
          end
          unless params['TrackAreas'].nil?
            @TrackAreas = []
            params['TrackAreas'].each do |i|
              @TrackAreas << Polygon.new.deserialize(i)
            end
          end
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              @Zones << ZoneArea.new.deserialize(i)
            end
          end
        end
      end

      # 告警信息
      class CreateCameraAlertAlert < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param CameraId: 相机ID
        # @type CameraId: Integer
        # @param CaptureTime: 时间戳,ms,默认为告警请求到达时间
        # @type CaptureTime: Integer
        # @param Image: 图片base64编码
        # @type Image: String
        # @param MoveAlert: 移动告警
        # @type MoveAlert: :class:`Tencentcloud::Ump.v20200918.models.CreateCameraAlertsMoveAlert`
        # @param CoverAlert: 遮挡告警
        # @type CoverAlert: :class:`Tencentcloud::Ump.v20200918.models.CreateCameraAlertsCoverAlert`

        attr_accessor :GroupCode, :MallId, :CameraId, :CaptureTime, :Image, :MoveAlert, :CoverAlert
        
        def initialize(groupcode=nil, mallid=nil, cameraid=nil, capturetime=nil, image=nil, movealert=nil, coveralert=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @CameraId = cameraid
          @CaptureTime = capturetime
          @Image = image
          @MoveAlert = movealert
          @CoverAlert = coveralert
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @CameraId = params['CameraId']
          @CaptureTime = params['CaptureTime']
          @Image = params['Image']
          unless params['MoveAlert'].nil?
            @MoveAlert = CreateCameraAlertsMoveAlert.new.deserialize(params['MoveAlert'])
          end
          unless params['CoverAlert'].nil?
            @CoverAlert = CreateCameraAlertsCoverAlert.new.deserialize(params['CoverAlert'])
          end
        end
      end

      # 遮挡告警
      class CreateCameraAlertsCoverAlert < TencentCloud::Common::AbstractModel
        # @param Cover: 是否遮挡
        # @type Cover: Boolean
        # @param CoverConfidence: 是否移动置信度
        # @type CoverConfidence: Float

        attr_accessor :Cover, :CoverConfidence
        
        def initialize(cover=nil, coverconfidence=nil)
          @Cover = cover
          @CoverConfidence = coverconfidence
        end

        def deserialize(params)
          @Cover = params['Cover']
          @CoverConfidence = params['CoverConfidence']
        end
      end

      # 移动告警
      class CreateCameraAlertsMoveAlert < TencentCloud::Common::AbstractModel
        # @param Move: 是否移动
        # @type Move: Boolean
        # @param MoveConfidence: 是否移动置信度
        # @type MoveConfidence: Float

        attr_accessor :Move, :MoveConfidence
        
        def initialize(move=nil, moveconfidence=nil)
          @Move = move
          @MoveConfidence = moveconfidence
        end

        def deserialize(params)
          @Move = params['Move']
          @MoveConfidence = params['MoveConfidence']
        end
      end

      # CreateCameraAlerts请求参数结构体
      class CreateCameraAlertsRequest < TencentCloud::Common::AbstractModel
        # @param Alerts: 告警信息列表
        # @type Alerts: Array

        attr_accessor :Alerts
        
        def initialize(alerts=nil)
          @Alerts = alerts
        end

        def deserialize(params)
          unless params['Alerts'].nil?
            @Alerts = []
            params['Alerts'].each do |i|
              @Alerts << CreateCameraAlertAlert.new.deserialize(i)
            end
          end
        end
      end

      # CreateCameraAlerts返回参数结构体
      class CreateCameraAlertsResponse < TencentCloud::Common::AbstractModel
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

      # CreateCameraState请求参数结构体
      class CreateCameraStateRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param CameraStates: 场内所有相机的状态值
        # @type CameraStates: Array

        attr_accessor :GroupCode, :MallId, :CameraStates
        
        def initialize(groupcode=nil, mallid=nil, camerastates=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @CameraStates = camerastates
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          unless params['CameraStates'].nil?
            @CameraStates = []
            params['CameraStates'].each do |i|
              @CameraStates << CameraState.new.deserialize(i)
            end
          end
        end
      end

      # CreateCameraState返回参数结构体
      class CreateCameraStateResponse < TencentCloud::Common::AbstractModel
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

      # CreateCapture请求参数结构体
      class CreateCaptureRequest < TencentCloud::Common::AbstractModel
        # @param Data: 原始抓拍报文
        # @type Data: String

        attr_accessor :Data
        
        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # CreateCapture返回参数结构体
      class CreateCaptureResponse < TencentCloud::Common::AbstractModel
        # @param RspData: 原始应答报文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RspData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RspData, :RequestId
        
        def initialize(rspdata=nil, requestid=nil)
          @RspData = rspdata
          @RequestId = requestid
        end

        def deserialize(params)
          @RspData = params['RspData']
          @RequestId = params['RequestId']
        end
      end

      # CreateMultiBizAlert请求参数结构体
      class CreateMultiBizAlertRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer
        # @param CaptureTime: 时间戳，毫秒
        # @type CaptureTime: Integer
        # @param State: 状态:
        # 1: 侵占
        # 2: 消失
        # 3: 即侵占又消失
        # @type State: Integer
        # @param Image: 图片base64字符串
        # @type Image: String
        # @param Warnings: 告警列表
        # @type Warnings: Array

        attr_accessor :GroupCode, :MallId, :ZoneId, :CameraId, :CaptureTime, :State, :Image, :Warnings
        
        def initialize(groupcode=nil, mallid=nil, zoneid=nil, cameraid=nil, capturetime=nil, state=nil, image=nil, warnings=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @ZoneId = zoneid
          @CameraId = cameraid
          @CaptureTime = capturetime
          @State = state
          @Image = image
          @Warnings = warnings
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @ZoneId = params['ZoneId']
          @CameraId = params['CameraId']
          @CaptureTime = params['CaptureTime']
          @State = params['State']
          @Image = params['Image']
          unless params['Warnings'].nil?
            @Warnings = []
            params['Warnings'].each do |i|
              @Warnings << MultiBizWarning.new.deserialize(i)
            end
          end
        end
      end

      # CreateMultiBizAlert返回参数结构体
      class CreateMultiBizAlertResponse < TencentCloud::Common::AbstractModel
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

      # CreateProgramState请求参数结构体
      class CreateProgramStateRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param ProgramStateItems: 进程监控信息列表
        # @type ProgramStateItems: Array
        # @param MallId: 商场ID
        # @type MallId: Integer

        attr_accessor :GroupCode, :ProgramStateItems, :MallId
        
        def initialize(groupcode=nil, programstateitems=nil, mallid=nil)
          @GroupCode = groupcode
          @ProgramStateItems = programstateitems
          @MallId = mallid
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          unless params['ProgramStateItems'].nil?
            @ProgramStateItems = []
            params['ProgramStateItems'].each do |i|
              @ProgramStateItems << ProgramStateItem.new.deserialize(i)
            end
          end
          @MallId = params['MallId']
        end
      end

      # CreateProgramState返回参数结构体
      class CreateProgramStateResponse < TencentCloud::Common::AbstractModel
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

      # CreateServerState请求参数结构体
      class CreateServerStateRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param ServerStateItems: 服务器监控信息列表
        # @type ServerStateItems: Array
        # @param MallId: 商场ID
        # @type MallId: Integer
        # @param ReportTime: 服务器监控信息上报时间戳，单位毫秒
        # @type ReportTime: Integer

        attr_accessor :GroupCode, :ServerStateItems, :MallId, :ReportTime
        
        def initialize(groupcode=nil, serverstateitems=nil, mallid=nil, reporttime=nil)
          @GroupCode = groupcode
          @ServerStateItems = serverstateitems
          @MallId = mallid
          @ReportTime = reporttime
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          unless params['ServerStateItems'].nil?
            @ServerStateItems = []
            params['ServerStateItems'].each do |i|
              @ServerStateItems << ServerStateItem.new.deserialize(i)
            end
          end
          @MallId = params['MallId']
          @ReportTime = params['ReportTime']
        end
      end

      # CreateServerState返回参数结构体
      class CreateServerStateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMultiBizAlert请求参数结构体
      class DeleteMultiBizAlertRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer
        # @param ActionType: 消警动作:
        # 1: 误报
        # 2: 正报合规
        # 3: 正报不合规，整改完成
        # @type ActionType: Integer
        # @param Image: 图片base64字符串
        # @type Image: String

        attr_accessor :GroupCode, :MallId, :ZoneId, :CameraId, :ActionType, :Image
        
        def initialize(groupcode=nil, mallid=nil, zoneid=nil, cameraid=nil, actiontype=nil, image=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @ZoneId = zoneid
          @CameraId = cameraid
          @ActionType = actiontype
          @Image = image
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @ZoneId = params['ZoneId']
          @CameraId = params['CameraId']
          @ActionType = params['ActionType']
          @Image = params['Image']
        end
      end

      # DeleteMultiBizAlert返回参数结构体
      class DeleteMultiBizAlertResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTask请求参数结构体
      class DeleteTaskRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :GroupCode, :MallId, :TaskId
        
        def initialize(groupcode=nil, mallid=nil, taskid=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @TaskId = taskid
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteTask返回参数结构体
      class DeleteTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCameras请求参数结构体
      class DescribeCamerasRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer

        attr_accessor :GroupCode, :MallId
        
        def initialize(groupcode=nil, mallid=nil)
          @GroupCode = groupcode
          @MallId = mallid
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
        end
      end

      # DescribeCameras返回参数结构体
      class DescribeCamerasResponse < TencentCloud::Common::AbstractModel
        # @param Cameras: 摄像头列表
        # @type Cameras: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cameras, :RequestId
        
        def initialize(cameras=nil, requestid=nil)
          @Cameras = cameras
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Cameras'].nil?
            @Cameras = []
            params['Cameras'].each do |i|
              @Cameras << CameraZones.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfig请求参数结构体
      class DescribeConfigRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param CameraSign: 摄像头签名
        # @type CameraSign: String
        # @param CameraAppId: 摄像头app id
        # @type CameraAppId: String
        # @param CameraTimestamp: 摄像头时间戳，毫秒
        # @type CameraTimestamp: Integer
        # @param ServerMac: MAC地址，字母大写
        # @type ServerMac: String
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer

        attr_accessor :SessionId, :CameraSign, :CameraAppId, :CameraTimestamp, :ServerMac, :GroupCode, :MallId
        
        def initialize(sessionid=nil, camerasign=nil, cameraappid=nil, cameratimestamp=nil, servermac=nil, groupcode=nil, mallid=nil)
          @SessionId = sessionid
          @CameraSign = camerasign
          @CameraAppId = cameraappid
          @CameraTimestamp = cameratimestamp
          @ServerMac = servermac
          @GroupCode = groupcode
          @MallId = mallid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @CameraSign = params['CameraSign']
          @CameraAppId = params['CameraAppId']
          @CameraTimestamp = params['CameraTimestamp']
          @ServerMac = params['ServerMac']
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
        end
      end

      # DescribeConfig返回参数结构体
      class DescribeConfigResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID
        # @type SessionId: String
        # @param Version: 配置版本号
        # @type Version: Integer
        # @param Cameras: 摄像头列表
        # @type Cameras: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SessionId, :Version, :Cameras, :RequestId
        
        def initialize(sessionid=nil, version=nil, cameras=nil, requestid=nil)
          @SessionId = sessionid
          @Version = version
          @Cameras = cameras
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Version = params['Version']
          unless params['Cameras'].nil?
            @Cameras = []
            params['Cameras'].each do |i|
              @Cameras << CameraConfig.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImage请求参数结构体
      class DescribeImageRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer

        attr_accessor :GroupCode, :MallId, :CameraId
        
        def initialize(groupcode=nil, mallid=nil, cameraid=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @CameraId = cameraid
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @CameraId = params['CameraId']
        end
      end

      # DescribeImage返回参数结构体
      class DescribeImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageUrl: cos 临时 url，异步上传图片，client需要轮询
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

      # DescribeMultiBizBaseImage请求参数结构体
      class DescribeMultiBizBaseImageRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer

        attr_accessor :GroupCode, :MallId, :CameraId, :ZoneId
        
        def initialize(groupcode=nil, mallid=nil, cameraid=nil, zoneid=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @CameraId = cameraid
          @ZoneId = zoneid
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @CameraId = params['CameraId']
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeMultiBizBaseImage返回参数结构体
      class DescribeMultiBizBaseImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageUrl: cos 临时 url
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

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param TaskType: 任务类型:
        # 1: 底图拉取
        # @type TaskType: Integer

        attr_accessor :GroupCode, :MallId, :TaskType
        
        def initialize(groupcode=nil, mallid=nil, tasktype=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @TaskType = tasktype
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @TaskType = params['TaskType']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId
        
        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              @Tasks << Task.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer

        attr_accessor :GroupCode, :MallId
        
        def initialize(groupcode=nil, mallid=nil)
          @GroupCode = groupcode
          @MallId = mallid
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param Zones: 点位列表
        # @type Zones: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Zones, :RequestId
        
        def initialize(zones=nil, requestid=nil)
          @Zones = zones
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              @Zones << ZoneConfig.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 硬盘监控信息
      class DiskInfo < TencentCloud::Common::AbstractModel
        # @param DiskName: 硬盘名字
        # @type DiskName: String
        # @param Usage: 硬盘使用率
        # @type Usage: Float

        attr_accessor :DiskName, :Usage
        
        def initialize(diskname=nil, usage=nil)
          @DiskName = diskname
          @Usage = usage
        end

        def deserialize(params)
          @DiskName = params['DiskName']
          @Usage = params['Usage']
        end
      end

      # ModifyMultiBizConfig请求参数结构体
      class ModifyMultiBizConfigRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer
        # @param MonitoringAreas: 监控区域
        # @type MonitoringAreas: Array

        attr_accessor :GroupCode, :MallId, :ZoneId, :CameraId, :MonitoringAreas
        
        def initialize(groupcode=nil, mallid=nil, zoneid=nil, cameraid=nil, monitoringareas=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @ZoneId = zoneid
          @CameraId = cameraid
          @MonitoringAreas = monitoringareas
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @ZoneId = params['ZoneId']
          @CameraId = params['CameraId']
          unless params['MonitoringAreas'].nil?
            @MonitoringAreas = []
            params['MonitoringAreas'].each do |i|
              @MonitoringAreas << Polygon.new.deserialize(i)
            end
          end
        end
      end

      # ModifyMultiBizConfig返回参数结构体
      class ModifyMultiBizConfigResponse < TencentCloud::Common::AbstractModel
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

      # 多经点位告警
      class MultiBizWarning < TencentCloud::Common::AbstractModel
        # @param Id: 编号
        # @type Id: Integer
        # @param MonitoringArea: 监控区域
        # @type MonitoringArea: Array
        # @param WarningInfos: 告警列表
        # @type WarningInfos: Array

        attr_accessor :Id, :MonitoringArea, :WarningInfos
        
        def initialize(id=nil, monitoringarea=nil, warninginfos=nil)
          @Id = id
          @MonitoringArea = monitoringarea
          @WarningInfos = warninginfos
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['MonitoringArea'].nil?
            @MonitoringArea = []
            params['MonitoringArea'].each do |i|
              @MonitoringArea << Point.new.deserialize(i)
            end
          end
          unless params['WarningInfos'].nil?
            @WarningInfos = []
            params['WarningInfos'].each do |i|
              @WarningInfos << MultiBizWarningInfo.new.deserialize(i)
            end
          end
        end
      end

      # 多经点位告警信息
      class MultiBizWarningInfo < TencentCloud::Common::AbstractModel
        # @param WarningType: 告警类型：
        # 0: 无变化
        # 1: 侵占
        # 2: 消失
        # @type WarningType: Integer
        # @param WarningAreaSize: 告警侵占或消失面积
        # @type WarningAreaSize: Float
        # @param WarningLocation: 告警侵占或消失坐标
        # @type WarningLocation: :class:`Tencentcloud::Ump.v20200918.models.Point`
        # @param WarningAreaContour: 告警侵占或消失轮廓
        # @type WarningAreaContour: Array

        attr_accessor :WarningType, :WarningAreaSize, :WarningLocation, :WarningAreaContour
        
        def initialize(warningtype=nil, warningareasize=nil, warninglocation=nil, warningareacontour=nil)
          @WarningType = warningtype
          @WarningAreaSize = warningareasize
          @WarningLocation = warninglocation
          @WarningAreaContour = warningareacontour
        end

        def deserialize(params)
          @WarningType = params['WarningType']
          @WarningAreaSize = params['WarningAreaSize']
          unless params['WarningLocation'].nil?
            @WarningLocation = Point.new.deserialize(params['WarningLocation'])
          end
          unless params['WarningAreaContour'].nil?
            @WarningAreaContour = []
            params['WarningAreaContour'].each do |i|
              @WarningAreaContour << Point.new.deserialize(i)
            end
          end
        end
      end

      # 点
      class Point < TencentCloud::Common::AbstractModel
        # @param X: X坐标
        # @type X: Integer
        # @param Y: Y坐标
        # @type Y: Integer

        attr_accessor :X, :Y
        
        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # 多边形
      class Polygon < TencentCloud::Common::AbstractModel
        # @param Points: 标注列表
        # @type Points: Array

        attr_accessor :Points
        
        def initialize(points=nil)
          @Points = points
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              @Points << Point.new.deserialize(i)
            end
          end
        end
      end

      # 进程状态监控项
      class ProgramStateItem < TencentCloud::Common::AbstractModel
        # @param ServerIp: 服务器IP
        # @type ServerIp: String
        # @param ProgramName: 进程名字
        # @type ProgramName: String
        # @param OnlineCount: 在线个数
        # @type OnlineCount: Integer
        # @param OfflineCount: 离线个数
        # @type OfflineCount: Integer
        # @param State: 上报状态:
        # 1: 正常上报
        # 2: 异常上报
        # 注：此处异常上报是指本次上报由于场内服务内部原因导致上报数据不可信等。此时离线个数重置为1，在线个数重置为0
        # @type State: Integer

        attr_accessor :ServerIp, :ProgramName, :OnlineCount, :OfflineCount, :State
        
        def initialize(serverip=nil, programname=nil, onlinecount=nil, offlinecount=nil, state=nil)
          @ServerIp = serverip
          @ProgramName = programname
          @OnlineCount = onlinecount
          @OfflineCount = offlinecount
          @State = state
        end

        def deserialize(params)
          @ServerIp = params['ServerIp']
          @ProgramName = params['ProgramName']
          @OnlineCount = params['OnlineCount']
          @OfflineCount = params['OfflineCount']
          @State = params['State']
        end
      end

      # ReportServiceRegister请求参数结构体
      class ReportServiceRegisterRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param ServiceRegisterInfos: 服务上报当前的服务能力信息
        # @type ServiceRegisterInfos: Array
        # @param ServerIp: 服务内网Ip
        # @type ServerIp: String
        # @param ServerNodeId: 上报服务所在服务器的唯一ID
        # @type ServerNodeId: String
        # @param ReportTime: 上报时间戳, 单位毫秒
        # @type ReportTime: Integer

        attr_accessor :GroupCode, :MallId, :ServiceRegisterInfos, :ServerIp, :ServerNodeId, :ReportTime
        
        def initialize(groupcode=nil, mallid=nil, serviceregisterinfos=nil, serverip=nil, servernodeid=nil, reporttime=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @ServiceRegisterInfos = serviceregisterinfos
          @ServerIp = serverip
          @ServerNodeId = servernodeid
          @ReportTime = reporttime
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          unless params['ServiceRegisterInfos'].nil?
            @ServiceRegisterInfos = []
            params['ServiceRegisterInfos'].each do |i|
              @ServiceRegisterInfos << ServiceRegisterInfo.new.deserialize(i)
            end
          end
          @ServerIp = params['ServerIp']
          @ServerNodeId = params['ServerNodeId']
          @ReportTime = params['ReportTime']
        end
      end

      # ReportServiceRegister返回参数结构体
      class ReportServiceRegisterResponse < TencentCloud::Common::AbstractModel
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

      # SearchImage请求参数结构体
      class SearchImageRequest < TencentCloud::Common::AbstractModel
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param Image: 图片base64字符串
        # @type Image: String
        # @param ImageTime: 时间戳，毫秒
        # @type ImageTime: Integer

        attr_accessor :GroupCode, :MallId, :Image, :ImageTime
        
        def initialize(groupcode=nil, mallid=nil, image=nil, imagetime=nil)
          @GroupCode = groupcode
          @MallId = mallid
          @Image = image
          @ImageTime = imagetime
        end

        def deserialize(params)
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          @Image = params['Image']
          @ImageTime = params['ImageTime']
        end
      end

      # SearchImage返回参数结构体
      class SearchImageResponse < TencentCloud::Common::AbstractModel
        # @param FaceId: face id
        # @type FaceId: String
        # @param Results: 搜索结果列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceId, :Results, :RequestId
        
        def initialize(faceid=nil, results=nil, requestid=nil)
          @FaceId = faceid
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceId = params['FaceId']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              @Results << SearchResult.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 以图搜图检索结果
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param Image: 图片base64数据
        # @type Image: String
        # @param PersonId: 身份ID
        # @type PersonId: String
        # @param Similarity: 相似度
        # @type Similarity: Float

        attr_accessor :Image, :PersonId, :Similarity
        
        def initialize(image=nil, personid=nil, similarity=nil)
          @Image = image
          @PersonId = personid
          @Similarity = similarity
        end

        def deserialize(params)
          @Image = params['Image']
          @PersonId = params['PersonId']
          @Similarity = params['Similarity']
        end
      end

      # 服务器监控状态上报项
      class ServerStateItem < TencentCloud::Common::AbstractModel
        # @param ServerState: 服务器状态
        # 1: 在线
        # 2: 离线
        # 3: 重启
        # @type ServerState: Integer
        # @param ServerIp: 服务器IP
        # @type ServerIp: String
        # @param DiskInfos: 硬盘监控信息列表
        # @type DiskInfos: Array

        attr_accessor :ServerState, :ServerIp, :DiskInfos
        
        def initialize(serverstate=nil, serverip=nil, diskinfos=nil)
          @ServerState = serverstate
          @ServerIp = serverip
          @DiskInfos = diskinfos
        end

        def deserialize(params)
          @ServerState = params['ServerState']
          @ServerIp = params['ServerIp']
          unless params['DiskInfos'].nil?
            @DiskInfos = []
            params['DiskInfos'].each do |i|
              @DiskInfos << DiskInfo.new.deserialize(i)
            end
          end
        end
      end

      # 用于服务注册时表示当前服务的具体信息
      class ServiceRegisterInfo < TencentCloud::Common::AbstractModel
        # @param CgiUrl: 当前服务的回调地址
        # @type CgiUrl: String
        # @param ServiceType: 当前服务类型:
        # 1: 多经服务
        # 2: 相机误报警确认
        # 3: 底图更新
        # @type ServiceType: Integer

        attr_accessor :CgiUrl, :ServiceType
        
        def initialize(cgiurl=nil, servicetype=nil)
          @CgiUrl = cgiurl
          @ServiceType = servicetype
        end

        def deserialize(params)
          @CgiUrl = params['CgiUrl']
          @ServiceType = params['ServiceType']
        end
      end

      # 任务信息
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param GroupCode: 集团编码
        # @type GroupCode: String
        # @param MallId: 广场ID
        # @type MallId: Integer
        # @param TaskContent: 任务内容
        # @type TaskContent: :class:`Tencentcloud::Ump.v20200918.models.TaskContent`
        # @param TaskType: 任务类型:
        # 1: 底图拉取
        # @type TaskType: Integer

        attr_accessor :TaskId, :GroupCode, :MallId, :TaskContent, :TaskType
        
        def initialize(taskid=nil, groupcode=nil, mallid=nil, taskcontent=nil, tasktype=nil)
          @TaskId = taskid
          @GroupCode = groupcode
          @MallId = mallid
          @TaskContent = taskcontent
          @TaskType = tasktype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @GroupCode = params['GroupCode']
          @MallId = params['MallId']
          unless params['TaskContent'].nil?
            @TaskContent = TaskContent.new.deserialize(params['TaskContent'])
          end
          @TaskType = params['TaskType']
        end
      end

      # 任务内容
      class TaskContent < TencentCloud::Common::AbstractModel
        # @param CameraId: 摄像头ID
        # @type CameraId: Integer
        # @param RTSP: rtsp 地址
        # @type RTSP: String
        # @param Url: 图片上传地址
        # @type Url: String

        attr_accessor :CameraId, :RTSP, :Url
        
        def initialize(cameraid=nil, rtsp=nil, url=nil)
          @CameraId = cameraid
          @RTSP = rtsp
          @Url = url
        end

        def deserialize(params)
          @CameraId = params['CameraId']
          @RTSP = params['RTSP']
          @Url = params['Url']
        end
      end

      # 点位包含店门标注
      class ZoneArea < TencentCloud::Common::AbstractModel
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer
        # @param ShopArea: 店门标注
        # @type ShopArea: Array

        attr_accessor :ZoneId, :ShopArea
        
        def initialize(zoneid=nil, shoparea=nil)
          @ZoneId = zoneid
          @ShopArea = shoparea
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['ShopArea'].nil?
            @ShopArea = []
            params['ShopArea'].each do |i|
              @ShopArea << Point.new.deserialize(i)
            end
          end
        end
      end

      # 点位包含绑定、调试信息
      class ZoneConfig < TencentCloud::Common::AbstractModel
        # @param ZoneId: 点位ID
        # @type ZoneId: Integer
        # @param ZoneName: 点位名称
        # @type ZoneName: String
        # @param ZoneType: 点位类型:
        # 1: 场门
        # 3: 层门
        # 5: 特殊区域
        # 7: 门店
        # 8: 补位
        # 10: 开放式门店
        # 11: 品类区
        # 12: 公共区
        # @type ZoneType: Integer
        # @param BunkCodes: 铺位编码
        # @type BunkCodes: String
        # @param FloorName: 楼层名称
        # @type FloorName: String
        # @param FloorId: 楼层ID
        # @type FloorId: Integer
        # @param BindNum: 绑定数
        # @type BindNum: Integer
        # @param DebugNum: 调试数
        # @type DebugNum: Integer
        # @param State: 下发状态:
        # 1: 不可下发
        # 2: 可下发
        # 3: 已下发
        # @type State: Integer

        attr_accessor :ZoneId, :ZoneName, :ZoneType, :BunkCodes, :FloorName, :FloorId, :BindNum, :DebugNum, :State
        
        def initialize(zoneid=nil, zonename=nil, zonetype=nil, bunkcodes=nil, floorname=nil, floorid=nil, bindnum=nil, debugnum=nil, state=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @ZoneType = zonetype
          @BunkCodes = bunkcodes
          @FloorName = floorname
          @FloorId = floorid
          @BindNum = bindnum
          @DebugNum = debugnum
          @State = state
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @ZoneType = params['ZoneType']
          @BunkCodes = params['BunkCodes']
          @FloorName = params['FloorName']
          @FloorId = params['FloorId']
          @BindNum = params['BindNum']
          @DebugNum = params['DebugNum']
          @State = params['State']
        end
      end

    end
  end
end

