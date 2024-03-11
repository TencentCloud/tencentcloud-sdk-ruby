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
  module Weilingwith
    module V20230427
      # 动作信息
      class Action < TencentCloud::Common::AbstractModel
        # @param Id: 动作id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 动作名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 详细动作信息
      class ActionDetail < TencentCloud::Common::AbstractModel
        # @param Id: 动作id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 动作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ActionType: 动作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionType: String
        # @param ActionDesc: 动作说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionDesc: String
        # @param MsgType: 消息类型，orgin/custom/model
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgType: String
        # @param MsgContent: 消息内容,有效值为x-json:后的字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgContent: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param WID: 设备唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param LinkRuleSet: 关联故障列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkRuleSet: Array
        # @param SinkConfig: 动作下沉配置,有效值为x-json:后的字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SinkConfig: String

        attr_accessor :Id, :Name, :ActionType, :ActionDesc, :MsgType, :MsgContent, :CreateTime, :WID, :LinkRuleSet, :SinkConfig

        def initialize(id=nil, name=nil, actiontype=nil, actiondesc=nil, msgtype=nil, msgcontent=nil, createtime=nil, wid=nil, linkruleset=nil, sinkconfig=nil)
          @Id = id
          @Name = name
          @ActionType = actiontype
          @ActionDesc = actiondesc
          @MsgType = msgtype
          @MsgContent = msgcontent
          @CreateTime = createtime
          @WID = wid
          @LinkRuleSet = linkruleset
          @SinkConfig = sinkconfig
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @ActionType = params['ActionType']
          @ActionDesc = params['ActionDesc']
          @MsgType = params['MsgType']
          @MsgContent = params['MsgContent']
          @CreateTime = params['CreateTime']
          @WID = params['WID']
          unless params['LinkRuleSet'].nil?
            @LinkRuleSet = []
            params['LinkRuleSet'].each do |i|
              linkrule_tmp = LinkRule.new
              linkrule_tmp.deserialize(i)
              @LinkRuleSet << linkrule_tmp
            end
          end
          @SinkConfig = params['SinkConfig']
        end
      end

      # 动作对象
      class ActionObj < TencentCloud::Common::AbstractModel
        # @param Id: 动作id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 动作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 动作类型。（app/推送消息至应用-携带空间设备：无,appWithNearbyDevices/推送至应用-携带空间设备：携带,device/推送消息至设备-指定设备,nearbyDevices/推送消息至设备-事件所在范围内的设备,toAlarm/转换为告警,toNotification/转换为通知）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Desc: 动作说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param MsgType: 消息类型，orgin/custom/model
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgType: String
        # @param MsgContent: 消息内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MsgContent: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param SinkConfig: 动作下沉配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SinkConfig: String
        # @param ApplyDevice:  具体应用（appid）/具体设备（DIN/subID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyDevice: String

        attr_accessor :Id, :Name, :Type, :Desc, :MsgType, :MsgContent, :CreateTime, :SinkConfig, :ApplyDevice

        def initialize(id=nil, name=nil, type=nil, desc=nil, msgtype=nil, msgcontent=nil, createtime=nil, sinkconfig=nil, applydevice=nil)
          @Id = id
          @Name = name
          @Type = type
          @Desc = desc
          @MsgType = msgtype
          @MsgContent = msgcontent
          @CreateTime = createtime
          @SinkConfig = sinkconfig
          @ApplyDevice = applydevice
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Desc = params['Desc']
          @MsgType = params['MsgType']
          @MsgContent = params['MsgContent']
          @CreateTime = params['CreateTime']
          @SinkConfig = params['SinkConfig']
          @ApplyDevice = params['ApplyDevice']
        end
      end

      # AddAlarmProcessRecord请求参数结构体
      class AddAlarmProcessRecordRequest < TencentCloud::Common::AbstractModel
        # @param RecordSet: 处理记录项
        # @type RecordSet: Array
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ApplicationId: 非孪生平台外部应用appid
        # @type ApplicationId: Integer
        # @param ExtendOne: 此字段填写的是非孪生中台的用户id（多个用逗号分隔），如果是非孪生中台用户必填该字段
        # @type ExtendOne: String

        attr_accessor :RecordSet, :WorkspaceId, :ApplicationToken, :ApplicationId, :ExtendOne

        def initialize(recordset=nil, workspaceid=nil, applicationtoken=nil, applicationid=nil, extendone=nil)
          @RecordSet = recordset
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ApplicationId = applicationid
          @ExtendOne = extendone
        end

        def deserialize(params)
          unless params['RecordSet'].nil?
            @RecordSet = []
            params['RecordSet'].each do |i|
              processrecordinfo_tmp = ProcessRecordInfo.new
              processrecordinfo_tmp.deserialize(i)
              @RecordSet << processrecordinfo_tmp
            end
          end
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @ApplicationId = params['ApplicationId']
          @ExtendOne = params['ExtendOne']
        end
      end

      # AddAlarmProcessRecord返回参数结构体
      class AddAlarmProcessRecordResponse < TencentCloud::Common::AbstractModel
        # @param Result: 添加告警处理记录结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加设备信息
      class AddDeviceInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: Integer
        # @param SN: 设备sn序列号
        # @type SN: String
        # @param ParentWID: 父设备wid，不为空表示导入子设备
        # @type ParentWID: String
        # @param KeySource: 密钥来源：0-使用产品密钥 1-使用设备特有的密钥
        # @type KeySource: Integer

        attr_accessor :ProductId, :SN, :ParentWID, :KeySource

        def initialize(productid=nil, sn=nil, parentwid=nil, keysource=nil)
          @ProductId = productid
          @SN = sn
          @ParentWID = parentwid
          @KeySource = keysource
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @SN = params['SN']
          @ParentWID = params['ParentWID']
          @KeySource = params['KeySource']
        end
      end

      # 行政区划数据结构
      class AdministrationData < TencentCloud::Common::AbstractModel
        # @param AdministrationCode: 行政区划编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdministrationCode: String
        # @param AdministrationName: 行政区划名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdministrationName: String

        attr_accessor :AdministrationCode, :AdministrationName

        def initialize(administrationcode=nil, administrationname=nil)
          @AdministrationCode = administrationcode
          @AdministrationName = administrationname
        end

        def deserialize(params)
          @AdministrationCode = params['AdministrationCode']
          @AdministrationName = params['AdministrationName']
        end
      end

      # 行政区划详情
      class AdministrativeDetail < TencentCloud::Common::AbstractModel
        # @param AdministrativeTypeCode: 行政区域类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdministrativeTypeCode: String
        # @param AdministrativeCode: 行政区域编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdministrativeCode: String
        # @param AdministrativeName: 行政区域名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdministrativeName: String

        attr_accessor :AdministrativeTypeCode, :AdministrativeCode, :AdministrativeName

        def initialize(administrativetypecode=nil, administrativecode=nil, administrativename=nil)
          @AdministrativeTypeCode = administrativetypecode
          @AdministrativeCode = administrativecode
          @AdministrativeName = administrativename
        end

        def deserialize(params)
          @AdministrativeTypeCode = params['AdministrativeTypeCode']
          @AdministrativeCode = params['AdministrativeCode']
          @AdministrativeName = params['AdministrativeName']
        end
      end

      # 告警信息
      class AlarmInfo < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: Integer
        # @param Id: 告警ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Status: 告警状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Time: 告警时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param Type: 告警业务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param TypeName: 告警业务类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeName: String
        # @param SubType: 子告警类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubType: String
        # @param SubTypeName: 子告警类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubTypeName: String
        # @param Level: 告警级别id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param LevelName: 告警级别名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LevelName: String
        # @param AppId: 上报应用appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param WID: 设备wid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param DeviceName: 设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param Position: 空间位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: String
        # @param ReportImg: 上报图片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportImg: :class:`Tencentcloud::Weilingwith.v20230427.models.ReportImg`
        # @param Desc: 告警描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param HandlePersonSet: 处理人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HandlePersonSet: Array
        # @param HandleRecordSet: 处理记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HandleRecordSet: Array
        # @param Extend: 扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extend: String
        # @param ExtendOne: 应用扩展字段1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendOne: String
        # @param ExtendTwo: 应用扩展字段2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendTwo: String
        # @param Echo: 应用透传字段,有效字段为x-json后的字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Echo: String

        attr_accessor :WorkspaceId, :Id, :Status, :Time, :Type, :TypeName, :SubType, :SubTypeName, :Level, :LevelName, :AppId, :WID, :DeviceName, :Position, :ReportImg, :Desc, :HandlePersonSet, :HandleRecordSet, :Extend, :ExtendOne, :ExtendTwo, :Echo

        def initialize(workspaceid=nil, id=nil, status=nil, time=nil, type=nil, typename=nil, subtype=nil, subtypename=nil, level=nil, levelname=nil, appid=nil, wid=nil, devicename=nil, position=nil, reportimg=nil, desc=nil, handlepersonset=nil, handlerecordset=nil, extend=nil, extendone=nil, extendtwo=nil, echo=nil)
          @WorkspaceId = workspaceid
          @Id = id
          @Status = status
          @Time = time
          @Type = type
          @TypeName = typename
          @SubType = subtype
          @SubTypeName = subtypename
          @Level = level
          @LevelName = levelname
          @AppId = appid
          @WID = wid
          @DeviceName = devicename
          @Position = position
          @ReportImg = reportimg
          @Desc = desc
          @HandlePersonSet = handlepersonset
          @HandleRecordSet = handlerecordset
          @Extend = extend
          @ExtendOne = extendone
          @ExtendTwo = extendtwo
          @Echo = echo
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @Id = params['Id']
          @Status = params['Status']
          @Time = params['Time']
          @Type = params['Type']
          @TypeName = params['TypeName']
          @SubType = params['SubType']
          @SubTypeName = params['SubTypeName']
          @Level = params['Level']
          @LevelName = params['LevelName']
          @AppId = params['AppId']
          @WID = params['WID']
          @DeviceName = params['DeviceName']
          @Position = params['Position']
          unless params['ReportImg'].nil?
            @ReportImg = ReportImg.new
            @ReportImg.deserialize(params['ReportImg'])
          end
          @Desc = params['Desc']
          unless params['HandlePersonSet'].nil?
            @HandlePersonSet = []
            params['HandlePersonSet'].each do |i|
              handlerpersoninfo_tmp = HandlerPersonInfo.new
              handlerpersoninfo_tmp.deserialize(i)
              @HandlePersonSet << handlerpersoninfo_tmp
            end
          end
          unless params['HandleRecordSet'].nil?
            @HandleRecordSet = []
            params['HandleRecordSet'].each do |i|
              handlerecordinfo_tmp = HandleRecordInfo.new
              handlerecordinfo_tmp.deserialize(i)
              @HandleRecordSet << handlerecordinfo_tmp
            end
          end
          @Extend = params['Extend']
          @ExtendOne = params['ExtendOne']
          @ExtendTwo = params['ExtendTwo']
          @Echo = params['Echo']
        end
      end

      # 告警级别详情
      class AlarmLevelInfo < TencentCloud::Common::AbstractModel
        # @param LevelId: 级别id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LevelId: Integer
        # @param LevelName: 级别名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LevelName: String

        attr_accessor :LevelId, :LevelName

        def initialize(levelid=nil, levelname=nil)
          @LevelId = levelid
          @LevelName = levelname
        end

        def deserialize(params)
          @LevelId = params['LevelId']
          @LevelName = params['LevelName']
        end
      end

      # 告警状态返回结构体
      class AlarmStatusData < TencentCloud::Common::AbstractModel
        # @param StatusID: 告警状态ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusID: String
        # @param StatusName: 告警状态名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param StatusType: 告警状态类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusType: String

        attr_accessor :StatusID, :StatusName, :StatusType

        def initialize(statusid=nil, statusname=nil, statustype=nil)
          @StatusID = statusid
          @StatusName = statusname
          @StatusType = statustype
        end

        def deserialize(params)
          @StatusID = params['StatusID']
          @StatusName = params['StatusName']
          @StatusType = params['StatusType']
        end
      end

      # 告警类型详情信息
      class AlarmTypeDetailInfo < TencentCloud::Common::AbstractModel
        # @param Id: 告警类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param ParentId: 父节点id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentId: Integer
        # @param Type: 0-标准告警类型，1-自定义告警类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Name: 告警名称类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param EnglishName: 告警类型英文名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnglishName: String

        attr_accessor :Id, :ParentId, :Type, :Name, :EnglishName

        def initialize(id=nil, parentid=nil, type=nil, name=nil, englishname=nil)
          @Id = id
          @ParentId = parentid
          @Type = type
          @Name = name
          @EnglishName = englishname
        end

        def deserialize(params)
          @Id = params['Id']
          @ParentId = params['ParentId']
          @Type = params['Type']
          @Name = params['Name']
          @EnglishName = params['EnglishName']
        end
      end

      # 告警类型
      class AlarmTypeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 告警父类型
        # @type Type: String
        # @param SubType: 告警子类型(如果传告警子类型，则必传父类型)
        # @type SubType: String

        attr_accessor :Type, :SubType

        def initialize(type=nil, subtype=nil)
          @Type = type
          @SubType = subtype
        end

        def deserialize(params)
          @Type = params['Type']
          @SubType = params['SubType']
        end
      end

      # API参数信息
      class ApiContent < TencentCloud::Common::AbstractModel
        # @param Id: 所属API的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 参数名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 参数类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Dynamic: 是否为动态值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dynamic: Boolean
        # @param Required: 是否必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Required: Boolean
        # @param Value: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param DefaultValue: 默认值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String

        attr_accessor :Id, :Name, :Type, :Dynamic, :Required, :Value, :DefaultValue

        def initialize(id=nil, name=nil, type=nil, dynamic=nil, required=nil, value=nil, defaultvalue=nil)
          @Id = id
          @Name = name
          @Type = type
          @Dynamic = dynamic
          @Required = required
          @Value = value
          @DefaultValue = defaultvalue
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Dynamic = params['Dynamic']
          @Required = params['Required']
          @Value = params['Value']
          @DefaultValue = params['DefaultValue']
        end
      end

      # API描述
      class ApiInfo < TencentCloud::Common::AbstractModel
        # @param ApiId: API的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param Name: API名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AppId: API所属应用的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param WorkspaceId: API所属的项目空间的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param PoiCode: API所属目录的编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoiCode: String
        # @param Type:  接口分类0. 其他服务 1. IOT服务 2. 空间服务 3.微应用服务 4.场景服务 5.AI算法服务 6.任务算法服务 7.第三方服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param DataAudit: 数据授权 0:否 1:是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataAudit: Integer
        # @param ApplyAudit: 是否需要申请 0:否 1:是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyAudit: Integer
        # @param Description: API详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Address: API地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Method: 请求方法类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param Status: API状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param PreviewUrl: API预览地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreviewUrl: String
        # @param QueryParams: query参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryParams: Array
        # @param PathParams: 路径参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathParams: Array
        # @param RequestHeaders: 请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestHeaders: Array
        # @param ResponseHeaders: 响应头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseHeaders: Array
        # @param IsCommonSpace: 是否为公共空间接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCommonSpace: Boolean
        # @param Body: 请求体（base64编码）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String
        # @param ResponseBody: 响应体（base64编码）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseBody: String
        # @param Style: 接口方式 1.http 2消息通知服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Style: Integer

        attr_accessor :ApiId, :Name, :AppId, :WorkspaceId, :PoiCode, :Type, :DataAudit, :ApplyAudit, :Description, :Address, :Method, :Status, :PreviewUrl, :QueryParams, :PathParams, :RequestHeaders, :ResponseHeaders, :IsCommonSpace, :Body, :ResponseBody, :Style

        def initialize(apiid=nil, name=nil, appid=nil, workspaceid=nil, poicode=nil, type=nil, dataaudit=nil, applyaudit=nil, description=nil, address=nil, method=nil, status=nil, previewurl=nil, queryparams=nil, pathparams=nil, requestheaders=nil, responseheaders=nil, iscommonspace=nil, body=nil, responsebody=nil, style=nil)
          @ApiId = apiid
          @Name = name
          @AppId = appid
          @WorkspaceId = workspaceid
          @PoiCode = poicode
          @Type = type
          @DataAudit = dataaudit
          @ApplyAudit = applyaudit
          @Description = description
          @Address = address
          @Method = method
          @Status = status
          @PreviewUrl = previewurl
          @QueryParams = queryparams
          @PathParams = pathparams
          @RequestHeaders = requestheaders
          @ResponseHeaders = responseheaders
          @IsCommonSpace = iscommonspace
          @Body = body
          @ResponseBody = responsebody
          @Style = style
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @Name = params['Name']
          @AppId = params['AppId']
          @WorkspaceId = params['WorkspaceId']
          @PoiCode = params['PoiCode']
          @Type = params['Type']
          @DataAudit = params['DataAudit']
          @ApplyAudit = params['ApplyAudit']
          @Description = params['Description']
          @Address = params['Address']
          @Method = params['Method']
          @Status = params['Status']
          @PreviewUrl = params['PreviewUrl']
          unless params['QueryParams'].nil?
            @QueryParams = []
            params['QueryParams'].each do |i|
              apicontent_tmp = ApiContent.new
              apicontent_tmp.deserialize(i)
              @QueryParams << apicontent_tmp
            end
          end
          unless params['PathParams'].nil?
            @PathParams = []
            params['PathParams'].each do |i|
              apicontent_tmp = ApiContent.new
              apicontent_tmp.deserialize(i)
              @PathParams << apicontent_tmp
            end
          end
          unless params['RequestHeaders'].nil?
            @RequestHeaders = []
            params['RequestHeaders'].each do |i|
              apicontent_tmp = ApiContent.new
              apicontent_tmp.deserialize(i)
              @RequestHeaders << apicontent_tmp
            end
          end
          unless params['ResponseHeaders'].nil?
            @ResponseHeaders = []
            params['ResponseHeaders'].each do |i|
              apicontent_tmp = ApiContent.new
              apicontent_tmp.deserialize(i)
              @ResponseHeaders << apicontent_tmp
            end
          end
          @IsCommonSpace = params['IsCommonSpace']
          @Body = params['Body']
          @ResponseBody = params['ResponseBody']
          @Style = params['Style']
        end
      end

      # API列表
      class ApiInfoList < TencentCloud::Common::AbstractModel
        # @param ApiInfo: API列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiInfo: Array
        # @param TotalCount: 数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :ApiInfo, :TotalCount

        def initialize(apiinfo=nil, totalcount=nil)
          @ApiInfo = apiinfo
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['ApiInfo'].nil?
            @ApiInfo = []
            params['ApiInfo'].each do |i|
              apiinfo_tmp = ApiInfo.new
              apiinfo_tmp.deserialize(i)
              @ApiInfo << apiinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 应用描述
      class ApplicationInfo < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用分配的appId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationId: String
        # @param Name: 应用中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Address: 应用地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param ApplicationLogo: 应用logo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationLogo: :class:`Tencentcloud::Weilingwith.v20230427.models.ApplicationLogo`
        # @param Type: 应用类型，0:saas应用 1:平台应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param EnglishName: engine
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnglishName: String
        # @param Description: 能源管理应用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :ApplicationId, :Name, :Address, :ApplicationLogo, :Type, :EnglishName, :Description

        def initialize(applicationid=nil, name=nil, address=nil, applicationlogo=nil, type=nil, englishname=nil, description=nil)
          @ApplicationId = applicationid
          @Name = name
          @Address = address
          @ApplicationLogo = applicationlogo
          @Type = type
          @EnglishName = englishname
          @Description = description
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @Name = params['Name']
          @Address = params['Address']
          unless params['ApplicationLogo'].nil?
            @ApplicationLogo = ApplicationLogo.new
            @ApplicationLogo.deserialize(params['ApplicationLogo'])
          end
          @Type = params['Type']
          @EnglishName = params['EnglishName']
          @Description = params['Description']
        end
      end

      # 应用列表
      class ApplicationList < TencentCloud::Common::AbstractModel
        # @param ApplicationInfoList: 应用列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationInfoList: Array
        # @param TotalCount: 当前查询条件命中的数据总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: String

        attr_accessor :ApplicationInfoList, :TotalCount

        def initialize(applicationinfolist=nil, totalcount=nil)
          @ApplicationInfoList = applicationinfolist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['ApplicationInfoList'].nil?
            @ApplicationInfoList = []
            params['ApplicationInfoList'].each do |i|
              applicationinfo_tmp = ApplicationInfo.new
              applicationinfo_tmp.deserialize(i)
              @ApplicationInfoList << applicationinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 应用logo
      class ApplicationLogo < TencentCloud::Common::AbstractModel
        # @param FileId: logo图片对应的fileId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param Url: logo图片地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :FileId, :Url

        def initialize(fileid=nil, url=nil)
          @FileId = fileid
          @Url = url
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Url = params['Url']
        end
      end

      # 应用Token令牌信息
      class ApplicationTokenInfo < TencentCloud::Common::AbstractModel
        # @param Token: 应用申请调用API的令牌
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Token: String

        attr_accessor :Token

        def initialize(token=nil)
          @Token = token
        end

        def deserialize(params)
          @Token = params['Token']
        end
      end

      # BatchCreateDevice请求参数结构体
      class BatchCreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param AddDeviceSet: 设备信息项
        # @type AddDeviceSet: Array
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :AddDeviceSet, :ApplicationToken

        def initialize(workspaceid=nil, adddeviceset=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @AddDeviceSet = adddeviceset
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['AddDeviceSet'].nil?
            @AddDeviceSet = []
            params['AddDeviceSet'].each do |i|
              adddeviceinfo_tmp = AddDeviceInfo.new
              adddeviceinfo_tmp.deserialize(i)
              @AddDeviceSet << adddeviceinfo_tmp
            end
          end
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # 批量新增设备接口返回结果
      class BatchCreateDeviceRes < TencentCloud::Common::AbstractModel
        # @param SuccessSet: 新增成功的设备列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessSet: Array
        # @param FailSet: 新增失败的设备列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailSet: Array

        attr_accessor :SuccessSet, :FailSet

        def initialize(successset=nil, failset=nil)
          @SuccessSet = successset
          @FailSet = failset
        end

        def deserialize(params)
          unless params['SuccessSet'].nil?
            @SuccessSet = []
            params['SuccessSet'].each do |i|
              createdevicesucceeded_tmp = CreateDeviceSucceeded.new
              createdevicesucceeded_tmp.deserialize(i)
              @SuccessSet << createdevicesucceeded_tmp
            end
          end
          unless params['FailSet'].nil?
            @FailSet = []
            params['FailSet'].each do |i|
              createdevicefailed_tmp = CreateDeviceFailed.new
              createdevicefailed_tmp.deserialize(i)
              @FailSet << createdevicefailed_tmp
            end
          end
        end
      end

      # BatchCreateDevice返回参数结构体
      class BatchCreateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 批量新增设备返回结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.BatchCreateDeviceRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = BatchCreateDeviceRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchKillAlarm请求参数结构体
      class BatchKillAlarmRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 告警开始时间，必填,时间戳秒
        # @type BeginTime: Integer
        # @param EndTime: 告警结束时间，必填，时间戳秒
        # @type EndTime: Integer
        # @param StatusSet: 告警状态: unprocessed processing
        # @type StatusSet: Array
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param UserId: 当前操作用户id
        # @type UserId: String
        # @param UserName: 当前操作用户名称
        # @type UserName: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ProcessorId: 当前告警处理人，填孪生中台用户id,多个用逗号分隔
        # @type ProcessorId: String
        # @param AlarmTypeSet: 告警子类型(如果传告警子类型，则必传父类型)
        # @type AlarmTypeSet: Array
        # @param LevelSet: 告警级别,包括1~5
        # @type LevelSet: Array
        # @param WIDSet: 设备id
        # @type WIDSet: Array
        # @param IdSet: 告警id
        # @type IdSet: Array
        # @param Desc: 告警处理的说明
        # @type Desc: String

        attr_accessor :BeginTime, :EndTime, :StatusSet, :WorkspaceId, :UserId, :UserName, :ApplicationToken, :ProcessorId, :AlarmTypeSet, :LevelSet, :WIDSet, :IdSet, :Desc

        def initialize(begintime=nil, endtime=nil, statusset=nil, workspaceid=nil, userid=nil, username=nil, applicationtoken=nil, processorid=nil, alarmtypeset=nil, levelset=nil, widset=nil, idset=nil, desc=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @StatusSet = statusset
          @WorkspaceId = workspaceid
          @UserId = userid
          @UserName = username
          @ApplicationToken = applicationtoken
          @ProcessorId = processorid
          @AlarmTypeSet = alarmtypeset
          @LevelSet = levelset
          @WIDSet = widset
          @IdSet = idset
          @Desc = desc
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @StatusSet = params['StatusSet']
          @WorkspaceId = params['WorkspaceId']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @ApplicationToken = params['ApplicationToken']
          @ProcessorId = params['ProcessorId']
          unless params['AlarmTypeSet'].nil?
            @AlarmTypeSet = []
            params['AlarmTypeSet'].each do |i|
              alarmtypeinfo_tmp = AlarmTypeInfo.new
              alarmtypeinfo_tmp.deserialize(i)
              @AlarmTypeSet << alarmtypeinfo_tmp
            end
          end
          @LevelSet = params['LevelSet']
          @WIDSet = params['WIDSet']
          @IdSet = params['IdSet']
          @Desc = params['Desc']
        end
      end

      # BatchKillAlarm返回参数结构体
      class BatchKillAlarmResponse < TencentCloud::Common::AbstractModel
        # @param Result: 批量消警结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchReportAppMessage请求参数结构体
      class BatchReportAppMessageRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ReportSet: 消息上报请求列表
        # @type ReportSet: Array

        attr_accessor :WorkspaceId, :ApplicationToken, :ReportSet

        def initialize(workspaceid=nil, applicationtoken=nil, reportset=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ReportSet = reportset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          unless params['ReportSet'].nil?
            @ReportSet = []
            params['ReportSet'].each do |i|
              reportappmessage_tmp = ReportAppMessage.new
              reportappmessage_tmp.deserialize(i)
              @ReportSet << reportappmessage_tmp
            end
          end
        end
      end

      # 批量消息上报结果
      class BatchReportAppMessageRes < TencentCloud::Common::AbstractModel
        # @param TotalElements: 上报数量

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalElements: Integer
        # @param Commit: 提交数量（推送成功）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Commit: Integer
        # @param SpanMap: 消息推送结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpanMap: Array

        attr_accessor :TotalElements, :Commit, :SpanMap

        def initialize(totalelements=nil, commit=nil, spanmap=nil)
          @TotalElements = totalelements
          @Commit = commit
          @SpanMap = spanmap
        end

        def deserialize(params)
          @TotalElements = params['TotalElements']
          @Commit = params['Commit']
          unless params['SpanMap'].nil?
            @SpanMap = []
            params['SpanMap'].each do |i|
              reportmsgres_tmp = ReportMsgRes.new
              reportmsgres_tmp.deserialize(i)
              @SpanMap << reportmsgres_tmp
            end
          end
        end
      end

      # BatchReportAppMessage返回参数结构体
      class BatchReportAppMessageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 批量消息上报结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.BatchReportAppMessageRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = BatchReportAppMessageRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 建筑列表响应体
      class BuildingListRes < TencentCloud::Common::AbstractModel
        # @param BuildingProfileList: 建筑列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingProfileList: Array

        attr_accessor :BuildingProfileList

        def initialize(buildingprofilelist=nil)
          @BuildingProfileList = buildingprofilelist
        end

        def deserialize(params)
          unless params['BuildingProfileList'].nil?
            @BuildingProfileList = []
            params['BuildingProfileList'].each do |i|
              buildingprofile_tmp = BuildingProfile.new
              buildingprofile_tmp.deserialize(i)
              @BuildingProfileList << buildingprofile_tmp
            end
          end
        end
      end

      # 建筑模型信息
      class BuildingModel < TencentCloud::Common::AbstractModel
        # @param ElementId: 构件ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementId: String
        # @param ElementName: 构件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementName: String
        # @param ModelType: 模型类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelType: String
        # @param ModelUrl: 模型URL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelUrl: String

        attr_accessor :ElementId, :ElementName, :ModelType, :ModelUrl

        def initialize(elementid=nil, elementname=nil, modeltype=nil, modelurl=nil)
          @ElementId = elementid
          @ElementName = elementname
          @ModelType = modeltype
          @ModelUrl = modelurl
        end

        def deserialize(params)
          @ElementId = params['ElementId']
          @ElementName = params['ElementName']
          @ModelType = params['ModelType']
          @ModelUrl = params['ModelUrl']
        end
      end

      # 建模模型信息响应体
      class BuildingModelRes < TencentCloud::Common::AbstractModel
        # @param Models: 建模模型信息出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Models: Array

        attr_accessor :Models

        def initialize(models=nil)
          @Models = models
        end

        def deserialize(params)
          unless params['Models'].nil?
            @Models = []
            params['Models'].each do |i|
              buildingmodel_tmp = BuildingModel.new
              buildingmodel_tmp.deserialize(i)
              @Models << buildingmodel_tmp
            end
          end
        end
      end

      # 建筑概要信息
      class BuildingProfile < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingId: String
        # @param BuildingName: 建筑名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingName: String
        # @param SpaceCode: 空间编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceCode: String
        # @param Longitude: 经度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Longitude: Float
        # @param Latitude: 纬度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Latitude: Float
        # @param Address: 地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String

        attr_accessor :BuildingId, :BuildingName, :SpaceCode, :Longitude, :Latitude, :Address

        def initialize(buildingid=nil, buildingname=nil, spacecode=nil, longitude=nil, latitude=nil, address=nil)
          @BuildingId = buildingid
          @BuildingName = buildingname
          @SpaceCode = spacecode
          @Longitude = longitude
          @Latitude = latitude
          @Address = address
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @BuildingName = params['BuildingName']
          @SpaceCode = params['SpaceCode']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
          @Address = params['Address']
        end
      end

      # 查询建筑信息响应体
      class BuildingProfileRes < TencentCloud::Common::AbstractModel
        # @param BuildingProfile: 建筑概要信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingProfile: :class:`Tencentcloud::Weilingwith.v20230427.models.BuildingProfile`

        attr_accessor :BuildingProfile

        def initialize(buildingprofile=nil)
          @BuildingProfile = buildingprofile
        end

        def deserialize(params)
          unless params['BuildingProfile'].nil?
            @BuildingProfile = BuildingProfile.new
            @BuildingProfile.deserialize(params['BuildingProfile'])
          end
        end
      end

      # 视频扩展信息结果
      class CameraExtendInfoRes < TencentCloud::Common::AbstractModel
        # @param SaveType: 存储方式 (nvr或cosmtav)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SaveType: String
        # @param SaveDay: 云存储天数（save_type是cosmtav时这个参数才有效）

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SaveDay: Integer
        # @param LiveResolution: 实时分辨率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LiveResolution: Integer
        # @param HistoryResolution: 历史分辨率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HistoryResolution: Integer

        attr_accessor :SaveType, :SaveDay, :LiveResolution, :HistoryResolution

        def initialize(savetype=nil, saveday=nil, liveresolution=nil, historyresolution=nil)
          @SaveType = savetype
          @SaveDay = saveday
          @LiveResolution = liveresolution
          @HistoryResolution = historyresolution
        end

        def deserialize(params)
          @SaveType = params['SaveType']
          @SaveDay = params['SaveDay']
          @LiveResolution = params['LiveResolution']
          @HistoryResolution = params['HistoryResolution']
        end
      end

      # ChangeAlarmStatus请求参数结构体
      class ChangeAlarmStatusRequest < TencentCloud::Common::AbstractModel
        # @param Id: 告警的id，返回的列表中的id
        # @type Id: String
        # @param Status: 告警状态 processed unprocessed processing misreport shield
        # @type Status: String
        # @param ProcessTime: 告警处理时间
        # @type ProcessTime: Integer
        # @param ProcessType: 处理类型
        # @type ProcessType: String
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param UserId: 当前操作用户id
        # @type UserId: String
        # @param UserName: 当前操作用户名称
        # @type UserName: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param Processor: 平台告警处理人
        # @type Processor: String
        # @param ProcessDescription: 告警处理的描述信息
        # @type ProcessDescription: String
        # @param ProcessExtend: 告警处理的扩展信息，可以为JSON字符串
        # @type ProcessExtend: String
        # @param ExtendOne: 扩展字段1，目前存的应用告警处理人
        # @type ExtendOne: String
        # @param ApplicationId: 应用id
        # @type ApplicationId: Integer

        attr_accessor :Id, :Status, :ProcessTime, :ProcessType, :WorkspaceId, :UserId, :UserName, :ApplicationToken, :Processor, :ProcessDescription, :ProcessExtend, :ExtendOne, :ApplicationId

        def initialize(id=nil, status=nil, processtime=nil, processtype=nil, workspaceid=nil, userid=nil, username=nil, applicationtoken=nil, processor=nil, processdescription=nil, processextend=nil, extendone=nil, applicationid=nil)
          @Id = id
          @Status = status
          @ProcessTime = processtime
          @ProcessType = processtype
          @WorkspaceId = workspaceid
          @UserId = userid
          @UserName = username
          @ApplicationToken = applicationtoken
          @Processor = processor
          @ProcessDescription = processdescription
          @ProcessExtend = processextend
          @ExtendOne = extendone
          @ApplicationId = applicationid
        end

        def deserialize(params)
          @Id = params['Id']
          @Status = params['Status']
          @ProcessTime = params['ProcessTime']
          @ProcessType = params['ProcessType']
          @WorkspaceId = params['WorkspaceId']
          @UserId = params['UserId']
          @UserName = params['UserName']
          @ApplicationToken = params['ApplicationToken']
          @Processor = params['Processor']
          @ProcessDescription = params['ProcessDescription']
          @ProcessExtend = params['ProcessExtend']
          @ExtendOne = params['ExtendOne']
          @ApplicationId = params['ApplicationId']
        end
      end

      # ChangeAlarmStatus返回参数结构体
      class ChangeAlarmStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回空结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ControlCameraPTZ请求参数结构体
      class ControlCameraPTZRequest < TencentCloud::Common::AbstractModel
        # @param WID: 设备的唯一标识
        # @type WID: String
        # @param CMD: ptz指令
        # left - 向左移动
        # right - 向右移动
        # up - 向上移动
        # down - 向下
        # zoomOut - 镜头缩小
        # zoomIn - 镜头放大
        # irisIn - 光圈缩小
        # irisOut - 光圈放大
        # focusIn - 焦距变近
        # focusOut - 焦距变远
        # @type CMD: String
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WID, :CMD, :WorkspaceId, :ApplicationToken

        def initialize(wid=nil, cmd=nil, workspaceid=nil, applicationtoken=nil)
          @WID = wid
          @CMD = cmd
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WID = params['WID']
          @CMD = params['CMD']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # ControlCameraPTZ返回参数结构体
      class ControlCameraPTZResponse < TencentCloud::Common::AbstractModel
        # @param Result: 控制摄像头结果返回
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ControlDevice请求参数结构体
      class ControlDeviceRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param WIDSet: 设备wid，最大100个
        # @type WIDSet: Array
        # @param ControlData: 控制内容
        # @type ControlData: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param IsSynchronized: 是否同步返回设备下控ack结果
        # @type IsSynchronized: Boolean

        attr_accessor :WorkspaceId, :WIDSet, :ControlData, :ApplicationToken, :IsSynchronized

        def initialize(workspaceid=nil, widset=nil, controldata=nil, applicationtoken=nil, issynchronized=nil)
          @WorkspaceId = workspaceid
          @WIDSet = widset
          @ControlData = controldata
          @ApplicationToken = applicationtoken
          @IsSynchronized = issynchronized
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WIDSet = params['WIDSet']
          @ControlData = params['ControlData']
          @ApplicationToken = params['ApplicationToken']
          @IsSynchronized = params['IsSynchronized']
        end
      end

      # 设备控制结果
      class ControlDeviceRes < TencentCloud::Common::AbstractModel
        # @param WID: 设备Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param Code: 指令接受, 0表示成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Result: 控制结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param Seq: 批量大于1时，可用此seq进行链路追踪
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seq: String

        attr_accessor :WID, :Code, :Result, :Seq

        def initialize(wid=nil, code=nil, result=nil, seq=nil)
          @WID = wid
          @Code = code
          @Result = result
          @Seq = seq
        end

        def deserialize(params)
          @WID = params['WID']
          @Code = params['Code']
          @Result = params['Result']
          @Seq = params['Seq']
        end
      end

      # ControlDevice返回参数结构体
      class ControlDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 设备控制后结果集
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ControlDeviceSet`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ControlDeviceSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备控制后返回结果集合
      class ControlDeviceSet < TencentCloud::Common::AbstractModel
        # @param Set: 设备控制后返回结果集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Set: Array

        attr_accessor :Set

        def initialize(set=nil)
          @Set = set
        end

        def deserialize(params)
          unless params['Set'].nil?
            @Set = []
            params['Set'].each do |i|
              controldeviceres_tmp = ControlDeviceRes.new
              controldeviceres_tmp.deserialize(i)
              @Set << controldeviceres_tmp
            end
          end
        end
      end

      # CreateApplicationToken请求参数结构体
      class CreateApplicationTokenRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 应用id
        # @type ApplicationId: Integer
        # @param Nonce: 一个随机数或者时间戳，用于防止重放攻击，每个请求唯一，建议用uuid
        # @type Nonce: String
        # @param TenantId: 租户id
        # @type TenantId: Integer
        # @param RequestTime: 请求时间，当前时间的unix毫秒时间戳
        # @type RequestTime: Integer
        # @param Signature: 签名方法见用户使用文档
        # @type Signature: String

        attr_accessor :ApplicationId, :Nonce, :TenantId, :RequestTime, :Signature

        def initialize(applicationid=nil, nonce=nil, tenantid=nil, requesttime=nil, signature=nil)
          @ApplicationId = applicationid
          @Nonce = nonce
          @TenantId = tenantid
          @RequestTime = requesttime
          @Signature = signature
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @Nonce = params['Nonce']
          @TenantId = params['TenantId']
          @RequestTime = params['RequestTime']
          @Signature = params['Signature']
        end
      end

      # CreateApplicationToken返回参数结构体
      class CreateApplicationTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用令牌信息
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ApplicationTokenInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplicationTokenInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 导入失败设备信息
      class CreateDeviceFailed < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: Integer
        # @param ParentWID: 父设备wid，不为空表示导入自设备
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWID: String
        # @param Reason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param SN: 设备sn序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SN: String

        attr_accessor :ProductId, :ParentWID, :Reason, :SN

        def initialize(productid=nil, parentwid=nil, reason=nil, sn=nil)
          @ProductId = productid
          @ParentWID = parentwid
          @Reason = reason
          @SN = sn
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParentWID = params['ParentWID']
          @Reason = params['Reason']
          @SN = params['SN']
        end
      end

      # 导入成功设备信息
      class CreateDeviceSucceeded < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: Integer
        # @param ParentWID: 父设备wid，不为空表示导入自设备
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWID: String
        # @param WID: 设备编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param SN: 设备sn序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SN: String

        attr_accessor :ProductId, :ParentWID, :WID, :SN

        def initialize(productid=nil, parentwid=nil, wid=nil, sn=nil)
          @ProductId = productid
          @ParentWID = parentwid
          @WID = wid
          @SN = sn
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParentWID = params['ParentWID']
          @WID = params['WID']
          @SN = params['SN']
        end
      end

      # 自定义字段
      class CustomField < TencentCloud::Common::AbstractModel
        # @param Id: 字段id
        # @type Id: Integer
        # @param Val: 字段内容
        # @type Val: String

        attr_accessor :Id, :Val

        def initialize(id=nil, val=nil)
          @Id = id
          @Val = val
        end

        def deserialize(params)
          @Id = params['Id']
          @Val = params['Val']
        end
      end

      # 自定义字段
      class CustomFieldInfo < TencentCloud::Common::AbstractModel
        # @param Id: 字段id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Key: 字段key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Name: 字段名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Val: 字段值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Val: String

        attr_accessor :Id, :Key, :Name, :Val

        def initialize(id=nil, key=nil, name=nil, val=nil)
          @Id = id
          @Key = key
          @Name = name
          @Val = val
        end

        def deserialize(params)
          @Id = params['Id']
          @Key = params['Key']
          @Name = params['Name']
          @Val = params['Val']
        end
      end

      # DescribeActionList请求参数结构体
      class DescribeActionListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param PageNumber: 分页查询，第几页，必传，大于0
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，必传大于0
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ActionType: 动作类型，（app,device,toAlarm,toNotification）
        # @type ActionType: String
        # @param IdSet: 事件id详情
        # @type IdSet: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken, :ActionType, :IdSet

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, actiontype=nil, idset=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @ActionType = actiontype
          @IdSet = idset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @ActionType = params['ActionType']
          @IdSet = params['IdSet']
        end
      end

      # 动作列表查询结果
      class DescribeActionListRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param ActionDetailSet: 动作列表查询集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionDetailSet: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :ActionDetailSet

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, actiondetailset=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @ActionDetailSet = actiondetailset
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['ActionDetailSet'].nil?
            @ActionDetailSet = []
            params['ActionDetailSet'].each do |i|
              actiondetail_tmp = ActionDetail.new
              actiondetail_tmp.deserialize(i)
              @ActionDetailSet << actiondetail_tmp
            end
          end
        end
      end

      # DescribeActionList返回参数结构体
      class DescribeActionListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 动作列表查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeActionListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeActionListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAdministrationByTag请求参数结构体
      class DescribeAdministrationByTagRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: Integer
        # @param Tag: 标签值
        # @type Tag: String

        attr_accessor :ApplicationToken, :WorkspaceId, :Tag

        def initialize(applicationtoken=nil, workspaceid=nil, tag=nil)
          @ApplicationToken = applicationtoken
          @WorkspaceId = workspaceid
          @Tag = tag
        end

        def deserialize(params)
          @ApplicationToken = params['ApplicationToken']
          @WorkspaceId = params['WorkspaceId']
          @Tag = params['Tag']
        end
      end

      # 根据Tag获取行政区划列表返回结构
      class DescribeAdministrationByTagRes < TencentCloud::Common::AbstractModel
        # @param List: 行政区划列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :List

        def initialize(list=nil)
          @List = list
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              administrationdata_tmp = AdministrationData.new
              administrationdata_tmp.deserialize(i)
              @List << administrationdata_tmp
            end
          end
        end
      end

      # DescribeAdministrationByTag返回参数结构体
      class DescribeAdministrationByTagResponse < TencentCloud::Common::AbstractModel
        # @param Result: 行政区划返回结构
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeAdministrationByTagRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeAdministrationByTagRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmLevelList请求参数结构体
      class DescribeAlarmLevelListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :ApplicationToken

        def initialize(workspaceid=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # 告警级别枚举获取
      class DescribeAlarmLevelListRes < TencentCloud::Common::AbstractModel
        # @param AlarmLevelSet: 告警级别枚举获取数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevelSet: Array

        attr_accessor :AlarmLevelSet

        def initialize(alarmlevelset=nil)
          @AlarmLevelSet = alarmlevelset
        end

        def deserialize(params)
          unless params['AlarmLevelSet'].nil?
            @AlarmLevelSet = []
            params['AlarmLevelSet'].each do |i|
              alarmlevelinfo_tmp = AlarmLevelInfo.new
              alarmlevelinfo_tmp.deserialize(i)
              @AlarmLevelSet << alarmlevelinfo_tmp
            end
          end
        end
      end

      # DescribeAlarmLevelList返回参数结构体
      class DescribeAlarmLevelListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 告警级别列表查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeAlarmLevelListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeAlarmLevelListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmList请求参数结构体
      class DescribeAlarmListRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 告警开始时间，必填,时间戳秒
        # @type BeginTime: Integer
        # @param EndTime: 告警结束时间，必填，时间戳秒
        # @type EndTime: Integer
        # @param PageNumber: 分页查询，第几页
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param Statuses: 告警状态
        # @type Statuses: Array
        # @param AlarmTypeSet: 告警类型
        # @type AlarmTypeSet: Array
        # @param LevelSet: 告警级别id
        # @type LevelSet: Array
        # @param IdSet: 告警id
        # @type IdSet: Array
        # @param AppIdSet: 应用id
        # @type AppIdSet: Array
        # @param WIDSet: 设备id
        # @type WIDSet: Array
        # @param SpaceCodeSet: 空间层级
        # @type SpaceCodeSet: Array
        # @param ExtendOne: 应用扩展字段1
        # @type ExtendOne: Array
        # @param ExtendTwo: 应用扩展字段2
        # @type ExtendTwo: Array
        # @param ProcessorSet: 当前告警处理人，填孪生中台的用户id
        # @type ProcessorSet: Array
        # @param GroupIdSet: 分组id
        # @type GroupIdSet: Array

        attr_accessor :BeginTime, :EndTime, :PageNumber, :PageSize, :WorkspaceId, :ApplicationToken, :Statuses, :AlarmTypeSet, :LevelSet, :IdSet, :AppIdSet, :WIDSet, :SpaceCodeSet, :ExtendOne, :ExtendTwo, :ProcessorSet, :GroupIdSet

        def initialize(begintime=nil, endtime=nil, pagenumber=nil, pagesize=nil, workspaceid=nil, applicationtoken=nil, statuses=nil, alarmtypeset=nil, levelset=nil, idset=nil, appidset=nil, widset=nil, spacecodeset=nil, extendone=nil, extendtwo=nil, processorset=nil, groupidset=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @Statuses = statuses
          @AlarmTypeSet = alarmtypeset
          @LevelSet = levelset
          @IdSet = idset
          @AppIdSet = appidset
          @WIDSet = widset
          @SpaceCodeSet = spacecodeset
          @ExtendOne = extendone
          @ExtendTwo = extendtwo
          @ProcessorSet = processorset
          @GroupIdSet = groupidset
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @Statuses = params['Statuses']
          unless params['AlarmTypeSet'].nil?
            @AlarmTypeSet = []
            params['AlarmTypeSet'].each do |i|
              alarmtypeinfo_tmp = AlarmTypeInfo.new
              alarmtypeinfo_tmp.deserialize(i)
              @AlarmTypeSet << alarmtypeinfo_tmp
            end
          end
          @LevelSet = params['LevelSet']
          @IdSet = params['IdSet']
          @AppIdSet = params['AppIdSet']
          @WIDSet = params['WIDSet']
          @SpaceCodeSet = params['SpaceCodeSet']
          @ExtendOne = params['ExtendOne']
          @ExtendTwo = params['ExtendTwo']
          @ProcessorSet = params['ProcessorSet']
          @GroupIdSet = params['GroupIdSet']
        end
      end

      # 告警列表回包
      class DescribeAlarmListRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param AlarmInfoSet: 告警列表集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmInfoSet: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :AlarmInfoSet

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, alarminfoset=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @AlarmInfoSet = alarminfoset
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['AlarmInfoSet'].nil?
            @AlarmInfoSet = []
            params['AlarmInfoSet'].each do |i|
              alarminfo_tmp = AlarmInfo.new
              alarminfo_tmp.deserialize(i)
              @AlarmInfoSet << alarminfo_tmp
            end
          end
        end
      end

      # DescribeAlarmList返回参数结构体
      class DescribeAlarmListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 告警列表查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeAlarmListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeAlarmListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmStatusList请求参数结构体
      class DescribeAlarmStatusListRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String

        attr_accessor :ApplicationToken, :WorkspaceId

        def initialize(applicationtoken=nil, workspaceid=nil)
          @ApplicationToken = applicationtoken
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @ApplicationToken = params['ApplicationToken']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # 告警状态列表返回
      class DescribeAlarmStatusListRes < TencentCloud::Common::AbstractModel
        # @param List: 告警状态返回结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :List

        def initialize(list=nil)
          @List = list
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              alarmstatusdata_tmp = AlarmStatusData.new
              alarmstatusdata_tmp.deserialize(i)
              @List << alarmstatusdata_tmp
            end
          end
        end
      end

      # DescribeAlarmStatusList返回参数结构体
      class DescribeAlarmStatusListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 告警状态返回结构
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeAlarmStatusListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeAlarmStatusListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAlarmTypeList请求参数结构体
      class DescribeAlarmTypeListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ParentType: 一级类型
        # @type ParentType: String

        attr_accessor :WorkspaceId, :ApplicationToken, :ParentType

        def initialize(workspaceid=nil, applicationtoken=nil, parenttype=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ParentType = parenttype
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @ParentType = params['ParentType']
        end
      end

      # 告警类型列表回包
      class DescribeAlarmTypeListRes < TencentCloud::Common::AbstractModel
        # @param AlarmTypeSet: 告警类型查询列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmTypeSet: Array

        attr_accessor :AlarmTypeSet

        def initialize(alarmtypeset=nil)
          @AlarmTypeSet = alarmtypeset
        end

        def deserialize(params)
          unless params['AlarmTypeSet'].nil?
            @AlarmTypeSet = []
            params['AlarmTypeSet'].each do |i|
              alarmtypedetailinfo_tmp = AlarmTypeDetailInfo.new
              alarmtypedetailinfo_tmp.deserialize(i)
              @AlarmTypeSet << alarmtypedetailinfo_tmp
            end
          end
        end
      end

      # DescribeAlarmTypeList返回参数结构体
      class DescribeAlarmTypeListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 告警类型列表查询
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeAlarmTypeListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeAlarmTypeListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationList请求参数结构体
      class DescribeApplicationListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 项目空间id，本次查询返回的应用均关联至该空间
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ApplicationId: 应用id数组，可选，填了则表示根据id批量查询
        # @type ApplicationId: Array
        # @param PageNumber: 请求页号
        # @type PageNumber: Integer
        # @param PageSize: 页容量，默认为10
        # @type PageSize: Integer

        attr_accessor :WorkspaceId, :ApplicationToken, :ApplicationId, :PageNumber, :PageSize

        def initialize(workspaceid=nil, applicationtoken=nil, applicationid=nil, pagenumber=nil, pagesize=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ApplicationId = applicationid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @ApplicationId = params['ApplicationId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeApplicationList返回参数结构体
      class DescribeApplicationListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用列表
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ApplicationList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplicationList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBuildingList请求参数结构体
      class DescribeBuildingListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param HasModel: 是否有模型文件
        # @type HasModel: Boolean
        # @param SpaceCodes: 空间编码
        # @type SpaceCodes: Array

        attr_accessor :WorkspaceId, :ApplicationToken, :HasModel, :SpaceCodes

        def initialize(workspaceid=nil, applicationtoken=nil, hasmodel=nil, spacecodes=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @HasModel = hasmodel
          @SpaceCodes = spacecodes
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @HasModel = params['HasModel']
          @SpaceCodes = params['SpaceCodes']
        end
      end

      # DescribeBuildingList返回参数结构体
      class DescribeBuildingListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询建筑列表出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.BuildingListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = BuildingListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBuildingModel请求参数结构体
      class DescribeBuildingModelRequest < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # @type BuildingId: String
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :BuildingId, :WorkspaceId, :ApplicationToken

        def initialize(buildingid=nil, workspaceid=nil, applicationtoken=nil)
          @BuildingId = buildingid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeBuildingModel返回参数结构体
      class DescribeBuildingModelResponse < TencentCloud::Common::AbstractModel
        # @param Result: 建模模型信息出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.BuildingModelRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = BuildingModelRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBuildingProfile请求参数结构体
      class DescribeBuildingProfileRequest < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # @type BuildingId: String
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :BuildingId, :WorkspaceId, :ApplicationToken

        def initialize(buildingid=nil, workspaceid=nil, applicationtoken=nil)
          @BuildingId = buildingid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeBuildingProfile返回参数结构体
      class DescribeBuildingProfileResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询建筑信息出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.BuildingProfileRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = BuildingProfileRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCameraExtendInfo请求参数结构体
      class DescribeCameraExtendInfoRequest < TencentCloud::Common::AbstractModel
        # @param WID: 设备的唯一标识
        # @type WID: String
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WID, :WorkspaceId, :ApplicationToken

        def initialize(wid=nil, workspaceid=nil, applicationtoken=nil)
          @WID = wid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WID = params['WID']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeCameraExtendInfo返回参数结构体
      class DescribeCameraExtendInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取视频扩展信息结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.CameraExtendInfoRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CameraExtendInfoRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCityWorkspaceList请求参数结构体
      class DescribeCityWorkspaceListRequest < TencentCloud::Common::AbstractModel
        # @param AdministrativeCodeSet: 行政区编码集合
        # @type AdministrativeCodeSet: Array
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :AdministrativeCodeSet, :ApplicationToken

        def initialize(administrativecodeset=nil, applicationtoken=nil)
          @AdministrativeCodeSet = administrativecodeset
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @AdministrativeCodeSet = params['AdministrativeCodeSet']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # 通过城市id查询工作空间列表
      class DescribeCityWorkspaceListRes < TencentCloud::Common::AbstractModel
        # @param WorkspaceSet: 通过城市id查询工作空间列表结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceSet: Array

        attr_accessor :WorkspaceSet

        def initialize(workspaceset=nil)
          @WorkspaceSet = workspaceset
        end

        def deserialize(params)
          unless params['WorkspaceSet'].nil?
            @WorkspaceSet = []
            params['WorkspaceSet'].each do |i|
              workspaceinfo_tmp = WorkspaceInfo.new
              workspaceinfo_tmp.deserialize(i)
              @WorkspaceSet << workspaceinfo_tmp
            end
          end
        end
      end

      # DescribeCityWorkspaceList返回参数结构体
      class DescribeCityWorkspaceListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 工作空间信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeCityWorkspaceListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeCityWorkspaceListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceList请求参数结构体
      class DescribeDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param PageNumber: 分页查询，第几页，必传，大于0
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，必传大于0
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param DeviceTypeSet: 设备类型，非必填
        # @type DeviceTypeSet: Array
        # @param ProductIdSet: 产品 pid，非必填
        # @type ProductIdSet: Array
        # @param TagIdSet: 设备标签，非必填
        # @type TagIdSet: Array
        # @param SpaceCodeSet: 空间层级
        # @type SpaceCodeSet: Array
        # @param DeviceTagSet: 设备标签名，非必填
        # @type DeviceTagSet: Array
        # @param WIDSet: 设备wid,非必填
        # @type WIDSet: Array
        # @param Field: 自定义字段
        # @type Field: :class:`Tencentcloud::Weilingwith.v20230427.models.CustomField`
        # @param GroupIdSet: 分组id列表，非必填
        # @type GroupIdSet: Array
        # @param IsActive: 是否激活，默认全部，"1"激活，"0"未激活
        # @type IsActive: String
        # @param IsCamera: 是否为摄像头，默认全部，"true"摄像头，"false"非摄像头
        # @type IsCamera: String

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken, :DeviceTypeSet, :ProductIdSet, :TagIdSet, :SpaceCodeSet, :DeviceTagSet, :WIDSet, :Field, :GroupIdSet, :IsActive, :IsCamera

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, devicetypeset=nil, productidset=nil, tagidset=nil, spacecodeset=nil, devicetagset=nil, widset=nil, field=nil, groupidset=nil, isactive=nil, iscamera=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @DeviceTypeSet = devicetypeset
          @ProductIdSet = productidset
          @TagIdSet = tagidset
          @SpaceCodeSet = spacecodeset
          @DeviceTagSet = devicetagset
          @WIDSet = widset
          @Field = field
          @GroupIdSet = groupidset
          @IsActive = isactive
          @IsCamera = iscamera
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @DeviceTypeSet = params['DeviceTypeSet']
          @ProductIdSet = params['ProductIdSet']
          @TagIdSet = params['TagIdSet']
          @SpaceCodeSet = params['SpaceCodeSet']
          @DeviceTagSet = params['DeviceTagSet']
          @WIDSet = params['WIDSet']
          unless params['Field'].nil?
            @Field = CustomField.new
            @Field.deserialize(params['Field'])
          end
          @GroupIdSet = params['GroupIdSet']
          @IsActive = params['IsActive']
          @IsCamera = params['IsCamera']
        end
      end

      # 设备列表查询结果
      class DescribeDeviceListRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param DeviceDataSet: 设备信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceDataSet: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :DeviceDataSet

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, devicedataset=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @DeviceDataSet = devicedataset
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['DeviceDataSet'].nil?
            @DeviceDataSet = []
            params['DeviceDataSet'].each do |i|
              devicedatainfo_tmp = DeviceDataInfo.new
              devicedatainfo_tmp.deserialize(i)
              @DeviceDataSet << devicedatainfo_tmp
            end
          end
        end
      end

      # DescribeDeviceList返回参数结构体
      class DescribeDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询设备列表结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeDeviceListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeDeviceListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceShadowList请求参数结构体
      class DescribeDeviceShadowListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param WIDSet: WID
        # @type WIDSet: Array
        # @param PageNumber: 分页查询，第几页
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param DeviceTypeSet: 设备类型code
        # @type DeviceTypeSet: Array
        # @param ProductIdSet: 产品 pid
        # @type ProductIdSet: Array
        # @param TagIdSet: 设备标签id
        # @type TagIdSet: Array
        # @param SpaceCodeSet: 空间层级，（支持空间多层，比如具体建筑、具体楼层）
        # @type SpaceCodeSet: Array
        # @param DeviceTagSet: 设备标签名
        # @type DeviceTagSet: Array

        attr_accessor :WorkspaceId, :WIDSet, :PageNumber, :PageSize, :ApplicationToken, :DeviceTypeSet, :ProductIdSet, :TagIdSet, :SpaceCodeSet, :DeviceTagSet

        def initialize(workspaceid=nil, widset=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, devicetypeset=nil, productidset=nil, tagidset=nil, spacecodeset=nil, devicetagset=nil)
          @WorkspaceId = workspaceid
          @WIDSet = widset
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @DeviceTypeSet = devicetypeset
          @ProductIdSet = productidset
          @TagIdSet = tagidset
          @SpaceCodeSet = spacecodeset
          @DeviceTagSet = devicetagset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WIDSet = params['WIDSet']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @DeviceTypeSet = params['DeviceTypeSet']
          @ProductIdSet = params['ProductIdSet']
          @TagIdSet = params['TagIdSet']
          @SpaceCodeSet = params['SpaceCodeSet']
          @DeviceTagSet = params['DeviceTagSet']
        end
      end

      # DescribeDeviceShadowList返回参数结构体
      class DescribeDeviceShadowListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取设备影子结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceShadowRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceShadowRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceStatusList请求参数结构体
      class DescribeDeviceStatusListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param PageNumber: 分页查询，第几页，必传，大于0
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，必传大于0
        # @type PageSize: Integer
        # @param DeviceTypeSet: 设备类型
        # @type DeviceTypeSet: Array
        # @param ProductIdSet: 产品 pid
        # @type ProductIdSet: Array
        # @param TagIdSet: 设备标签id
        # @type TagIdSet: Array
        # @param SpaceCodeSet: 空间位置（支持空间多层，比如具体建筑、具体楼层）
        # @type SpaceCodeSet: Array
        # @param WIDSet: 设备编号列表
        # @type WIDSet: Array
        # @param DeviceTagSet: 设备标签名，非必填
        # @type DeviceTagSet: Array
        # @param DeviceStatusSet: 通信在/离线状态（online=normal+fault、offline）
        # @type DeviceStatusSet: Array
        # @param StatusSet: 设备业务状态
        # （正常-normal、故障-fault、离线-offline）
        # @type StatusSet: Array
        # @param IsAlive: 推流状态，推流中-true，未推流-false 仅摄像头有的状态
        # @type IsAlive: Array

        attr_accessor :WorkspaceId, :ApplicationToken, :PageNumber, :PageSize, :DeviceTypeSet, :ProductIdSet, :TagIdSet, :SpaceCodeSet, :WIDSet, :DeviceTagSet, :DeviceStatusSet, :StatusSet, :IsAlive

        def initialize(workspaceid=nil, applicationtoken=nil, pagenumber=nil, pagesize=nil, devicetypeset=nil, productidset=nil, tagidset=nil, spacecodeset=nil, widset=nil, devicetagset=nil, devicestatusset=nil, statusset=nil, isalive=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @PageNumber = pagenumber
          @PageSize = pagesize
          @DeviceTypeSet = devicetypeset
          @ProductIdSet = productidset
          @TagIdSet = tagidset
          @SpaceCodeSet = spacecodeset
          @WIDSet = widset
          @DeviceTagSet = devicetagset
          @DeviceStatusSet = devicestatusset
          @StatusSet = statusset
          @IsAlive = isalive
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @DeviceTypeSet = params['DeviceTypeSet']
          @ProductIdSet = params['ProductIdSet']
          @TagIdSet = params['TagIdSet']
          @SpaceCodeSet = params['SpaceCodeSet']
          @WIDSet = params['WIDSet']
          @DeviceTagSet = params['DeviceTagSet']
          @DeviceStatusSet = params['DeviceStatusSet']
          @StatusSet = params['StatusSet']
          @IsAlive = params['IsAlive']
        end
      end

      # DescribeDeviceStatusList返回参数结构体
      class DescribeDeviceStatusListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询设备状态结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceStatusRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceStatusRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceStatusStat请求参数结构体
      class DescribeDeviceStatusStatRequest < TencentCloud::Common::AbstractModel
        # @param Level: 所属空间地理层级，必填。0表示查询所有层级（1、2）的设备状态，1表示楼栋，2表示楼层
        # @type Level: Integer
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param SpaceCodeSet: 空间位置，非必填。为空表示查询所有（1，2）层级
        # @type SpaceCodeSet: Array
        # @param DeviceTypeSet: 设备类型，非必填。为空表示查询所有设备类型
        # @type DeviceTypeSet: Array

        attr_accessor :Level, :WorkspaceId, :ApplicationToken, :SpaceCodeSet, :DeviceTypeSet

        def initialize(level=nil, workspaceid=nil, applicationtoken=nil, spacecodeset=nil, devicetypeset=nil)
          @Level = level
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @SpaceCodeSet = spacecodeset
          @DeviceTypeSet = devicetypeset
        end

        def deserialize(params)
          @Level = params['Level']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @SpaceCodeSet = params['SpaceCodeSet']
          @DeviceTypeSet = params['DeviceTypeSet']
        end
      end

      # DescribeDeviceStatusStat返回参数结构体
      class DescribeDeviceStatusStatResponse < TencentCloud::Common::AbstractModel
        # @param Result: 设备状态统计结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceStatusStatRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceStatusStatRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceTagList请求参数结构体
      class DescribeDeviceTagListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param PageNumber: 分页查询，第几页，必传，大于0
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，必传大于0
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeDeviceTagList返回参数结构体
      class DescribeDeviceTagListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 设备标签查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceTagRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceTagRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceTypeList请求参数结构体
      class DescribeDeviceTypeListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param Flag: 默认0只拉取设备列表关联的设备类型列表；1拉取空间下所有的设备类型列表
        # @type Flag: Integer

        attr_accessor :WorkspaceId, :ApplicationToken, :Flag

        def initialize(workspaceid=nil, applicationtoken=nil, flag=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @Flag = flag
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @Flag = params['Flag']
        end
      end

      # DescribeDeviceTypeList返回参数结构体
      class DescribeDeviceTypeListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 设备的设备类型列表
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceTypeSet`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceTypeSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEdgeApplicationToken请求参数结构体
      class DescribeEdgeApplicationTokenRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param Refresh: 是否刷新token，默认为false
        # @type Refresh: Boolean

        attr_accessor :ApplicationToken, :Refresh

        def initialize(applicationtoken=nil, refresh=nil)
          @ApplicationToken = applicationtoken
          @Refresh = refresh
        end

        def deserialize(params)
          @ApplicationToken = params['ApplicationToken']
          @Refresh = params['Refresh']
        end
      end

      # DescribeEdgeApplicationToken返回参数结构体
      class DescribeEdgeApplicationTokenResponse < TencentCloud::Common::AbstractModel
        # @param Result: 边缘应用令牌信息
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ApplicationTokenInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplicationTokenInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeElementProfilePage请求参数结构体
      class DescribeElementProfilePageRequest < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # @type BuildingId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页容量
        # @type PageSize: Integer
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ParentElementIds: 父级构件id
        # @type ParentElementIds: Array
        # @param Level: 空间层级
        # @type Level: Integer
        # @param SpaceTypeCode: 空间分类代码
        # @type SpaceTypeCode: String
        # @param EntityTypes: 构件类型
        # @type EntityTypes: Array
        # @param IncludeDelete: 是否包含已删除构件
        # @type IncludeDelete: Boolean
        # @param StartTime: 时间范围-开始
        # @type StartTime: Integer
        # @param EndTime: 时间范围-结束
        # @type EndTime: Integer

        attr_accessor :BuildingId, :PageNumber, :PageSize, :WorkspaceId, :ApplicationToken, :ParentElementIds, :Level, :SpaceTypeCode, :EntityTypes, :IncludeDelete, :StartTime, :EndTime

        def initialize(buildingid=nil, pagenumber=nil, pagesize=nil, workspaceid=nil, applicationtoken=nil, parentelementids=nil, level=nil, spacetypecode=nil, entitytypes=nil, includedelete=nil, starttime=nil, endtime=nil)
          @BuildingId = buildingid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ParentElementIds = parentelementids
          @Level = level
          @SpaceTypeCode = spacetypecode
          @EntityTypes = entitytypes
          @IncludeDelete = includedelete
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @ParentElementIds = params['ParentElementIds']
          @Level = params['Level']
          @SpaceTypeCode = params['SpaceTypeCode']
          @EntityTypes = params['EntityTypes']
          @IncludeDelete = params['IncludeDelete']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeElementProfilePage返回参数结构体
      class DescribeElementProfilePageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分页查询构件出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ElementProfilePageRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ElementProfilePageRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeElementProfileTree请求参数结构体
      class DescribeElementProfileTreeRequest < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # @type BuildingId: String
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ElementId: 父级构件id
        # @type ElementId: String
        # @param Level: 构件级别
        # @type Level: Integer
        # @param SpaceTypeCode: 空间分类代码
        # @type SpaceTypeCode: String

        attr_accessor :BuildingId, :WorkspaceId, :ApplicationToken, :ElementId, :Level, :SpaceTypeCode

        def initialize(buildingid=nil, workspaceid=nil, applicationtoken=nil, elementid=nil, level=nil, spacetypecode=nil)
          @BuildingId = buildingid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ElementId = elementid
          @Level = level
          @SpaceTypeCode = spacetypecode
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @ElementId = params['ElementId']
          @Level = params['Level']
          @SpaceTypeCode = params['SpaceTypeCode']
        end
      end

      # DescribeElementProfileTree返回参数结构体
      class DescribeElementProfileTreeResponse < TencentCloud::Common::AbstractModel
        # @param Result: 构件树出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ElementProfileTreeRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ElementProfileTreeRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEventList请求参数结构体
      class DescribeEventListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param PageNumber: 分页查询，第几页，必传，大于0
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，必传大于0
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param TriggerType: 事件触发类型，(app, device, timer)
        # @type TriggerType: String
        # @param IdSet: 事件id详情
        # @type IdSet: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken, :TriggerType, :IdSet

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, triggertype=nil, idset=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @TriggerType = triggertype
          @IdSet = idset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @TriggerType = params['TriggerType']
          @IdSet = params['IdSet']
        end
      end

      # 事件列表查询结果
      class DescribeEventListRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param EventDetailSet: 事件信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventDetailSet: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :EventDetailSet

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, eventdetailset=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @EventDetailSet = eventdetailset
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['EventDetailSet'].nil?
            @EventDetailSet = []
            params['EventDetailSet'].each do |i|
              eventdetail_tmp = EventDetail.new
              eventdetail_tmp.deserialize(i)
              @EventDetailSet << eventdetail_tmp
            end
          end
        end
      end

      # DescribeEventList返回参数结构体
      class DescribeEventListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 事件列表查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeEventListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeEventListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileDownloadURL请求参数结构体
      class DescribeFileDownloadURLRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param FileId: 文件Id
        # @type FileId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :FileId, :ApplicationToken

        def initialize(workspaceid=nil, fileid=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @FileId = fileid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeFileDownloadURL返回参数结构体
      class DescribeFileDownloadURLResponse < TencentCloud::Common::AbstractModel
        # @param Result: 文件下载URL地址
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.FileDownloadURL`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = FileDownloadURL.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileUploadURL请求参数结构体
      class DescribeFileUploadURLRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param FileName: 文件名称
        # @type FileName: String
        # @param FileSize: 文件大小
        # @type FileSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param FileMD5: 文件MD5
        # @type FileMD5: String
        # @param SaveType: 存储类型
        # @type SaveType: String
        # @param FileExpireTime: 过期时间，过期时间戳，精确到秒的时间戳，noExpireFlag为false时必填
        # @type FileExpireTime: Integer
        # @param NoExpireFlag: 永不过期标记
        # @type NoExpireFlag: Boolean

        attr_accessor :WorkspaceId, :FileName, :FileSize, :ApplicationToken, :FileMD5, :SaveType, :FileExpireTime, :NoExpireFlag

        def initialize(workspaceid=nil, filename=nil, filesize=nil, applicationtoken=nil, filemd5=nil, savetype=nil, fileexpiretime=nil, noexpireflag=nil)
          @WorkspaceId = workspaceid
          @FileName = filename
          @FileSize = filesize
          @ApplicationToken = applicationtoken
          @FileMD5 = filemd5
          @SaveType = savetype
          @FileExpireTime = fileexpiretime
          @NoExpireFlag = noexpireflag
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @ApplicationToken = params['ApplicationToken']
          @FileMD5 = params['FileMD5']
          @SaveType = params['SaveType']
          @FileExpireTime = params['FileExpireTime']
          @NoExpireFlag = params['NoExpireFlag']
        end
      end

      # DescribeFileUploadURL返回参数结构体
      class DescribeFileUploadURLResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取文件上传地址结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.FileUploadURL`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = FileUploadURL.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInterfaceList请求参数结构体
      class DescribeInterfaceListRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param PageNumber: 请求页号
        # @type PageNumber: Integer
        # @param PageSize: 请求页容量，默认全量返回
        # @type PageSize: Integer
        # @param Keyword: 查询关键字
        # @type Keyword: String
        # @param Style: 接口方式 1.http 2消息通知服务
        # @type Style: Array
        # @param Type: 接口分类0. 其他服务 1. IOT服务 2. 空间服务 3.微应用服务 4.场景服务 5.AI算法服务 6.任务算法服务 7.第三方服务 8.3DTiles服务
        # @type Type: Array

        attr_accessor :ApplicationToken, :PageNumber, :PageSize, :Keyword, :Style, :Type

        def initialize(applicationtoken=nil, pagenumber=nil, pagesize=nil, keyword=nil, style=nil, type=nil)
          @ApplicationToken = applicationtoken
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Keyword = keyword
          @Style = style
          @Type = type
        end

        def deserialize(params)
          @ApplicationToken = params['ApplicationToken']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
          @Style = params['Style']
          @Type = params['Type']
        end
      end

      # DescribeInterfaceList返回参数结构体
      class DescribeInterfaceListResponse < TencentCloud::Common::AbstractModel
        # @param Result: API列表
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ApiInfoList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiInfoList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLinkRuleList请求参数结构体
      class DescribeLinkRuleListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param PageNumber: 分页查询，第几页，必传，大于0
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，必传大于0
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param TriggerType: 事件触发类型
        # @type TriggerType: String
        # @param IdSet: 联动id
        # @type IdSet: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken, :TriggerType, :IdSet

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, triggertype=nil, idset=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @TriggerType = triggertype
          @IdSet = idset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @TriggerType = params['TriggerType']
          @IdSet = params['IdSet']
        end
      end

      # 联动规则列表查询结果
      class DescribeLinkRuleListRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param LinkRuleSet: 联动规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkRuleSet: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :LinkRuleSet

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, linkruleset=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @LinkRuleSet = linkruleset
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['LinkRuleSet'].nil?
            @LinkRuleSet = []
            params['LinkRuleSet'].each do |i|
              linkruleinfo_tmp = LinkRuleInfo.new
              linkruleinfo_tmp.deserialize(i)
              @LinkRuleSet << linkruleinfo_tmp
            end
          end
        end
      end

      # DescribeLinkRuleList返回参数结构体
      class DescribeLinkRuleListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 联动规则列表查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DescribeLinkRuleListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeLinkRuleListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelList请求参数结构体
      class DescribeModelListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param PageNumber: 分页查询，第几页，大于0
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，大于0
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param DeviceTypeSet: 设备类型
        # @type DeviceTypeSet: Array
        # @param ProductIdSet: 产品 pid
        # @type ProductIdSet: Array
        # @param ModelIdSet: 模型id
        # @type ModelIdSet: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken, :DeviceTypeSet, :ProductIdSet, :ModelIdSet

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, devicetypeset=nil, productidset=nil, modelidset=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @DeviceTypeSet = devicetypeset
          @ProductIdSet = productidset
          @ModelIdSet = modelidset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @DeviceTypeSet = params['DeviceTypeSet']
          @ProductIdSet = params['ProductIdSet']
          @ModelIdSet = params['ModelIdSet']
        end
      end

      # DescribeModelList返回参数结构体
      class DescribeModelListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 模型列表查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ModelSet`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ModelSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductList请求参数结构体
      class DescribeProductListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param PageNumber: 分页查询，第几页
        # @type PageNumber: Integer
        # @param PageSize: 每页条数，大于0
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param DeviceTypeSet: 设备类型
        # @type DeviceTypeSet: Array
        # @param ProductIdSet: 产品 pid
        # @type ProductIdSet: Array
        # @param ModelIdSet: 模型id
        # @type ModelIdSet: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken, :DeviceTypeSet, :ProductIdSet, :ModelIdSet

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil, devicetypeset=nil, productidset=nil, modelidset=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
          @DeviceTypeSet = devicetypeset
          @ProductIdSet = productidset
          @ModelIdSet = modelidset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
          @DeviceTypeSet = params['DeviceTypeSet']
          @ProductIdSet = params['ProductIdSet']
          @ModelIdSet = params['ModelIdSet']
        end
      end

      # DescribeProductList返回参数结构体
      class DescribeProductListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 产品列表查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ProductSet`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ProductSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePropertyList请求参数结构体
      class DescribePropertyListRequest < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # @type BuildingId: String
        # @param ElementId: 构件id
        # @type ElementId: String
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :BuildingId, :ElementId, :WorkspaceId, :ApplicationToken

        def initialize(buildingid=nil, elementid=nil, workspaceid=nil, applicationtoken=nil)
          @BuildingId = buildingid
          @ElementId = elementid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @ElementId = params['ElementId']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribePropertyList返回参数结构体
      class DescribePropertyListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 构件属性信息出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.ElementPropertyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ElementPropertyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleDetail请求参数结构体
      class DescribeRuleDetailRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: String
        # @param Id: 联动id
        # @type Id: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :Id, :ApplicationToken

        def initialize(workspaceid=nil, id=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @Id = id
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @Id = params['Id']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeRuleDetail返回参数结构体
      class DescribeRuleDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 规则详情查询结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.RuleDetailRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = RuleDetailRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSceneList请求参数结构体
      class DescribeSceneListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :ApplicationToken

        def initialize(workspaceid=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeSceneList返回参数结构体
      class DescribeSceneListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 场景列表出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SceneListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SceneListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceDeviceIdList请求参数结构体
      class DescribeSpaceDeviceIdListRequest < TencentCloud::Common::AbstractModel
        # @param ElementIds: 构件id列表
        # @type ElementIds: Array
        # @param IsCascade: 是否级联
        # @type IsCascade: Boolean
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页容量
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :ElementIds, :IsCascade, :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken

        def initialize(elementids=nil, iscascade=nil, workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil)
          @ElementIds = elementids
          @IsCascade = iscascade
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @ElementIds = params['ElementIds']
          @IsCascade = params['IsCascade']
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeSpaceDeviceIdList返回参数结构体
      class DescribeSpaceDeviceIdListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 设备ID列表
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SpaceDeviceIdListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SpaceDeviceIdListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceDeviceRelationList请求参数结构体
      class DescribeSpaceDeviceRelationListRequest < TencentCloud::Common::AbstractModel
        # @param ElementIds: 构件id列表
        # @type ElementIds: Array
        # @param IsCascade: 是否级联
        # @type IsCascade: Boolean
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页容量
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :ElementIds, :IsCascade, :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken

        def initialize(elementids=nil, iscascade=nil, workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil)
          @ElementIds = elementids
          @IsCascade = iscascade
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @ElementIds = params['ElementIds']
          @IsCascade = params['IsCascade']
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeSpaceDeviceRelationList返回参数结构体
      class DescribeSpaceDeviceRelationListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询指定空间下设备与构件绑定关系列表出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SpaceDeviceRelationRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SpaceDeviceRelationRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceInfoByDeviceId请求参数结构体
      class DescribeSpaceInfoByDeviceIdRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :DeviceId, :WorkspaceId, :ApplicationToken

        def initialize(deviceid=nil, workspaceid=nil, applicationtoken=nil)
          @DeviceId = deviceid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeSpaceInfoByDeviceId返回参数结构体
      class DescribeSpaceInfoByDeviceIdResponse < TencentCloud::Common::AbstractModel
        # @param Result: 设备绑定的空间信息出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceSpaceInfoRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceSpaceInfoRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceRelationByDeviceId请求参数结构体
      class DescribeSpaceRelationByDeviceIdRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :DeviceId, :WorkspaceId, :ApplicationToken

        def initialize(deviceid=nil, workspaceid=nil, applicationtoken=nil)
          @DeviceId = deviceid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeSpaceRelationByDeviceId返回参数结构体
      class DescribeSpaceRelationByDeviceIdResponse < TencentCloud::Common::AbstractModel
        # @param Result: 空间层级关系出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SpaceRelationRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SpaceRelationRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceTypeList请求参数结构体
      class DescribeSpaceTypeListRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 项目空间ID
        # @type WorkspaceId: String
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页容量
        # @type PageSize: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :ApplicationToken

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeSpaceTypeList返回参数结构体
      class DescribeSpaceTypeListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 空间分类列表出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SpaceTypeListRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SpaceTypeListRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTenantBuildingCountAndArea请求参数结构体
      class DescribeTenantBuildingCountAndAreaRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceIdList: 租户所有工作空间ID列表
        # @type WorkspaceIdList: Array
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceIdList, :ApplicationToken

        def initialize(workspaceidlist=nil, applicationtoken=nil)
          @WorkspaceIdList = workspaceidlist
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceIdList = params['WorkspaceIdList']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeTenantBuildingCountAndArea返回参数结构体
      class DescribeTenantBuildingCountAndAreaResponse < TencentCloud::Common::AbstractModel
        # @param Result: 租户所有项目空间楼栋数量与建筑面积统计结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SpaceDataTotalStatsRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SpaceDataTotalStatsRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTenantDepartmentList请求参数结构体
      class DescribeTenantDepartmentListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页页码
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param ApplicationToken: token
        # @type ApplicationToken: String
        # @param TenantId: 租户ID
        # @type TenantId: String
        # @param UpdateAt: 更新时间戳，单位秒
        # @type UpdateAt: Integer
        # @param DepartmentId: 部门ID
        # @type DepartmentId: String
        # @param Cursor: 用户id
        # @type Cursor: String

        attr_accessor :Offset, :Limit, :ApplicationToken, :TenantId, :UpdateAt, :DepartmentId, :Cursor

        def initialize(offset=nil, limit=nil, applicationtoken=nil, tenantid=nil, updateat=nil, departmentid=nil, cursor=nil)
          @Offset = offset
          @Limit = limit
          @ApplicationToken = applicationtoken
          @TenantId = tenantid
          @UpdateAt = updateat
          @DepartmentId = departmentid
          @Cursor = cursor
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ApplicationToken = params['ApplicationToken']
          @TenantId = params['TenantId']
          @UpdateAt = params['UpdateAt']
          @DepartmentId = params['DepartmentId']
          @Cursor = params['Cursor']
        end
      end

      # DescribeTenantDepartmentList返回参数结构体
      class DescribeTenantDepartmentListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回数据
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SsoDepartmentsResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SsoDepartmentsResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTenantUserList请求参数结构体
      class DescribeTenantUserListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页页码
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param ApplicationToken: token
        # @type ApplicationToken: String
        # @param TenantId: 租户ID
        # @type TenantId: String
        # @param UpdateAt: 更新时间戳，单位秒
        # @type UpdateAt: Integer
        # @param DepartmentId: 部门ID
        # @type DepartmentId: String
        # @param Cursor: 用户id
        # @type Cursor: String
        # @param Status: 状态，0，获取所有数据，1正常启用，2禁用
        # @type Status: Integer
        # @param WorkspaceId: 项目空间id
        # @type WorkspaceId: String
        # @param Keyword: 关键词
        # @type Keyword: String
        # @param NoRecursive: 是否递归获取子级数据，0需要，1不需要，默认为0
        # @type NoRecursive: String

        attr_accessor :Offset, :Limit, :ApplicationToken, :TenantId, :UpdateAt, :DepartmentId, :Cursor, :Status, :WorkspaceId, :Keyword, :NoRecursive

        def initialize(offset=nil, limit=nil, applicationtoken=nil, tenantid=nil, updateat=nil, departmentid=nil, cursor=nil, status=nil, workspaceid=nil, keyword=nil, norecursive=nil)
          @Offset = offset
          @Limit = limit
          @ApplicationToken = applicationtoken
          @TenantId = tenantid
          @UpdateAt = updateat
          @DepartmentId = departmentid
          @Cursor = cursor
          @Status = status
          @WorkspaceId = workspaceid
          @Keyword = keyword
          @NoRecursive = norecursive
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ApplicationToken = params['ApplicationToken']
          @TenantId = params['TenantId']
          @UpdateAt = params['UpdateAt']
          @DepartmentId = params['DepartmentId']
          @Cursor = params['Cursor']
          @Status = params['Status']
          @WorkspaceId = params['WorkspaceId']
          @Keyword = params['Keyword']
          @NoRecursive = params['NoRecursive']
        end
      end

      # DescribeTenantUserList返回参数结构体
      class DescribeTenantUserListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回数据
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SsoUserResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SsoUserResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoCloudRecord请求参数结构体
      class DescribeVideoCloudRecordRequest < TencentCloud::Common::AbstractModel
        # @param WID: 设备的唯一标识
        # @type WID: String
        # @param StartTime: 录像开始时间（s）
        # @type StartTime: Integer
        # @param EndTime: 录像结束时间（s）
        # @type EndTime: Integer
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WID, :StartTime, :EndTime, :WorkspaceId, :ApplicationToken

        def initialize(wid=nil, starttime=nil, endtime=nil, workspaceid=nil, applicationtoken=nil)
          @WID = wid
          @StartTime = starttime
          @EndTime = endtime
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WID = params['WID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeVideoCloudRecord返回参数结构体
      class DescribeVideoCloudRecordResponse < TencentCloud::Common::AbstractModel
        # @param Result: 获取云录像结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.VideoCloudRecordRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = VideoCloudRecordRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoLiveStream请求参数结构体
      class DescribeVideoLiveStreamRequest < TencentCloud::Common::AbstractModel
        # @param WID: 设备的唯一标识
        # @type WID: String
        # @param Protocol: 枚举如下：
        # flv
        # rtmp
        # hls
        # webrtc
        # raw (视频原始帧)
        # @type Protocol: String
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param StreamId: 主码流传0，子码流传1，默认主码流
        # @type StreamId: Integer
        # @param Env: 设备所在环境，公有云私有化项目传0或者不传，混合云项目一般传空间id
        # @type Env: String

        attr_accessor :WID, :Protocol, :WorkspaceId, :ApplicationToken, :StreamId, :Env

        def initialize(wid=nil, protocol=nil, workspaceid=nil, applicationtoken=nil, streamid=nil, env=nil)
          @WID = wid
          @Protocol = protocol
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @StreamId = streamid
          @Env = env
        end

        def deserialize(params)
          @WID = params['WID']
          @Protocol = params['Protocol']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @StreamId = params['StreamId']
          @Env = params['Env']
        end
      end

      # DescribeVideoLiveStream返回参数结构体
      class DescribeVideoLiveStreamResponse < TencentCloud::Common::AbstractModel
        # @param Result: 视频实时流获取结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.VideoRecordStreamRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = VideoRecordStreamRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoRecordStream请求参数结构体
      class DescribeVideoRecordStreamRequest < TencentCloud::Common::AbstractModel
        # @param WID: 设备唯一标识
        # @type WID: String
        # @param Protocol: 枚举如下：
        # flvsh
        # rtmp
        # hls
        # webrtc
        # raw (视频原始帧)
        # @type Protocol: String
        # @param StartTime: 开始时间（精确到毫秒）
        # @type StartTime: Integer
        # @param EndTime: 结束时间（精确到毫秒）
        # @type EndTime: Integer
        # @param PlayBackRate: 倍速 0.5、1、2、4
        # @type PlayBackRate: Float
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param Stream: 流的唯一标识，播放链接尾缀
        # @type Stream: String
        # @param Env: 公有云私有化项目传0或者不传；混合云项目一般传空间id
        # @type Env: String

        attr_accessor :WID, :Protocol, :StartTime, :EndTime, :PlayBackRate, :WorkspaceId, :ApplicationToken, :Stream, :Env

        def initialize(wid=nil, protocol=nil, starttime=nil, endtime=nil, playbackrate=nil, workspaceid=nil, applicationtoken=nil, stream=nil, env=nil)
          @WID = wid
          @Protocol = protocol
          @StartTime = starttime
          @EndTime = endtime
          @PlayBackRate = playbackrate
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @Stream = stream
          @Env = env
        end

        def deserialize(params)
          @WID = params['WID']
          @Protocol = params['Protocol']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PlayBackRate = params['PlayBackRate']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @Stream = params['Stream']
          @Env = params['Env']
        end
      end

      # DescribeVideoRecordStream返回参数结构体
      class DescribeVideoRecordStreamResponse < TencentCloud::Common::AbstractModel
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

      # DescribeWorkSpaceBuildingCountAndArea请求参数结构体
      class DescribeWorkSpaceBuildingCountAndAreaRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceIdList: 工作空间ID列表
        # @type WorkspaceIdList: Array
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceIdList, :ApplicationToken

        def initialize(workspaceidlist=nil, applicationtoken=nil)
          @WorkspaceIdList = workspaceidlist
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceIdList = params['WorkspaceIdList']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # DescribeWorkSpaceBuildingCountAndArea返回参数结构体
      class DescribeWorkSpaceBuildingCountAndAreaResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询项目空间楼栋数量与建筑面积出参
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SpaceDataListStatsRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SpaceDataListStatsRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkspaceList请求参数结构体
      class DescribeWorkspaceListRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param WorkspaceId: 工作空间id，非必填，填了则表示根据id进行批量查询
        # @type WorkspaceId: Integer

        attr_accessor :ApplicationToken, :WorkspaceId

        def initialize(applicationtoken=nil, workspaceid=nil)
          @ApplicationToken = applicationtoken
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @ApplicationToken = params['ApplicationToken']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # DescribeWorkspaceList返回参数结构体
      class DescribeWorkspaceListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 项目空间列表
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.WorkspaceInfoList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = WorkspaceInfoList.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkspaceUserList请求参数结构体
      class DescribeWorkspaceUserListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 翻页页码
        # @type Offset: Integer
        # @param Limit: 翻页大小
        # @type Limit: Integer
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String
        # @param ApplicationToken: token
        # @type ApplicationToken: String
        # @param TenantId: 租户ID
        # @type TenantId: String
        # @param UpdateAt: 更新时间戳，单位秒
        # @type UpdateAt: Integer

        attr_accessor :Offset, :Limit, :WorkspaceId, :ApplicationToken, :TenantId, :UpdateAt

        def initialize(offset=nil, limit=nil, workspaceid=nil, applicationtoken=nil, tenantid=nil, updateat=nil)
          @Offset = offset
          @Limit = limit
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @TenantId = tenantid
          @UpdateAt = updateat
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @TenantId = params['TenantId']
          @UpdateAt = params['UpdateAt']
        end
      end

      # DescribeWorkspaceUserList返回参数结构体
      class DescribeWorkspaceUserListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回数据
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.SsoTeamUserResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = SsoTeamUserResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备数据信息
      class DeviceDataInfo < TencentCloud::Common::AbstractModel
        # @param WID: 设备ID， wid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param DeviceName: 设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param DeviceTypeCode: 设备类型Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceTypeCode: String
        # @param DeviceTypeName: 设备类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceTypeName: String
        # @param ProductId: 产品Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: Integer
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param ProductAbility: 产品能力:信令数据、音视频。二进制数值中第0位表示信令数据、第1位表示音视频 。1（信令数据），3（具有信令数据以及音视频能力）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductAbility: Integer
        # @param SpaceInfoSet: 设备位置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceInfoSet: Array
        # @param ModelId: 模型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param DeviceTagSet: 设备标签名，非必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceTagSet: Array
        # @param IsActive: 激活状态（1激活、0未激活）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsActive: Integer
        # @param ActiveTime:  激活时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveTime: String
        # @param IsLive: 推流状态（推流中、未推流） 仅摄像机有的状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLive: Boolean
        # @param ParentWID: 设备所属父设备id（子设备才有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWID: String
        # @param ParentWIDName: 设备所有父设备名称（子设备才有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWIDName: String
        # @param SN: 序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SN: String
        # @param Location: 设备点位坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: :class:`Tencentcloud::Weilingwith.v20230427.models.DeviceLocation`
        # @param FieldList: 自定义字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldList: Array
        # @param GroupInfo: 分组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupInfo: String
        # @param DeviceStatus: 通信在/离线状态（online=normal+fault，offline）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceStatus: String
        # @param Status: 设备业务状态（normal、fault、offline）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :WID, :DeviceName, :DeviceTypeCode, :DeviceTypeName, :ProductId, :ProductName, :ProductAbility, :SpaceInfoSet, :ModelId, :ModelName, :DeviceTagSet, :IsActive, :ActiveTime, :IsLive, :ParentWID, :ParentWIDName, :SN, :Location, :FieldList, :GroupInfo, :DeviceStatus, :Status

        def initialize(wid=nil, devicename=nil, devicetypecode=nil, devicetypename=nil, productid=nil, productname=nil, productability=nil, spaceinfoset=nil, modelid=nil, modelname=nil, devicetagset=nil, isactive=nil, activetime=nil, islive=nil, parentwid=nil, parentwidname=nil, sn=nil, location=nil, fieldlist=nil, groupinfo=nil, devicestatus=nil, status=nil)
          @WID = wid
          @DeviceName = devicename
          @DeviceTypeCode = devicetypecode
          @DeviceTypeName = devicetypename
          @ProductId = productid
          @ProductName = productname
          @ProductAbility = productability
          @SpaceInfoSet = spaceinfoset
          @ModelId = modelid
          @ModelName = modelname
          @DeviceTagSet = devicetagset
          @IsActive = isactive
          @ActiveTime = activetime
          @IsLive = islive
          @ParentWID = parentwid
          @ParentWIDName = parentwidname
          @SN = sn
          @Location = location
          @FieldList = fieldlist
          @GroupInfo = groupinfo
          @DeviceStatus = devicestatus
          @Status = status
        end

        def deserialize(params)
          @WID = params['WID']
          @DeviceName = params['DeviceName']
          @DeviceTypeCode = params['DeviceTypeCode']
          @DeviceTypeName = params['DeviceTypeName']
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductAbility = params['ProductAbility']
          unless params['SpaceInfoSet'].nil?
            @SpaceInfoSet = []
            params['SpaceInfoSet'].each do |i|
              devicespaceinfo_tmp = DeviceSpaceInfo.new
              devicespaceinfo_tmp.deserialize(i)
              @SpaceInfoSet << devicespaceinfo_tmp
            end
          end
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @DeviceTagSet = params['DeviceTagSet']
          @IsActive = params['IsActive']
          @ActiveTime = params['ActiveTime']
          @IsLive = params['IsLive']
          @ParentWID = params['ParentWID']
          @ParentWIDName = params['ParentWIDName']
          @SN = params['SN']
          unless params['Location'].nil?
            @Location = DeviceLocation.new
            @Location.deserialize(params['Location'])
          end
          unless params['FieldList'].nil?
            @FieldList = []
            params['FieldList'].each do |i|
              customfieldinfo_tmp = CustomFieldInfo.new
              customfieldinfo_tmp.deserialize(i)
              @FieldList << customfieldinfo_tmp
            end
          end
          @GroupInfo = params['GroupInfo']
          @DeviceStatus = params['DeviceStatus']
          @Status = params['Status']
        end
      end

      # 设备点位坐标值
      class DeviceLocation < TencentCloud::Common::AbstractModel
        # @param X: 点位X坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Float
        # @param Y: 点位Y坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float
        # @param Z: 点位Z坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Z: Float

        attr_accessor :X, :Y, :Z

        def initialize(x=nil, y=nil, z=nil)
          @X = x
          @Y = y
          @Z = z
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Z = params['Z']
        end
      end

      # 设备修改信息入参
      class DeviceModifyInfo < TencentCloud::Common::AbstractModel
        # @param WID: 设备id
        # @type WID: String
        # @param DeviceName: 修改后的设备名字
        # @type DeviceName: String

        attr_accessor :WID, :DeviceName

        def initialize(wid=nil, devicename=nil)
          @WID = wid
          @DeviceName = devicename
        end

        def deserialize(params)
          @WID = params['WID']
          @DeviceName = params['DeviceName']
        end
      end

      # 设备影子信息
      class DeviceShadowInfo < TencentCloud::Common::AbstractModel
        # @param WID: 设备ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param DeviceShadow: 设备影子数据,返回有效数据为"x-json:"后字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceShadow: String
        # @param DeviceShadowUpdateTime: 设备影子更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceShadowUpdateTime: String

        attr_accessor :WID, :DeviceShadow, :DeviceShadowUpdateTime

        def initialize(wid=nil, deviceshadow=nil, deviceshadowupdatetime=nil)
          @WID = wid
          @DeviceShadow = deviceshadow
          @DeviceShadowUpdateTime = deviceshadowupdatetime
        end

        def deserialize(params)
          @WID = params['WID']
          @DeviceShadow = params['DeviceShadow']
          @DeviceShadowUpdateTime = params['DeviceShadowUpdateTime']
        end
      end

      # 设备影子查询列表
      class DeviceShadowRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param Set: 设备影子列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Set: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :Set

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, set=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @Set = set
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['Set'].nil?
            @Set = []
            params['Set'].each do |i|
              deviceshadowinfo_tmp = DeviceShadowInfo.new
              deviceshadowinfo_tmp.deserialize(i)
              @Set << deviceshadowinfo_tmp
            end
          end
        end
      end

      # 设备位置信息
      class DeviceSpaceInfo < TencentCloud::Common::AbstractModel
        # @param Id: 空间Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 空间名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Level: 空间级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param Code: 空间编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String

        attr_accessor :Id, :Name, :Level, :Code

        def initialize(id=nil, name=nil, level=nil, code=nil)
          @Id = id
          @Name = name
          @Level = level
          @Code = code
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Level = params['Level']
          @Code = params['Code']
        end
      end

      # 设备挂接的空间信息
      class DeviceSpaceInfoRes < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingId: String
        # @param ElementId: 构件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementId: String
        # @param EntityType: 构件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityType: String
        # @param ElementName: 构件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementName: String
        # @param Level: 构件级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param BottomHeight: 底部标高（单位mm）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BottomHeight: Integer
        # @param SpaceCode: 空间编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceCode: String

        attr_accessor :BuildingId, :ElementId, :EntityType, :ElementName, :Level, :BottomHeight, :SpaceCode

        def initialize(buildingid=nil, elementid=nil, entitytype=nil, elementname=nil, level=nil, bottomheight=nil, spacecode=nil)
          @BuildingId = buildingid
          @ElementId = elementid
          @EntityType = entitytype
          @ElementName = elementname
          @Level = level
          @BottomHeight = bottomheight
          @SpaceCode = spacecode
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @ElementId = params['ElementId']
          @EntityType = params['EntityType']
          @ElementName = params['ElementName']
          @Level = params['Level']
          @BottomHeight = params['BottomHeight']
          @SpaceCode = params['SpaceCode']
        end
      end

      # 设备状态信息
      class DeviceStatusInfo < TencentCloud::Common::AbstractModel
        # @param WID: 设备ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String
        # @param DeviceStatus: 设备状态（online=normal+fault、offline）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceStatus: String
        # @param DeviceStatusUpdateTime: 设备状态更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceStatusUpdateTime: String
        # @param Status: 设备业务状态（normal、fault、offline）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param IsAlive: 推流状态。推流中-true，未推流-false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAlive: Boolean

        attr_accessor :WID, :DeviceStatus, :DeviceStatusUpdateTime, :Status, :IsAlive

        def initialize(wid=nil, devicestatus=nil, devicestatusupdatetime=nil, status=nil, isalive=nil)
          @WID = wid
          @DeviceStatus = devicestatus
          @DeviceStatusUpdateTime = devicestatusupdatetime
          @Status = status
          @IsAlive = isalive
        end

        def deserialize(params)
          @WID = params['WID']
          @DeviceStatus = params['DeviceStatus']
          @DeviceStatusUpdateTime = params['DeviceStatusUpdateTime']
          @Status = params['Status']
          @IsAlive = params['IsAlive']
        end
      end

      # 设备状态获取接口结果
      class DeviceStatusRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param DeviceStatusSet: 设备状态信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceStatusSet: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :DeviceStatusSet

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, devicestatusset=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @DeviceStatusSet = devicestatusset
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['DeviceStatusSet'].nil?
            @DeviceStatusSet = []
            params['DeviceStatusSet'].each do |i|
              devicestatusinfo_tmp = DeviceStatusInfo.new
              devicestatusinfo_tmp.deserialize(i)
              @DeviceStatusSet << devicestatusinfo_tmp
            end
          end
        end
      end

      # 设备状态统计结果
      class DeviceStatusStatRes < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: Integer
        # @param Total: 汇总数。在线（正常+故障） + 离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param NormalSum: 正常数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalSum: Integer
        # @param OfflineSum: 离线数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineSum: Integer
        # @param FaultSum: 故障数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaultSum: Integer
        # @param DeviceTypeOverviewSet: 设备类型概览列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceTypeOverviewSet: Array
        # @param StatLevelSet: 设备类型统计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatLevelSet: Array

        attr_accessor :WorkspaceId, :Total, :NormalSum, :OfflineSum, :FaultSum, :DeviceTypeOverviewSet, :StatLevelSet

        def initialize(workspaceid=nil, total=nil, normalsum=nil, offlinesum=nil, faultsum=nil, devicetypeoverviewset=nil, statlevelset=nil)
          @WorkspaceId = workspaceid
          @Total = total
          @NormalSum = normalsum
          @OfflineSum = offlinesum
          @FaultSum = faultsum
          @DeviceTypeOverviewSet = devicetypeoverviewset
          @StatLevelSet = statlevelset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @Total = params['Total']
          @NormalSum = params['NormalSum']
          @OfflineSum = params['OfflineSum']
          @FaultSum = params['FaultSum']
          unless params['DeviceTypeOverviewSet'].nil?
            @DeviceTypeOverviewSet = []
            params['DeviceTypeOverviewSet'].each do |i|
              devicetypeoverview_tmp = DeviceTypeOverview.new
              devicetypeoverview_tmp.deserialize(i)
              @DeviceTypeOverviewSet << devicetypeoverview_tmp
            end
          end
          unless params['StatLevelSet'].nil?
            @StatLevelSet = []
            params['StatLevelSet'].each do |i|
              statlevel_tmp = StatLevel.new
              statlevel_tmp.deserialize(i)
              @StatLevelSet << statlevel_tmp
            end
          end
        end
      end

      # 设备标签信息
      class DeviceTagInfo < TencentCloud::Common::AbstractModel
        # @param TagId: 标签Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagId: Integer
        # @param TagName: 标签名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagName: String

        attr_accessor :TagId, :TagName

        def initialize(tagid=nil, tagname=nil)
          @TagId = tagid
          @TagName = tagname
        end

        def deserialize(params)
          @TagId = params['TagId']
          @TagName = params['TagName']
        end
      end

      # 设备标签列表查询结果
      class DeviceTagRes < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param Set: 设备标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Set: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :Set

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, set=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @Set = set
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['Set'].nil?
            @Set = []
            params['Set'].each do |i|
              devicetaginfo_tmp = DeviceTagInfo.new
              devicetaginfo_tmp.deserialize(i)
              @Set << devicetaginfo_tmp
            end
          end
        end
      end

      # 设备类型
      class DeviceType < TencentCloud::Common::AbstractModel
        # @param Code: 设备类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Name: 设备类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ParentCode: 父设备类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentCode: String
        # @param ParentName: 父设备类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentName: String
        # @param IsSubsystem: 是否子系统，1是

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSubsystem: Integer

        attr_accessor :Code, :Name, :ParentCode, :ParentName, :IsSubsystem

        def initialize(code=nil, name=nil, parentcode=nil, parentname=nil, issubsystem=nil)
          @Code = code
          @Name = name
          @ParentCode = parentcode
          @ParentName = parentname
          @IsSubsystem = issubsystem
        end

        def deserialize(params)
          @Code = params['Code']
          @Name = params['Name']
          @ParentCode = params['ParentCode']
          @ParentName = params['ParentName']
          @IsSubsystem = params['IsSubsystem']
        end
      end

      # 设备类型概览信息
      class DeviceTypeOverview < TencentCloud::Common::AbstractModel
        # @param DeviceType: 设备类型值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: String
        # @param Name: 设备类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Total: 汇总数。在线（正常+故障） + 离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Normal: 正常数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Normal: Integer
        # @param Offline: 离线数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offline: Integer
        # @param Fault: 故障数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fault: Integer

        attr_accessor :DeviceType, :Name, :Total, :Normal, :Offline, :Fault

        def initialize(devicetype=nil, name=nil, total=nil, normal=nil, offline=nil, fault=nil)
          @DeviceType = devicetype
          @Name = name
          @Total = total
          @Normal = normal
          @Offline = offline
          @Fault = fault
        end

        def deserialize(params)
          @DeviceType = params['DeviceType']
          @Name = params['Name']
          @Total = params['Total']
          @Normal = params['Normal']
          @Offline = params['Offline']
          @Fault = params['Fault']
        end
      end

      # 设备类型列表
      class DeviceTypeSet < TencentCloud::Common::AbstractModel
        # @param Set: 设备类型列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Set: Array

        attr_accessor :Set

        def initialize(set=nil)
          @Set = set
        end

        def deserialize(params)
          unless params['Set'].nil?
            @Set = []
            params['Set'].each do |i|
              devicetype_tmp = DeviceType.new
              devicetype_tmp.deserialize(i)
              @Set << devicetype_tmp
            end
          end
        end
      end

      # 构件地理坐标
      class ElementCoordinates < TencentCloud::Common::AbstractModel
        # @param Longitude: 经度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Longitude: Float
        # @param Latitude: 纬度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Latitude: Float
        # @param Altitude: 高程
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Altitude: Float

        attr_accessor :Longitude, :Latitude, :Altitude

        def initialize(longitude=nil, latitude=nil, altitude=nil)
          @Longitude = longitude
          @Latitude = latitude
          @Altitude = altitude
        end

        def deserialize(params)
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
          @Altitude = params['Altitude']
        end
      end

      # 构件概要信息
      class ElementProfile < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingId: String
        # @param ElementId: 构件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementId: String
        # @param EntityType: 构件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityType: String
        # @param ElementName: 构件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementName: String
        # @param Level: 构件空间级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param BottomHeight: 底部标高（单位mm）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BottomHeight: Integer
        # @param Sort: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sort: Integer
        # @param SpaceCode: 空间编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceCode: String
        # @param SpaceTypeCode: 空间分类编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceTypeCode: String
        # @param SpaceTypeName: 空间分类名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceTypeName: String
        # @param ParentElementId: 父级构件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentElementId: String
        # @param SpacePoiId: 空间层级类型编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpacePoiId: String
        # @param ElementDesc: 构件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementDesc: String
        # @param IsDelete: 删除标记
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDelete: Integer

        attr_accessor :BuildingId, :ElementId, :EntityType, :ElementName, :Level, :BottomHeight, :Sort, :SpaceCode, :SpaceTypeCode, :SpaceTypeName, :ParentElementId, :SpacePoiId, :ElementDesc, :IsDelete

        def initialize(buildingid=nil, elementid=nil, entitytype=nil, elementname=nil, level=nil, bottomheight=nil, sort=nil, spacecode=nil, spacetypecode=nil, spacetypename=nil, parentelementid=nil, spacepoiid=nil, elementdesc=nil, isdelete=nil)
          @BuildingId = buildingid
          @ElementId = elementid
          @EntityType = entitytype
          @ElementName = elementname
          @Level = level
          @BottomHeight = bottomheight
          @Sort = sort
          @SpaceCode = spacecode
          @SpaceTypeCode = spacetypecode
          @SpaceTypeName = spacetypename
          @ParentElementId = parentelementid
          @SpacePoiId = spacepoiid
          @ElementDesc = elementdesc
          @IsDelete = isdelete
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @ElementId = params['ElementId']
          @EntityType = params['EntityType']
          @ElementName = params['ElementName']
          @Level = params['Level']
          @BottomHeight = params['BottomHeight']
          @Sort = params['Sort']
          @SpaceCode = params['SpaceCode']
          @SpaceTypeCode = params['SpaceTypeCode']
          @SpaceTypeName = params['SpaceTypeName']
          @ParentElementId = params['ParentElementId']
          @SpacePoiId = params['SpacePoiId']
          @ElementDesc = params['ElementDesc']
          @IsDelete = params['IsDelete']
        end
      end

      # 构件分页查询响应体
      class ElementProfilePageRes < TencentCloud::Common::AbstractModel
        # @param TotalCount: 构件总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param List: 构件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :TotalCount, :List

        def initialize(totalcount=nil, list=nil)
          @TotalCount = totalcount
          @List = list
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              elementprofile_tmp = ElementProfile.new
              elementprofile_tmp.deserialize(i)
              @List << elementprofile_tmp
            end
          end
        end
      end

      # 构件树节点信息
      class ElementProfileTreeNode < TencentCloud::Common::AbstractModel
        # @param ElementProfile: 构件概要信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementProfile: :class:`Tencentcloud::Weilingwith.v20230427.models.ElementProfile`
        # @param Children: 子节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array

        attr_accessor :ElementProfile, :Children

        def initialize(elementprofile=nil, children=nil)
          @ElementProfile = elementprofile
          @Children = children
        end

        def deserialize(params)
          unless params['ElementProfile'].nil?
            @ElementProfile = ElementProfile.new
            @ElementProfile.deserialize(params['ElementProfile'])
          end
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              elementprofiletreenode_tmp = ElementProfileTreeNode.new
              elementprofiletreenode_tmp.deserialize(i)
              @Children << elementprofiletreenode_tmp
            end
          end
        end
      end

      # 构件树响应体
      class ElementProfileTreeRes < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingId: String
        # @param ParentElementId: 父级构件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentElementId: String
        # @param Root: 构件树
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Root: :class:`Tencentcloud::Weilingwith.v20230427.models.ElementProfileTreeNode`

        attr_accessor :BuildingId, :ParentElementId, :Root

        def initialize(buildingid=nil, parentelementid=nil, root=nil)
          @BuildingId = buildingid
          @ParentElementId = parentelementid
          @Root = root
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @ParentElementId = params['ParentElementId']
          unless params['Root'].nil?
            @Root = ElementProfileTreeNode.new
            @Root.deserialize(params['Root'])
          end
        end
      end

      # 构件属性信息
      class ElementProperty < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 属性描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Content: 属性内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Name, :Description, :Content

        def initialize(name=nil, description=nil, content=nil)
          @Name = name
          @Description = description
          @Content = content
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Content = params['Content']
        end
      end

      # 构件属性信息响应体
      class ElementPropertyRes < TencentCloud::Common::AbstractModel
        # @param BuildingId: 建筑id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingId: String
        # @param ElementId: 构件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementId: String
        # @param PropertySet: 构件属性集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PropertySet: Array
        # @param Coordinates: 构件地理坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Coordinates: :class:`Tencentcloud::Weilingwith.v20230427.models.ElementCoordinates`
        # @param Translate: 构件偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Translate: :class:`Tencentcloud::Weilingwith.v20230427.models.ElementTranslate`
        # @param ElementName: 构件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementName: String
        # @param EntityTypeCode: 构件类型代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityTypeCode: String
        # @param EntityTypeName: 构件类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityTypeName: String

        attr_accessor :BuildingId, :ElementId, :PropertySet, :Coordinates, :Translate, :ElementName, :EntityTypeCode, :EntityTypeName

        def initialize(buildingid=nil, elementid=nil, propertyset=nil, coordinates=nil, translate=nil, elementname=nil, entitytypecode=nil, entitytypename=nil)
          @BuildingId = buildingid
          @ElementId = elementid
          @PropertySet = propertyset
          @Coordinates = coordinates
          @Translate = translate
          @ElementName = elementname
          @EntityTypeCode = entitytypecode
          @EntityTypeName = entitytypename
        end

        def deserialize(params)
          @BuildingId = params['BuildingId']
          @ElementId = params['ElementId']
          unless params['PropertySet'].nil?
            @PropertySet = []
            params['PropertySet'].each do |i|
              elementproperty_tmp = ElementProperty.new
              elementproperty_tmp.deserialize(i)
              @PropertySet << elementproperty_tmp
            end
          end
          unless params['Coordinates'].nil?
            @Coordinates = ElementCoordinates.new
            @Coordinates.deserialize(params['Coordinates'])
          end
          unless params['Translate'].nil?
            @Translate = ElementTranslate.new
            @Translate.deserialize(params['Translate'])
          end
          @ElementName = params['ElementName']
          @EntityTypeCode = params['EntityTypeCode']
          @EntityTypeName = params['EntityTypeName']
        end
      end

      # 构件平移信息
      class ElementTranslate < TencentCloud::Common::AbstractModel
        # @param X: X方向偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Float
        # @param Y: Y方向偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float
        # @param Z: Z方向偏移量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Z: Float

        attr_accessor :X, :Y, :Z

        def initialize(x=nil, y=nil, z=nil)
          @X = x
          @Y = y
          @Z = z
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Z = params['Z']
        end
      end

      # 空结果返回
      class EmptyRes < TencentCloud::Common::AbstractModel
        # @param Msg: 返回请求状态,成功ok，失败error
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String

        attr_accessor :Msg

        def initialize(msg=nil)
          @Msg = msg
        end

        def deserialize(params)
          @Msg = params['Msg']
        end
      end

      # 事件信息
      class Event < TencentCloud::Common::AbstractModel
        # @param Id: 事件id或动作Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 事件名称或动作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 事件详细信息
      class EventDetail < TencentCloud::Common::AbstractModel
        # @param Id: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 事件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param TriggerType: 事件触发类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param TriggerCondition: 事件触发条件，返回为x-json后的字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerCondition: String
        # @param ValidPeriod: 有效期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidPeriod: String
        # @param LinkRuleSet: 关联规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkRuleSet: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DeviceType: 设备类型，当触发类型为deviceType时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: String
        # @param WID: 设备的wid，当触发类型是device返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WID: String

        attr_accessor :Id, :Name, :TriggerType, :TriggerCondition, :ValidPeriod, :LinkRuleSet, :CreateTime, :DeviceType, :WID

        def initialize(id=nil, name=nil, triggertype=nil, triggercondition=nil, validperiod=nil, linkruleset=nil, createtime=nil, devicetype=nil, wid=nil)
          @Id = id
          @Name = name
          @TriggerType = triggertype
          @TriggerCondition = triggercondition
          @ValidPeriod = validperiod
          @LinkRuleSet = linkruleset
          @CreateTime = createtime
          @DeviceType = devicetype
          @WID = wid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @TriggerType = params['TriggerType']
          @TriggerCondition = params['TriggerCondition']
          @ValidPeriod = params['ValidPeriod']
          unless params['LinkRuleSet'].nil?
            @LinkRuleSet = []
            params['LinkRuleSet'].each do |i|
              linkrule_tmp = LinkRule.new
              linkrule_tmp.deserialize(i)
              @LinkRuleSet << linkrule_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @DeviceType = params['DeviceType']
          @WID = params['WID']
        end
      end

      # 事件对象
      class EventObj < TencentCloud::Common::AbstractModel
        # @param Id: 事件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 事件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: 事件触发类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Condition: 时间触发条件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Condition: String

        attr_accessor :Id, :Name, :Type, :Condition

        def initialize(id=nil, name=nil, type=nil, condition=nil)
          @Id = id
          @Name = name
          @Type = type
          @Condition = condition
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Condition = params['Condition']
        end
      end

      # 文件下载URL
      class FileDownloadURL < TencentCloud::Common::AbstractModel
        # @param FileURL: 下载地址

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileURL: String

        attr_accessor :FileURL

        def initialize(fileurl=nil)
          @FileURL = fileurl
        end

        def deserialize(params)
          @FileURL = params['FileURL']
        end
      end

      # 文件信息
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param FileId: 文件id

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param ReportName: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportName: String

        attr_accessor :FileId, :ReportName

        def initialize(fileid=nil, reportname=nil)
          @FileId = fileid
          @ReportName = reportname
        end

        def deserialize(params)
          @FileId = params['FileId']
          @ReportName = params['ReportName']
        end
      end

      # 获取文件上传URL接口回包
      class FileUploadURL < TencentCloud::Common::AbstractModel
        # @param UploadURL: 上传地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UploadURL: String
        # @param FileId: 文件Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param DownloadURL: 下载地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadURL: String

        attr_accessor :UploadURL, :FileId, :DownloadURL

        def initialize(uploadurl=nil, fileid=nil, downloadurl=nil)
          @UploadURL = uploadurl
          @FileId = fileid
          @DownloadURL = downloadurl
        end

        def deserialize(params)
          @UploadURL = params['UploadURL']
          @FileId = params['FileId']
          @DownloadURL = params['DownloadURL']
        end
      end

      # 告警处理记录
      class HandleRecordInfo < TencentCloud::Common::AbstractModel
        # @param Id: 告警处理记录id

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param OperationType: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationType: String
        # @param Time: 处理时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param FileSet: 文件列表

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSet: Array
        # @param AppId: 应用appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param ExtendOne: 扩展字段1，存非孪生中台用户id

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendOne: String

        attr_accessor :Id, :Description, :Name, :OperationType, :Time, :Type, :FileSet, :AppId, :ExtendOne

        def initialize(id=nil, description=nil, name=nil, operationtype=nil, time=nil, type=nil, fileset=nil, appid=nil, extendone=nil)
          @Id = id
          @Description = description
          @Name = name
          @OperationType = operationtype
          @Time = time
          @Type = type
          @FileSet = fileset
          @AppId = appid
          @ExtendOne = extendone
        end

        def deserialize(params)
          @Id = params['Id']
          @Description = params['Description']
          @Name = params['Name']
          @OperationType = params['OperationType']
          @Time = params['Time']
          @Type = params['Type']
          unless params['FileSet'].nil?
            @FileSet = []
            params['FileSet'].each do |i|
              fileinfo_tmp = FileInfo.new
              fileinfo_tmp.deserialize(i)
              @FileSet << fileinfo_tmp
            end
          end
          @AppId = params['AppId']
          @ExtendOne = params['ExtendOne']
        end
      end

      # 告警处理人列表
      class HandlerPersonInfo < TencentCloud::Common::AbstractModel
        # @param Id: 用户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 关联规则信息
      class LinkRule < TencentCloud::Common::AbstractModel
        # @param Id: 关联联动规则id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 关联联动规则名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 联动规则信息
      class LinkRuleInfo < TencentCloud::Common::AbstractModel
        # @param Id: 联动id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 联动名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param EventSet: 事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventSet: Array
        # @param ActionSet: 动作列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionSet: Array
        # @param Status: 状态：0开，-1关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param BeginDate: 起始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginDate: String
        # @param EndDate: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndDate: String
        # @param ValidPeriod: 有效周期内容,有效字段为x-json后的字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidPeriod: String

        attr_accessor :Id, :Name, :EventSet, :ActionSet, :Status, :BeginDate, :EndDate, :ValidPeriod

        def initialize(id=nil, name=nil, eventset=nil, actionset=nil, status=nil, begindate=nil, enddate=nil, validperiod=nil)
          @Id = id
          @Name = name
          @EventSet = eventset
          @ActionSet = actionset
          @Status = status
          @BeginDate = begindate
          @EndDate = enddate
          @ValidPeriod = validperiod
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          unless params['EventSet'].nil?
            @EventSet = []
            params['EventSet'].each do |i|
              event_tmp = Event.new
              event_tmp.deserialize(i)
              @EventSet << event_tmp
            end
          end
          unless params['ActionSet'].nil?
            @ActionSet = []
            params['ActionSet'].each do |i|
              action_tmp = Action.new
              action_tmp.deserialize(i)
              @ActionSet << action_tmp
            end
          end
          @Status = params['Status']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @ValidPeriod = params['ValidPeriod']
        end
      end

      # 上报消息概要
      class MessageProfile < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型
        # @type AppType: String
        # @param ModelId: 模型Id
        # @type ModelId: String
        # @param PoiCode: 设备类型
        # @type PoiCode: String

        attr_accessor :AppType, :ModelId, :PoiCode

        def initialize(apptype=nil, modelid=nil, poicode=nil)
          @AppType = apptype
          @ModelId = modelid
          @PoiCode = poicode
        end

        def deserialize(params)
          @AppType = params['AppType']
          @ModelId = params['ModelId']
          @PoiCode = params['PoiCode']
        end
      end

      # 模型基础信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: Integer
        # @param ModelName: 模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param ModelId: 物模型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param RelatedProduct: 关联产品信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedProduct: Array
        # @param DeviceTypeName: 设备类型名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceTypeName: String
        # @param DeviceType: 设备类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: String
        # @param ModelType: 物模型类型，产品模型/标准模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelType: Integer
        # @param ModelParams: 模型参数内容,有效字段为"x-json:"后的字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelParams: String

        attr_accessor :WorkspaceId, :ModelName, :ModelId, :RelatedProduct, :DeviceTypeName, :DeviceType, :ModelType, :ModelParams

        def initialize(workspaceid=nil, modelname=nil, modelid=nil, relatedproduct=nil, devicetypename=nil, devicetype=nil, modeltype=nil, modelparams=nil)
          @WorkspaceId = workspaceid
          @ModelName = modelname
          @ModelId = modelid
          @RelatedProduct = relatedproduct
          @DeviceTypeName = devicetypename
          @DeviceType = devicetype
          @ModelType = modeltype
          @ModelParams = modelparams
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ModelName = params['ModelName']
          @ModelId = params['ModelId']
          unless params['RelatedProduct'].nil?
            @RelatedProduct = []
            params['RelatedProduct'].each do |i|
              relatedproduct_tmp = RelatedProduct.new
              relatedproduct_tmp.deserialize(i)
              @RelatedProduct << relatedproduct_tmp
            end
          end
          @DeviceTypeName = params['DeviceTypeName']
          @DeviceType = params['DeviceType']
          @ModelType = params['ModelType']
          @ModelParams = params['ModelParams']
        end
      end

      # 模型列表查询结果
      class ModelSet < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param Set: 模型基础信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Set: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :Set

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, set=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @Set = set
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['Set'].nil?
            @Set = []
            params['Set'].each do |i|
              modelinfo_tmp = ModelInfo.new
              modelinfo_tmp.deserialize(i)
              @Set << modelinfo_tmp
            end
          end
        end
      end

      # ModifyDeviceName请求参数结构体
      class ModifyDeviceNameRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param Set: 设备修改信息集合
        # @type Set: Array
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :WorkspaceId, :Set, :ApplicationToken

        def initialize(workspaceid=nil, set=nil, applicationtoken=nil)
          @WorkspaceId = workspaceid
          @Set = set
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['Set'].nil?
            @Set = []
            params['Set'].each do |i|
              devicemodifyinfo_tmp = DeviceModifyInfo.new
              devicemodifyinfo_tmp.deserialize(i)
              @Set << devicemodifyinfo_tmp
            end
          end
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # ModifyDeviceName返回参数结构体
      class ModifyDeviceNameResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回请求结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 处理记录项
      class ProcessRecordInfo < TencentCloud::Common::AbstractModel
        # @param Id: 告警的id
        # @type Id: String
        # @param ProcessTime: 处理时间，毫秒
        # @type ProcessTime: Integer
        # @param ProcessType: 处理类型，此处操作类型固定填add_record
        # @type ProcessType: String
        # @param Processor: 注:此字段填写的是孪生中台的用户，非孪生中台用户不填该字段
        # [{\"id\":\"123\",\"name\":\"tes\"}]
        # @type Processor: String
        # @param ProcessDescription: 处理描述信息
        # @type ProcessDescription: String
        # @param AttachedFileId: 附加文件标识
        # @type AttachedFileId: String

        attr_accessor :Id, :ProcessTime, :ProcessType, :Processor, :ProcessDescription, :AttachedFileId

        def initialize(id=nil, processtime=nil, processtype=nil, processor=nil, processdescription=nil, attachedfileid=nil)
          @Id = id
          @ProcessTime = processtime
          @ProcessType = processtype
          @Processor = processor
          @ProcessDescription = processdescription
          @AttachedFileId = attachedfileid
        end

        def deserialize(params)
          @Id = params['Id']
          @ProcessTime = params['ProcessTime']
          @ProcessType = params['ProcessType']
          @Processor = params['Processor']
          @ProcessDescription = params['ProcessDescription']
          @AttachedFileId = params['AttachedFileId']
        end
      end

      # 产品信息
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: Integer
        # @param ProductId: 产品PID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: Integer
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param DeviceTypeName: 设备类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceTypeName: String
        # @param DeviceTypeId: 设备类型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceTypeId: String
        # @param Attribute: 产品属性，如：网关（1）、直连设备（2）、子设备（3）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attribute: Integer
        # @param ProductType: 产品型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductType: String
        # @param ProductAbility: 产品能力:信令数据、音视频。二进制数值中第0位表示信令数据、第1位表示音视频 。1（信令数据），3（具有信令数据以及音视频能力）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductAbility: Integer
        # @param Manufacturer: 生产厂商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Manufacturer: String
        # @param MaintenanceMfr: 维保厂商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaintenanceMfr: String
        # @param ModelName: 物模型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelName: String
        # @param ModelId: 物模型id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelType: 物模型类型，产品模型/标准模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelType: Integer

        attr_accessor :WorkspaceId, :ProductId, :ProductName, :DeviceTypeName, :DeviceTypeId, :Attribute, :ProductType, :ProductAbility, :Manufacturer, :MaintenanceMfr, :ModelName, :ModelId, :ModelType

        def initialize(workspaceid=nil, productid=nil, productname=nil, devicetypename=nil, devicetypeid=nil, attribute=nil, producttype=nil, productability=nil, manufacturer=nil, maintenancemfr=nil, modelname=nil, modelid=nil, modeltype=nil)
          @WorkspaceId = workspaceid
          @ProductId = productid
          @ProductName = productname
          @DeviceTypeName = devicetypename
          @DeviceTypeId = devicetypeid
          @Attribute = attribute
          @ProductType = producttype
          @ProductAbility = productability
          @Manufacturer = manufacturer
          @MaintenanceMfr = maintenancemfr
          @ModelName = modelname
          @ModelId = modelid
          @ModelType = modeltype
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @DeviceTypeName = params['DeviceTypeName']
          @DeviceTypeId = params['DeviceTypeId']
          @Attribute = params['Attribute']
          @ProductType = params['ProductType']
          @ProductAbility = params['ProductAbility']
          @Manufacturer = params['Manufacturer']
          @MaintenanceMfr = params['MaintenanceMfr']
          @ModelName = params['ModelName']
          @ModelId = params['ModelId']
          @ModelType = params['ModelType']
        end
      end

      # 产品列表查询结果
      class ProductSet < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalPage: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPage: Integer
        # @param TotalRow: 总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalRow: Integer
        # @param Product: 产品信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Product: Array

        attr_accessor :PageNumber, :PageSize, :TotalPage, :TotalRow, :Product

        def initialize(pagenumber=nil, pagesize=nil, totalpage=nil, totalrow=nil, product=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalPage = totalpage
          @TotalRow = totalrow
          @Product = product
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalPage = params['TotalPage']
          @TotalRow = params['TotalRow']
          unless params['Product'].nil?
            @Product = []
            params['Product'].each do |i|
              productinfo_tmp = ProductInfo.new
              productinfo_tmp.deserialize(i)
              @Product << productinfo_tmp
            end
          end
        end
      end

      # 视频流Raw协议信息
      class RawInfo < TencentCloud::Common::AbstractModel
        # @param SM4Vector: 加密向量（如果视频网关选择流为非加密传输这个参数可忽略）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SM4Vector: String
        # @param NATIP: 专线ip (非专线接入可忽略)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NATIP: String
        # @param StreamToken: 客户端握手鉴权参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamToken: String
        # @param Port: 拉流端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param StreamEnKey: 视频流加密key,目前为AES128加密KEY（如果视频网关选择流为非加密传输这个参数可忽略）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamEnKey: String
        # @param IP: 拉流公网地址（非公网接入时，这个地址是内网地址）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param InnerIP: 拉流内网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerIP: String

        attr_accessor :SM4Vector, :NATIP, :StreamToken, :Port, :StreamEnKey, :IP, :InnerIP

        def initialize(sm4vector=nil, natip=nil, streamtoken=nil, port=nil, streamenkey=nil, ip=nil, innerip=nil)
          @SM4Vector = sm4vector
          @NATIP = natip
          @StreamToken = streamtoken
          @Port = port
          @StreamEnKey = streamenkey
          @IP = ip
          @InnerIP = innerip
        end

        def deserialize(params)
          @SM4Vector = params['SM4Vector']
          @NATIP = params['NATIP']
          @StreamToken = params['StreamToken']
          @Port = params['Port']
          @StreamEnKey = params['StreamEnKey']
          @IP = params['IP']
          @InnerIP = params['InnerIP']
        end
      end

      # 录像信息
      class RecordInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 本录像片段开始时间（s）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: Integer
        # @param EndTime: 本录像片段结束时间（s）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param VideoURL: 录像片段文件url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoURL: String

        attr_accessor :StartTime, :EndTime, :VideoURL

        def initialize(starttime=nil, endtime=nil, videourl=nil)
          @StartTime = starttime
          @EndTime = endtime
          @VideoURL = videourl
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @VideoURL = params['VideoURL']
        end
      end

      # 关联产品信息
      class RelatedProduct < TencentCloud::Common::AbstractModel
        # @param Id: 关联产品pid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 关联产品名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Id, :Name

        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

      # 单条消息上报请求
      class ReportAppMessage < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param Profile: 消息定义
        # @type Profile: :class:`Tencentcloud::Weilingwith.v20230427.models.MessageProfile`
        # @param ReportTs: 数据上报时间
        # @type ReportTs: Integer
        # @param Properties: 属性定义 - KV，若为json格式，需在前加上x-json:，有效字段为x-json:后的字段
        # @type Properties: String
        # @param EventSet: 事件定义 - KKV，若为json格式，需在前加上x-json:，有效字段为x-json:后的字段
        # @type EventSet: String
        # @param ServiceSet: 服务定义 - KKV,若为json格式，需在前加上x-json:，有效字段为x-json:后的字段
        # @type ServiceSet: String
        # @param ExtendTwo: 扩展字段2，如：算法上报id，若为json格式，需在前加上x-json:
        # @type ExtendTwo: String
        # @param Echo: 透传信息，若为json格式，需在前加上x-json:，有效字段为x-json:后的字段
        # @type Echo: String

        attr_accessor :WorkspaceId, :Profile, :ReportTs, :Properties, :EventSet, :ServiceSet, :ExtendTwo, :Echo

        def initialize(workspaceid=nil, profile=nil, reportts=nil, properties=nil, eventset=nil, serviceset=nil, extendtwo=nil, echo=nil)
          @WorkspaceId = workspaceid
          @Profile = profile
          @ReportTs = reportts
          @Properties = properties
          @EventSet = eventset
          @ServiceSet = serviceset
          @ExtendTwo = extendtwo
          @Echo = echo
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['Profile'].nil?
            @Profile = MessageProfile.new
            @Profile.deserialize(params['Profile'])
          end
          @ReportTs = params['ReportTs']
          @Properties = params['Properties']
          @EventSet = params['EventSet']
          @ServiceSet = params['ServiceSet']
          @ExtendTwo = params['ExtendTwo']
          @Echo = params['Echo']
        end
      end

      # ReportAppMessage请求参数结构体
      class ReportAppMessageRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param Profile: 消息定义
        # @type Profile: :class:`Tencentcloud::Weilingwith.v20230427.models.MessageProfile`
        # @param ReportTs: 数据上报时间
        # @type ReportTs: Integer
        # @param Properties: 属性定义 - KV的json格式,有效字段为x-json:后的字段
        # @type Properties: String
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param EventSet: 事件定义 - KKV的json格式,有效字段为x-json:后的字段
        # @type EventSet: String
        # @param ServiceSet: 服务定义 - KKV的json格式,有效字段为x-json:后的字段
        # @type ServiceSet: String
        # @param ExtendTwo: 扩展字段2，如：算法上报id，若为json格式，需传x-json:{}，有效字段为x-json:后的字段
        # @type ExtendTwo: String
        # @param Echo: 透传信息，若为json格式，需传x-json:{}，有效字段为x-json:后的字段
        # @type Echo: String

        attr_accessor :WorkspaceId, :Profile, :ReportTs, :Properties, :ApplicationToken, :EventSet, :ServiceSet, :ExtendTwo, :Echo

        def initialize(workspaceid=nil, profile=nil, reportts=nil, properties=nil, applicationtoken=nil, eventset=nil, serviceset=nil, extendtwo=nil, echo=nil)
          @WorkspaceId = workspaceid
          @Profile = profile
          @ReportTs = reportts
          @Properties = properties
          @ApplicationToken = applicationtoken
          @EventSet = eventset
          @ServiceSet = serviceset
          @ExtendTwo = extendtwo
          @Echo = echo
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['Profile'].nil?
            @Profile = MessageProfile.new
            @Profile.deserialize(params['Profile'])
          end
          @ReportTs = params['ReportTs']
          @Properties = params['Properties']
          @ApplicationToken = params['ApplicationToken']
          @EventSet = params['EventSet']
          @ServiceSet = params['ServiceSet']
          @ExtendTwo = params['ExtendTwo']
          @Echo = params['Echo']
        end
      end

      # ReportAppMessage返回参数结构体
      class ReportAppMessageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 上报单条信息结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 上报图片列表
      class ReportImg < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String

        attr_accessor :Type, :Data

        def initialize(type=nil, data=nil)
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # 上报消息结果
      class ReportMsgRes < TencentCloud::Common::AbstractModel
        # @param ReportId: 上报消息对应下标的16位标识Id, 即第几个消息

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportId: String
        # @param ReportStatus: 上报消息结果，1表示成功推送，0表示推送失败

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReportStatus: Integer

        attr_accessor :ReportId, :ReportStatus

        def initialize(reportid=nil, reportstatus=nil)
          @ReportId = reportid
          @ReportStatus = reportstatus
        end

        def deserialize(params)
          @ReportId = params['ReportId']
          @ReportStatus = params['ReportStatus']
        end
      end

      # 规则详情查询结果
      class RuleDetailRes < TencentCloud::Common::AbstractModel
        # @param RuleId: 联动id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleId: Integer
        # @param RuleName: 联动名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param RuleDesc: 联动说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDesc: String
        # @param ValidType: 1 全天有效，0：固定时间段有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidType: Integer
        # @param ValidPeriod: 有效期，json字符串（全天有效时为空）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidPeriod: String
        # @param BeginDate: 起始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginDate: String
        # @param EndDate: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndDate: String
        # @param Status: 启用状态。1-启用，0-停用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param EventRule: 触发规则，事件的组合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventRule: String
        # @param EventInfoSet: 事件对象集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventInfoSet: Array
        # @param ActionInfoSet: 动作对象集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionInfoSet: Array

        attr_accessor :RuleId, :RuleName, :RuleDesc, :ValidType, :ValidPeriod, :BeginDate, :EndDate, :Status, :EventRule, :EventInfoSet, :ActionInfoSet

        def initialize(ruleid=nil, rulename=nil, ruledesc=nil, validtype=nil, validperiod=nil, begindate=nil, enddate=nil, status=nil, eventrule=nil, eventinfoset=nil, actioninfoset=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @RuleDesc = ruledesc
          @ValidType = validtype
          @ValidPeriod = validperiod
          @BeginDate = begindate
          @EndDate = enddate
          @Status = status
          @EventRule = eventrule
          @EventInfoSet = eventinfoset
          @ActionInfoSet = actioninfoset
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @RuleDesc = params['RuleDesc']
          @ValidType = params['ValidType']
          @ValidPeriod = params['ValidPeriod']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @Status = params['Status']
          @EventRule = params['EventRule']
          unless params['EventInfoSet'].nil?
            @EventInfoSet = []
            params['EventInfoSet'].each do |i|
              eventobj_tmp = EventObj.new
              eventobj_tmp.deserialize(i)
              @EventInfoSet << eventobj_tmp
            end
          end
          unless params['ActionInfoSet'].nil?
            @ActionInfoSet = []
            params['ActionInfoSet'].each do |i|
              actionobj_tmp = ActionObj.new
              actionobj_tmp.deserialize(i)
              @ActionInfoSet << actionobj_tmp
            end
          end
        end
      end

      # 场景信息
      class SceneInfo < TencentCloud::Common::AbstractModel
        # @param SceneId: 场景id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneId: String
        # @param SceneName: 场景名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneName: String
        # @param Version: 场景版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String

        attr_accessor :SceneId, :SceneName, :Version

        def initialize(sceneid=nil, scenename=nil, version=nil)
          @SceneId = sceneid
          @SceneName = scenename
          @Version = version
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @SceneName = params['SceneName']
          @Version = params['Version']
        end
      end

      # 场景列表响应体
      class SceneListRes < TencentCloud::Common::AbstractModel
        # @param SceneList: 场景列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneList: Array

        attr_accessor :SceneList

        def initialize(scenelist=nil)
          @SceneList = scenelist
        end

        def deserialize(params)
          unless params['SceneList'].nil?
            @SceneList = []
            params['SceneList'].each do |i|
              sceneinfo_tmp = SceneInfo.new
              sceneinfo_tmp.deserialize(i)
              @SceneList << sceneinfo_tmp
            end
          end
        end
      end

      # 查询项目空间楼栋数量与建筑面积响应体
      class SpaceDataListStatsRes < TencentCloud::Common::AbstractModel
        # @param List: 楼栋数量与建筑面积列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :List

        def initialize(list=nil)
          @List = list
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              spacedatastats_tmp = SpaceDataStats.new
              spacedatastats_tmp.deserialize(i)
              @List << spacedatastats_tmp
            end
          end
        end
      end

      # 项目空间楼栋数量与建筑面积出参
      class SpaceDataStats < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param WorkspaceName: 工作空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceName: String
        # @param BuildingCount: 楼栋数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingCount: Integer
        # @param BuildingArea: 建筑面积
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingArea: Float

        attr_accessor :WorkspaceId, :WorkspaceName, :BuildingCount, :BuildingArea

        def initialize(workspaceid=nil, workspacename=nil, buildingcount=nil, buildingarea=nil)
          @WorkspaceId = workspaceid
          @WorkspaceName = workspacename
          @BuildingCount = buildingcount
          @BuildingArea = buildingarea
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkspaceName = params['WorkspaceName']
          @BuildingCount = params['BuildingCount']
          @BuildingArea = params['BuildingArea']
        end
      end

      # 查询租户楼栋数量和楼栋建筑面积相应体
      class SpaceDataTotalStatsRes < TencentCloud::Common::AbstractModel
        # @param BuildingCount: 总楼栋数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingCount: Integer
        # @param BuildingArea: 总建筑面积
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BuildingArea: Float

        attr_accessor :BuildingCount, :BuildingArea

        def initialize(buildingcount=nil, buildingarea=nil)
          @BuildingCount = buildingcount
          @BuildingArea = buildingarea
        end

        def deserialize(params)
          @BuildingCount = params['BuildingCount']
          @BuildingArea = params['BuildingArea']
        end
      end

      # 查询指定空间id列表响应
      class SpaceDeviceIdListRes < TencentCloud::Common::AbstractModel
        # @param DeviceIds: 设备id列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceIds: Array

        attr_accessor :DeviceIds

        def initialize(deviceids=nil)
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @DeviceIds = params['DeviceIds']
        end
      end

      # 设备-空间绑定关系
      class SpaceDeviceRelation < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceId: String
        # @param ElementId: 构件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementId: String

        attr_accessor :DeviceId, :ElementId

        def initialize(deviceid=nil, elementid=nil)
          @DeviceId = deviceid
          @ElementId = elementid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ElementId = params['ElementId']
        end
      end

      # 设备-空间绑定关系响应体
      class SpaceDeviceRelationRes < TencentCloud::Common::AbstractModel
        # @param SpaceDeviceRelationList: 设备空间绑定关系列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceDeviceRelationList: Array

        attr_accessor :SpaceDeviceRelationList

        def initialize(spacedevicerelationlist=nil)
          @SpaceDeviceRelationList = spacedevicerelationlist
        end

        def deserialize(params)
          unless params['SpaceDeviceRelationList'].nil?
            @SpaceDeviceRelationList = []
            params['SpaceDeviceRelationList'].each do |i|
              spacedevicerelation_tmp = SpaceDeviceRelation.new
              spacedevicerelation_tmp.deserialize(i)
              @SpaceDeviceRelationList << spacedevicerelation_tmp
            end
          end
        end
      end

      # 项目空间详细信息
      class SpaceInfo < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 项目空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: Integer
        # @param TenantId: 租户id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: Integer
        # @param EnglishName: 英文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnglishName: String
        # @param ChineseName: 中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChineseName: String
        # @param Description: 项目空间描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: 项目空间状态:0 启用 1 停用 -1 已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param IsCommWorkspace: 是否是公共空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCommWorkspace: Boolean
        # @param ValidityStartTime: 有效期开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityStartTime: String
        # @param ValidityEndTime: 有效期结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityEndTime: String
        # @param Selected: 选中状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Selected: Integer
        # @param IsSystem: 系统生成状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSystem: Integer

        attr_accessor :WorkspaceId, :TenantId, :EnglishName, :ChineseName, :Description, :Status, :IsCommWorkspace, :ValidityStartTime, :ValidityEndTime, :Selected, :IsSystem

        def initialize(workspaceid=nil, tenantid=nil, englishname=nil, chinesename=nil, description=nil, status=nil, iscommworkspace=nil, validitystarttime=nil, validityendtime=nil, selected=nil, issystem=nil)
          @WorkspaceId = workspaceid
          @TenantId = tenantid
          @EnglishName = englishname
          @ChineseName = chinesename
          @Description = description
          @Status = status
          @IsCommWorkspace = iscommworkspace
          @ValidityStartTime = validitystarttime
          @ValidityEndTime = validityendtime
          @Selected = selected
          @IsSystem = issystem
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @TenantId = params['TenantId']
          @EnglishName = params['EnglishName']
          @ChineseName = params['ChineseName']
          @Description = params['Description']
          @Status = params['Status']
          @IsCommWorkspace = params['IsCommWorkspace']
          @ValidityStartTime = params['ValidityStartTime']
          @ValidityEndTime = params['ValidityEndTime']
          @Selected = params['Selected']
          @IsSystem = params['IsSystem']
        end
      end

      # 空间层级关系
      class SpaceRelation < TencentCloud::Common::AbstractModel
        # @param ElementId: 构件id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementId: String
        # @param ElementName: 构件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ElementName: String
        # @param Level: 空间层级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: Integer
        # @param SpaceCode: 空间编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceCode: String
        # @param ParentSpaceCode: 父级空间编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentSpaceCode: String
        # @param Children: 子构件信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Children: Array

        attr_accessor :ElementId, :ElementName, :Level, :SpaceCode, :ParentSpaceCode, :Children

        def initialize(elementid=nil, elementname=nil, level=nil, spacecode=nil, parentspacecode=nil, children=nil)
          @ElementId = elementid
          @ElementName = elementname
          @Level = level
          @SpaceCode = spacecode
          @ParentSpaceCode = parentspacecode
          @Children = children
        end

        def deserialize(params)
          @ElementId = params['ElementId']
          @ElementName = params['ElementName']
          @Level = params['Level']
          @SpaceCode = params['SpaceCode']
          @ParentSpaceCode = params['ParentSpaceCode']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              spacerelation_tmp = SpaceRelation.new
              spacerelation_tmp.deserialize(i)
              @Children << spacerelation_tmp
            end
          end
        end
      end

      # 空间层级关系响应体
      class SpaceRelationRes < TencentCloud::Common::AbstractModel
        # @param SpaceRelation: 空间层级关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceRelation: :class:`Tencentcloud::Weilingwith.v20230427.models.SpaceRelation`

        attr_accessor :SpaceRelation

        def initialize(spacerelation=nil)
          @SpaceRelation = spacerelation
        end

        def deserialize(params)
          unless params['SpaceRelation'].nil?
            @SpaceRelation = SpaceRelation.new
            @SpaceRelation.deserialize(params['SpaceRelation'])
          end
        end
      end

      # 空间分类
      class SpaceType < TencentCloud::Common::AbstractModel
        # @param SpaceTypeCode: 空间分类编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceTypeCode: String
        # @param SpaceTypeName: 空间分类名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceTypeName: String

        attr_accessor :SpaceTypeCode, :SpaceTypeName

        def initialize(spacetypecode=nil, spacetypename=nil)
          @SpaceTypeCode = spacetypecode
          @SpaceTypeName = spacetypename
        end

        def deserialize(params)
          @SpaceTypeCode = params['SpaceTypeCode']
          @SpaceTypeName = params['SpaceTypeName']
        end
      end

      # 空间分类列表响应体
      class SpaceTypeListRes < TencentCloud::Common::AbstractModel
        # @param SpaceTypeList: 空间分类列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceTypeList: Array

        attr_accessor :SpaceTypeList

        def initialize(spacetypelist=nil)
          @SpaceTypeList = spacetypelist
        end

        def deserialize(params)
          unless params['SpaceTypeList'].nil?
            @SpaceTypeList = []
            params['SpaceTypeList'].each do |i|
              spacetype_tmp = SpaceType.new
              spacetype_tmp.deserialize(i)
              @SpaceTypeList << spacetype_tmp
            end
          end
        end
      end

      # 部门用户
      class SsoDepartment < TencentCloud::Common::AbstractModel
        # @param DepartmentId: 部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param Name: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param ParentDepartmentId: 父级部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentDepartmentId: String

        attr_accessor :DepartmentId, :Name, :ParentDepartmentId

        def initialize(departmentid=nil, name=nil, parentdepartmentid=nil)
          @DepartmentId = departmentid
          @Name = name
          @ParentDepartmentId = parentdepartmentid
        end

        def deserialize(params)
          @DepartmentId = params['DepartmentId']
          @Name = params['Name']
          @ParentDepartmentId = params['ParentDepartmentId']
        end
      end

      # 部门用户结果
      class SsoDepartmentsResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Departments: 部门列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Departments: Array

        attr_accessor :Total, :Departments

        def initialize(total=nil, departments=nil)
          @Total = total
          @Departments = departments
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Departments'].nil?
            @Departments = []
            params['Departments'].each do |i|
              ssodepartment_tmp = SsoDepartment.new
              ssodepartment_tmp.deserialize(i)
              @Departments << ssodepartment_tmp
            end
          end
        end
      end

      # 部门用户
      class SsoTeamUser < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param RealName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealName: String
        # @param UserType: 用户类型，1-超级管理员；2-1号管理员；3-普通管理员；99-普通用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param TenantId: 所属租户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Phone: 电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Status: 用户状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateAt: Integer
        # @param DepartmentId: 部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param DepartmentName: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentName: String
        # @param LinkFilter: 是否关联权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkFilter: Integer

        attr_accessor :UserId, :RealName, :UserType, :TenantId, :Email, :Phone, :Status, :CreateAt, :DepartmentId, :DepartmentName, :LinkFilter

        def initialize(userid=nil, realname=nil, usertype=nil, tenantid=nil, email=nil, phone=nil, status=nil, createat=nil, departmentid=nil, departmentname=nil, linkfilter=nil)
          @UserId = userid
          @RealName = realname
          @UserType = usertype
          @TenantId = tenantid
          @Email = email
          @Phone = phone
          @Status = status
          @CreateAt = createat
          @DepartmentId = departmentid
          @DepartmentName = departmentname
          @LinkFilter = linkfilter
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RealName = params['RealName']
          @UserType = params['UserType']
          @TenantId = params['TenantId']
          @Email = params['Email']
          @Phone = params['Phone']
          @Status = params['Status']
          @CreateAt = params['CreateAt']
          @DepartmentId = params['DepartmentId']
          @DepartmentName = params['DepartmentName']
          @LinkFilter = params['LinkFilter']
        end
      end

      # 空间用户结果
      class SsoTeamUserResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Users: 部门用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array

        attr_accessor :Total, :Users

        def initialize(total=nil, users=nil)
          @Total = total
          @Users = users
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              ssoteamuser_tmp = SsoTeamUser.new
              ssoteamuser_tmp.deserialize(i)
              @Users << ssoteamuser_tmp
            end
          end
        end
      end

      # 用户结果
      class SsoUser < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param RealName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealName: String
        # @param UserType: 用户类型，1-超级管理员；2-1号管理员；3-普通管理员；99-普通用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param TenantId: 所属租户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TenantId: String
        # @param UserGroup: 所属组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserGroup: String
        # @param Email: 邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Email: String
        # @param Phone: 电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phone: String
        # @param Status: 用户状态，0待审核，1正常启用，2禁用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateAt: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateAt: Integer
        # @param UpdateAt: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateAt: Integer
        # @param BelongTeam: 是否属于团队，0不可用，1属于，2不属
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BelongTeam: Integer
        # @param DepartmentId: 部门ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentId: String
        # @param DepartmentName: 部门名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentName: String
        # @param DepartmentUserId: 子账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DepartmentUserId: Integer
        # @param Password: 密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Password: String

        attr_accessor :UserId, :UserName, :RealName, :UserType, :TenantId, :UserGroup, :Email, :Phone, :Status, :CreateAt, :UpdateAt, :BelongTeam, :DepartmentId, :DepartmentName, :DepartmentUserId, :Password

        def initialize(userid=nil, username=nil, realname=nil, usertype=nil, tenantid=nil, usergroup=nil, email=nil, phone=nil, status=nil, createat=nil, updateat=nil, belongteam=nil, departmentid=nil, departmentname=nil, departmentuserid=nil, password=nil)
          @UserId = userid
          @UserName = username
          @RealName = realname
          @UserType = usertype
          @TenantId = tenantid
          @UserGroup = usergroup
          @Email = email
          @Phone = phone
          @Status = status
          @CreateAt = createat
          @UpdateAt = updateat
          @BelongTeam = belongteam
          @DepartmentId = departmentid
          @DepartmentName = departmentname
          @DepartmentUserId = departmentuserid
          @Password = password
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @RealName = params['RealName']
          @UserType = params['UserType']
          @TenantId = params['TenantId']
          @UserGroup = params['UserGroup']
          @Email = params['Email']
          @Phone = params['Phone']
          @Status = params['Status']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
          @BelongTeam = params['BelongTeam']
          @DepartmentId = params['DepartmentId']
          @DepartmentName = params['DepartmentName']
          @DepartmentUserId = params['DepartmentUserId']
          @Password = params['Password']
        end
      end

      # 租户人员结果
      class SsoUserResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Users: 租户人员数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array

        attr_accessor :Total, :Users

        def initialize(total=nil, users=nil)
          @Total = total
          @Users = users
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              ssouser_tmp = SsoUser.new
              ssouser_tmp.deserialize(i)
              @Users << ssouser_tmp
            end
          end
        end
      end

      # 设备类型统计
      class StatDeviceType < TencentCloud::Common::AbstractModel
        # @param Total: 汇总数。在线（正常+故障） + 离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Normal: 正常数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Normal: Integer
        # @param Offline: 离线数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offline: Integer
        # @param Fault: 故障数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fault: Integer
        # @param Name: 设备名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param DeviceType: 设备类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: String

        attr_accessor :Total, :Normal, :Offline, :Fault, :Name, :DeviceType

        def initialize(total=nil, normal=nil, offline=nil, fault=nil, name=nil, devicetype=nil)
          @Total = total
          @Normal = normal
          @Offline = offline
          @Fault = fault
          @Name = name
          @DeviceType = devicetype
        end

        def deserialize(params)
          @Total = params['Total']
          @Normal = params['Normal']
          @Offline = params['Offline']
          @Fault = params['Fault']
          @Name = params['Name']
          @DeviceType = params['DeviceType']
        end
      end

      # 层级统计
      class StatLevel < TencentCloud::Common::AbstractModel
        # @param Total: 汇总数。在线（正常+故障） + 离线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param NormalSum: 正常数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalSum: Integer
        # @param OfflineSum: 离线数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineSum: Integer
        # @param FaultSum: 故障数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaultSum: Integer
        # @param SpaceCode: 空间id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceCode: String
        # @param StatDeviceTypeSet: 设备类型统计列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatDeviceTypeSet: Array

        attr_accessor :Total, :NormalSum, :OfflineSum, :FaultSum, :SpaceCode, :StatDeviceTypeSet

        def initialize(total=nil, normalsum=nil, offlinesum=nil, faultsum=nil, spacecode=nil, statdevicetypeset=nil)
          @Total = total
          @NormalSum = normalsum
          @OfflineSum = offlinesum
          @FaultSum = faultsum
          @SpaceCode = spacecode
          @StatDeviceTypeSet = statdevicetypeset
        end

        def deserialize(params)
          @Total = params['Total']
          @NormalSum = params['NormalSum']
          @OfflineSum = params['OfflineSum']
          @FaultSum = params['FaultSum']
          @SpaceCode = params['SpaceCode']
          unless params['StatDeviceTypeSet'].nil?
            @StatDeviceTypeSet = []
            params['StatDeviceTypeSet'].each do |i|
              statdevicetype_tmp = StatDeviceType.new
              statdevicetype_tmp.deserialize(i)
              @StatDeviceTypeSet << statdevicetype_tmp
            end
          end
        end
      end

      # StopVideoStreaming请求参数结构体
      class StopVideoStreamingRequest < TencentCloud::Common::AbstractModel
        # @param Stream: 流的唯一标识，播放链接尾缀
        # @type Stream: String
        # @param WID: 设备的唯一标识
        # @type WID: String
        # @param WorkspaceId: 工作空间Id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String

        attr_accessor :Stream, :WID, :WorkspaceId, :ApplicationToken

        def initialize(stream=nil, wid=nil, workspaceid=nil, applicationtoken=nil)
          @Stream = stream
          @WID = wid
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
        end

        def deserialize(params)
          @Stream = params['Stream']
          @WID = params['WID']
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
        end
      end

      # StopVideoStreaming返回参数结构体
      class StopVideoStreamingResponse < TencentCloud::Common::AbstractModel
        # @param Result: 停流接口返回结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkspaceParkAttributes请求参数结构体
      class UpdateWorkspaceParkAttributesRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间id
        # @type WorkspaceId: Integer
        # @param ApplicationToken: 应用token
        # @type ApplicationToken: String
        # @param ParkName: 园区简称
        # @type ParkName: String
        # @param ParkNum: 园区编号
        # @type ParkNum: String

        attr_accessor :WorkspaceId, :ApplicationToken, :ParkName, :ParkNum

        def initialize(workspaceid=nil, applicationtoken=nil, parkname=nil, parknum=nil)
          @WorkspaceId = workspaceid
          @ApplicationToken = applicationtoken
          @ParkName = parkname
          @ParkNum = parknum
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ApplicationToken = params['ApplicationToken']
          @ParkName = params['ParkName']
          @ParkNum = params['ParkNum']
        end
      end

      # UpdateWorkspaceParkAttributes返回参数结构体
      class UpdateWorkspaceParkAttributesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改工作空间园区属性结果
        # @type Result: :class:`Tencentcloud::Weilingwith.v20230427.models.EmptyRes`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = EmptyRes.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云录像接口结果
      class VideoCloudRecordRes < TencentCloud::Common::AbstractModel
        # @param TotalCount: 录像信息总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RecordSet: 录像信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordSet: Array

        attr_accessor :TotalCount, :RecordSet

        def initialize(totalcount=nil, recordset=nil)
          @TotalCount = totalcount
          @RecordSet = recordset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RecordSet'].nil?
            @RecordSet = []
            params['RecordSet'].each do |i|
              recordinfo_tmp = RecordInfo.new
              recordinfo_tmp.deserialize(i)
              @RecordSet << recordinfo_tmp
            end
          end
        end
      end

      # 视频流查询结果
      class VideoRecordStreamRes < TencentCloud::Common::AbstractModel
        # @param FLV: FLV协议格式视频流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FLV: String
        # @param RTMP: RTMP协议格式视频流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RTMP: String
        # @param HLS: HLS协议格式视频流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HLS: String
        # @param WebRTC: WebRtc协议格式视频流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebRTC: String
        # @param RAW: RAW协议格式视频流
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RAW: :class:`Tencentcloud::Weilingwith.v20230427.models.RawInfo`
        # @param Stream: 视频流的唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Stream: String

        attr_accessor :FLV, :RTMP, :HLS, :WebRTC, :RAW, :Stream

        def initialize(flv=nil, rtmp=nil, hls=nil, webrtc=nil, raw=nil, stream=nil)
          @FLV = flv
          @RTMP = rtmp
          @HLS = hls
          @WebRTC = webrtc
          @RAW = raw
          @Stream = stream
        end

        def deserialize(params)
          @FLV = params['FLV']
          @RTMP = params['RTMP']
          @HLS = params['HLS']
          @WebRTC = params['WebRTC']
          unless params['RAW'].nil?
            @RAW = RawInfo.new
            @RAW.deserialize(params['RAW'])
          end
          @Stream = params['Stream']
        end
      end

      # 工作空间信息描述
      class WorkspaceInfo < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: Integer
        # @param ChineseName: 工作空间中文名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChineseName: String
        # @param Description: 工作空间描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: 工作空间是否删除状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ParkName: 该工作空间绑定的区/县的行政区名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParkName: String
        # @param ParkNum: 该工作空间绑定的区/县的行政区编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParkNum: String
        # @param AdministrativeDetailSet: 获取该工作空间绑定的区/县的上级行政区划信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdministrativeDetailSet: Array

        attr_accessor :WorkspaceId, :ChineseName, :Description, :Status, :ParkName, :ParkNum, :AdministrativeDetailSet

        def initialize(workspaceid=nil, chinesename=nil, description=nil, status=nil, parkname=nil, parknum=nil, administrativedetailset=nil)
          @WorkspaceId = workspaceid
          @ChineseName = chinesename
          @Description = description
          @Status = status
          @ParkName = parkname
          @ParkNum = parknum
          @AdministrativeDetailSet = administrativedetailset
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ChineseName = params['ChineseName']
          @Description = params['Description']
          @Status = params['Status']
          @ParkName = params['ParkName']
          @ParkNum = params['ParkNum']
          unless params['AdministrativeDetailSet'].nil?
            @AdministrativeDetailSet = []
            params['AdministrativeDetailSet'].each do |i|
              administrativedetail_tmp = AdministrativeDetail.new
              administrativedetail_tmp.deserialize(i)
              @AdministrativeDetailSet << administrativedetail_tmp
            end
          end
        end
      end

      # 项目空间列表
      class WorkspaceInfoList < TencentCloud::Common::AbstractModel
        # @param List: 项目空间列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :List

        def initialize(list=nil)
          @List = list
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              spaceinfo_tmp = SpaceInfo.new
              spaceinfo_tmp.deserialize(i)
              @List << spaceinfo_tmp
            end
          end
        end
      end

    end
  end
end

