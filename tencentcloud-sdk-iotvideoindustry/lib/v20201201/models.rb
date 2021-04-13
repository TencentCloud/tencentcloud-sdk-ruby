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
  module Iotvideoindustry
    module V20201201
      # 查询全部设备出参
      class AllDeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceId: String
        # @param DeviceType: 设备类型；2：IPC
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: Integer
        # @param Status: 设备状态；0：设备不在线；1：设备在线；2：设备隔离中；3：设备未注册
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param ExtraInformation: 设备扩展属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInformation: String
        # @param NickName: 设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param GroupPath: 设备绑定分组路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupPath: String
        # @param DeviceCode: 设备编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCode: String
        # @param IsRecord: 是否存在录像,，0:不存在；1：存在
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRecord: Integer
        # @param Recordable: 该设备是否可录制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Recordable: Integer

        attr_accessor :DeviceId, :DeviceType, :Status, :CreateTime, :ExtraInformation, :NickName, :GroupPath, :DeviceCode, :IsRecord, :Recordable
        
        def initialize(deviceid=nil, devicetype=nil, status=nil, createtime=nil, extrainformation=nil, nickname=nil, grouppath=nil, devicecode=nil, isrecord=nil, recordable=nil)
          @DeviceId = deviceid
          @DeviceType = devicetype
          @Status = status
          @CreateTime = createtime
          @ExtraInformation = extrainformation
          @NickName = nickname
          @GroupPath = grouppath
          @DeviceCode = devicecode
          @IsRecord = isrecord
          @Recordable = recordable
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceType = params['DeviceType']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ExtraInformation = params['ExtraInformation']
          @NickName = params['NickName']
          @GroupPath = params['GroupPath']
          @DeviceCode = params['DeviceCode']
          @IsRecord = params['IsRecord']
          @Recordable = params['Recordable']
        end
      end

      # BindGroupDevices请求参数结构体
      class BindGroupDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param DeviceList: 设备唯一标识列表
        # @type DeviceList: Array

        attr_accessor :GroupId, :DeviceList
        
        def initialize(groupid=nil, devicelist=nil)
          @GroupId = groupid
          @DeviceList = devicelist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @DeviceList = params['DeviceList']
        end
      end

      # BindGroupDevices返回参数结构体
      class BindGroupDevicesResponse < TencentCloud::Common::AbstractModel
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

      # ControlDevicePTZ请求参数结构体
      class ControlDevicePTZRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param Command: PTZ控制命令类型：
        # stop - 停止当前PTZ信令
        # left - 向左移动
        # right - 向右移动
        # up - 向上移动
        # down - 向下移动
        # leftUp - 左上移动
        # leftDown - 左下移动
        # rightUp - 右上移动
        # rightDown - 右下移动
        # zoomOut - 镜头缩小
        # zoomIn - 镜头放大
        # irisIn - 光圈缩小
        # irisOut - 光圈放大
        # focusIn - 焦距变近
        # focusOut - 焦距变远
        # @type Command: String

        attr_accessor :DeviceId, :Command
        
        def initialize(deviceid=nil, command=nil)
          @DeviceId = deviceid
          @Command = command
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Command = params['Command']
        end
      end

      # ControlDevicePTZ返回参数结构体
      class ControlDevicePTZResponse < TencentCloud::Common::AbstractModel
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

      # CreateDeviceGroup请求参数结构体
      class CreateDeviceGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 分组名称
        # @type GroupName: String
        # @param ParentId: 父分组ID
        # @type ParentId: String
        # @param GroupDescribe: 分组描述
        # @type GroupDescribe: String

        attr_accessor :GroupName, :ParentId, :GroupDescribe
        
        def initialize(groupname=nil, parentid=nil, groupdescribe=nil)
          @GroupName = groupname
          @ParentId = parentid
          @GroupDescribe = groupdescribe
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @ParentId = params['ParentId']
          @GroupDescribe = params['GroupDescribe']
        end
      end

      # CreateDeviceGroup返回参数结构体
      class CreateDeviceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Status: 响应结果，“OK”为成功，其他为失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param GroupId: 分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :GroupId, :RequestId
        
        def initialize(status=nil, groupid=nil, requestid=nil)
          @Status = status
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDevice请求参数结构体
      class CreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param NickName: 设备名称
        # @type NickName: String
        # @param PassWord: 设备密码
        # @type PassWord: String
        # @param GroupId: 设备需要绑定的分组ID，参数为空则默认绑定到根分组
        # @type GroupId: String

        attr_accessor :NickName, :PassWord, :GroupId
        
        def initialize(nickname=nil, password=nil, groupid=nil)
          @NickName = nickname
          @PassWord = password
          @GroupId = groupid
        end

        def deserialize(params)
          @NickName = params['NickName']
          @PassWord = params['PassWord']
          @GroupId = params['GroupId']
        end
      end

      # CreateDevice返回参数结构体
      class CreateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceCode: 设备编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCode: String
        # @param DeviceId: 设备唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceId: String
        # @param VirtualGroupId: 设备虚拟组信息，仅在创建NVR/VMS时返回该值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceCode, :DeviceId, :VirtualGroupId, :RequestId
        
        def initialize(devicecode=nil, deviceid=nil, virtualgroupid=nil, requestid=nil)
          @DeviceCode = devicecode
          @DeviceId = deviceid
          @VirtualGroupId = virtualgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceCode = params['DeviceCode']
          @DeviceId = params['DeviceId']
          @VirtualGroupId = params['VirtualGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRecordPlan请求参数结构体
      class CreateRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param Name: 计划名称
        # @type Name: String
        # @param TimeTemplateId: 时间模板ID
        # @type TimeTemplateId: String
        # @param EventId: 触发录制的事件类别 1:全部
        # @type EventId: Integer
        # @param Devices: 该录制计划绑定的设备列表
        # @type Devices: Array

        attr_accessor :Name, :TimeTemplateId, :EventId, :Devices
        
        def initialize(name=nil, timetemplateid=nil, eventid=nil, devices=nil)
          @Name = name
          @TimeTemplateId = timetemplateid
          @EventId = eventid
          @Devices = devices
        end

        def deserialize(params)
          @Name = params['Name']
          @TimeTemplateId = params['TimeTemplateId']
          @EventId = params['EventId']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              @Devices << DeviceItem.new.deserialize(i)
            end
          end
        end
      end

      # CreateRecordPlan返回参数结构体
      class CreateRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanId, :RequestId
        
        def initialize(planid=nil, requestid=nil)
          @PlanId = planid
          @RequestId = requestid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTimeTemplate请求参数结构体
      class CreateTimeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 时间模板名称
        # @type Name: String
        # @param IsAllWeek: 是否为每周全时录制（即7*24h录制），0：非全时录制，1；全时录制，默认0
        # @type IsAllWeek: Integer
        # @param TimeTemplateSpecs: 当IsAllWeek为0时必选，用于描述模板的各个时间片段
        # @type TimeTemplateSpecs: Array

        attr_accessor :Name, :IsAllWeek, :TimeTemplateSpecs
        
        def initialize(name=nil, isallweek=nil, timetemplatespecs=nil)
          @Name = name
          @IsAllWeek = isallweek
          @TimeTemplateSpecs = timetemplatespecs
        end

        def deserialize(params)
          @Name = params['Name']
          @IsAllWeek = params['IsAllWeek']
          unless params['TimeTemplateSpecs'].nil?
            @TimeTemplateSpecs = []
            params['TimeTemplateSpecs'].each do |i|
              @TimeTemplateSpecs << TimeTemplateSpec.new.deserialize(i)
            end
          end
        end
      end

      # CreateTimeTemplate返回参数结构体
      class CreateTimeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId
        
        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDeviceGroup请求参数结构体
      class DeleteDeviceGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteDeviceGroup返回参数结构体
      class DeleteDeviceGroupResponse < TencentCloud::Common::AbstractModel
        # @param Status: 响应结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String

        attr_accessor :DeviceId
        
        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # DeleteDevice返回参数结构体
      class DeleteDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteRecordPlan请求参数结构体
      class DeleteRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String

        attr_accessor :PlanId
        
        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # DeleteRecordPlan返回参数结构体
      class DeleteRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果，OK：成功，其他：失败
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTimeTemplate请求参数结构体
      class DeleteTimeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteTimeTemplate返回参数结构体
      class DeleteTimeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果，OK：成功，其他：失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllDeviceList请求参数结构体
      class DescribeAllDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 限制，默认200
        # @type Limit: Integer
        # @param NickName: 设备名称，需要模糊匹配设备名称时为必填
        # @type NickName: String
        # @param DeviceIds: DeviceId列表，需要精确查找设备时为必填
        # @type DeviceIds: Array

        attr_accessor :Offset, :Limit, :NickName, :DeviceIds
        
        def initialize(offset=nil, limit=nil, nickname=nil, deviceids=nil)
          @Offset = offset
          @Limit = limit
          @NickName = nickname
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NickName = params['NickName']
          @DeviceIds = params['DeviceIds']
        end
      end

      # DescribeAllDeviceList返回参数结构体
      class DescribeAllDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Devices: 设备详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Devices: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Devices, :RequestId
        
        def initialize(totalcount=nil, devices=nil, requestid=nil)
          @TotalCount = totalcount
          @Devices = devices
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              @Devices << AllDeviceInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceGroup请求参数结构体
      class DescribeDeviceGroupRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIds: 设备唯一标识列表
        # @type DeviceIds: Array

        attr_accessor :DeviceIds
        
        def initialize(deviceids=nil)
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @DeviceIds = params['DeviceIds']
        end
      end

      # DescribeDeviceGroup返回参数结构体
      class DescribeDeviceGroupResponse < TencentCloud::Common::AbstractModel
        # @param DevGroups: 设备所在分组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevGroups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DevGroups, :RequestId
        
        def initialize(devgroups=nil, requestid=nil)
          @DevGroups = devgroups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DevGroups'].nil?
            @DevGroups = []
            params['DevGroups'].each do |i|
              @DevGroups << DevGroupInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicePassWord请求参数结构体
      class DescribeDevicePassWordRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String

        attr_accessor :DeviceId
        
        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDevicePassWord返回参数结构体
      class DescribeDevicePassWordResponse < TencentCloud::Common::AbstractModel
        # @param PassWord: 设备密码
        # @type PassWord: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PassWord, :RequestId
        
        def initialize(password=nil, requestid=nil)
          @PassWord = password
          @RequestId = requestid
        end

        def deserialize(params)
          @PassWord = params['PassWord']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceStreams的出参复杂类型
      class DescribeDeviceStreamsData < TencentCloud::Common::AbstractModel
        # @param RtspAddr: rtsp地址
        # @type RtspAddr: String
        # @param RtmpAddr: rtmp地址
        # @type RtmpAddr: String
        # @param HlsAddr: hls地址
        # @type HlsAddr: String
        # @param FlvAddr: flv地址
        # @type FlvAddr: String

        attr_accessor :RtspAddr, :RtmpAddr, :HlsAddr, :FlvAddr
        
        def initialize(rtspaddr=nil, rtmpaddr=nil, hlsaddr=nil, flvaddr=nil)
          @RtspAddr = rtspaddr
          @RtmpAddr = rtmpaddr
          @HlsAddr = hlsaddr
          @FlvAddr = flvaddr
        end

        def deserialize(params)
          @RtspAddr = params['RtspAddr']
          @RtmpAddr = params['RtmpAddr']
          @HlsAddr = params['HlsAddr']
          @FlvAddr = params['FlvAddr']
        end
      end

      # DescribeDeviceStreams请求参数结构体
      class DescribeDeviceStreamsRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param ExpireTime: 流地址失效时间
        # @type ExpireTime: Integer

        attr_accessor :DeviceId, :ExpireTime
        
        def initialize(deviceid=nil, expiretime=nil)
          @DeviceId = deviceid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # DescribeDeviceStreams返回参数结构体
      class DescribeDeviceStreamsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备实时流地址列表
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.DescribeDeviceStreamsData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceStreamsData.new.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupById请求参数结构体
      class DescribeGroupByIdRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeGroupById返回参数结构体
      class DescribeGroupByIdResponse < TencentCloud::Common::AbstractModel
        # @param Group: 分组信息详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Group: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.GroupItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Group, :RequestId
        
        def initialize(group=nil, requestid=nil)
          @Group = group
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Group'].nil?
            @Group = GroupItem.new.deserialize(params['Group'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupByPath请求参数结构体
      class DescribeGroupByPathRequest < TencentCloud::Common::AbstractModel
        # @param GroupPath: 分组路径，格式为/aaa(/bbb/ccc)
        # @type GroupPath: String

        attr_accessor :GroupPath
        
        def initialize(grouppath=nil)
          @GroupPath = grouppath
        end

        def deserialize(params)
          @GroupPath = params['GroupPath']
        end
      end

      # DescribeGroupByPath返回参数结构体
      class DescribeGroupByPathResponse < TencentCloud::Common::AbstractModel
        # @param Group: 分组信息详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Group: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.GroupItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Group, :RequestId
        
        def initialize(group=nil, requestid=nil)
          @Group = group
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Group'].nil?
            @Group = GroupItem.new.deserialize(params['Group'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupDevices请求参数结构体
      class DescribeGroupDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 限制值，默认200
        # @type Limit: Integer
        # @param NickName: 设备名称，根据设备名称模糊匹配时必填
        # @type NickName: String
        # @param Recordable: 过滤不可录制设备
        # @type Recordable: Integer

        attr_accessor :GroupId, :Offset, :Limit, :NickName, :Recordable
        
        def initialize(groupid=nil, offset=nil, limit=nil, nickname=nil, recordable=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @NickName = nickname
          @Recordable = recordable
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NickName = params['NickName']
          @Recordable = params['Recordable']
        end
      end

      # DescribeGroupDevices返回参数结构体
      class DescribeGroupDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分组绑定的设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param DeviceList: 设备详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeviceList, :RequestId
        
        def initialize(totalcount=nil, devicelist=nil, requestid=nil)
          @TotalCount = totalcount
          @DeviceList = devicelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              @DeviceList << GroupDeviceItem.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroups请求参数结构体
      class DescribeGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 分组ID列表
        # @type GroupIds: Array

        attr_accessor :GroupIds
        
        def initialize(groupids=nil)
          @GroupIds = groupids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
        end
      end

      # DescribeGroups返回参数结构体
      class DescribeGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 分组详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              @Groups << GroupInfo.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSIPServer请求参数结构体
      class DescribeSIPServerRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSIPServer返回参数结构体
      class DescribeSIPServerResponse < TencentCloud::Common::AbstractModel
        # @param Data: SIP服务器相关配置项
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.ServerConfiguration`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ServerConfiguration.new.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStatisticDetails请求参数结构体
      class DescribeStatisticDetailsRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始日期，格式【YYYY-MM-DD】
        # @type StartDate: String
        # @param EndDate: 结束日期，格式【YYYY-MM-DD】
        # @type EndDate: String
        # @param StatisticField: 统计项。取值范围：
        # 1.录制设备数：RecordingDevice
        # 2.非录制设备数：NonRecordingDevice
        # 3.观看流量总数：WatchFlux
        # 4.已用存储容量总数：StorageUsage
        # @type StatisticField: String

        attr_accessor :StartDate, :EndDate, :StatisticField
        
        def initialize(startdate=nil, enddate=nil, statisticfield=nil)
          @StartDate = startdate
          @EndDate = enddate
          @StatisticField = statisticfield
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @StatisticField = params['StatisticField']
        end
      end

      # DescribeStatisticDetails返回参数结构体
      class DescribeStatisticDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              @Data << StatisticItem.new.deserialize(i)
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStatisticSummary请求参数结构体
      class DescribeStatisticSummaryRequest < TencentCloud::Common::AbstractModel
        # @param Date: 指定日期。格式【YYYY-MM-DD】
        # @type Date: String

        attr_accessor :Date
        
        def initialize(date=nil)
          @Date = date
        end

        def deserialize(params)
          @Date = params['Date']
        end
      end

      # DescribeStatisticSummary返回参数结构体
      class DescribeStatisticSummaryResponse < TencentCloud::Common::AbstractModel
        # @param RecordingDevice: 录制设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordingDevice: Integer
        # @param NonRecordingDevice: 非录制设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NonRecordingDevice: Integer
        # @param WatchFlux: 观看流量总数。为直播观看流量与点播观看流量之和。单位：GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WatchFlux: Float
        # @param StorageUsage: 累计有效存储容量总数。单位：GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageUsage: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordingDevice, :NonRecordingDevice, :WatchFlux, :StorageUsage, :RequestId
        
        def initialize(recordingdevice=nil, nonrecordingdevice=nil, watchflux=nil, storageusage=nil, requestid=nil)
          @RecordingDevice = recordingdevice
          @NonRecordingDevice = nonrecordingdevice
          @WatchFlux = watchflux
          @StorageUsage = storageusage
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordingDevice = params['RecordingDevice']
          @NonRecordingDevice = params['NonRecordingDevice']
          @WatchFlux = params['WatchFlux']
          @StorageUsage = params['StorageUsage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubGroups请求参数结构体
      class DescribeSubGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param GroupName: 分组名称，根据名称模糊匹配子分组时为必填
        # @type GroupName: String
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 限制数，默认200
        # @type Limit: Integer
        # @param OnlyGroup: 是否统计子分组下的设备数，0：统计，1：不统计
        # @type OnlyGroup: Integer

        attr_accessor :GroupId, :GroupName, :Offset, :Limit, :OnlyGroup
        
        def initialize(groupid=nil, groupname=nil, offset=nil, limit=nil, onlygroup=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Offset = offset
          @Limit = limit
          @OnlyGroup = onlygroup
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OnlyGroup = params['OnlyGroup']
        end
      end

      # DescribeSubGroups返回参数结构体
      class DescribeSubGroupsResponse < TencentCloud::Common::AbstractModel
        # @param GroupList: 子分组详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: Array
        # @param TotalCount: 子分组总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupList, :TotalCount, :RequestId
        
        def initialize(grouplist=nil, totalcount=nil, requestid=nil)
          @GroupList = grouplist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              @GroupList << GroupItem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 设备所在分组信息
      class DevGroupInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param GroupPath: 分组路径
        # @type GroupPath: String
        # @param ParentId: 父分组ID
        # @type ParentId: String
        # @param Error: 设备错误，仅在用户没权限或者设备已删除时返回具体结果
        # @type Error: String

        attr_accessor :DeviceId, :GroupId, :GroupPath, :ParentId, :Error
        
        def initialize(deviceid=nil, groupid=nil, grouppath=nil, parentid=nil, error=nil)
          @DeviceId = deviceid
          @GroupId = groupid
          @GroupPath = grouppath
          @ParentId = parentid
          @Error = error
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @GroupId = params['GroupId']
          @GroupPath = params['GroupPath']
          @ParentId = params['ParentId']
          @Error = params['Error']
        end
      end

      # 用于描述唯一一个设备
      class DeviceItem < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceId: String

        attr_accessor :DeviceId
        
        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # GetRecordDatesByDev请求参数结构体
      class GetRecordDatesByDevRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 限制量，默认200
        # @type Limit: Integer

        attr_accessor :DeviceId, :Offset, :Limit
        
        def initialize(deviceid=nil, offset=nil, limit=nil)
          @DeviceId = deviceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetRecordDatesByDev返回参数结构体
      class GetRecordDatesByDevResponse < TencentCloud::Common::AbstractModel
        # @param Dates: 含有录像文件的日期列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dates, :RequestId
        
        def initialize(dates=nil, requestid=nil)
          @Dates = dates
          @RequestId = requestid
        end

        def deserialize(params)
          @Dates = params['Dates']
          @RequestId = params['RequestId']
        end
      end

      # GetRecordPlanByDev请求参数结构体
      class GetRecordPlanByDevRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String

        attr_accessor :DeviceId
        
        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # GetRecordPlanByDev返回参数结构体
      class GetRecordPlanByDevResponse < TencentCloud::Common::AbstractModel
        # @param Plan: 录制计划详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plan: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.RecordPlanItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plan, :RequestId
        
        def initialize(plan=nil, requestid=nil)
          @Plan = plan
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plan'].nil?
            @Plan = RecordPlanItem.new.deserialize(params['Plan'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRecordPlanById请求参数结构体
      class GetRecordPlanByIdRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String

        attr_accessor :PlanId
        
        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # GetRecordPlanById返回参数结构体
      class GetRecordPlanByIdResponse < TencentCloud::Common::AbstractModel
        # @param Plan: 录制计划详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plan: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.RecordPlanItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plan, :RequestId
        
        def initialize(plan=nil, requestid=nil)
          @Plan = plan
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plan'].nil?
            @Plan = RecordPlanItem.new.deserialize(params['Plan'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRecordPlans请求参数结构体
      class GetRecordPlansRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetRecordPlans返回参数结构体
      class GetRecordPlansResponse < TencentCloud::Common::AbstractModel
        # @param Plans: 录制计划详情·列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plans: Array
        # @param TotalCount: 录制计划总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plans, :TotalCount, :RequestId
        
        def initialize(plans=nil, totalcount=nil, requestid=nil)
          @Plans = plans
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plans'].nil?
            @Plans = []
            params['Plans'].each do |i|
              @Plans << RecordPlanItem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetTimeTemplateById请求参数结构体
      class GetTimeTemplateByIdRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId
        
        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # GetTimeTemplateById返回参数结构体
      class GetTimeTemplateByIdResponse < TencentCloud::Common::AbstractModel
        # @param Template: 时间模板详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Template: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.TimeTemplateItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId
        
        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = TimeTemplateItem.new.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTimeTemplates请求参数结构体
      class GetTimeTemplatesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetTimeTemplates返回参数结构体
      class GetTimeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Templates: 时间模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Templates: Array
        # @param TotalCount: 时间模板总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Templates, :TotalCount, :RequestId
        
        def initialize(templates=nil, totalcount=nil, requestid=nil)
          @Templates = templates
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              @Templates << TimeTemplateItem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetVideoListByCon请求参数结构体
      class GetVideoListByConRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 限制量，默认200
        # @type Limit: Integer
        # @param LatestDay: 0：查询指定日期的录像；1：查询最近一天的录像；默认0
        # @type LatestDay: Integer
        # @param Date: 指定某天。取值【YYYY-MM-DD】
        # 当LatestDay为空或为0时，本参数不允许为空。
        # @type Date: String

        attr_accessor :DeviceId, :Offset, :Limit, :LatestDay, :Date
        
        def initialize(deviceid=nil, offset=nil, limit=nil, latestday=nil, date=nil)
          @DeviceId = deviceid
          @Offset = offset
          @Limit = limit
          @LatestDay = latestday
          @Date = date
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @LatestDay = params['LatestDay']
          @Date = params['Date']
        end
      end

      # GetVideoListByCon返回参数结构体
      class GetVideoListByConResponse < TencentCloud::Common::AbstractModel
        # @param VideoList: 录像详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoList: Array
        # @param TotalCount: 录像总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VideoList, :TotalCount, :RequestId
        
        def initialize(videolist=nil, totalcount=nil, requestid=nil)
          @VideoList = videolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VideoList'].nil?
            @VideoList = []
            params['VideoList'].each do |i|
              @VideoList << RecordTaskItem.new.deserialize(i)
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 分组下设备信息
      class GroupDeviceItem < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceId: String
        # @param NickName: 设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param Status: 设备状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ExtraInformation: 扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInformation: String
        # @param DeviceType: 设备类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: Integer
        # @param RTSPUrl: rtsp地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RTSPUrl: String
        # @param DeviceCode: 设备编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCode: String
        # @param IsRecord: 是否存在录像
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsRecord: Integer
        # @param Recordable: 该设备是否可录制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Recordable: Integer

        attr_accessor :DeviceId, :NickName, :Status, :ExtraInformation, :DeviceType, :RTSPUrl, :DeviceCode, :IsRecord, :Recordable
        
        def initialize(deviceid=nil, nickname=nil, status=nil, extrainformation=nil, devicetype=nil, rtspurl=nil, devicecode=nil, isrecord=nil, recordable=nil)
          @DeviceId = deviceid
          @NickName = nickname
          @Status = status
          @ExtraInformation = extrainformation
          @DeviceType = devicetype
          @RTSPUrl = rtspurl
          @DeviceCode = devicecode
          @IsRecord = isrecord
          @Recordable = recordable
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @NickName = params['NickName']
          @Status = params['Status']
          @ExtraInformation = params['ExtraInformation']
          @DeviceType = params['DeviceType']
          @RTSPUrl = params['RTSPUrl']
          @DeviceCode = params['DeviceCode']
          @IsRecord = params['IsRecord']
          @Recordable = params['Recordable']
        end
      end

      # 分组信息详情
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param GroupName: 分组名称
        # @type GroupName: String
        # @param GroupType: 分组类型
        # @type GroupType: String
        # @param GroupPath: 分组路径
        # @type GroupPath: String
        # @param ParentId: 父分组ID
        # @type ParentId: String
        # @param GroupDescribe: 分组描述
        # @type GroupDescribe: String
        # @param ExtraInformation: 扩展信息
        # @type ExtraInformation: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param GroupStatus: 分组状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupStatus: Integer
        # @param Error: 设备不存在时产生的错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :GroupId, :GroupName, :GroupType, :GroupPath, :ParentId, :GroupDescribe, :ExtraInformation, :CreateTime, :GroupStatus, :Error
        
        def initialize(groupid=nil, groupname=nil, grouptype=nil, grouppath=nil, parentid=nil, groupdescribe=nil, extrainformation=nil, createtime=nil, groupstatus=nil, error=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupType = grouptype
          @GroupPath = grouppath
          @ParentId = parentid
          @GroupDescribe = groupdescribe
          @ExtraInformation = extrainformation
          @CreateTime = createtime
          @GroupStatus = groupstatus
          @Error = error
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupType = params['GroupType']
          @GroupPath = params['GroupPath']
          @ParentId = params['ParentId']
          @GroupDescribe = params['GroupDescribe']
          @ExtraInformation = params['ExtraInformation']
          @CreateTime = params['CreateTime']
          @GroupStatus = params['GroupStatus']
          @Error = params['Error']
        end
      end

      # 分组信息
      class GroupItem < TencentCloud::Common::AbstractModel
        # @param GroupName: 分组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ParentId: 父分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: String
        # @param GroupId: 分组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param GroupPath: 分组路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupPath: String
        # @param GroupDescribe: 分组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupDescribe: String
        # @param DeviceNum: 分组绑定设备数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceNum: Integer
        # @param SubGroupNum: 子分组数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubGroupNum: Integer
        # @param ExtraInformation: 分组附加信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInformation: String
        # @param GroupType: 分组类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupType: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param GroupStatus: 分组状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupStatus: Integer

        attr_accessor :GroupName, :ParentId, :GroupId, :GroupPath, :GroupDescribe, :DeviceNum, :SubGroupNum, :ExtraInformation, :GroupType, :CreateTime, :GroupStatus
        
        def initialize(groupname=nil, parentid=nil, groupid=nil, grouppath=nil, groupdescribe=nil, devicenum=nil, subgroupnum=nil, extrainformation=nil, grouptype=nil, createtime=nil, groupstatus=nil)
          @GroupName = groupname
          @ParentId = parentid
          @GroupId = groupid
          @GroupPath = grouppath
          @GroupDescribe = groupdescribe
          @DeviceNum = devicenum
          @SubGroupNum = subgroupnum
          @ExtraInformation = extrainformation
          @GroupType = grouptype
          @CreateTime = createtime
          @GroupStatus = groupstatus
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @ParentId = params['ParentId']
          @GroupId = params['GroupId']
          @GroupPath = params['GroupPath']
          @GroupDescribe = params['GroupDescribe']
          @DeviceNum = params['DeviceNum']
          @SubGroupNum = params['SubGroupNum']
          @ExtraInformation = params['ExtraInformation']
          @GroupType = params['GroupType']
          @CreateTime = params['CreateTime']
          @GroupStatus = params['GroupStatus']
        end
      end

      # ModifyDeviceData请求参数结构体
      class ModifyDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param NickName: 设备名称
        # @type NickName: String

        attr_accessor :DeviceId, :NickName
        
        def initialize(deviceid=nil, nickname=nil)
          @DeviceId = deviceid
          @NickName = nickname
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @NickName = params['NickName']
        end
      end

      # ModifyDeviceData返回参数结构体
      class ModifyDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果,“OK”表示成功，其他表示失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 录制计划详情
      class RecordPlanItem < TencentCloud::Common::AbstractModel
        # @param PlanId: 计划ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlanId: String
        # @param Name: 计划名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TimeTemplateId: 时间模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeTemplateId: String
        # @param TimeTemplateName: 时间模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeTemplateName: String
        # @param EventId: 录制类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: Integer
        # @param Devices: 绑定的设备列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Devices: Array

        attr_accessor :PlanId, :Name, :TimeTemplateId, :TimeTemplateName, :EventId, :Devices
        
        def initialize(planid=nil, name=nil, timetemplateid=nil, timetemplatename=nil, eventid=nil, devices=nil)
          @PlanId = planid
          @Name = name
          @TimeTemplateId = timetemplateid
          @TimeTemplateName = timetemplatename
          @EventId = eventid
          @Devices = devices
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Name = params['Name']
          @TimeTemplateId = params['TimeTemplateId']
          @TimeTemplateName = params['TimeTemplateName']
          @EventId = params['EventId']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              @Devices << DeviceItem.new.deserialize(i)
            end
          end
        end
      end

      # 普通设备的录像详情
      class RecordTaskItem < TencentCloud::Common::AbstractModel
        # @param RecordTaskId: 录像任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordTaskId: String
        # @param RecordPlanId: 录制计划ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordPlanId: String
        # @param StartTime: 本录制片段开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param EndTime: 本录制片段结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param EventId: 录制模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: Integer
        # @param VideoUrl: 本录制片段对应的录制文件URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoUrl: String
        # @param RecordStatus: 本录制片段当前的录制状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordStatus: Integer

        attr_accessor :RecordTaskId, :RecordPlanId, :StartTime, :EndTime, :EventId, :VideoUrl, :RecordStatus
        
        def initialize(recordtaskid=nil, recordplanid=nil, starttime=nil, endtime=nil, eventid=nil, videourl=nil, recordstatus=nil)
          @RecordTaskId = recordtaskid
          @RecordPlanId = recordplanid
          @StartTime = starttime
          @EndTime = endtime
          @EventId = eventid
          @VideoUrl = videourl
          @RecordStatus = recordstatus
        end

        def deserialize(params)
          @RecordTaskId = params['RecordTaskId']
          @RecordPlanId = params['RecordPlanId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EventId = params['EventId']
          @VideoUrl = params['VideoUrl']
          @RecordStatus = params['RecordStatus']
        end
      end

      # SIIP服务器相关配置项
      class ServerConfiguration < TencentCloud::Common::AbstractModel
        # @param Host: SIP服务器地址
        # @type Host: String
        # @param Port: SIP服务器端口
        # @type Port: Integer
        # @param Serial: SIP服务器编码
        # @type Serial: String
        # @param Realm: SIP服务器域
        # @type Realm: String

        attr_accessor :Host, :Port, :Serial, :Realm
        
        def initialize(host=nil, port=nil, serial=nil, realm=nil)
          @Host = host
          @Port = port
          @Serial = serial
          @Realm = realm
        end

        def deserialize(params)
          @Host = params['Host']
          @Port = params['Port']
          @Serial = params['Serial']
          @Realm = params['Realm']
        end
      end

      # 某天的统计数额
      class StatisticItem < TencentCloud::Common::AbstractModel
        # @param Date: 日期。格式【YYYY-MM-DD】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param Sum: 统计数额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sum: Float

        attr_accessor :Date, :Sum
        
        def initialize(date=nil, sum=nil)
          @Date = date
          @Sum = sum
        end

        def deserialize(params)
          @Date = params['Date']
          @Sum = params['Sum']
        end
      end

      # 时间模板详情
      class TimeTemplateItem < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateId: String
        # @param Name: 模板名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param IsAllWeek: 是否全时录制，即7*24小时录制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllWeek: Integer
        # @param Type: 是否为自定义模板
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param TimeTemplateSpecs: 时间片段详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeTemplateSpecs: Array

        attr_accessor :TemplateId, :Name, :IsAllWeek, :Type, :TimeTemplateSpecs
        
        def initialize(templateid=nil, name=nil, isallweek=nil, type=nil, timetemplatespecs=nil)
          @TemplateId = templateid
          @Name = name
          @IsAllWeek = isallweek
          @Type = type
          @TimeTemplateSpecs = timetemplatespecs
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @IsAllWeek = params['IsAllWeek']
          @Type = params['Type']
          unless params['TimeTemplateSpecs'].nil?
            @TimeTemplateSpecs = []
            params['TimeTemplateSpecs'].each do |i|
              @TimeTemplateSpecs << TimeTemplateSpec.new.deserialize(i)
            end
          end
        end
      end

      # 在操作时间模板时，用于描述各个时间片段
      class TimeTemplateSpec < TencentCloud::Common::AbstractModel
        # @param DayofWeek: 一周中的周几
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DayofWeek: Integer
        # @param BeginTime: 时间片段的开始时分。格式【HH:MM】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: String
        # @param EndTime: 时间片段的结束时分。格式【HH:MM】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :DayofWeek, :BeginTime, :EndTime
        
        def initialize(dayofweek=nil, begintime=nil, endtime=nil)
          @DayofWeek = dayofweek
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @DayofWeek = params['DayofWeek']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # UpdateDeviceGroup请求参数结构体
      class UpdateDeviceGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 分组名称
        # @type GroupName: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param GroupDescribe: 分组描述
        # @type GroupDescribe: String
        # @param NewParentId: 新父分组ID，用于修改分组路径
        # @type NewParentId: String

        attr_accessor :GroupName, :GroupId, :GroupDescribe, :NewParentId
        
        def initialize(groupname=nil, groupid=nil, groupdescribe=nil, newparentid=nil)
          @GroupName = groupname
          @GroupId = groupid
          @GroupDescribe = groupdescribe
          @NewParentId = newparentid
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @GroupDescribe = params['GroupDescribe']
          @NewParentId = params['NewParentId']
        end
      end

      # UpdateDeviceGroup返回参数结构体
      class UpdateDeviceGroupResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDevicePassWord请求参数结构体
      class UpdateDevicePassWordRequest < TencentCloud::Common::AbstractModel
        # @param PassWord: 设备密码
        # @type PassWord: String
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String

        attr_accessor :PassWord, :DeviceId
        
        def initialize(password=nil, deviceid=nil)
          @PassWord = password
          @DeviceId = deviceid
        end

        def deserialize(params)
          @PassWord = params['PassWord']
          @DeviceId = params['DeviceId']
        end
      end

      # UpdateDevicePassWord返回参数结构体
      class UpdateDevicePassWordResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果，“OK”表示成功，其他表示失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # UpdateRecordPlan请求参数结构体
      class UpdateRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param Name: 计划名称
        # @type Name: String
        # @param TimeTemplateId: 时间模板ID
        # @type TimeTemplateId: String
        # @param EventId: 触发录制的事件 1：全部
        # @type EventId: Integer
        # @param Devices: 录制设备列表
        # @type Devices: Array
        # @param IsModifyDevices: 是否更新绑定此录制计划的设备列表
        # 0 - 不更新
        # 1 - 更新，如果Devices参数为空则清空设备列表，Devices不为空则全量更新设备列表
        # @type IsModifyDevices: Integer

        attr_accessor :PlanId, :Name, :TimeTemplateId, :EventId, :Devices, :IsModifyDevices
        
        def initialize(planid=nil, name=nil, timetemplateid=nil, eventid=nil, devices=nil, ismodifydevices=nil)
          @PlanId = planid
          @Name = name
          @TimeTemplateId = timetemplateid
          @EventId = eventid
          @Devices = devices
          @IsModifyDevices = ismodifydevices
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Name = params['Name']
          @TimeTemplateId = params['TimeTemplateId']
          @EventId = params['EventId']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              @Devices << DeviceItem.new.deserialize(i)
            end
          end
          @IsModifyDevices = params['IsModifyDevices']
        end
      end

      # UpdateRecordPlan返回参数结构体
      class UpdateRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # UpdateTimeTemplate请求参数结构体
      class UpdateTimeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # @type TemplateId: String
        # @param Name: 时间模板名称
        # @type Name: String
        # @param IsAllWeek: 是否全时录制，即7*24小时录制。
        # 0：非全时录制；1：全时录制。默认1
        # @type IsAllWeek: Integer
        # @param TimeTemplateSpecs: 录制时间片段
        # @type TimeTemplateSpecs: Array

        attr_accessor :TemplateId, :Name, :IsAllWeek, :TimeTemplateSpecs
        
        def initialize(templateid=nil, name=nil, isallweek=nil, timetemplatespecs=nil)
          @TemplateId = templateid
          @Name = name
          @IsAllWeek = isallweek
          @TimeTemplateSpecs = timetemplatespecs
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @IsAllWeek = params['IsAllWeek']
          unless params['TimeTemplateSpecs'].nil?
            @TimeTemplateSpecs = []
            params['TimeTemplateSpecs'].each do |i|
              @TimeTemplateSpecs << TimeTemplateSpec.new.deserialize(i)
            end
          end
        end
      end

      # UpdateTimeTemplate返回参数结构体
      class UpdateTimeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果，“OK”表示成功，其他表示失败。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

