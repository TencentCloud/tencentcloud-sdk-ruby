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
      # 异动事件走势列表
      class AbnormalEvents < TencentCloud::Common::AbstractModel
        # @param Date: 对应查询日期
        # @type Date: String
        # @param Info: 列表信息
        # @type Info: Array

        attr_accessor :Date, :Info

        def initialize(date=nil, info=nil)
          @Date = date
          @Info = info
        end

        def deserialize(params)
          @Date = params['Date']
          unless params['Info'].nil?
            @Info = []
            params['Info'].each do |i|
              abnormaleventsinfo_tmp = AbnormalEventsInfo.new
              abnormaleventsinfo_tmp.deserialize(i)
              @Info << abnormaleventsinfo_tmp
            end
          end
        end
      end

      # 异动事件走势元素
      class AbnormalEventsInfo < TencentCloud::Common::AbstractModel
        # @param Key: 类型值
        # @type Key: Integer
        # @param Count: 类型总数
        # @type Count: Integer

        attr_accessor :Key, :Count

        def initialize(key=nil, count=nil)
          @Key = key
          @Count = count
        end

        def deserialize(params)
          @Key = params['Key']
          @Count = params['Count']
        end
      end

      # 查询全部设备出参
      class AllDeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param DeviceType: 设备类型；2：IPC
        # @type DeviceType: Integer
        # @param Status: 设备状态；0：设备不在线；1：设备在线；2：设备隔离中；3：设备未注册
        # @type Status: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param ExtraInformation: 设备扩展属性
        # @type ExtraInformation: String
        # @param NickName: 设备名称
        # @type NickName: String
        # @param GroupPath: 设备绑定分组路径
        # @type GroupPath: String
        # @param DeviceCode: 设备编码
        # @type DeviceCode: String
        # @param IsRecord: 是否存在录像,，0:不存在；1：存在
        # @type IsRecord: Integer
        # @param Recordable: 该设备是否可录制
        # @type Recordable: Integer
        # @param Protocol: 设备接入协议
        # @type Protocol: String
        # @param GroupId: 组Id
        # @type GroupId: String
        # @param GroupName: 组名
        # @type GroupName: String

        attr_accessor :DeviceId, :DeviceType, :Status, :CreateTime, :ExtraInformation, :NickName, :GroupPath, :DeviceCode, :IsRecord, :Recordable, :Protocol, :GroupId, :GroupName

        def initialize(deviceid=nil, devicetype=nil, status=nil, createtime=nil, extrainformation=nil, nickname=nil, grouppath=nil, devicecode=nil, isrecord=nil, recordable=nil, protocol=nil, groupid=nil, groupname=nil)
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
          @Protocol = protocol
          @GroupId = groupid
          @GroupName = groupname
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
          @Protocol = params['Protocol']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
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

      # 国标通道详细信息
      class ChannelDetail < TencentCloud::Common::AbstractModel
        # @param ChannelName: 通道名称
        # @type ChannelName: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String
        # @param ChannelType: 通道类型 0：未知；1：视频通道；2：音频通道；3：告警通道
        # @type ChannelType: Integer
        # @param ChannelCode: 20位国标通道编码
        # @type ChannelCode: String
        # @param ExtraInformation: 通道扩展信息
        # @type ExtraInformation: String
        # @param Status: 通道在线状态
        # @type Status: Integer
        # @param IsRecord: 通道是否存在录像标识 0：无录像；1：有录像
        # @type IsRecord: Integer
        # @param DeviceId: 通道所属设备唯一标识
        # @type DeviceId: String
        # @param BusinessGroupId: 通道所属虚拟组织的ID
        # @type BusinessGroupId: String

        attr_accessor :ChannelName, :ChannelId, :ChannelType, :ChannelCode, :ExtraInformation, :Status, :IsRecord, :DeviceId, :BusinessGroupId

        def initialize(channelname=nil, channelid=nil, channeltype=nil, channelcode=nil, extrainformation=nil, status=nil, isrecord=nil, deviceid=nil, businessgroupid=nil)
          @ChannelName = channelname
          @ChannelId = channelid
          @ChannelType = channeltype
          @ChannelCode = channelcode
          @ExtraInformation = extrainformation
          @Status = status
          @IsRecord = isrecord
          @DeviceId = deviceid
          @BusinessGroupId = businessgroupid
        end

        def deserialize(params)
          @ChannelName = params['ChannelName']
          @ChannelId = params['ChannelId']
          @ChannelType = params['ChannelType']
          @ChannelCode = params['ChannelCode']
          @ExtraInformation = params['ExtraInformation']
          @Status = params['Status']
          @IsRecord = params['IsRecord']
          @DeviceId = params['DeviceId']
          @BusinessGroupId = params['BusinessGroupId']
        end
      end

      # GB28181通道
      class ChannelItem < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String

        attr_accessor :DeviceId, :ChannelId

        def initialize(deviceid=nil, channelid=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
        end
      end

      # ControlChannelLocalRecord请求参数结构体
      class ControlChannelLocalRecordRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String
        # @param StreamId: 流Id，流的唯一标识
        # @type StreamId: String
        # @param Command: 控制参数，转义的json字符串

        # 目前支持的command：
        # "Command": "{"Action":"PAUSE"}" 暂停
        # "Command": "{"Action":"PLAY"}" 暂停恢复
        # "Command": "{"Action":"PLAY","Offset":"15"}" 基于文件起始时间点的位置偏移，单位秒
        # @type Command: String

        attr_accessor :DeviceId, :ChannelId, :StreamId, :Command

        def initialize(deviceid=nil, channelid=nil, streamid=nil, command=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
          @StreamId = streamid
          @Command = command
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @StreamId = params['StreamId']
          @Command = params['Command']
        end
      end

      # ControlChannelLocalRecord返回参数结构体
      class ControlChannelLocalRecordResponse < TencentCloud::Common::AbstractModel
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

      # ControlChannelPTZ请求参数结构体
      class ControlChannelPTZRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String
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

        attr_accessor :DeviceId, :ChannelId, :Command

        def initialize(deviceid=nil, channelid=nil, command=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
          @Command = command
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @Command = params['Command']
        end
      end

      # ControlChannelPTZ返回参数结构体
      class ControlChannelPTZResponse < TencentCloud::Common::AbstractModel
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
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String

        attr_accessor :DeviceId, :Command, :ChannelId

        def initialize(deviceid=nil, command=nil, channelid=nil)
          @DeviceId = deviceid
          @Command = command
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Command = params['Command']
          @ChannelId = params['ChannelId']
        end
      end

      # ControlDevicePTZ返回参数结构体
      class ControlDevicePTZResponse < TencentCloud::Common::AbstractModel
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

      # ControlHomePosition请求参数结构体
      class ControlHomePositionRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param Enable: 看守位使能 0-停用看守位 1-启用看守位
        # @type Enable: Integer
        # @param PresetId: 预置位编码 范围1-8，启用看守位时必填
        # @type PresetId: Integer
        # @param ResetTime: 看守位自动归位时间， 启用看守位时必填
        # @type ResetTime: Integer

        attr_accessor :ChannelId, :DeviceId, :Enable, :PresetId, :ResetTime

        def initialize(channelid=nil, deviceid=nil, enable=nil, presetid=nil, resettime=nil)
          @ChannelId = channelid
          @DeviceId = deviceid
          @Enable = enable
          @PresetId = presetid
          @ResetTime = resettime
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @DeviceId = params['DeviceId']
          @Enable = params['Enable']
          @PresetId = params['PresetId']
          @ResetTime = params['ResetTime']
        end
      end

      # ControlHomePosition返回参数结构体
      class ControlHomePositionResponse < TencentCloud::Common::AbstractModel
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

      # ControlPreset请求参数结构体
      class ControlPresetRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param Command: 控制命令：
        # Set-设置当前位置为预置位
        # Del-删除指定的预置位
        # Call-调用指定的预置位
        # @type Command: String
        # @param PresetId: 预置位编码 范围1-8
        # @type PresetId: Integer
        # @param DeviceId: 设备Id
        # @type DeviceId: String

        attr_accessor :ChannelId, :Command, :PresetId, :DeviceId

        def initialize(channelid=nil, command=nil, presetid=nil, deviceid=nil)
          @ChannelId = channelid
          @Command = command
          @PresetId = presetid
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Command = params['Command']
          @PresetId = params['PresetId']
          @DeviceId = params['DeviceId']
        end
      end

      # ControlPreset返回参数结构体
      class ControlPresetResponse < TencentCloud::Common::AbstractModel
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

      # ControlRecordStream请求参数结构体
      class ControlRecordStreamRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备Id，设备的唯一标识
        # @type DeviceId: String
        # @param StreamId: 流Id，流的唯一标识
        # @type StreamId: String
        # @param Command: |控制参数，CmdJson结构转义的json字符串。| Action  | string  |是|控制动作，play(用于暂停后恢复播放)、pause（暂停）、teardown(停止)、jump(拖动播放)
        # | Offset  | uint  |否|拖动播放时的时间偏移量（相对于起始时间）,单位：秒
        # 目前支持的command：
        # "Command": "{"Action":"PAUSE"}" 暂停
        # "Command": "{"Action":"PLAY"}" 暂停恢复
        # "Command": "{"Action":"PLAY","Offset":"15"}" 位置偏移，可以替代jump操作
        # @type Command: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String

        attr_accessor :DeviceId, :StreamId, :Command, :ChannelId

        def initialize(deviceid=nil, streamid=nil, command=nil, channelid=nil)
          @DeviceId = deviceid
          @StreamId = streamid
          @Command = command
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @StreamId = params['StreamId']
          @Command = params['Command']
          @ChannelId = params['ChannelId']
        end
      end

      # ControlRecordStream返回参数结构体
      class ControlRecordStreamResponse < TencentCloud::Common::AbstractModel
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
        # @type Status: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param DeviceType: 设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        # @type DeviceType: Integer
        # @param GroupId: 设备需要绑定的分组ID，参数为空则默认绑定到根分组
        # @type GroupId: String

        attr_accessor :NickName, :PassWord, :DeviceType, :GroupId

        def initialize(nickname=nil, password=nil, devicetype=nil, groupid=nil)
          @NickName = nickname
          @PassWord = password
          @DeviceType = devicetype
          @GroupId = groupid
        end

        def deserialize(params)
          @NickName = params['NickName']
          @PassWord = params['PassWord']
          @DeviceType = params['DeviceType']
          @GroupId = params['GroupId']
        end
      end

      # CreateDevice返回参数结构体
      class CreateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceCode: 设备编码
        # @type DeviceCode: String
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param VirtualGroupId: 设备虚拟组信息，仅在创建NVR时返回该值
        # @type VirtualGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateLiveChannel请求参数结构体
      class CreateLiveChannelRequest < TencentCloud::Common::AbstractModel
        # @param LiveChannelName: 直播频道名称
        # @type LiveChannelName: String
        # @param LiveChannelType: 直播频道类型 1：固定直播；2：移动直播
        # @type LiveChannelType: Integer

        attr_accessor :LiveChannelName, :LiveChannelType

        def initialize(livechannelname=nil, livechanneltype=nil)
          @LiveChannelName = livechannelname
          @LiveChannelType = livechanneltype
        end

        def deserialize(params)
          @LiveChannelName = params['LiveChannelName']
          @LiveChannelType = params['LiveChannelType']
        end
      end

      # CreateLiveChannel返回参数结构体
      class CreateLiveChannelResponse < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 直播频道ID
        # @type LiveChannelId: String
        # @param PushStreamAddress: 直播频道推流地址
        # @type PushStreamAddress: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LiveChannelId, :PushStreamAddress, :RequestId

        def initialize(livechannelid=nil, pushstreamaddress=nil, requestid=nil)
          @LiveChannelId = livechannelid
          @PushStreamAddress = pushstreamaddress
          @RequestId = requestid
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
          @PushStreamAddress = params['PushStreamAddress']
          @RequestId = params['RequestId']
        end
      end

      # CreateLiveRecordPlan请求参数结构体
      class CreateLiveRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanName: 录制计划名
        # @type PlanName: String
        # @param PlanType: 计划类型 1：固定直播 2：移动直播
        # @type PlanType: Integer
        # @param TemplateId: 时间模板ID,固定直播时为必填
        # @type TemplateId: String
        # @param RecordStorageTime: 录制文件存储时长，单位天，默认30天
        # @type RecordStorageTime: Integer
        # @param LiveChannelIds: 绑定的直播频道ID列表
        # @type LiveChannelIds: Array

        attr_accessor :PlanName, :PlanType, :TemplateId, :RecordStorageTime, :LiveChannelIds

        def initialize(planname=nil, plantype=nil, templateid=nil, recordstoragetime=nil, livechannelids=nil)
          @PlanName = planname
          @PlanType = plantype
          @TemplateId = templateid
          @RecordStorageTime = recordstoragetime
          @LiveChannelIds = livechannelids
        end

        def deserialize(params)
          @PlanName = params['PlanName']
          @PlanType = params['PlanType']
          @TemplateId = params['TemplateId']
          @RecordStorageTime = params['RecordStorageTime']
          @LiveChannelIds = params['LiveChannelIds']
        end
      end

      # CreateLiveRecordPlan返回参数结构体
      class CreateLiveRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划名称
        # @type PlanId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateMessageForward请求参数结构体
      class CreateMessageForwardRequest < TencentCloud::Common::AbstractModel
        # @param RegionId: 区域ID
        # @type RegionId: String
        # @param RegionName: 区域名称
        # @type RegionName: String
        # @param Instance: 实例ID
        # @type Instance: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param MessageType: json数组， 转发类型 1: 告警 2:GPS
        # @type MessageType: String
        # @param TopicId: kafka topic id
        # @type TopicId: String
        # @param TopicName: kafka topic 名称
        # @type TopicName: String

        attr_accessor :RegionId, :RegionName, :Instance, :InstanceName, :MessageType, :TopicId, :TopicName

        def initialize(regionid=nil, regionname=nil, instance=nil, instancename=nil, messagetype=nil, topicid=nil, topicname=nil)
          @RegionId = regionid
          @RegionName = regionname
          @Instance = instance
          @InstanceName = instancename
          @MessageType = messagetype
          @TopicId = topicid
          @TopicName = topicname
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @Instance = params['Instance']
          @InstanceName = params['InstanceName']
          @MessageType = params['MessageType']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
        end
      end

      # CreateMessageForward返回参数结构体
      class CreateMessageForwardResponse < TencentCloud::Common::AbstractModel
        # @param IntId: 配置ID
        # @type IntId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntId, :RequestId

        def initialize(intid=nil, requestid=nil)
          @IntId = intid
          @RequestId = requestid
        end

        def deserialize(params)
          @IntId = params['IntId']
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
        # @param RecordStorageTime: 存储周期
        # @type RecordStorageTime: Integer

        attr_accessor :Name, :TimeTemplateId, :EventId, :Devices, :RecordStorageTime

        def initialize(name=nil, timetemplateid=nil, eventid=nil, devices=nil, recordstoragetime=nil)
          @Name = name
          @TimeTemplateId = timetemplateid
          @EventId = eventid
          @Devices = devices
          @RecordStorageTime = recordstoragetime
        end

        def deserialize(params)
          @Name = params['Name']
          @TimeTemplateId = params['TimeTemplateId']
          @EventId = params['EventId']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceitem_tmp = DeviceItem.new
              deviceitem_tmp.deserialize(i)
              @Devices << deviceitem_tmp
            end
          end
          @RecordStorageTime = params['RecordStorageTime']
        end
      end

      # CreateRecordPlan返回参数结构体
      class CreateRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateRecordingPlan请求参数结构体
      class CreateRecordingPlanRequest < TencentCloud::Common::AbstractModel
        # @param Name: 计划名称
        # @type Name: String
        # @param TimeTemplateId: 时间模板ID
        # @type TimeTemplateId: String
        # @param Channels: 该录制计划绑定的通道列表
        # @type Channels: Array
        # @param RecordStorageTime: 存储周期(天)；默认存储30天
        # @type RecordStorageTime: Integer

        attr_accessor :Name, :TimeTemplateId, :Channels, :RecordStorageTime

        def initialize(name=nil, timetemplateid=nil, channels=nil, recordstoragetime=nil)
          @Name = name
          @TimeTemplateId = timetemplateid
          @Channels = channels
          @RecordStorageTime = recordstoragetime
        end

        def deserialize(params)
          @Name = params['Name']
          @TimeTemplateId = params['TimeTemplateId']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelitem_tmp = ChannelItem.new
              channelitem_tmp.deserialize(i)
              @Channels << channelitem_tmp
            end
          end
          @RecordStorageTime = params['RecordStorageTime']
        end
      end

      # CreateRecordingPlan返回参数结构体
      class CreateRecordingPlanResponse < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateScene请求参数结构体
      class CreateSceneRequest < TencentCloud::Common::AbstractModel
        # @param SceneName: 场景名称
        # @type SceneName: String
        # @param SceneTrigger: 场景触发规则
        # @type SceneTrigger: String
        # @param RecordDuration: 录制时长 (秒)
        # @type RecordDuration: Integer
        # @param StoreDuration: 录像存储时长(天)
        # @type StoreDuration: Integer
        # @param Devices: 设备列表(不推荐使用)
        # @type Devices: Array
        # @param Channels: 通道列表
        # @type Channels: Array

        attr_accessor :SceneName, :SceneTrigger, :RecordDuration, :StoreDuration, :Devices, :Channels

        def initialize(scenename=nil, scenetrigger=nil, recordduration=nil, storeduration=nil, devices=nil, channels=nil)
          @SceneName = scenename
          @SceneTrigger = scenetrigger
          @RecordDuration = recordduration
          @StoreDuration = storeduration
          @Devices = devices
          @Channels = channels
        end

        def deserialize(params)
          @SceneName = params['SceneName']
          @SceneTrigger = params['SceneTrigger']
          @RecordDuration = params['RecordDuration']
          @StoreDuration = params['StoreDuration']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceitem_tmp = DeviceItem.new
              deviceitem_tmp.deserialize(i)
              @Devices << deviceitem_tmp
            end
          end
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelitem_tmp = ChannelItem.new
              channelitem_tmp.deserialize(i)
              @Channels << channelitem_tmp
            end
          end
        end
      end

      # CreateScene返回参数结构体
      class CreateSceneResponse < TencentCloud::Common::AbstractModel
        # @param IntId: 场景ID
        # @type IntId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntId, :RequestId

        def initialize(intid=nil, requestid=nil)
          @IntId = intid
          @RequestId = requestid
        end

        def deserialize(params)
          @IntId = params['IntId']
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
              timetemplatespec_tmp = TimeTemplateSpec.new
              timetemplatespec_tmp.deserialize(i)
              @TimeTemplateSpecs << timetemplatespec_tmp
            end
          end
        end
      end

      # CreateTimeTemplate返回参数结构体
      class CreateTimeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteChannel请求参数结构体
      class DeleteChannelRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: String

        attr_accessor :DeviceId, :ChannelId

        def initialize(deviceid=nil, channelid=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
        end
      end

      # DeleteChannel返回参数结构体
      class DeleteChannelResponse < TencentCloud::Common::AbstractModel
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
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Status: 操作结果 OK-成功； 其他-失败
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteLiveChannel请求参数结构体
      class DeleteLiveChannelRequest < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 直播频道ID
        # @type LiveChannelId: String

        attr_accessor :LiveChannelId

        def initialize(livechannelid=nil)
          @LiveChannelId = livechannelid
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
        end
      end

      # DeleteLiveChannel返回参数结构体
      class DeleteLiveChannelResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLiveRecordPlan请求参数结构体
      class DeleteLiveRecordPlanRequest < TencentCloud::Common::AbstractModel
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

      # DeleteLiveRecordPlan返回参数结构体
      class DeleteLiveRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param Status: 删除状态描述
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteLiveVideoList请求参数结构体
      class DeleteLiveVideoListRequest < TencentCloud::Common::AbstractModel
        # @param IntIDs: 视频ID 列表, 大小限制(100)
        # @type IntIDs: Array

        attr_accessor :IntIDs

        def initialize(intids=nil)
          @IntIDs = intids
        end

        def deserialize(params)
          @IntIDs = params['IntIDs']
        end
      end

      # DeleteLiveVideoList返回参数结构体
      class DeleteLiveVideoListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMessageForward请求参数结构体
      class DeleteMessageForwardRequest < TencentCloud::Common::AbstractModel
        # @param IntId: 配置ID
        # @type IntId: Integer

        attr_accessor :IntId

        def initialize(intid=nil)
          @IntId = intid
        end

        def deserialize(params)
          @IntId = params['IntId']
        end
      end

      # DeleteMessageForward返回参数结构体
      class DeleteMessageForwardResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteRecordingPlan请求参数结构体
      class DeleteRecordingPlanRequest < TencentCloud::Common::AbstractModel
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

      # DeleteRecordingPlan返回参数结构体
      class DeleteRecordingPlanResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果，OK：成功，其他：失败
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteScene请求参数结构体
      class DeleteSceneRequest < TencentCloud::Common::AbstractModel
        # @param IntId: 场景ID
        # @type IntId: Integer

        attr_accessor :IntId

        def initialize(intid=nil)
          @IntId = intid
        end

        def deserialize(params)
          @IntId = params['IntId']
        end
      end

      # DeleteScene返回参数结构体
      class DeleteSceneResponse < TencentCloud::Common::AbstractModel
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
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteVideoList请求参数结构体
      class DeleteVideoListRequest < TencentCloud::Common::AbstractModel
        # @param InitIDs: 视频ID列表长度限制100内
        # @type InitIDs: Array

        attr_accessor :InitIDs

        def initialize(initids=nil)
          @InitIDs = initids
        end

        def deserialize(params)
          @InitIDs = params['InitIDs']
        end
      end

      # DeleteVideoList返回参数结构体
      class DeleteVideoListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWarning请求参数结构体
      class DeleteWarningRequest < TencentCloud::Common::AbstractModel
        # @param Id: 告警ID
        # @type Id: Integer
        # @param Index: 告警索引
        # @type Index: String

        attr_accessor :Id, :Index

        def initialize(id=nil, index=nil)
          @Id = id
          @Index = index
        end

        def deserialize(params)
          @Id = params['Id']
          @Index = params['Index']
        end
      end

      # DeleteWarning返回参数结构体
      class DeleteWarningResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAbnormalEvents请求参数结构体
      class DescribeAbnormalEventsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeAbnormalEvents返回参数结构体
      class DescribeAbnormalEventsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 异动事件走势列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              abnormalevents_tmp = AbnormalEvents.new
              abnormalevents_tmp.deserialize(i)
              @Data << abnormalevents_tmp
            end
          end
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
        # @param DeviceTypes: 设备类型过滤，设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        # @type DeviceTypes: Array

        attr_accessor :Offset, :Limit, :NickName, :DeviceIds, :DeviceTypes

        def initialize(offset=nil, limit=nil, nickname=nil, deviceids=nil, devicetypes=nil)
          @Offset = offset
          @Limit = limit
          @NickName = nickname
          @DeviceIds = deviceids
          @DeviceTypes = devicetypes
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NickName = params['NickName']
          @DeviceIds = params['DeviceIds']
          @DeviceTypes = params['DeviceTypes']
        end
      end

      # DescribeAllDeviceList返回参数结构体
      class DescribeAllDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 设备总数
        # @type TotalCount: Integer
        # @param Devices: 设备详细信息列表
        # @type Devices: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              alldeviceinfo_tmp = AllDeviceInfo.new
              alldeviceinfo_tmp.deserialize(i)
              @Devices << alldeviceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindSceneChannels请求参数结构体
      class DescribeBindSceneChannelsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 条数限制最大不能超过1000
        # @type Limit: Integer
        # @param SceneId: 场景ID
        # @type SceneId: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer

        attr_accessor :Limit, :SceneId, :Offset

        def initialize(limit=nil, sceneid=nil, offset=nil)
          @Limit = limit
          @SceneId = sceneid
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @SceneId = params['SceneId']
          @Offset = params['Offset']
        end
      end

      # DescribeBindSceneChannels返回参数结构体
      class DescribeBindSceneChannelsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 通道列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              channelitem_tmp = ChannelItem.new
              channelitem_tmp.deserialize(i)
              @List << channelitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindSceneDevices请求参数结构体
      class DescribeBindSceneDevicesRequest < TencentCloud::Common::AbstractModel
        # @param SceneId: 场景ID
        # @type SceneId: Integer
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: 条数限制最大不能超过1000
        # @type Limit: Integer

        attr_accessor :SceneId, :Offset, :Limit

        def initialize(sceneid=nil, offset=nil, limit=nil)
          @SceneId = sceneid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBindSceneDevices返回参数结构体
      class DescribeBindSceneDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param List: 设备列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              deviceitem_tmp = DeviceItem.new
              deviceitem_tmp.deserialize(i)
              @List << deviceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChannelLiveStreamURL请求参数结构体
      class DescribeChannelLiveStreamURLRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识，必填参数
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识（接口升级字段为必填），必填参数
        # @type ChannelId: String

        attr_accessor :DeviceId, :ChannelId

        def initialize(deviceid=nil, channelid=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeChannelLiveStreamURL返回参数结构体
      class DescribeChannelLiveStreamURLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备实时流地址列表
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.DescribeDeviceStreamsData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceStreamsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChannelLocalRecordURL请求参数结构体
      class DescribeChannelLocalRecordURLRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String
        # @param RecordId: 录像文件Id，通过获取本地录像返回
        # @type RecordId: String
        # @param ExpireTime: UNIX 时间戳，30天内，URL失效时间，如180s无人观看此流则URL提前失效
        # @type ExpireTime: Integer
        # @param StartTime: 录像文件推送的开始时间，需要在RecordId参数起始时间内，可以通过此参数控制回放流起始点
        # @type StartTime: Integer
        # @param EndTime: 录像文件推送的结束时间，需要在RecordId参数起始时间内，可以通过此参数控制回放流起始点
        # @type EndTime: Integer

        attr_accessor :DeviceId, :ChannelId, :RecordId, :ExpireTime, :StartTime, :EndTime

        def initialize(deviceid=nil, channelid=nil, recordid=nil, expiretime=nil, starttime=nil, endtime=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
          @RecordId = recordid
          @ExpireTime = expiretime
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @RecordId = params['RecordId']
          @ExpireTime = params['ExpireTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeChannelLocalRecordURL返回参数结构体
      class DescribeChannelLocalRecordURLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.DescribeRecordStreamData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeRecordStreamData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChannelStreamURL请求参数结构体
      class DescribeChannelStreamURLRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识，必填参数
        # @type DeviceId: String
        # @param ExpireTime: 流地址失效时间，固定值填写0，其他参数无效，必填参数
        # @type ExpireTime: Integer
        # @param ChannelId: 通道唯一标识（接口升级字段为必填），必填参数
        # @type ChannelId: String

        attr_accessor :DeviceId, :ExpireTime, :ChannelId

        def initialize(deviceid=nil, expiretime=nil, channelid=nil)
          @DeviceId = deviceid
          @ExpireTime = expiretime
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ExpireTime = params['ExpireTime']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeChannelStreamURL返回参数结构体
      class DescribeChannelStreamURLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备实时流地址列表
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.DescribeDeviceStreamsData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceStreamsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChannelsByLiveRecordPlan请求参数结构体
      class DescribeChannelsByLiveRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer

        attr_accessor :PlanId, :Offset, :Limit

        def initialize(planid=nil, offset=nil, limit=nil)
          @PlanId = planid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeChannelsByLiveRecordPlan返回参数结构体
      class DescribeChannelsByLiveRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总个数
        # @type TotalCount: Integer
        # @param LiveChannels: 通道详情数组
        # @type LiveChannels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LiveChannels, :RequestId

        def initialize(totalcount=nil, livechannels=nil, requestid=nil)
          @TotalCount = totalcount
          @LiveChannels = livechannels
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LiveChannels'].nil?
            @LiveChannels = []
            params['LiveChannels'].each do |i|
              livechannelitem_tmp = LiveChannelItem.new
              livechannelitem_tmp.deserialize(i)
              @LiveChannels << livechannelitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeChannels请求参数结构体
      class DescribeChannelsRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param Limit: 限制，默认0
        # @type Limit: Integer
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param ChannelTypes: 通道类型  0: 未知类型 1: 视频通道 2:  音频通道 3: 告警通道
        # @type ChannelTypes: Array
        # @param PlanId: 录制计划ID， 当为"null"值时未绑定录制计划
        # @type PlanId: String
        # @param SceneId: 告警联动场景ID， 当为 -1 值时未绑定场景
        # @type SceneId: Integer

        attr_accessor :DeviceId, :Limit, :Offset, :ChannelTypes, :PlanId, :SceneId

        def initialize(deviceid=nil, limit=nil, offset=nil, channeltypes=nil, planid=nil, sceneid=nil)
          @DeviceId = deviceid
          @Limit = limit
          @Offset = offset
          @ChannelTypes = channeltypes
          @PlanId = planid
          @SceneId = sceneid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ChannelTypes = params['ChannelTypes']
          @PlanId = params['PlanId']
          @SceneId = params['SceneId']
        end
      end

      # DescribeChannels返回参数结构体
      class DescribeChannelsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 通道总数
        # @type TotalCount: Integer
        # @param Channels: 通道详情列表
        # @type Channels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Channels, :RequestId

        def initialize(totalcount=nil, channels=nil, requestid=nil)
          @TotalCount = totalcount
          @Channels = channels
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channeldetail_tmp = ChannelDetail.new
              channeldetail_tmp.deserialize(i)
              @Channels << channeldetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCurrentDeviceData请求参数结构体
      class DescribeCurrentDeviceDataRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCurrentDeviceData返回参数结构体
      class DescribeCurrentDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Channels: 通道数
        # @type Channels: Integer
        # @param Devices: 设备数
        # @type Devices: Integer
        # @param OnlineChannels: 在线通道数
        # @type OnlineChannels: Integer
        # @param OnlineDevices: 在线设备数
        # @type OnlineDevices: Integer
        # @param RecordingChannels: 正在录制通道数
        # @type RecordingChannels: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Channels, :Devices, :OnlineChannels, :OnlineDevices, :RecordingChannels, :RequestId

        def initialize(channels=nil, devices=nil, onlinechannels=nil, onlinedevices=nil, recordingchannels=nil, requestid=nil)
          @Channels = channels
          @Devices = devices
          @OnlineChannels = onlinechannels
          @OnlineDevices = onlinedevices
          @RecordingChannels = recordingchannels
          @RequestId = requestid
        end

        def deserialize(params)
          @Channels = params['Channels']
          @Devices = params['Devices']
          @OnlineChannels = params['OnlineChannels']
          @OnlineDevices = params['OnlineDevices']
          @RecordingChannels = params['RecordingChannels']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceEvent请求参数结构体
      class DescribeDeviceEventRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，秒级时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间，秒级时间戳
        # @type EndTime: Integer
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param EventTypes: 默认为全部 事件类型 1:注册 2:心跳 4:录制异常 5:播放异常 6:流中断
        # @type EventTypes: Array
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: limit限制值
        # @type Limit: Integer

        attr_accessor :StartTime, :EndTime, :DeviceId, :EventTypes, :Offset, :Limit

        def initialize(starttime=nil, endtime=nil, deviceid=nil, eventtypes=nil, offset=nil, limit=nil)
          @StartTime = starttime
          @EndTime = endtime
          @DeviceId = deviceid
          @EventTypes = eventtypes
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DeviceId = params['DeviceId']
          @EventTypes = params['EventTypes']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDeviceEvent返回参数结构体
      class DescribeDeviceEventResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Events: 事件列表
        # @type Events: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Events, :RequestId

        def initialize(totalcount=nil, events=nil, requestid=nil)
          @TotalCount = totalcount
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              events_tmp = Events.new
              events_tmp.deserialize(i)
              @Events << events_tmp
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
        # @type DevGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              devgroupinfo_tmp = DevGroupInfo.new
              devgroupinfo_tmp.deserialize(i)
              @DevGroups << devgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceList请求参数结构体
      class DescribeDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 限制，默认200
        # @type Limit: Integer
        # @param NickName: 设备名前缀
        # @type NickName: String
        # @param DeviceTypes: 设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        # @type DeviceTypes: Array

        attr_accessor :Offset, :Limit, :NickName, :DeviceTypes

        def initialize(offset=nil, limit=nil, nickname=nil, devicetypes=nil)
          @Offset = offset
          @Limit = limit
          @NickName = nickname
          @DeviceTypes = devicetypes
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NickName = params['NickName']
          @DeviceTypes = params['DeviceTypes']
        end
      end

      # DescribeDeviceList返回参数结构体
      class DescribeDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 设备总数
        # @type TotalCount: Integer
        # @param Devices: 设备详细信息列表
        # @type Devices: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              alldeviceinfo_tmp = AllDeviceInfo.new
              alldeviceinfo_tmp.deserialize(i)
              @Devices << alldeviceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceMonitorData请求参数结构体
      class DescribeDeviceMonitorDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳
        # @type EndTime: Integer
        # @param Type: 类型 支持 OnlineChannels/OnlineDevices/RecordingChannels
        # @type Type: String
        # @param TimesSpec: 时间粒度 目前只支持 1h
        # @type TimesSpec: String

        attr_accessor :StartTime, :EndTime, :Type, :TimesSpec

        def initialize(starttime=nil, endtime=nil, type=nil, timesspec=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @TimesSpec = timesspec
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @TimesSpec = params['TimesSpec']
        end
      end

      # DescribeDeviceMonitorData返回参数结构体
      class DescribeDeviceMonitorDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 查询设备统计monitor信息列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              devicemonitorvalue_tmp = DeviceMonitorValue.new
              devicemonitorvalue_tmp.deserialize(i)
              @Data << devicemonitorvalue_tmp
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDevice请求参数结构体
      class DescribeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String

        attr_accessor :DeviceId

        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDevice返回参数结构体
      class DescribeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Device: 设备详情信息
        # @type Device: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.AllDeviceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Device, :RequestId

        def initialize(device=nil, requestid=nil)
          @Device = device
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = AllDeviceInfo.new
            @Device.deserialize(params['Device'])
          end
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
        # @param ChannelId: 通道唯一标识（接口升级字段为必填）
        # @type ChannelId: String

        attr_accessor :DeviceId, :ExpireTime, :ChannelId

        def initialize(deviceid=nil, expiretime=nil, channelid=nil)
          @DeviceId = deviceid
          @ExpireTime = expiretime
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ExpireTime = params['ExpireTime']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeDeviceStreams返回参数结构体
      class DescribeDeviceStreamsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备实时流地址列表
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.DescribeDeviceStreamsData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceStreamsData.new
            @Data.deserialize(params['Data'])
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
        # @type Group: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.GroupItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Group, :RequestId

        def initialize(group=nil, requestid=nil)
          @Group = group
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Group'].nil?
            @Group = GroupItem.new
            @Group.deserialize(params['Group'])
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
        # @type Group: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.GroupItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Group, :RequestId

        def initialize(group=nil, requestid=nil)
          @Group = group
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Group'].nil?
            @Group = GroupItem.new
            @Group.deserialize(params['Group'])
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
        # @param DeviceTypes: 当Group是普通组的时候，支持根据DeviceTypes筛选类型，
        #  设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        # @type DeviceTypes: Array

        attr_accessor :GroupId, :Offset, :Limit, :NickName, :Recordable, :DeviceTypes

        def initialize(groupid=nil, offset=nil, limit=nil, nickname=nil, recordable=nil, devicetypes=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
          @NickName = nickname
          @Recordable = recordable
          @DeviceTypes = devicetypes
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @NickName = params['NickName']
          @Recordable = params['Recordable']
          @DeviceTypes = params['DeviceTypes']
        end
      end

      # DescribeGroupDevices返回参数结构体
      class DescribeGroupDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 分组绑定的设备数
        # @type TotalCount: Integer
        # @param DeviceList: 设备详情列表
        # @type DeviceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              groupdeviceitem_tmp = GroupDeviceItem.new
              groupdeviceitem_tmp.deserialize(i)
              @DeviceList << groupdeviceitem_tmp
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
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @Groups << groupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIPCChannels请求参数结构体
      class DescribeIPCChannelsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 限制，默认0
        # @type Limit: Integer
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param ChannelTypes: 通道类型  0: 未知类型 1: 视频通道 2:  音频通道 3: 告警通道
        # @type ChannelTypes: Array

        attr_accessor :Offset, :Limit, :DeviceId, :ChannelTypes

        def initialize(offset=nil, limit=nil, deviceid=nil, channeltypes=nil)
          @Offset = offset
          @Limit = limit
          @DeviceId = deviceid
          @ChannelTypes = channeltypes
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DeviceId = params['DeviceId']
          @ChannelTypes = params['ChannelTypes']
        end
      end

      # DescribeIPCChannels返回参数结构体
      class DescribeIPCChannelsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 通道总数
        # @type TotalCount: Integer
        # @param DeviceList: 通道详情列表
        # @type DeviceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              groupdeviceitem_tmp = GroupDeviceItem.new
              groupdeviceitem_tmp.deserialize(i)
              @DeviceList << groupdeviceitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveChannelList请求参数结构体
      class DescribeLiveChannelListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 最大数
        # @type Limit: Integer
        # @param LiveChannelType: 直播频道类型，1：固定直播；2：移动直播
        # @type LiveChannelType: Integer
        # @param RecordPlanId: 直播录制计划ID, null: 直播录制计划为空
        # @type RecordPlanId: String
        # @param LiveChannelName: 频道名称 (支持模糊搜索)
        # @type LiveChannelName: String

        attr_accessor :Offset, :Limit, :LiveChannelType, :RecordPlanId, :LiveChannelName

        def initialize(offset=nil, limit=nil, livechanneltype=nil, recordplanid=nil, livechannelname=nil)
          @Offset = offset
          @Limit = limit
          @LiveChannelType = livechanneltype
          @RecordPlanId = recordplanid
          @LiveChannelName = livechannelname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @LiveChannelType = params['LiveChannelType']
          @RecordPlanId = params['RecordPlanId']
          @LiveChannelName = params['LiveChannelName']
        end
      end

      # DescribeLiveChannelList返回参数结构体
      class DescribeLiveChannelListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 频道总数
        # @type Total: Integer
        # @param LiveChannels: 频道信息数组
        # @type LiveChannels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :LiveChannels, :RequestId

        def initialize(total=nil, livechannels=nil, requestid=nil)
          @Total = total
          @LiveChannels = livechannels
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['LiveChannels'].nil?
            @LiveChannels = []
            params['LiveChannels'].each do |i|
              livechannelinfo_tmp = LiveChannelInfo.new
              livechannelinfo_tmp.deserialize(i)
              @LiveChannels << livechannelinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveChannel请求参数结构体
      class DescribeLiveChannelRequest < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 频道ID
        # @type LiveChannelId: String

        attr_accessor :LiveChannelId

        def initialize(livechannelid=nil)
          @LiveChannelId = livechannelid
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
        end
      end

      # DescribeLiveChannel返回参数结构体
      class DescribeLiveChannelResponse < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 频道ID
        # @type LiveChannelId: String
        # @param LiveChannelName: 频道名称
        # @type LiveChannelName: String
        # @param LiveChannelType: 直播频道类型 1：固定直播；2：移动直播
        # @type LiveChannelType: Integer
        # @param LiveStatus: 通道直播状态：1: 未推流，2: 推流中
        # @type LiveStatus: Integer
        # @param PushStreamAddress: 推流地址
        # @type PushStreamAddress: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Array
        # @param UpdateTime: 修改时间
        # @type UpdateTime: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LiveChannelId, :LiveChannelName, :LiveChannelType, :LiveStatus, :PushStreamAddress, :CreateTime, :UpdateTime, :RequestId

        def initialize(livechannelid=nil, livechannelname=nil, livechanneltype=nil, livestatus=nil, pushstreamaddress=nil, createtime=nil, updatetime=nil, requestid=nil)
          @LiveChannelId = livechannelid
          @LiveChannelName = livechannelname
          @LiveChannelType = livechanneltype
          @LiveStatus = livestatus
          @PushStreamAddress = pushstreamaddress
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
          @LiveChannelName = params['LiveChannelName']
          @LiveChannelType = params['LiveChannelType']
          @LiveStatus = params['LiveStatus']
          @PushStreamAddress = params['PushStreamAddress']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveRecordPlanById请求参数结构体
      class DescribeLiveRecordPlanByIdRequest < TencentCloud::Common::AbstractModel
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

      # DescribeLiveRecordPlanById返回参数结构体
      class DescribeLiveRecordPlanByIdResponse < TencentCloud::Common::AbstractModel
        # @param PlanName: 计划名称
        # @type PlanName: String
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param RecordStorageTime: 存储时间
        # @type RecordStorageTime: Integer
        # @param PlanType: 计划类型
        # @type PlanType: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanName, :TemplateId, :TemplateName, :RecordStorageTime, :PlanType, :RequestId

        def initialize(planname=nil, templateid=nil, templatename=nil, recordstoragetime=nil, plantype=nil, requestid=nil)
          @PlanName = planname
          @TemplateId = templateid
          @TemplateName = templatename
          @RecordStorageTime = recordstoragetime
          @PlanType = plantype
          @RequestId = requestid
        end

        def deserialize(params)
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @RecordStorageTime = params['RecordStorageTime']
          @PlanType = params['PlanType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveRecordPlanIds请求参数结构体
      class DescribeLiveRecordPlanIdsRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # @type TemplateId: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer

        attr_accessor :TemplateId, :Offset, :Limit

        def initialize(templateid=nil, offset=nil, limit=nil)
          @TemplateId = templateid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeLiveRecordPlanIds返回参数结构体
      class DescribeLiveRecordPlanIdsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总个数
        # @type TotalCount: Integer
        # @param Plans: 计划数组
        # @type Plans: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Plans, :RequestId

        def initialize(totalcount=nil, plans=nil, requestid=nil)
          @TotalCount = totalcount
          @Plans = plans
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Plans'].nil?
            @Plans = []
            params['Plans'].each do |i|
              liverecordplanitem_tmp = LiveRecordPlanItem.new
              liverecordplanitem_tmp.deserialize(i)
              @Plans << liverecordplanitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveStream请求参数结构体
      class DescribeLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 频道ID
        # @type LiveChannelId: String
        # @param ExpireTime: 过期时间 秒级unix时间戳
        # @type ExpireTime: Integer

        attr_accessor :LiveChannelId, :ExpireTime

        def initialize(livechannelid=nil, expiretime=nil)
          @LiveChannelId = livechannelid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # DescribeLiveStream返回参数结构体
      class DescribeLiveStreamResponse < TencentCloud::Common::AbstractModel
        # @param Data: 拉流地址，只有在推流情况下才有
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.StreamAddress`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = StreamAddress.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLiveVideoList请求参数结构体
      class DescribeLiveVideoListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 分页的每页数量
        # @type Limit: Integer
        # @param LiveChannelId: 直播频道ID
        # @type LiveChannelId: String
        # @param StartRecordTime: 开始录制开始时间
        # @type StartRecordTime: Integer
        # @param EndRecordTime: 开始录制结束时间
        # @type EndRecordTime: Integer
        # @param StartExpireTime: 过期开始时间
        # @type StartExpireTime: Integer
        # @param EndExpireTime: 过期结束时间
        # @type EndExpireTime: Integer
        # @param StartFileSize: 文件大小范围 Byte
        # @type StartFileSize: Integer
        # @param EndFileSize: 文件大小范围 Byte
        # @type EndFileSize: Integer
        # @param IsRecording: 录制状态，5: 录制回写完
        # @type IsRecording: Integer

        attr_accessor :Offset, :Limit, :LiveChannelId, :StartRecordTime, :EndRecordTime, :StartExpireTime, :EndExpireTime, :StartFileSize, :EndFileSize, :IsRecording

        def initialize(offset=nil, limit=nil, livechannelid=nil, startrecordtime=nil, endrecordtime=nil, startexpiretime=nil, endexpiretime=nil, startfilesize=nil, endfilesize=nil, isrecording=nil)
          @Offset = offset
          @Limit = limit
          @LiveChannelId = livechannelid
          @StartRecordTime = startrecordtime
          @EndRecordTime = endrecordtime
          @StartExpireTime = startexpiretime
          @EndExpireTime = endexpiretime
          @StartFileSize = startfilesize
          @EndFileSize = endfilesize
          @IsRecording = isrecording
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @LiveChannelId = params['LiveChannelId']
          @StartRecordTime = params['StartRecordTime']
          @EndRecordTime = params['EndRecordTime']
          @StartExpireTime = params['StartExpireTime']
          @EndExpireTime = params['EndExpireTime']
          @StartFileSize = params['StartFileSize']
          @EndFileSize = params['EndFileSize']
          @IsRecording = params['IsRecording']
        end
      end

      # DescribeLiveVideoList返回参数结构体
      class DescribeLiveVideoListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总的条数
        # @type Total: Integer
        # @param RecordList: 录制任务详情数组
        # @type RecordList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RecordList, :RequestId

        def initialize(total=nil, recordlist=nil, requestid=nil)
          @Total = total
          @RecordList = recordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              liverecorditem_tmp = LiveRecordItem.new
              liverecorditem_tmp.deserialize(i)
              @RecordList << liverecorditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageForward请求参数结构体
      class DescribeMessageForwardRequest < TencentCloud::Common::AbstractModel
        # @param IntId: 配置ID
        # @type IntId: Integer

        attr_accessor :IntId

        def initialize(intid=nil)
          @IntId = intid
        end

        def deserialize(params)
          @IntId = params['IntId']
        end
      end

      # DescribeMessageForward返回参数结构体
      class DescribeMessageForwardResponse < TencentCloud::Common::AbstractModel
        # @param RegionId: 区域ID
        # @type RegionId: String
        # @param RegionName: 区域名称
        # @type RegionName: String
        # @param Instance: 实例ID
        # @type Instance: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param IntId: 配置ID
        # @type IntId: Integer
        # @param MessageType: json数组， 转发类型 1: 告警 2:GPS
        # @type MessageType: String
        # @param TopicId: kafka topic id
        # @type TopicId: String
        # @param CreateTime: 配置创建时间
        # @type CreateTime: String
        # @param Uin: 用户Uin信息
        # @type Uin: String
        # @param TopicName: kafka topic 名称
        # @type TopicName: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionId, :RegionName, :Instance, :InstanceName, :IntId, :MessageType, :TopicId, :CreateTime, :Uin, :TopicName, :UpdateTime, :RequestId

        def initialize(regionid=nil, regionname=nil, instance=nil, instancename=nil, intid=nil, messagetype=nil, topicid=nil, createtime=nil, uin=nil, topicname=nil, updatetime=nil, requestid=nil)
          @RegionId = regionid
          @RegionName = regionname
          @Instance = instance
          @InstanceName = instancename
          @IntId = intid
          @MessageType = messagetype
          @TopicId = topicid
          @CreateTime = createtime
          @Uin = uin
          @TopicName = topicname
          @UpdateTime = updatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @Instance = params['Instance']
          @InstanceName = params['InstanceName']
          @IntId = params['IntId']
          @MessageType = params['MessageType']
          @TopicId = params['TopicId']
          @CreateTime = params['CreateTime']
          @Uin = params['Uin']
          @TopicName = params['TopicName']
          @UpdateTime = params['UpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMessageForwards请求参数结构体
      class DescribeMessageForwardsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 数量限制
        # @type Limit: Integer
        # @param Offset: 偏移
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeMessageForwards返回参数结构体
      class DescribeMessageForwardsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 配置总数
        # @type Total: Integer
        # @param List: 配置列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              messageforward_tmp = MessageForward.new
              messageforward_tmp.deserialize(i)
              @List << messageforward_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonitorDataByDate请求参数结构体
      class DescribeMonitorDataByDateRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间戳
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳 最多显示30天数据
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeMonitorDataByDate返回参数结构体
      class DescribeMonitorDataByDateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 统计数据列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              recordstatistic_tmp = RecordStatistic.new
              recordstatistic_tmp.deserialize(i)
              @Data << recordstatistic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePresetList请求参数结构体
      class DescribePresetListRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 视频通道唯一标识
        # @type ChannelId: String
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String

        attr_accessor :ChannelId, :DeviceId

        def initialize(channelid=nil, deviceid=nil)
          @ChannelId = channelid
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribePresetList返回参数结构体
      class DescribePresetListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 预置列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              presetitem_tmp = PresetItem.new
              presetitem_tmp.deserialize(i)
              @Data << presetitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordDatesByChannel请求参数结构体
      class DescribeRecordDatesByChannelRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String
        # @param Type: 1: 云端录制 2: 本地录制
        # @type Type: Integer
        # @param Limit: 限制量，默认200
        # @type Limit: Integer
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer

        attr_accessor :DeviceId, :ChannelId, :Type, :Limit, :Offset

        def initialize(deviceid=nil, channelid=nil, type=nil, limit=nil, offset=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
          @Type = type
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @Type = params['Type']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRecordDatesByChannel返回参数结构体
      class DescribeRecordDatesByChannelResponse < TencentCloud::Common::AbstractModel
        # @param Dates: 含有录像文件的日期列表
        # @type Dates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeRecordDatesByLive请求参数结构体
      class DescribeRecordDatesByLiveRequest < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 直播频道ID
        # @type LiveChannelId: String
        # @param Offset: 分页值，本地录制时参数无效
        # @type Offset: Integer
        # @param Limit: 限制值，本地录制时参数无效
        # @type Limit: Integer

        attr_accessor :LiveChannelId, :Offset, :Limit

        def initialize(livechannelid=nil, offset=nil, limit=nil)
          @LiveChannelId = livechannelid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRecordDatesByLive返回参数结构体
      class DescribeRecordDatesByLiveResponse < TencentCloud::Common::AbstractModel
        # @param Dates: 录制日期数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeRecordStreamData 复杂类型
      class DescribeRecordStreamData < TencentCloud::Common::AbstractModel
        # @param RtspAddr: Rtsp地址
        # @type RtspAddr: String
        # @param RtmpAddr: Rtmp地址
        # @type RtmpAddr: String
        # @param HlsAddr: Hls地址
        # @type HlsAddr: String
        # @param FlvAddr: Flv地址
        # @type FlvAddr: String
        # @param StreamId: 流Id
        # @type StreamId: String

        attr_accessor :RtspAddr, :RtmpAddr, :HlsAddr, :FlvAddr, :StreamId

        def initialize(rtspaddr=nil, rtmpaddr=nil, hlsaddr=nil, flvaddr=nil, streamid=nil)
          @RtspAddr = rtspaddr
          @RtmpAddr = rtmpaddr
          @HlsAddr = hlsaddr
          @FlvAddr = flvaddr
          @StreamId = streamid
        end

        def deserialize(params)
          @RtspAddr = params['RtspAddr']
          @RtmpAddr = params['RtmpAddr']
          @HlsAddr = params['HlsAddr']
          @FlvAddr = params['FlvAddr']
          @StreamId = params['StreamId']
        end
      end

      # DescribeRecordStream请求参数结构体
      class DescribeRecordStreamRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param ExpireTime: 流失效时间，UNIX时间戳，30天内
        # @type ExpireTime: Integer
        # @param RecordId: 录像文件ID
        # @type RecordId: String
        # @param StartTime: 录像流开始时间，当录像文件ID为空时有效，UNIX时间戳
        # @type StartTime: Integer
        # @param EndTime: 录像流结束时间，当录像文件iD为空时有效，UNIX时间戳
        # @type EndTime: Integer
        # @param ChannelId: 通道唯一标识（此接口升级为必填字段）
        # @type ChannelId: String

        attr_accessor :DeviceId, :ExpireTime, :RecordId, :StartTime, :EndTime, :ChannelId

        def initialize(deviceid=nil, expiretime=nil, recordid=nil, starttime=nil, endtime=nil, channelid=nil)
          @DeviceId = deviceid
          @ExpireTime = expiretime
          @RecordId = recordid
          @StartTime = starttime
          @EndTime = endtime
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ExpireTime = params['ExpireTime']
          @RecordId = params['RecordId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeRecordStream返回参数结构体
      class DescribeRecordStreamResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果
        # @type Data: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.DescribeRecordStreamData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeRecordStreamData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordingPlanById请求参数结构体
      class DescribeRecordingPlanByIdRequest < TencentCloud::Common::AbstractModel
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

      # DescribeRecordingPlanById返回参数结构体
      class DescribeRecordingPlanByIdResponse < TencentCloud::Common::AbstractModel
        # @param Plan: 录制计划详情
        # @type Plan: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.RecordPlanDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plan, :RequestId

        def initialize(plan=nil, requestid=nil)
          @Plan = plan
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plan'].nil?
            @Plan = RecordPlanDetail.new
            @Plan.deserialize(params['Plan'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordingPlans请求参数结构体
      class DescribeRecordingPlansRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRecordingPlans返回参数结构体
      class DescribeRecordingPlansResponse < TencentCloud::Common::AbstractModel
        # @param Plans: 录制计划详情·列表
        # @type Plans: Array
        # @param TotalCount: 录制计划总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              recordplandetail_tmp = RecordPlanDetail.new
              recordplandetail_tmp.deserialize(i)
              @Plans << recordplandetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ServerConfiguration.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScene请求参数结构体
      class DescribeSceneRequest < TencentCloud::Common::AbstractModel
        # @param IntId: 场景ID
        # @type IntId: Integer

        attr_accessor :IntId

        def initialize(intid=nil)
          @IntId = intid
        end

        def deserialize(params)
          @IntId = params['IntId']
        end
      end

      # DescribeScene返回参数结构体
      class DescribeSceneResponse < TencentCloud::Common::AbstractModel
        # @param IntId: 场景ID
        # @type IntId: Integer
        # @param RecordDuration: 录制时长(秒)
        # @type RecordDuration: Integer
        # @param SceneName: 场景名称
        # @type SceneName: String
        # @param SceneTrigger: 场景触发规则
        # @type SceneTrigger: String
        # @param StoreDuration: 存储时长 (天)
        # @type StoreDuration: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IntId, :RecordDuration, :SceneName, :SceneTrigger, :StoreDuration, :CreateTime, :UpdateTime, :Uin, :RequestId

        def initialize(intid=nil, recordduration=nil, scenename=nil, scenetrigger=nil, storeduration=nil, createtime=nil, updatetime=nil, uin=nil, requestid=nil)
          @IntId = intid
          @RecordDuration = recordduration
          @SceneName = scenename
          @SceneTrigger = scenetrigger
          @StoreDuration = storeduration
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Uin = uin
          @RequestId = requestid
        end

        def deserialize(params)
          @IntId = params['IntId']
          @RecordDuration = params['RecordDuration']
          @SceneName = params['SceneName']
          @SceneTrigger = params['SceneTrigger']
          @StoreDuration = params['StoreDuration']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Uin = params['Uin']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScenes请求参数结构体
      class DescribeScenesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 条数限制
        # @type Limit: Integer
        # @param Offset: 偏移
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeScenes返回参数结构体
      class DescribeScenesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 场景总数
        # @type Total: Integer
        # @param List: 场景列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :List, :RequestId

        def initialize(total=nil, list=nil, requestid=nil)
          @Total = total
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              sceneitem_tmp = SceneItem.new
              sceneitem_tmp.deserialize(i)
              @List << sceneitem_tmp
            end
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
        # 5. X-P2P分享流量: P2PFluxTotal
        # 6. X-P2P峰值带宽: P2PPeakValue
        # 7. RTMP推流路数(直播推流): LivePushTotal
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              statisticitem_tmp = StatisticItem.new
              statisticitem_tmp.deserialize(i)
              @Data << statisticitem_tmp
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
        # @type RecordingDevice: Integer
        # @param NonRecordingDevice: 非录制设备总数
        # @type NonRecordingDevice: Integer
        # @param WatchFlux: 观看流量总数。为直播观看流量与点播观看流量之和。单位：GB
        # @type WatchFlux: Float
        # @param StorageUsage: 累计有效存储容量总数。单位：GB
        # @type StorageUsage: Float
        # @param P2PFluxTotal: X-P2P分享流量。单位 Byte
        # @type P2PFluxTotal: Float
        # @param P2PPeakValue: X-P2P峰值带宽。 单位bps
        # @type P2PPeakValue: Float
        # @param LivePushTotal: RTMP推流路数 ( 直播推流)
        # @type LivePushTotal: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordingDevice, :NonRecordingDevice, :WatchFlux, :StorageUsage, :P2PFluxTotal, :P2PPeakValue, :LivePushTotal, :RequestId

        def initialize(recordingdevice=nil, nonrecordingdevice=nil, watchflux=nil, storageusage=nil, p2pfluxtotal=nil, p2ppeakvalue=nil, livepushtotal=nil, requestid=nil)
          @RecordingDevice = recordingdevice
          @NonRecordingDevice = nonrecordingdevice
          @WatchFlux = watchflux
          @StorageUsage = storageusage
          @P2PFluxTotal = p2pfluxtotal
          @P2PPeakValue = p2ppeakvalue
          @LivePushTotal = livepushtotal
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordingDevice = params['RecordingDevice']
          @NonRecordingDevice = params['NonRecordingDevice']
          @WatchFlux = params['WatchFlux']
          @StorageUsage = params['StorageUsage']
          @P2PFluxTotal = params['P2PFluxTotal']
          @P2PPeakValue = params['P2PPeakValue']
          @LivePushTotal = params['LivePushTotal']
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
        # @type GroupList: Array
        # @param TotalCount: 子分组总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              groupitem_tmp = GroupItem.new
              groupitem_tmp.deserialize(i)
              @GroupList << groupitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubscriptionStatus请求参数结构体
      class DescribeSubscriptionStatusRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String

        attr_accessor :DeviceId

        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeSubscriptionStatus返回参数结构体
      class DescribeSubscriptionStatusResponse < TencentCloud::Common::AbstractModel
        # @param AlarmStatus: 设备GB28181报警订阅状态 1：未开启订阅；2：已开启订阅
        # @type AlarmStatus: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmStatus, :RequestId

        def initialize(alarmstatus=nil, requestid=nil)
          @AlarmStatus = alarmstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @AlarmStatus = params['AlarmStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoListByChannel请求参数结构体
      class DescribeVideoListByChannelRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String
        # @param Type: 1: 云端录制 2: 本地录制
        # @type Type: Integer
        # @param Date: 指定某天。取值【YYYY-MM-DD】
        # 为空时默认查询最近一天的记录
        # @type Date: String
        # @param Limit: 限制量，默认2000
        # @type Limit: Integer
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer

        attr_accessor :DeviceId, :ChannelId, :Type, :Date, :Limit, :Offset

        def initialize(deviceid=nil, channelid=nil, type=nil, date=nil, limit=nil, offset=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
          @Type = type
          @Date = date
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @Type = params['Type']
          @Date = params['Date']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeVideoListByChannel返回参数结构体
      class DescribeVideoListByChannelResponse < TencentCloud::Common::AbstractModel
        # @param VideoList: 录像详情列表
        # @type VideoList: Array
        # @param TotalCount: 录像总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              recordtaskitem_tmp = RecordTaskItem.new
              recordtaskitem_tmp.deserialize(i)
              @VideoList << recordtaskitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoList请求参数结构体
      class DescribeVideoListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移
        # @type Offset: Integer
        # @param Limit: 限制
        # @type Limit: Integer
        # @param StartTime: 开始时间戳，秒级
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳，秒级
        # @type EndTime: Integer
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param StartRecordTime: 开始录制范围 开始
        # @type StartRecordTime: Integer
        # @param EndRecordTime: 开始录制范围 结束
        # @type EndRecordTime: Integer
        # @param StartExpireTime: 过期时间范围 开始
        # @type StartExpireTime: Integer
        # @param EndExpireTime: 过期时间范围 结束
        # @type EndExpireTime: Integer
        # @param StartFileSize: 文件大小范围 开始 单位byte
        # @type StartFileSize: Integer
        # @param EndFileSize: 文件大小范围 结束 单位byte
        # @type EndFileSize: Integer
        # @param IsRecording: 录制状态 99: 录制方已经回写状态 1: 开始录制了，等待回写 2: 已经到了时间模板的停止时间，在等待录制方回写
        # @type IsRecording: Integer
        # @param ChannelId: 通道ID默认必传
        # @type ChannelId: String
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param SceneId: 场景ID
        # @type SceneId: Integer
        # @param WarnId: 告警ID
        # @type WarnId: Integer
        # @param RecordType: 录制类型 1: 联动计划录制 2: 告警录制
        # @type RecordType: Array

        attr_accessor :Offset, :Limit, :StartTime, :EndTime, :DeviceId, :StartRecordTime, :EndRecordTime, :StartExpireTime, :EndExpireTime, :StartFileSize, :EndFileSize, :IsRecording, :ChannelId, :PlanId, :SceneId, :WarnId, :RecordType

        def initialize(offset=nil, limit=nil, starttime=nil, endtime=nil, deviceid=nil, startrecordtime=nil, endrecordtime=nil, startexpiretime=nil, endexpiretime=nil, startfilesize=nil, endfilesize=nil, isrecording=nil, channelid=nil, planid=nil, sceneid=nil, warnid=nil, recordtype=nil)
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @EndTime = endtime
          @DeviceId = deviceid
          @StartRecordTime = startrecordtime
          @EndRecordTime = endrecordtime
          @StartExpireTime = startexpiretime
          @EndExpireTime = endexpiretime
          @StartFileSize = startfilesize
          @EndFileSize = endfilesize
          @IsRecording = isrecording
          @ChannelId = channelid
          @PlanId = planid
          @SceneId = sceneid
          @WarnId = warnid
          @RecordType = recordtype
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DeviceId = params['DeviceId']
          @StartRecordTime = params['StartRecordTime']
          @EndRecordTime = params['EndRecordTime']
          @StartExpireTime = params['StartExpireTime']
          @EndExpireTime = params['EndExpireTime']
          @StartFileSize = params['StartFileSize']
          @EndFileSize = params['EndFileSize']
          @IsRecording = params['IsRecording']
          @ChannelId = params['ChannelId']
          @PlanId = params['PlanId']
          @SceneId = params['SceneId']
          @WarnId = params['WarnId']
          @RecordType = params['RecordType']
        end
      end

      # DescribeVideoList返回参数结构体
      class DescribeVideoListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param VideoList: 已废弃
        # @type VideoList: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.RecordTaskItem`
        # @param RecordList: 录像详情列表
        # @type RecordList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VideoList, :RecordList, :RequestId

        def initialize(totalcount=nil, videolist=nil, recordlist=nil, requestid=nil)
          @TotalCount = totalcount
          @VideoList = videolist
          @RecordList = recordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VideoList'].nil?
            @VideoList = RecordTaskItem.new
            @VideoList.deserialize(params['VideoList'])
          end
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              recordtaskitem_tmp = RecordTaskItem.new
              recordtaskitem_tmp.deserialize(i)
              @RecordList << recordtaskitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWarnMod请求参数结构体
      class DescribeWarnModRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWarnMod返回参数结构体
      class DescribeWarnModResponse < TencentCloud::Common::AbstractModel
        # @param Data: 告警类型
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeWarnings请求参数结构体
      class DescribeWarningsRequest < TencentCloud::Common::AbstractModel
        # @param OrderType: 1:创建时间倒序 2：创建时间升序 3：level倒序 4：leve升序
        # @type OrderType: Integer
        # @param DeviceId: 可选设备id
        # @type DeviceId: String
        # @param WarnLevelArray: 如果不传则查询所有，取值参见配置
        # @type WarnLevelArray: Array
        # @param WarnModeArray: 如果不传则查询所有，取值参见配置
        # @type WarnModeArray: Array
        # @param Offset: 不传认为是0
        # @type Offset: Integer
        # @param Limit: 不传认为是20
        # @type Limit: Integer
        # @param DateBegin: 形似：2021-05-21 00:00:00 .取值在当前日前30天内，不传默认是当前日前30天日期
        # @type DateBegin: String
        # @param DateEnd: 形似：2021-05-21 23:59:59 .取值在当前日前30天内，不传默认是当前日前30天日期
        # @type DateEnd: String

        attr_accessor :OrderType, :DeviceId, :WarnLevelArray, :WarnModeArray, :Offset, :Limit, :DateBegin, :DateEnd

        def initialize(ordertype=nil, deviceid=nil, warnlevelarray=nil, warnmodearray=nil, offset=nil, limit=nil, datebegin=nil, dateend=nil)
          @OrderType = ordertype
          @DeviceId = deviceid
          @WarnLevelArray = warnlevelarray
          @WarnModeArray = warnmodearray
          @Offset = offset
          @Limit = limit
          @DateBegin = datebegin
          @DateEnd = dateend
        end

        def deserialize(params)
          @OrderType = params['OrderType']
          @DeviceId = params['DeviceId']
          @WarnLevelArray = params['WarnLevelArray']
          @WarnModeArray = params['WarnModeArray']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DateBegin = params['DateBegin']
          @DateEnd = params['DateEnd']
        end
      end

      # DescribeWarnings返回参数结构体
      class DescribeWarningsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param Data: 告警列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Data, :RequestId

        def initialize(total=nil, data=nil, requestid=nil)
          @Total = total
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              warningsdata_tmp = WarningsData.new
              warningsdata_tmp.deserialize(i)
              @Data << warningsdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeXP2PData请求参数结构体
      class DescribeXP2PDataRequest < TencentCloud::Common::AbstractModel
        # @param P2PAppId: P2P应用ID
        # @type P2PAppId: String
        # @param From: 查询开始时间，时间戳秒
        # @type From: Integer
        # @param To: 查询结束时间，时间戳秒
        # @type To: Integer
        # @param P2PChannelId: P2P通路ID
        # @type P2PChannelId: String

        attr_accessor :P2PAppId, :From, :To, :P2PChannelId

        def initialize(p2pappid=nil, from=nil, to=nil, p2pchannelid=nil)
          @P2PAppId = p2pappid
          @From = from
          @To = to
          @P2PChannelId = p2pchannelid
        end

        def deserialize(params)
          @P2PAppId = params['P2PAppId']
          @From = params['From']
          @To = params['To']
          @P2PChannelId = params['P2PChannelId']
        end
      end

      # DescribeXP2PData返回参数结构体
      class DescribeXP2PDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: [log_time,cdn_bytes , p2p_bytes, online_people, stuck_times, stuck_people,request,request_success,request_fail,play_fail]
        # [时间戳,cdn流量(字节) , p2p流量(字节), 在线人数, 卡播次数, 卡播人数,起播请求次数,起播成功次数,起播失败次数,播放失败次数, pcdn cdn流量（字节), pcdn路由流量(字节), 上传流量(字节)]
        # [1481016480, 46118502414, 75144943171, 61691, 3853, 0,0,0,0,0, 0, 0, 0]
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type DeviceId: String
        # @param ChannelId: 通道唯一标识
        # @type ChannelId: String

        attr_accessor :DeviceId, :ChannelId

        def initialize(deviceid=nil, channelid=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
        end
      end

      # 查询设备统计返回值
      class DeviceMonitorValue < TencentCloud::Common::AbstractModel
        # @param Value: 统计值
        # @type Value: Float
        # @param Time: 统计时间
        # @type Time: Integer

        attr_accessor :Value, :Time

        def initialize(value=nil, time=nil)
          @Value = value
          @Time = time
        end

        def deserialize(params)
          @Value = params['Value']
          @Time = params['Time']
        end
      end

      # 设备事件列表
      class Events < TencentCloud::Common::AbstractModel
        # @param EventTime: 开始时间，秒级时间戳
        # @type EventTime: Integer
        # @param EventType: 事件类型 1:注册 2:心跳 4:录制异常 5:播放异常 6:流中断
        # @type EventType: Integer
        # @param EventDesc: 事件描述
        # @type EventDesc: String
        # @param DeviceType: 设备类型
        # @type DeviceType: Integer
        # @param DeviceAddress: 设备地址
        # @type DeviceAddress: String
        # @param DeviceId: 设备Id
        # @type DeviceId: String
        # @param ChannelId: 通道Id
        # @type ChannelId: String
        # @param EventLog: 事件日志
        # @type EventLog: String
        # @param DeviceName: 设备备注名称
        # @type DeviceName: String

        attr_accessor :EventTime, :EventType, :EventDesc, :DeviceType, :DeviceAddress, :DeviceId, :ChannelId, :EventLog, :DeviceName

        def initialize(eventtime=nil, eventtype=nil, eventdesc=nil, devicetype=nil, deviceaddress=nil, deviceid=nil, channelid=nil, eventlog=nil, devicename=nil)
          @EventTime = eventtime
          @EventType = eventtype
          @EventDesc = eventdesc
          @DeviceType = devicetype
          @DeviceAddress = deviceaddress
          @DeviceId = deviceid
          @ChannelId = channelid
          @EventLog = eventlog
          @DeviceName = devicename
        end

        def deserialize(params)
          @EventTime = params['EventTime']
          @EventType = params['EventType']
          @EventDesc = params['EventDesc']
          @DeviceType = params['DeviceType']
          @DeviceAddress = params['DeviceAddress']
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @EventLog = params['EventLog']
          @DeviceName = params['DeviceName']
        end
      end

      # GetRecordDatesByDev请求参数结构体
      class GetRecordDatesByDevRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param Limit: 限制量，默认200
        # @type Limit: Integer
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param ChannelId: 通道唯一标识，对于NVR设备，多通道IPC设备，设备编码与通道编码不一致的IPC设备，此字段为必填
        # @type ChannelId: String
        # @param Type: 1: 云端录制 2: 本地录制
        # @type Type: Integer

        attr_accessor :DeviceId, :Limit, :Offset, :ChannelId, :Type

        def initialize(deviceid=nil, limit=nil, offset=nil, channelid=nil, type=nil)
          @DeviceId = deviceid
          @Limit = limit
          @Offset = offset
          @ChannelId = channelid
          @Type = type
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ChannelId = params['ChannelId']
          @Type = params['Type']
        end
      end

      # GetRecordDatesByDev返回参数结构体
      class GetRecordDatesByDevResponse < TencentCloud::Common::AbstractModel
        # @param Dates: 含有录像文件的日期列表
        # @type Dates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type Plan: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.RecordPlanItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plan, :RequestId

        def initialize(plan=nil, requestid=nil)
          @Plan = plan
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plan'].nil?
            @Plan = RecordPlanItem.new
            @Plan.deserialize(params['Plan'])
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
        # @type Plan: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.RecordPlanItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plan, :RequestId

        def initialize(plan=nil, requestid=nil)
          @Plan = plan
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Plan'].nil?
            @Plan = RecordPlanItem.new
            @Plan.deserialize(params['Plan'])
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
        # @type Plans: Array
        # @param TotalCount: 录制计划总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              recordplanitem_tmp = RecordPlanItem.new
              recordplanitem_tmp.deserialize(i)
              @Plans << recordplanitem_tmp
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
        # @type Template: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.TimeTemplateItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId

        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = TimeTemplateItem.new
            @Template.deserialize(params['Template'])
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
        # @type Templates: Array
        # @param TotalCount: 时间模板总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              timetemplateitem_tmp = TimeTemplateItem.new
              timetemplateitem_tmp.deserialize(i)
              @Templates << timetemplateitem_tmp
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
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制量
        # @type Limit: Integer
        # @param ChannelId: 通道唯一标识，对于NVR设备，多通道IPC设备，设备编码与通道编码不一致的IPC设备，此字段为必填
        # @type ChannelId: String
        # @param LatestDay: 0：查询指定日期的录像；1：查询最近一天的录像；默认0
        # @type LatestDay: Integer
        # @param Date: 指定某天。取值【YYYY-MM-DD】
        # 为空时默认查询最近一天的记录
        # @type Date: String
        # @param Type: 1: 云端录制 2: 本地录制
        # @type Type: Integer

        attr_accessor :DeviceId, :Offset, :Limit, :ChannelId, :LatestDay, :Date, :Type

        def initialize(deviceid=nil, offset=nil, limit=nil, channelid=nil, latestday=nil, date=nil, type=nil)
          @DeviceId = deviceid
          @Offset = offset
          @Limit = limit
          @ChannelId = channelid
          @LatestDay = latestday
          @Date = date
          @Type = type
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ChannelId = params['ChannelId']
          @LatestDay = params['LatestDay']
          @Date = params['Date']
          @Type = params['Type']
        end
      end

      # GetVideoListByCon返回参数结构体
      class GetVideoListByConResponse < TencentCloud::Common::AbstractModel
        # @param VideoList: 录像详情列表
        # @type VideoList: Array
        # @param TotalCount: 录像总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              recordtaskitem_tmp = RecordTaskItem.new
              recordtaskitem_tmp.deserialize(i)
              @VideoList << recordtaskitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 分组下设备信息
      class GroupDeviceItem < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一标识
        # @type DeviceId: String
        # @param NickName: 设备名称
        # @type NickName: String
        # @param Status: 设备状态
        # @type Status: Integer
        # @param ExtraInformation: 扩展信息
        # @type ExtraInformation: String
        # @param DeviceType: 设备类型
        # @type DeviceType: Integer
        # @param RTSPUrl: rtsp地址
        # @type RTSPUrl: String
        # @param DeviceCode: 设备编码
        # @type DeviceCode: String
        # @param IsRecord: 是否存在录像
        # @type IsRecord: Integer
        # @param Recordable: 该设备是否可录制
        # @type Recordable: Integer
        # @param Protocol: 设备接入协议
        # @type Protocol: String
        # @param CreateTime: 设备创建时间
        # @type CreateTime: Integer
        # @param ChannelNum: 设备通道总数
        # @type ChannelNum: Integer
        # @param VideoChannelNum: 设备视频通道总数
        # @type VideoChannelNum: Integer

        attr_accessor :DeviceId, :NickName, :Status, :ExtraInformation, :DeviceType, :RTSPUrl, :DeviceCode, :IsRecord, :Recordable, :Protocol, :CreateTime, :ChannelNum, :VideoChannelNum

        def initialize(deviceid=nil, nickname=nil, status=nil, extrainformation=nil, devicetype=nil, rtspurl=nil, devicecode=nil, isrecord=nil, recordable=nil, protocol=nil, createtime=nil, channelnum=nil, videochannelnum=nil)
          @DeviceId = deviceid
          @NickName = nickname
          @Status = status
          @ExtraInformation = extrainformation
          @DeviceType = devicetype
          @RTSPUrl = rtspurl
          @DeviceCode = devicecode
          @IsRecord = isrecord
          @Recordable = recordable
          @Protocol = protocol
          @CreateTime = createtime
          @ChannelNum = channelnum
          @VideoChannelNum = videochannelnum
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
          @Protocol = params['Protocol']
          @CreateTime = params['CreateTime']
          @ChannelNum = params['ChannelNum']
          @VideoChannelNum = params['VideoChannelNum']
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
        # @type GroupStatus: Integer
        # @param Error: 设备不存在时产生的错误
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
        # @type GroupName: String
        # @param ParentId: 父分组ID
        # @type ParentId: String
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param GroupPath: 分组路径
        # @type GroupPath: String
        # @param GroupDescribe: 分组描述
        # @type GroupDescribe: String
        # @param DeviceNum: 分组绑定设备数
        # @type DeviceNum: Integer
        # @param SubGroupNum: 子分组数量
        # @type SubGroupNum: Integer
        # @param ExtraInformation: 分组附加信息
        # @type ExtraInformation: String
        # @param GroupType: 分组类型
        # @type GroupType: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param GroupStatus: 分组状态
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

      # 频道信息
      class LiveChannelInfo < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 频道ID
        # @type LiveChannelId: String
        # @param LiveChannelName: 频道名称
        # @type LiveChannelName: String
        # @param LiveChannelType: 频道类型
        # @type LiveChannelType: Integer
        # @param LiveStatus: 通道直播状态：1: 未推流，2: 推流中
        # @type LiveStatus: Integer
        # @param PushStreamAddress: 推流地址
        # @type PushStreamAddress: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String

        attr_accessor :LiveChannelId, :LiveChannelName, :LiveChannelType, :LiveStatus, :PushStreamAddress, :CreateTime, :UpdateTime

        def initialize(livechannelid=nil, livechannelname=nil, livechanneltype=nil, livestatus=nil, pushstreamaddress=nil, createtime=nil, updatetime=nil)
          @LiveChannelId = livechannelid
          @LiveChannelName = livechannelname
          @LiveChannelType = livechanneltype
          @LiveStatus = livestatus
          @PushStreamAddress = pushstreamaddress
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
          @LiveChannelName = params['LiveChannelName']
          @LiveChannelType = params['LiveChannelType']
          @LiveStatus = params['LiveStatus']
          @PushStreamAddress = params['PushStreamAddress']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 直播频道详情
      class LiveChannelItem < TencentCloud::Common::AbstractModel
        # @param ChannelId: 频道ID
        # @type ChannelId: String
        # @param ChannelName: 频道名称
        # @type ChannelName: String

        attr_accessor :ChannelId, :ChannelName

        def initialize(channelid=nil, channelname=nil)
          @ChannelId = channelid
          @ChannelName = channelname
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
        end
      end

      # 直播录制详情item
      class LiveRecordItem < TencentCloud::Common::AbstractModel
        # @param IntID: 录制文件自增ID
        # @type IntID: Integer
        # @param LiveChannelId: 直播频道ID
        # @type LiveChannelId: String
        # @param ExpectDeleteTime: 过期时间
        # @type ExpectDeleteTime: Integer
        # @param RecordTimeLen: 录制时长
        # @type RecordTimeLen: Integer
        # @param FileSize: 文件大小
        # @type FileSize: Integer
        # @param VideoUrl: 录制文件url
        # @type VideoUrl: String
        # @param RecordPlanId: 录制计划ID
        # @type RecordPlanId: String
        # @param StartTime: 录制开始时间
        # @type StartTime: Integer
        # @param EndTime: 录制结束时间
        # @type EndTime: Integer

        attr_accessor :IntID, :LiveChannelId, :ExpectDeleteTime, :RecordTimeLen, :FileSize, :VideoUrl, :RecordPlanId, :StartTime, :EndTime

        def initialize(intid=nil, livechannelid=nil, expectdeletetime=nil, recordtimelen=nil, filesize=nil, videourl=nil, recordplanid=nil, starttime=nil, endtime=nil)
          @IntID = intid
          @LiveChannelId = livechannelid
          @ExpectDeleteTime = expectdeletetime
          @RecordTimeLen = recordtimelen
          @FileSize = filesize
          @VideoUrl = videourl
          @RecordPlanId = recordplanid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @IntID = params['IntID']
          @LiveChannelId = params['LiveChannelId']
          @ExpectDeleteTime = params['ExpectDeleteTime']
          @RecordTimeLen = params['RecordTimeLen']
          @FileSize = params['FileSize']
          @VideoUrl = params['VideoUrl']
          @RecordPlanId = params['RecordPlanId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 直播录制计划详情
      class LiveRecordPlanItem < TencentCloud::Common::AbstractModel
        # @param PlanId: 计划ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlanId: String
        # @param PlanName: 计划名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlanName: String

        attr_accessor :PlanId, :PlanName

        def initialize(planid=nil, planname=nil)
          @PlanId = planid
          @PlanName = planname
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
        end
      end

      # 消息转发配置信息
      class MessageForward < TencentCloud::Common::AbstractModel
        # @param IntId: 配置ID
        # @type IntId: Integer
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param MessageType: json数组， 转发类型 1: 告警 2:GPS
        # @type MessageType: String
        # @param RegionId: 区域ID
        # @type RegionId: String
        # @param RegionName: 区域名称
        # @type RegionName: String
        # @param Instance: 实例ID
        # @type Instance: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param TopicId: kafka topic id
        # @type TopicId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param TopicName: topic 名称
        # @type TopicName: String

        attr_accessor :IntId, :Uin, :MessageType, :RegionId, :RegionName, :Instance, :InstanceName, :TopicId, :CreateTime, :UpdateTime, :TopicName

        def initialize(intid=nil, uin=nil, messagetype=nil, regionid=nil, regionname=nil, instance=nil, instancename=nil, topicid=nil, createtime=nil, updatetime=nil, topicname=nil)
          @IntId = intid
          @Uin = uin
          @MessageType = messagetype
          @RegionId = regionid
          @RegionName = regionname
          @Instance = instance
          @InstanceName = instancename
          @TopicId = topicid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TopicName = topicname
        end

        def deserialize(params)
          @IntId = params['IntId']
          @Uin = params['Uin']
          @MessageType = params['MessageType']
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @Instance = params['Instance']
          @InstanceName = params['InstanceName']
          @TopicId = params['TopicId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TopicName = params['TopicName']
        end
      end

      # ModifyBindPlanLiveChannel请求参数结构体
      class ModifyBindPlanLiveChannelRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 直播录制计划ID
        # @type PlanId: String
        # @param Type: 1: 绑定 2: 解绑
        # @type Type: Integer
        # @param LiveChannelIds: 直播频道ID列表
        # @type LiveChannelIds: Array

        attr_accessor :PlanId, :Type, :LiveChannelIds

        def initialize(planid=nil, type=nil, livechannelids=nil)
          @PlanId = planid
          @Type = type
          @LiveChannelIds = livechannelids
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Type = params['Type']
          @LiveChannelIds = params['LiveChannelIds']
        end
      end

      # ModifyBindPlanLiveChannel返回参数结构体
      class ModifyBindPlanLiveChannelResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBindRecordingPlan请求参数结构体
      class ModifyBindRecordingPlanRequest < TencentCloud::Common::AbstractModel
        # @param Type: 操作类型： 1-绑定设备 ；2-解绑设备
        # @type Type: Integer
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param Channels: 录制通道列表
        # @type Channels: Array

        attr_accessor :Type, :PlanId, :Channels

        def initialize(type=nil, planid=nil, channels=nil)
          @Type = type
          @PlanId = planid
          @Channels = channels
        end

        def deserialize(params)
          @Type = params['Type']
          @PlanId = params['PlanId']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelitem_tmp = ChannelItem.new
              channelitem_tmp.deserialize(i)
              @Channels << channelitem_tmp
            end
          end
        end
      end

      # ModifyBindRecordingPlan返回参数结构体
      class ModifyBindRecordingPlanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBindSceneChannels请求参数结构体
      class ModifyBindSceneChannelsRequest < TencentCloud::Common::AbstractModel
        # @param SceneId: 场景ID
        # @type SceneId: Integer
        # @param Type: 1: 绑定 2: 解绑
        # @type Type: Integer
        # @param Channels: 通道列表
        # @type Channels: Array

        attr_accessor :SceneId, :Type, :Channels

        def initialize(sceneid=nil, type=nil, channels=nil)
          @SceneId = sceneid
          @Type = type
          @Channels = channels
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @Type = params['Type']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelitem_tmp = ChannelItem.new
              channelitem_tmp.deserialize(i)
              @Channels << channelitem_tmp
            end
          end
        end
      end

      # ModifyBindSceneChannels返回参数结构体
      class ModifyBindSceneChannelsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBindSceneDevice请求参数结构体
      class ModifyBindSceneDeviceRequest < TencentCloud::Common::AbstractModel
        # @param SceneId: 场景ID
        # @type SceneId: Integer
        # @param Type: 1: 绑定 2: 解绑
        # @type Type: Integer
        # @param Devices: 设备列表
        # @type Devices: Array

        attr_accessor :SceneId, :Type, :Devices

        def initialize(sceneid=nil, type=nil, devices=nil)
          @SceneId = sceneid
          @Type = type
          @Devices = devices
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @Type = params['Type']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceitem_tmp = DeviceItem.new
              deviceitem_tmp.deserialize(i)
              @Devices << deviceitem_tmp
            end
          end
        end
      end

      # ModifyBindSceneDevice返回参数结构体
      class ModifyBindSceneDeviceResponse < TencentCloud::Common::AbstractModel
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
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyLiveChannel请求参数结构体
      class ModifyLiveChannelRequest < TencentCloud::Common::AbstractModel
        # @param LiveChannelId: 直播频道ID
        # @type LiveChannelId: String
        # @param LiveChannelName: 直播频道名
        # @type LiveChannelName: String

        attr_accessor :LiveChannelId, :LiveChannelName

        def initialize(livechannelid=nil, livechannelname=nil)
          @LiveChannelId = livechannelid
          @LiveChannelName = livechannelname
        end

        def deserialize(params)
          @LiveChannelId = params['LiveChannelId']
          @LiveChannelName = params['LiveChannelName']
        end
      end

      # ModifyLiveChannel返回参数结构体
      class ModifyLiveChannelResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLiveRecordPlan请求参数结构体
      class ModifyLiveRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param PlanName: 录制计划名
        # @type PlanName: String
        # @param TemplateId: 时间模板ID，固定直播时为必填
        # @type TemplateId: String

        attr_accessor :PlanId, :PlanName, :TemplateId

        def initialize(planid=nil, planname=nil, templateid=nil)
          @PlanId = planid
          @PlanName = planname
          @TemplateId = templateid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
        end
      end

      # ModifyLiveRecordPlan返回参数结构体
      class ModifyLiveRecordPlanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLiveVideo请求参数结构体
      class ModifyLiveVideoRequest < TencentCloud::Common::AbstractModel
        # @param IntIDs: 视频ID 列表, 大小限制(100)
        # @type IntIDs: Array
        # @param ExpireTime: 过期时间 秒 (-1: 为永不过期)
        # @type ExpireTime: Integer

        attr_accessor :IntIDs, :ExpireTime

        def initialize(intids=nil, expiretime=nil)
          @IntIDs = intids
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @IntIDs = params['IntIDs']
          @ExpireTime = params['ExpireTime']
        end
      end

      # ModifyLiveVideo返回参数结构体
      class ModifyLiveVideoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMessageForward请求参数结构体
      class ModifyMessageForwardRequest < TencentCloud::Common::AbstractModel
        # @param IntId: 配置ID
        # @type IntId: Integer
        # @param MessageType: json数组， 转发类型 1: 告警 2:GPS
        # @type MessageType: String

        attr_accessor :IntId, :MessageType

        def initialize(intid=nil, messagetype=nil)
          @IntId = intid
          @MessageType = messagetype
        end

        def deserialize(params)
          @IntId = params['IntId']
          @MessageType = params['MessageType']
        end
      end

      # ModifyMessageForward返回参数结构体
      class ModifyMessageForwardResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPreset请求参数结构体
      class ModifyPresetRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param PresetId: 预置位编码 范围1-8
        # @type PresetId: Integer
        # @param PresetName: 预制位名称
        # @type PresetName: String
        # @param DeviceId: 设备Id
        # @type DeviceId: String

        attr_accessor :ChannelId, :PresetId, :PresetName, :DeviceId

        def initialize(channelid=nil, presetid=nil, presetname=nil, deviceid=nil)
          @ChannelId = channelid
          @PresetId = presetid
          @PresetName = presetname
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @PresetId = params['PresetId']
          @PresetName = params['PresetName']
          @DeviceId = params['DeviceId']
        end
      end

      # ModifyPreset返回参数结构体
      class ModifyPresetResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRecordingPlan请求参数结构体
      class ModifyRecordingPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录制计划ID
        # @type PlanId: String
        # @param Name: 计划名称
        # @type Name: String
        # @param TimeTemplateId: 时间模板ID
        # @type TimeTemplateId: String

        attr_accessor :PlanId, :Name, :TimeTemplateId

        def initialize(planid=nil, name=nil, timetemplateid=nil)
          @PlanId = planid
          @Name = name
          @TimeTemplateId = timetemplateid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Name = params['Name']
          @TimeTemplateId = params['TimeTemplateId']
        end
      end

      # ModifyRecordingPlan返回参数结构体
      class ModifyRecordingPlanResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyScene请求参数结构体
      class ModifySceneRequest < TencentCloud::Common::AbstractModel
        # @param IntId: 场景ID
        # @type IntId: Integer
        # @param SceneName: 场景名称
        # @type SceneName: String
        # @param SceneTrigger: 触发条件
        # @type SceneTrigger: String
        # @param RecordDuration: 录制时长(秒)
        # @type RecordDuration: Integer

        attr_accessor :IntId, :SceneName, :SceneTrigger, :RecordDuration

        def initialize(intid=nil, scenename=nil, scenetrigger=nil, recordduration=nil)
          @IntId = intid
          @SceneName = scenename
          @SceneTrigger = scenetrigger
          @RecordDuration = recordduration
        end

        def deserialize(params)
          @IntId = params['IntId']
          @SceneName = params['SceneName']
          @SceneTrigger = params['SceneTrigger']
          @RecordDuration = params['RecordDuration']
        end
      end

      # ModifyScene返回参数结构体
      class ModifySceneResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubscriptionStatus请求参数结构体
      class ModifySubscriptionStatusRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param Status: 订阅状态 1：关闭订阅 2：开启订阅
        # @type Status: Integer
        # @param SubscriptionItem: 订阅类型 Alarm:告警订阅 Catalog:目录订阅 MobilePosition:移动位置订阅
        # @type SubscriptionItem: String

        attr_accessor :DeviceId, :Status, :SubscriptionItem

        def initialize(deviceid=nil, status=nil, subscriptionitem=nil)
          @DeviceId = deviceid
          @Status = status
          @SubscriptionItem = subscriptionitem
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Status = params['Status']
          @SubscriptionItem = params['SubscriptionItem']
        end
      end

      # ModifySubscriptionStatus返回参数结构体
      class ModifySubscriptionStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVideoInfo请求参数结构体
      class ModifyVideoInfoRequest < TencentCloud::Common::AbstractModel
        # @param InitIDs: 视频ID列表长度限制100内
        # @type InitIDs: Array
        # @param ExpireTime: 过期时间 时间戳 -1: 永不过期 0: 无效值
        # @type ExpireTime: Integer

        attr_accessor :InitIDs, :ExpireTime

        def initialize(initids=nil, expiretime=nil)
          @InitIDs = initids
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @InitIDs = params['InitIDs']
          @ExpireTime = params['ExpireTime']
        end
      end

      # ModifyVideoInfo返回参数结构体
      class ModifyVideoInfoResponse < TencentCloud::Common::AbstractModel
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

      # 预置位结构出参
      class PresetItem < TencentCloud::Common::AbstractModel
        # @param PresetId: 预置位ID
        # @type PresetId: Integer
        # @param PresetName: 预置位名称
        # @type PresetName: String
        # @param Status: 预置位状态 0:未设置预置位 1:已设置预置位 2:已设置预置位&看守位
        # @type Status: Integer
        # @param ResetTime: 预置位启用时的自动归位时间
        # @type ResetTime: Integer

        attr_accessor :PresetId, :PresetName, :Status, :ResetTime

        def initialize(presetid=nil, presetname=nil, status=nil, resettime=nil)
          @PresetId = presetid
          @PresetName = presetname
          @Status = status
          @ResetTime = resettime
        end

        def deserialize(params)
          @PresetId = params['PresetId']
          @PresetName = params['PresetName']
          @Status = params['Status']
          @ResetTime = params['ResetTime']
        end
      end

      # 录制计划详情
      class RecordPlanDetail < TencentCloud::Common::AbstractModel
        # @param PlanId: 计划ID
        # @type PlanId: String
        # @param Name: 计划名称
        # @type Name: String
        # @param TimeTemplateId: 时间模板ID
        # @type TimeTemplateId: String
        # @param TimeTemplateName: 时间模板名称
        # @type TimeTemplateName: String
        # @param Channels: 绑定的通道列表
        # @type Channels: Array
        # @param RecordStorageTime: 存储周期（天）
        # @type RecordStorageTime: Integer

        attr_accessor :PlanId, :Name, :TimeTemplateId, :TimeTemplateName, :Channels, :RecordStorageTime

        def initialize(planid=nil, name=nil, timetemplateid=nil, timetemplatename=nil, channels=nil, recordstoragetime=nil)
          @PlanId = planid
          @Name = name
          @TimeTemplateId = timetemplateid
          @TimeTemplateName = timetemplatename
          @Channels = channels
          @RecordStorageTime = recordstoragetime
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Name = params['Name']
          @TimeTemplateId = params['TimeTemplateId']
          @TimeTemplateName = params['TimeTemplateName']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelitem_tmp = ChannelItem.new
              channelitem_tmp.deserialize(i)
              @Channels << channelitem_tmp
            end
          end
          @RecordStorageTime = params['RecordStorageTime']
        end
      end

      # 录制计划详情
      class RecordPlanItem < TencentCloud::Common::AbstractModel
        # @param PlanId: 计划ID
        # @type PlanId: String
        # @param Name: 计划名称
        # @type Name: String
        # @param TimeTemplateId: 时间模板ID
        # @type TimeTemplateId: String
        # @param TimeTemplateName: 时间模板名称
        # @type TimeTemplateName: String
        # @param EventId: 录制类型
        # @type EventId: Integer
        # @param Devices: 绑定的设备列表
        # @type Devices: Array
        # @param RecordStorageTime: 录像存储天数
        # @type RecordStorageTime: Integer

        attr_accessor :PlanId, :Name, :TimeTemplateId, :TimeTemplateName, :EventId, :Devices, :RecordStorageTime

        def initialize(planid=nil, name=nil, timetemplateid=nil, timetemplatename=nil, eventid=nil, devices=nil, recordstoragetime=nil)
          @PlanId = planid
          @Name = name
          @TimeTemplateId = timetemplateid
          @TimeTemplateName = timetemplatename
          @EventId = eventid
          @Devices = devices
          @RecordStorageTime = recordstoragetime
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
              deviceitem_tmp = DeviceItem.new
              deviceitem_tmp.deserialize(i)
              @Devices << deviceitem_tmp
            end
          end
          @RecordStorageTime = params['RecordStorageTime']
        end
      end

      # 大盘统计-录像存储统计 出参RecordStatistic
      class RecordStatistic < TencentCloud::Common::AbstractModel
        # @param Time: 时间戳
        # @type Time: Integer
        # @param Value: 统计结果
        # @type Value: :class:`Tencentcloud::Iotvideoindustry.v20201201.models.RecordStatisticValue`

        attr_accessor :Time, :Value

        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          unless params['Value'].nil?
            @Value = RecordStatisticValue.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 大盘统计-录像存储统计 出参Value
      class RecordStatisticValue < TencentCloud::Common::AbstractModel
        # @param ExpectTimeLen: 期望执行时间 秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpectTimeLen: Integer
        # @param RecordTimeLen: 实际执行时间 秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordTimeLen: Integer
        # @param FileSize: 存储大小 G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Float

        attr_accessor :ExpectTimeLen, :RecordTimeLen, :FileSize

        def initialize(expecttimelen=nil, recordtimelen=nil, filesize=nil)
          @ExpectTimeLen = expecttimelen
          @RecordTimeLen = recordtimelen
          @FileSize = filesize
        end

        def deserialize(params)
          @ExpectTimeLen = params['ExpectTimeLen']
          @RecordTimeLen = params['RecordTimeLen']
          @FileSize = params['FileSize']
        end
      end

      # 普通设备的录像详情
      class RecordTaskItem < TencentCloud::Common::AbstractModel
        # @param RecordTaskId: 录像任务ID
        # @type RecordTaskId: String
        # @param RecordPlanId: 录制计划ID
        # @type RecordPlanId: String
        # @param StartTime: 本录制片段开始时间
        # @type StartTime: Integer
        # @param EndTime: 本录制片段结束时间
        # @type EndTime: Integer
        # @param EventId: 录制模式
        # @type EventId: Integer
        # @param VideoUrl: 本录制片段对应的录制文件URL
        # @type VideoUrl: String
        # @param RecordStatus: 本录制片段当前的录制状态
        # @type RecordStatus: Integer
        # @param SceneId: 场景ID
        # @type SceneId: Integer
        # @param WarnId: 告警ID
        # @type WarnId: Integer
        # @param RecordId: 录制id，NVR下属设备有效
        # @type RecordId: String

        attr_accessor :RecordTaskId, :RecordPlanId, :StartTime, :EndTime, :EventId, :VideoUrl, :RecordStatus, :SceneId, :WarnId, :RecordId

        def initialize(recordtaskid=nil, recordplanid=nil, starttime=nil, endtime=nil, eventid=nil, videourl=nil, recordstatus=nil, sceneid=nil, warnid=nil, recordid=nil)
          @RecordTaskId = recordtaskid
          @RecordPlanId = recordplanid
          @StartTime = starttime
          @EndTime = endtime
          @EventId = eventid
          @VideoUrl = videourl
          @RecordStatus = recordstatus
          @SceneId = sceneid
          @WarnId = warnid
          @RecordId = recordid
        end

        def deserialize(params)
          @RecordTaskId = params['RecordTaskId']
          @RecordPlanId = params['RecordPlanId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EventId = params['EventId']
          @VideoUrl = params['VideoUrl']
          @RecordStatus = params['RecordStatus']
          @SceneId = params['SceneId']
          @WarnId = params['WarnId']
          @RecordId = params['RecordId']
        end
      end

      # ResetWarning请求参数结构体
      class ResetWarningRequest < TencentCloud::Common::AbstractModel
        # @param Id: 告警ID
        # @type Id: Integer
        # @param Index: Es中告警ID
        # @type Index: String

        attr_accessor :Id, :Index

        def initialize(id=nil, index=nil)
          @Id = id
          @Index = index
        end

        def deserialize(params)
          @Id = params['Id']
          @Index = params['Index']
        end
      end

      # ResetWarning返回参数结构体
      class ResetWarningResponse < TencentCloud::Common::AbstractModel
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

      # 场景列表元素
      class SceneItem < TencentCloud::Common::AbstractModel
        # @param IntId: 场景ID
        # @type IntId: Integer
        # @param Uin: 用户UIN
        # @type Uin: String
        # @param SceneName: 场景名称
        # @type SceneName: String
        # @param SceneTrigger: 触发规则
        # @type SceneTrigger: String
        # @param RecordDuration: 录制时长 秒
        # @type RecordDuration: Integer
        # @param StoreDuration: 存储时长 天
        # @type StoreDuration: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String

        attr_accessor :IntId, :Uin, :SceneName, :SceneTrigger, :RecordDuration, :StoreDuration, :CreateTime, :UpdateTime

        def initialize(intid=nil, uin=nil, scenename=nil, scenetrigger=nil, recordduration=nil, storeduration=nil, createtime=nil, updatetime=nil)
          @IntId = intid
          @Uin = uin
          @SceneName = scenename
          @SceneTrigger = scenetrigger
          @RecordDuration = recordduration
          @StoreDuration = storeduration
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @IntId = params['IntId']
          @Uin = params['Uin']
          @SceneName = params['SceneName']
          @SceneTrigger = params['SceneTrigger']
          @RecordDuration = params['RecordDuration']
          @StoreDuration = params['StoreDuration']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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

      # 拉流地址，只有在推流情况下才有
      class StreamAddress < TencentCloud::Common::AbstractModel
        # @param StreamId: 流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamId: String
        # @param RtspAddr: rtsp流地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RtspAddr: String
        # @param RtmpAddr: rtmp流地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RtmpAddr: String
        # @param HlsAddr: hls流地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HlsAddr: String
        # @param FlvAddr: flv流地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlvAddr: String

        attr_accessor :StreamId, :RtspAddr, :RtmpAddr, :HlsAddr, :FlvAddr

        def initialize(streamid=nil, rtspaddr=nil, rtmpaddr=nil, hlsaddr=nil, flvaddr=nil)
          @StreamId = streamid
          @RtspAddr = rtspaddr
          @RtmpAddr = rtmpaddr
          @HlsAddr = hlsaddr
          @FlvAddr = flvaddr
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @RtspAddr = params['RtspAddr']
          @RtmpAddr = params['RtmpAddr']
          @HlsAddr = params['HlsAddr']
          @FlvAddr = params['FlvAddr']
        end
      end

      # 时间模板详情
      class TimeTemplateItem < TencentCloud::Common::AbstractModel
        # @param TemplateId: 时间模板ID
        # @type TemplateId: String
        # @param Name: 模板名称
        # @type Name: String
        # @param IsAllWeek: 是否全时录制，即7*24小时录制 0-否 1-是
        # @type IsAllWeek: Integer
        # @param Type: 是否为自定义模板 0-否 1-是
        # @type Type: Integer
        # @param TimeTemplateSpecs: 时间片段详情
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
              timetemplatespec_tmp = TimeTemplateSpec.new
              timetemplatespec_tmp.deserialize(i)
              @TimeTemplateSpecs << timetemplatespec_tmp
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
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              deviceitem_tmp = DeviceItem.new
              deviceitem_tmp.deserialize(i)
              @Devices << deviceitem_tmp
            end
          end
          @IsModifyDevices = params['IsModifyDevices']
        end
      end

      # UpdateRecordPlan返回参数结构体
      class UpdateRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              timetemplatespec_tmp = TimeTemplateSpec.new
              timetemplatespec_tmp.deserialize(i)
              @TimeTemplateSpecs << timetemplatespec_tmp
            end
          end
        end
      end

      # UpdateTimeTemplate返回参数结构体
      class UpdateTimeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Status: 操作结果，“OK”表示成功，其他表示失败。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 告警列表出参
      class WarningsData < TencentCloud::Common::AbstractModel
        # @param Id: 唯一ID
        # @type Id: Integer
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param WarnChannel: 告警通道
        # @type WarnChannel: String
        # @param WarnLevel: 告警级别 1: "一级警情", 2: "二级警情", 3: "三级警情", 4: "四级警情",
        # @type WarnLevel: Integer
        # @param WarnLevelName: 告警级别名称
        # @type WarnLevelName: String
        # @param WarnMode: 告警方式 2 设备报警 5 视频报警 6 设备故障报警
        # @type WarnMode: Integer
        # @param WarnModeName: 告警方式名称
        # @type WarnModeName: String
        # @param WarnType: 告警类型  2: {
        # 			Name: "设备报警",
        # 			WarnType: map[int]string{
        # 				1: "视频丢失报警",
        # 				2: "设备防拆报警",
        # 				3: "存储设备磁盘满报警",
        # 				4: "设备高温报警",
        # 				5: "设备低温报警",
        # 			},
        # 		},
        # 		5: {
        # 			Name: "视频报警",
        # 			WarnType: map[int]string{
        # 				1:  "人工视频报警",
        # 				2:  "运动目标检测报警",
        # 				3:  "遗留物检测报警",
        # 				4:  "物体移除检测报警",
        # 				5:  "绊线检测报警",
        # 				6:  "入侵检测报警",
        # 				7:  "逆行检测报警",
        # 				8:  "徘徊检测报警",
        # 				9:  "流量统计报警",
        # 				10: "密度检测报警",
        # 				11: "视频异常检测报警",
        # 				12: "快速移动报警",
        # 			},
        # 		},
        # 		6: {
        # 			Name: "设备故障报警",
        # 			WarnType: map[int]string{
        # 				1: "存储设备磁盘故障报警",
        # 				2: "存储设备风扇故障报警",
        # 			},
        # 		}
        # @type WarnType: Integer
        # @param Del: 是否删除
        # @type Del: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :DeviceId, :DeviceName, :WarnChannel, :WarnLevel, :WarnLevelName, :WarnMode, :WarnModeName, :WarnType, :Del, :CreateTime, :UpdateTime

        def initialize(id=nil, deviceid=nil, devicename=nil, warnchannel=nil, warnlevel=nil, warnlevelname=nil, warnmode=nil, warnmodename=nil, warntype=nil, del=nil, createtime=nil, updatetime=nil)
          @Id = id
          @DeviceId = deviceid
          @DeviceName = devicename
          @WarnChannel = warnchannel
          @WarnLevel = warnlevel
          @WarnLevelName = warnlevelname
          @WarnMode = warnmode
          @WarnModeName = warnmodename
          @WarnType = warntype
          @Del = del
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @WarnChannel = params['WarnChannel']
          @WarnLevel = params['WarnLevel']
          @WarnLevelName = params['WarnLevelName']
          @WarnMode = params['WarnMode']
          @WarnModeName = params['WarnModeName']
          @WarnType = params['WarnType']
          @Del = params['Del']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

    end
  end
end

