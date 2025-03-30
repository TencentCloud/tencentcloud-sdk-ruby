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
  module Iss
    module V20230517
      # AI分析配置
      class AIConfig < TencentCloud::Common::AbstractModel
        # @param DetectType: AI 分析类型。可选值为 Facemask(口罩识别)、Chefhat(厨师帽识别)、Smoking(抽烟检测)、Chefcloth(厨师服识别)、PhoneCall(接打电话识别)、Pet(宠物识别)、Body(人体识别)和Car(车辆车牌识别)等
        # @type DetectType: String
        # @param TimeInterval: 截图频率。可选值1～20秒
        # @type TimeInterval: Integer
        # @param OperTimeSlot: 模板生效的时间段。最多包含5组时间段
        # @type OperTimeSlot: Array

        attr_accessor :DetectType, :TimeInterval, :OperTimeSlot

        def initialize(detecttype=nil, timeinterval=nil, opertimeslot=nil)
          @DetectType = detecttype
          @TimeInterval = timeinterval
          @OperTimeSlot = opertimeslot
        end

        def deserialize(params)
          @DetectType = params['DetectType']
          @TimeInterval = params['TimeInterval']
          unless params['OperTimeSlot'].nil?
            @OperTimeSlot = []
            params['OperTimeSlot'].each do |i|
              opertimeslot_tmp = OperTimeSlot.new
              opertimeslot_tmp.deserialize(i)
              @OperTimeSlot << opertimeslot_tmp
            end
          end
        end
      end

      # AI任务信息
      class AITaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: AI 任务 ID
        # @type TaskId: String
        # @param Name: AI 任务名称
        # @type Name: String
        # @param Desc: AI 任务描述
        # @type Desc: String
        # @param Status: AI 任务状态。"on"代表开启了 AI 分析任务，"off"代表停止 AI 分析任务
        # @type Status: String
        # @param ChannelList: 通道 ID 列表
        # @type ChannelList: Array
        # @param CallbackUrl: AI 结果回调地址
        # @type CallbackUrl: String
        # @param Templates: AI 配置列表
        # @type Templates: Array
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String

        attr_accessor :TaskId, :Name, :Desc, :Status, :ChannelList, :CallbackUrl, :Templates, :CreatedTime, :UpdatedTime

        def initialize(taskid=nil, name=nil, desc=nil, status=nil, channellist=nil, callbackurl=nil, templates=nil, createdtime=nil, updatedtime=nil)
          @TaskId = taskid
          @Name = name
          @Desc = desc
          @Status = status
          @ChannelList = channellist
          @CallbackUrl = callbackurl
          @Templates = templates
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @Desc = params['Desc']
          @Status = params['Status']
          @ChannelList = params['ChannelList']
          @CallbackUrl = params['CallbackUrl']
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              aitemplates_tmp = AITemplates.new
              aitemplates_tmp.deserialize(i)
              @Templates << aitemplates_tmp
            end
          end
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # AI识别结果
      class AITaskResultData < TencentCloud::Common::AbstractModel
        # @param TaskId: AI 任务 ID
        # @type TaskId: String
        # @param AIResultCount: 在 BeginTime 和 EndTime 时间之内，有识别结果的 AI 调用次数（分页依据此数值）
        # @type AIResultCount: Integer
        # @param AIResults: AI 任务执行结果详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AIResults: :class:`Tencentcloud::Iss.v20230517.models.AITaskResultInfo`

        attr_accessor :TaskId, :AIResultCount, :AIResults

        def initialize(taskid=nil, airesultcount=nil, airesults=nil)
          @TaskId = taskid
          @AIResultCount = airesultcount
          @AIResults = airesults
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @AIResultCount = params['AIResultCount']
          unless params['AIResults'].nil?
            @AIResults = AITaskResultInfo.new
            @AIResults.deserialize(params['AIResults'])
          end
        end
      end

      # AI分析结果详情
      class AITaskResultInfo < TencentCloud::Common::AbstractModel
        # @param Body: 人体识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: Array
        # @param Pet: 宠物识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pet: Array
        # @param Car: 车辆车牌识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Car: Array
        # @param ChefHat: 厨师帽结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChefHat: Array
        # @param ChefCloth: 厨师服结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChefCloth: Array
        # @param FaceMask: 口罩识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceMask: Array
        # @param Smoking: 抽烟检测结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Smoking: Array
        # @param PhoneCall: 接打电话识别结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneCall: Array

        attr_accessor :Body, :Pet, :Car, :ChefHat, :ChefCloth, :FaceMask, :Smoking, :PhoneCall

        def initialize(body=nil, pet=nil, car=nil, chefhat=nil, chefcloth=nil, facemask=nil, smoking=nil, phonecall=nil)
          @Body = body
          @Pet = pet
          @Car = car
          @ChefHat = chefhat
          @ChefCloth = chefcloth
          @FaceMask = facemask
          @Smoking = smoking
          @PhoneCall = phonecall
        end

        def deserialize(params)
          unless params['Body'].nil?
            @Body = []
            params['Body'].each do |i|
              bodyairesultinfo_tmp = BodyAIResultInfo.new
              bodyairesultinfo_tmp.deserialize(i)
              @Body << bodyairesultinfo_tmp
            end
          end
          unless params['Pet'].nil?
            @Pet = []
            params['Pet'].each do |i|
              petairesultinfo_tmp = PetAIResultInfo.new
              petairesultinfo_tmp.deserialize(i)
              @Pet << petairesultinfo_tmp
            end
          end
          unless params['Car'].nil?
            @Car = []
            params['Car'].each do |i|
              carairesultinfo_tmp = CarAIResultInfo.new
              carairesultinfo_tmp.deserialize(i)
              @Car << carairesultinfo_tmp
            end
          end
          unless params['ChefHat'].nil?
            @ChefHat = []
            params['ChefHat'].each do |i|
              chefhatairesultinfo_tmp = ChefHatAIResultInfo.new
              chefhatairesultinfo_tmp.deserialize(i)
              @ChefHat << chefhatairesultinfo_tmp
            end
          end
          unless params['ChefCloth'].nil?
            @ChefCloth = []
            params['ChefCloth'].each do |i|
              chefclothairesultinfo_tmp = ChefClothAIResultInfo.new
              chefclothairesultinfo_tmp.deserialize(i)
              @ChefCloth << chefclothairesultinfo_tmp
            end
          end
          unless params['FaceMask'].nil?
            @FaceMask = []
            params['FaceMask'].each do |i|
              facemaskairesultinfo_tmp = FaceMaskAIResultInfo.new
              facemaskairesultinfo_tmp.deserialize(i)
              @FaceMask << facemaskairesultinfo_tmp
            end
          end
          unless params['Smoking'].nil?
            @Smoking = []
            params['Smoking'].each do |i|
              smokingairesultinfo_tmp = SmokingAIResultInfo.new
              smokingairesultinfo_tmp.deserialize(i)
              @Smoking << smokingairesultinfo_tmp
            end
          end
          unless params['PhoneCall'].nil?
            @PhoneCall = []
            params['PhoneCall'].each do |i|
              phonecallairesultinfo_tmp = PhoneCallAIResultInfo.new
              phonecallairesultinfo_tmp.deserialize(i)
              @PhoneCall << phonecallairesultinfo_tmp
            end
          end
        end
      end

      # AI模板信息
      class AITemplates < TencentCloud::Common::AbstractModel
        # @param Tag: AI 类别。可选值 AI(AI 分析)和 Snapshot(截图)，Templates 列表中只能出现一种类型。
        # @type Tag: String
        # @param AIConfig: AI 分析配置。和"SnapshotConfig"二选一。
        # @type AIConfig: :class:`Tencentcloud::Iss.v20230517.models.AIConfig`
        # @param SnapshotConfig: 截图配置。和"AIConfig"二选一。
        # @type SnapshotConfig: :class:`Tencentcloud::Iss.v20230517.models.SnapshotConfig`

        attr_accessor :Tag, :AIConfig, :SnapshotConfig

        def initialize(tag=nil, aiconfig=nil, snapshotconfig=nil)
          @Tag = tag
          @AIConfig = aiconfig
          @SnapshotConfig = snapshotconfig
        end

        def deserialize(params)
          @Tag = params['Tag']
          unless params['AIConfig'].nil?
            @AIConfig = AIConfig.new
            @AIConfig.deserialize(params['AIConfig'])
          end
          unless params['SnapshotConfig'].nil?
            @SnapshotConfig = SnapshotConfig.new
            @SnapshotConfig.deserialize(params['SnapshotConfig'])
          end
        end
      end

      # AddAITask请求参数结构体
      class AddAITaskRequest < TencentCloud::Common::AbstractModel
        # @param Name: AI 任务名称。仅支持中文、英文、数字、_、-，长度不超过32个字符
        # @type Name: String
        # @param ChannelList: 通道 ID 列表。不能添加存在于其他 AI 任务的通道，限制1000个通道。
        # @type ChannelList: Array
        # @param Templates: AI 配置列表
        # @type Templates: Array
        # @param Desc: AI 任务描述。仅支持中文、英文、数字、_、-，长度不超过128个字符
        # @type Desc: String
        # @param CallbackUrl: AI 结果回调地址。类似 "http://ip:port/***或者https://domain/***
        # @type CallbackUrl: String
        # @param IsStartTheTask: 是否立即开启 AI 任务。"true"代表立即开启 AI 任务，"false"代表暂不开启 AI 任务，默认为 false。
        # @type IsStartTheTask: Boolean

        attr_accessor :Name, :ChannelList, :Templates, :Desc, :CallbackUrl, :IsStartTheTask

        def initialize(name=nil, channellist=nil, templates=nil, desc=nil, callbackurl=nil, isstartthetask=nil)
          @Name = name
          @ChannelList = channellist
          @Templates = templates
          @Desc = desc
          @CallbackUrl = callbackurl
          @IsStartTheTask = isstartthetask
        end

        def deserialize(params)
          @Name = params['Name']
          @ChannelList = params['ChannelList']
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              aitemplates_tmp = AITemplates.new
              aitemplates_tmp.deserialize(i)
              @Templates << aitemplates_tmp
            end
          end
          @Desc = params['Desc']
          @CallbackUrl = params['CallbackUrl']
          @IsStartTheTask = params['IsStartTheTask']
        end
      end

      # AddAITask返回参数结构体
      class AddAITaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: AI任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AITaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AITaskInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 增加设备接口返回数据
      class AddDeviceData < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备iD
        # @type DeviceId: String
        # @param Code: 设备编码（国标设备即我们为设备生成的20位国标编码，rtmp 设备为10 位设备编码）
        # @type Code: String
        # @param Name: 设备名称
        # @type Name: String
        # @param AccessProtocol: 设备接入协议，1:RTMP,2:GB,3:GW
        # @type AccessProtocol: Integer
        # @param Type: 设备类型，1:IPC,2:NVR
        # @type Type: Integer
        # @param ClusterId: 设备接入服务节点ID
        # @type ClusterId: String
        # @param ClusterName: 设备接入服务节点名称
        # @type ClusterName: String
        # @param TransportProtocol: 设备流传输协议，1:UDP,2:TCP
        # @type TransportProtocol: Integer
        # @param Password: 设备密码
        # @type Password: String
        # @param Description: 设备描述
        # @type Description: String
        # @param Status: 设备状态，0:未注册,1:在线,2:离线,3:禁用
        # @type Status: Integer
        # @param OrganizationId: 设备所属组织ID
        # @type OrganizationId: Integer
        # @param GatewayId: 设备接入网关ID，从查询网关列表接口中获取（仅网关接入需要）
        # @type GatewayId: String
        # @param ProtocolType: 网关接入协议类型，1.海康SDK，2.大华SDK，3.宇视SDK，4.Onvif（仅网关接入需要）
        # @type ProtocolType: Integer
        # @param Ip: 设备接入IP（仅网关接入需要）
        # @type Ip: String
        # @param Port: 设备Port（仅网关接入需要）
        # @type Port: Integer
        # @param Username: 设备用户名（仅网关接入需要）
        # @type Username: String
        # @param AppId: 用户ID
        # @type AppId: Integer

        attr_accessor :DeviceId, :Code, :Name, :AccessProtocol, :Type, :ClusterId, :ClusterName, :TransportProtocol, :Password, :Description, :Status, :OrganizationId, :GatewayId, :ProtocolType, :Ip, :Port, :Username, :AppId

        def initialize(deviceid=nil, code=nil, name=nil, accessprotocol=nil, type=nil, clusterid=nil, clustername=nil, transportprotocol=nil, password=nil, description=nil, status=nil, organizationid=nil, gatewayid=nil, protocoltype=nil, ip=nil, port=nil, username=nil, appid=nil)
          @DeviceId = deviceid
          @Code = code
          @Name = name
          @AccessProtocol = accessprotocol
          @Type = type
          @ClusterId = clusterid
          @ClusterName = clustername
          @TransportProtocol = transportprotocol
          @Password = password
          @Description = description
          @Status = status
          @OrganizationId = organizationid
          @GatewayId = gatewayid
          @ProtocolType = protocoltype
          @Ip = ip
          @Port = port
          @Username = username
          @AppId = appid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Code = params['Code']
          @Name = params['Name']
          @AccessProtocol = params['AccessProtocol']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @TransportProtocol = params['TransportProtocol']
          @Password = params['Password']
          @Description = params['Description']
          @Status = params['Status']
          @OrganizationId = params['OrganizationId']
          @GatewayId = params['GatewayId']
          @ProtocolType = params['ProtocolType']
          @Ip = params['Ip']
          @Port = params['Port']
          @Username = params['Username']
          @AppId = params['AppId']
        end
      end

      # 增加组织接口返回数据
      class AddOrgData < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织 ID
        # @type OrganizationId: String
        # @param Name: 组织名称
        # @type Name: String
        # @param ParentId: 组织父节点 ID
        # @type ParentId: String
        # @param Level: 组织层级
        # @type Level: Integer
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param ParentIds: 组织结构
        # @type ParentIds: String
        # @param Total: 设备总数
        # @type Total: Integer
        # @param Online: 设备在线数量
        # @type Online: Integer

        attr_accessor :OrganizationId, :Name, :ParentId, :Level, :AppId, :ParentIds, :Total, :Online

        def initialize(organizationid=nil, name=nil, parentid=nil, level=nil, appid=nil, parentids=nil, total=nil, online=nil)
          @OrganizationId = organizationid
          @Name = name
          @ParentId = parentid
          @Level = level
          @AppId = appid
          @ParentIds = parentids
          @Total = total
          @Online = online
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @Name = params['Name']
          @ParentId = params['ParentId']
          @Level = params['Level']
          @AppId = params['AppId']
          @ParentIds = params['ParentIds']
          @Total = params['Total']
          @Online = params['Online']
        end
      end

      # AddOrganization请求参数结构体
      class AddOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Name: 组织名称（仅支持中文、英文、数字、空格、中英文括号、_、-, 长度不超过64位，且组织名称不能重复）
        # @type Name: String
        # @param ParentId: 组织父节点 ID（从查询组织接口DescribeOrganization中获取，填0代表根组织）
        # @type ParentId: String

        attr_accessor :Name, :ParentId

        def initialize(name=nil, parentid=nil)
          @Name = name
          @ParentId = parentid
        end

        def deserialize(params)
          @Name = params['Name']
          @ParentId = params['ParentId']
        end
      end

      # AddOrganization返回参数结构体
      class AddOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 增加组织接口返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AddOrgData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddOrgData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 新增录像上云计划返回数据
      class AddRecordBackupPlanData < TencentCloud::Common::AbstractModel
        # @param PlanId: 录像上云计划ID
        # @type PlanId: String
        # @param PlanName: 录像上云计划名称
        # @type PlanName: String
        # @param TemplateId: 录像上云模板ID
        # @type TemplateId: String
        # @param Describe: 录像上云计划描述
        # @type Describe: String
        # @param LifeCycle: 云文件生命周期
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Status: 录像上云计划状态，1:正常使用中，0:删除中，无法使用
        # @type Status: Integer
        # @param ChannelCount: 通道数量
        # @type ChannelCount: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 修改时间
        # @type UpdateAt: String

        attr_accessor :PlanId, :PlanName, :TemplateId, :Describe, :LifeCycle, :Status, :ChannelCount, :CreateAt, :UpdateAt

        def initialize(planid=nil, planname=nil, templateid=nil, describe=nil, lifecycle=nil, status=nil, channelcount=nil, createat=nil, updateat=nil)
          @PlanId = planid
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @LifeCycle = lifecycle
          @Status = status
          @ChannelCount = channelcount
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          @Status = params['Status']
          @ChannelCount = params['ChannelCount']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # AddRecordBackupPlan请求参数结构体
      class AddRecordBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 录制模板ID（录像计划关联的模板ID，从查询录像上云模板列表接口ListRecordBackupTemplates中获取）
        # @type TemplateId: String
        # @param PlanName: 录像计划名称（仅支持中文、英文、数字、_、-，长度不超过32个字符，计划名称全局唯一，不能为空，不能重复）
        # @type PlanName: String
        # @param Describe: 录像计划描述（仅支持中文、英文、数字、_、-，长度不超过128个字符）
        # @type Describe: String
        # @param LifeCycle: 生命周期（录像文件生命周期设置，管理文件冷、热存储的时间）
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Channels: 通道及通道所属设备（添加录像的设备的通道信息，一次添加通道总数不超过5000个，包括组织目录下的通道数量）
        # @type Channels: Array
        # @param OrganizationId: 添加组织目录下所有设备通道（Json数组，可以为空，通道总数量不超过5000个（包括Channel字段的数量））
        # @type OrganizationId: Array

        attr_accessor :TemplateId, :PlanName, :Describe, :LifeCycle, :Channels, :OrganizationId

        def initialize(templateid=nil, planname=nil, describe=nil, lifecycle=nil, channels=nil, organizationid=nil)
          @TemplateId = templateid
          @PlanName = planname
          @Describe = describe
          @LifeCycle = lifecycle
          @Channels = channels
          @OrganizationId = organizationid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @PlanName = params['PlanName']
          @Describe = params['Describe']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelinfo_tmp = ChannelInfo.new
              channelinfo_tmp.deserialize(i)
              @Channels << channelinfo_tmp
            end
          end
          @OrganizationId = params['OrganizationId']
        end
      end

      # AddRecordBackupPlan返回参数结构体
      class AddRecordBackupPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AddRecordBackupPlanData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddRecordBackupPlanData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 新增录像上云模板返回数据
      class AddRecordBackupTemplateData < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TimeSections: 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type TimeSections: Array
        # @param DevTimeSections: 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type DevTimeSections: Array
        # @param Scale: 上云倍速（支持1，2，4倍速）
        # @type Scale: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 更新时间
        # @type UpdateAt: String

        attr_accessor :TemplateId, :TemplateName, :TimeSections, :DevTimeSections, :Scale, :CreateAt, :UpdateAt

        def initialize(templateid=nil, templatename=nil, timesections=nil, devtimesections=nil, scale=nil, createat=nil, updateat=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TimeSections = timesections
          @DevTimeSections = devtimesections
          @Scale = scale
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
          unless params['DevTimeSections'].nil?
            @DevTimeSections = []
            params['DevTimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @DevTimeSections << recordtemplatetimesections_tmp
            end
          end
          @Scale = params['Scale']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # AddRecordBackupTemplate请求参数结构体
      class AddRecordBackupTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称（仅支持中文、英文、数字、_、-，长度不超过32个字符，模板名称全局唯一，不能为空，不能重复）
        # @type TemplateName: String
        # @param TimeSections: 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type TimeSections: Array
        # @param DevTimeSections: 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type DevTimeSections: Array
        # @param Scale: 上云倍速（支持1，2，4倍速）
        # @type Scale: Integer

        attr_accessor :TemplateName, :TimeSections, :DevTimeSections, :Scale

        def initialize(templatename=nil, timesections=nil, devtimesections=nil, scale=nil)
          @TemplateName = templatename
          @TimeSections = timesections
          @DevTimeSections = devtimesections
          @Scale = scale
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
          unless params['DevTimeSections'].nil?
            @DevTimeSections = []
            params['DevTimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @DevTimeSections << recordtemplatetimesections_tmp
            end
          end
          @Scale = params['Scale']
        end
      end

      # AddRecordBackupTemplate返回参数结构体
      class AddRecordBackupTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AddRecordBackupTemplateData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddRecordBackupTemplateData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddRecordPlan请求参数结构体
      class AddRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanName: 实时上云计划名称，仅支持中文、英文、数字、_、-，长度不超过32个字符，计划名称全局唯一，不能为空，不能重复
        # @type PlanName: String
        # @param TemplateId: 实时上云模板ID
        # @type TemplateId: String
        # @param LifeCycle: 生命周期
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Describe: 上云计划描述，仅支持中文、英文、数字、_、-，长度不超过128个字符
        # @type Describe: String
        # @param StreamType: 码流类型，default:不指定码流类型，以设备默认推送类型为主， main:主码流，sub:子码流，其他根据设备能力集自定义，不填按默认类型处理，长度不能超过32个字节
        # @type StreamType: String
        # @param Channels: 添加录像的设备的通道信息，一次添加通道总数不超过5000个，包括组织目录下的通道数量
        # @type Channels: Array
        # @param OrganizationId: 添加组织目录下所有设备通道，Json数组，可以为空，通道总数量不超过5000个（包括Channel字段的数量）
        # @type OrganizationId: Array
        # @param RepairMode: 录像补录模式（0:不启用，1:启用），无该字段，默认不启用
        # @type RepairMode: Integer

        attr_accessor :PlanName, :TemplateId, :LifeCycle, :Describe, :StreamType, :Channels, :OrganizationId, :RepairMode

        def initialize(planname=nil, templateid=nil, lifecycle=nil, describe=nil, streamtype=nil, channels=nil, organizationid=nil, repairmode=nil)
          @PlanName = planname
          @TemplateId = templateid
          @LifeCycle = lifecycle
          @Describe = describe
          @StreamType = streamtype
          @Channels = channels
          @OrganizationId = organizationid
          @RepairMode = repairmode
        end

        def deserialize(params)
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          @Describe = params['Describe']
          @StreamType = params['StreamType']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelinfo_tmp = ChannelInfo.new
              channelinfo_tmp.deserialize(i)
              @Channels << channelinfo_tmp
            end
          end
          @OrganizationId = params['OrganizationId']
          @RepairMode = params['RepairMode']
        end
      end

      # AddRecordPlan返回参数结构体
      class AddRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.RecordPlanOptData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RecordPlanOptData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询取回任务详情返回数据
      class AddRecordRetrieveTaskData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param StartTime: 取回录像的开始时间
        # @type StartTime: Integer
        # @param EndTime: 取回录像的结束时间
        # @type EndTime: Integer
        # @param Mode: 取回模式，1:极速模式，其他暂不支持
        # @type Mode: Integer
        # @param Expiration: 副本有效期
        # @type Expiration: Integer
        # @param Status: 任务状态，0:已取回，1:取回中，2:待取回
        # @type Status: Integer
        # @param Capacity: 取回容量，单位MB
        # @type Capacity: Float
        # @param Describe: 任务描述
        # @type Describe: String

        attr_accessor :TaskId, :TaskName, :StartTime, :EndTime, :Mode, :Expiration, :Status, :Capacity, :Describe

        def initialize(taskid=nil, taskname=nil, starttime=nil, endtime=nil, mode=nil, expiration=nil, status=nil, capacity=nil, describe=nil)
          @TaskId = taskid
          @TaskName = taskname
          @StartTime = starttime
          @EndTime = endtime
          @Mode = mode
          @Expiration = expiration
          @Status = status
          @Capacity = capacity
          @Describe = describe
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Mode = params['Mode']
          @Expiration = params['Expiration']
          @Status = params['Status']
          @Capacity = params['Capacity']
          @Describe = params['Describe']
        end
      end

      # AddRecordRetrieveTask请求参数结构体
      class AddRecordRetrieveTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskName: 任务名称，仅支持中文、英文、数字、_、-，长度不超过32个字符，名称全局唯一，不能为空，不能重复
        # @type TaskName: String
        # @param StartTime: 取回录像的开始时间，UTC秒数，例如：1662114146，开始和结束时间段最长为一天，且不能跨天
        # @type StartTime: Integer
        # @param EndTime: 取回录像的结束时间，UTC秒数，例如：1662114146，开始和结束时间段最长为一天，且不能跨天
        # @type EndTime: Integer
        # @param Mode: 取回模式， 1:极速模式，其他暂不支持
        # @type Mode: Integer
        # @param Expiration: 取回录像副本有效期，最小为1天，最大为365天
        # @type Expiration: Integer
        # @param Channels: 设备通道，一个任务最多32个设备通道
        # @type Channels: Array
        # @param Describe: 取回任务描述
        # @type Describe: String

        attr_accessor :TaskName, :StartTime, :EndTime, :Mode, :Expiration, :Channels, :Describe

        def initialize(taskname=nil, starttime=nil, endtime=nil, mode=nil, expiration=nil, channels=nil, describe=nil)
          @TaskName = taskname
          @StartTime = starttime
          @EndTime = endtime
          @Mode = mode
          @Expiration = expiration
          @Channels = channels
          @Describe = describe
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Mode = params['Mode']
          @Expiration = params['Expiration']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              channelinfo_tmp = ChannelInfo.new
              channelinfo_tmp.deserialize(i)
              @Channels << channelinfo_tmp
            end
          end
          @Describe = params['Describe']
        end
      end

      # AddRecordRetrieveTask返回参数结构体
      class AddRecordRetrieveTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AddRecordRetrieveTaskData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddRecordRetrieveTaskData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddRecordTemplate请求参数结构体
      class AddRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称， 仅支持中文、英文、数字、_、-，长度不超过32个字符，模板名称全局唯一，不能为空，不能重复
        # @type TemplateName: String
        # @param TimeSections: 上云时间段，按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟
        # @type TimeSections: Array

        attr_accessor :TemplateName, :TimeSections

        def initialize(templatename=nil, timesections=nil)
          @TemplateName = templatename
          @TimeSections = timesections
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
        end
      end

      # AddRecordTemplate返回参数结构体
      class AddRecordTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.RecordTemplateInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RecordTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 设置推拉流鉴权返回数据结构
      class AddStreamAuthData < TencentCloud::Common::AbstractModel
        # @param Id: 鉴权配置ID（uuid）
        # @type Id: String
        # @param PullState: 是否开播放鉴权（1:开启,0:关闭）
        # @type PullState: Integer
        # @param PullSecret: 播放密钥（仅支持字母数字，长度0-10位）
        # @type PullSecret: String
        # @param PullExpired: 播放过期时间（单位：分钟）
        # @type PullExpired: Integer
        # @param PushState: 是否开启推流鉴权（1:开启,0:关闭）
        # @type PushState: Integer
        # @param PushSecret: 推流密钥（仅支持字母数字，长度0-10位）
        # @type PushSecret: String
        # @param PushExpired: 推流过期时间（单位：分钟）
        # @type PushExpired: Integer
        # @param AppId: 用户ID
        # @type AppId: Integer

        attr_accessor :Id, :PullState, :PullSecret, :PullExpired, :PushState, :PushSecret, :PushExpired, :AppId

        def initialize(id=nil, pullstate=nil, pullsecret=nil, pullexpired=nil, pushstate=nil, pushsecret=nil, pushexpired=nil, appid=nil)
          @Id = id
          @PullState = pullstate
          @PullSecret = pullsecret
          @PullExpired = pullexpired
          @PushState = pushstate
          @PushSecret = pushsecret
          @PushExpired = pushexpired
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @PullState = params['PullState']
          @PullSecret = params['PullSecret']
          @PullExpired = params['PullExpired']
          @PushState = params['PushState']
          @PushSecret = params['PushSecret']
          @PushExpired = params['PushExpired']
          @AppId = params['AppId']
        end
      end

      # AddStreamAuth请求参数结构体
      class AddStreamAuthRequest < TencentCloud::Common::AbstractModel
        # @param Id: 鉴权配置ID（uuid）
        # @type Id: String
        # @param PullState: 是否开播放鉴权（1:开启,0:关闭）
        # @type PullState: Integer
        # @param PullSecret: 播放密钥（仅支持字母数字，长度0-10位）
        # @type PullSecret: String
        # @param PullExpired: 播放过期时间（单位：分钟）
        # @type PullExpired: Integer
        # @param PushState: 是否开启推流鉴权（1:开启,0:关闭）
        # @type PushState: Integer
        # @param PushSecret: 推流密钥（仅支持字母数字，长度0-10位）
        # @type PushSecret: String
        # @param PushExpired: 推流过期时间（单位：分钟）
        # @type PushExpired: Integer

        attr_accessor :Id, :PullState, :PullSecret, :PullExpired, :PushState, :PushSecret, :PushExpired

        def initialize(id=nil, pullstate=nil, pullsecret=nil, pullexpired=nil, pushstate=nil, pushsecret=nil, pushexpired=nil)
          @Id = id
          @PullState = pullstate
          @PullSecret = pullsecret
          @PullExpired = pullexpired
          @PushState = pushstate
          @PushSecret = pushsecret
          @PushExpired = pushexpired
        end

        def deserialize(params)
          @Id = params['Id']
          @PullState = params['PullState']
          @PullSecret = params['PullSecret']
          @PullExpired = params['PullExpired']
          @PushState = params['PushState']
          @PushSecret = params['PushSecret']
          @PushExpired = params['PushExpired']
        end
      end

      # AddStreamAuth返回参数结构体
      class AddStreamAuthResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设置推拉流鉴权返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AddStreamAuthData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddStreamAuthData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddUserDevice请求参数结构体
      class AddUserDeviceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 设备名称，仅支持中文、英文、数字、空格、中英文括号、_、-, 长度不超过128位；（设备名称无需全局唯一，可以重复）
        # @type Name: String
        # @param AccessProtocol: 设备接入协议（1:RTMP,2:GB,3:GW,6:ISUP）
        # @type AccessProtocol: Integer
        # @param Type: 设备类型，1:IPC,2:NVR；（若设备接入协议选择RTMP,IVCP，则设备类型只能选择IPC）
        # @type Type: Integer
        # @param OrganizationId: 设备所属组织ID，从查询组织接口DescribeOrganization中获取
        # @type OrganizationId: String
        # @param ClusterId: 设备接入服务节点ID（从查询设备可用服务节点接口DescribeDeviceRegion中获取的Value字段）
        # @type ClusterId: String
        # @param TransportProtocol: 设备流传输协议，1:UDP,2:TCP；(国标设备有效，不填写则默认UDP协议)
        # @type TransportProtocol: Integer
        # @param Password: 设备密码（国标，网关设备必填，长度为1-64个字符）
        # @type Password: String
        # @param Description: 设备描述，长度不超过128个字符
        # @type Description: String
        # @param GatewayId: 设备接入网关ID，从查询网关列表接口中ListGateways获取（仅网关接入需要）
        # @type GatewayId: String
        # @param ProtocolType: 网关接入协议类型（从查询网关接入协议接口DescribeGatewayProtocol中获取）1.海康SDK，2.大华SDK，3.宇视SDK，4.Onvif（仅网关接入需要）
        # @type ProtocolType: Integer
        # @param Ip: 设备接入IP（仅网关接入需要）
        # @type Ip: String
        # @param Port: 设备端口（仅网关接入需要）
        # @type Port: Integer
        # @param Username: 设备用户名（仅网关接入需要）
        # @type Username: String
        # @param SNCode: 设备 SN，仅IVCP 协议设备需要
        # @type SNCode: String
        # @param AppName: RTMP推流地址自定义AppName（仅RTMP需要，支持英文、数字、_、-、.、长度不超过64位）
        # @type AppName: String
        # @param StreamName: RTMP推流地址自定义StreamName（仅RTMP需要，支持英文、数字、_、-、.、长度不超过64位）
        # @type StreamName: String

        attr_accessor :Name, :AccessProtocol, :Type, :OrganizationId, :ClusterId, :TransportProtocol, :Password, :Description, :GatewayId, :ProtocolType, :Ip, :Port, :Username, :SNCode, :AppName, :StreamName

        def initialize(name=nil, accessprotocol=nil, type=nil, organizationid=nil, clusterid=nil, transportprotocol=nil, password=nil, description=nil, gatewayid=nil, protocoltype=nil, ip=nil, port=nil, username=nil, sncode=nil, appname=nil, streamname=nil)
          @Name = name
          @AccessProtocol = accessprotocol
          @Type = type
          @OrganizationId = organizationid
          @ClusterId = clusterid
          @TransportProtocol = transportprotocol
          @Password = password
          @Description = description
          @GatewayId = gatewayid
          @ProtocolType = protocoltype
          @Ip = ip
          @Port = port
          @Username = username
          @SNCode = sncode
          @AppName = appname
          @StreamName = streamname
        end

        def deserialize(params)
          @Name = params['Name']
          @AccessProtocol = params['AccessProtocol']
          @Type = params['Type']
          @OrganizationId = params['OrganizationId']
          @ClusterId = params['ClusterId']
          @TransportProtocol = params['TransportProtocol']
          @Password = params['Password']
          @Description = params['Description']
          @GatewayId = params['GatewayId']
          @ProtocolType = params['ProtocolType']
          @Ip = params['Ip']
          @Port = params['Port']
          @Username = params['Username']
          @SNCode = params['SNCode']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
        end
      end

      # AddUserDevice返回参数结构体
      class AddUserDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 增加设备返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AddDeviceData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddDeviceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 通用AI识别结果信息
      class BaseAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名称。返回值有人体识别结果名称(person)、宠物识别结果名称(cat和dog) 、车辆车牌识别结果名称(vehicle)
        # @type Name: String
        # @param Score: 置信度
        # @type Score: Integer
        # @param Location: 截图中坐标信息
        # @type Location: :class:`Tencentcloud::Iss.v20230517.models.Location`

        attr_accessor :Name, :Score, :Location

        def initialize(name=nil, score=nil, location=nil)
          @Name = name
          @Score = score
          @Location = location
        end

        def deserialize(params)
          @Name = params['Name']
          @Score = params['Score']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # 批量操作设备返回结果
      class BatchOperateDeviceData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID（用于在查询任务的子任务列表接口ListSubTasks中查询任务进度）
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # BatchOperateDevice请求参数结构体
      class BatchOperateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIds: 设备 ID 数组（从获取设备列表接口ListDevices中获取）
        # @type DeviceIds: Array
        # @param Cmd: 操作命令（enable：启用；disable：禁用；delete：删除；sync：同步设备通道；upgrade：固件升级；reset：恢复出厂设置；reboot：重启）
        # @type Cmd: String

        attr_accessor :DeviceIds, :Cmd

        def initialize(deviceids=nil, cmd=nil)
          @DeviceIds = deviceids
          @Cmd = cmd
        end

        def deserialize(params)
          @DeviceIds = params['DeviceIds']
          @Cmd = params['Cmd']
        end
      end

      # BatchOperateDevice返回参数结构体
      class BatchOperateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.BatchOperateDeviceData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = BatchOperateDeviceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 视频通道码率返回结果
      class BitRateInfo < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道Id
        # @type ChannelId: String
        # @param Bitrate: 码率,单位:kbps
        # @type Bitrate: Float

        attr_accessor :ChannelId, :Bitrate

        def initialize(channelid=nil, bitrate=nil)
          @ChannelId = channelid
          @Bitrate = bitrate
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Bitrate = params['Bitrate']
        end
      end

      # 人体识别结果详情
      class BodyAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间字符串
        # @type Time: String
        # @param Url: 截图 URL
        # @type Url: String
        # @param BodyInfo: 人体信息
        # @type BodyInfo: Array

        attr_accessor :Time, :Url, :BodyInfo

        def initialize(time=nil, url=nil, bodyinfo=nil)
          @Time = time
          @Url = url
          @BodyInfo = bodyinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @Url = params['Url']
          unless params['BodyInfo'].nil?
            @BodyInfo = []
            params['BodyInfo'].each do |i|
              baseairesultinfo_tmp = BaseAIResultInfo.new
              baseairesultinfo_tmp.deserialize(i)
              @BodyInfo << baseairesultinfo_tmp
            end
          end
        end
      end

      # CallISAPI请求参数结构体
      class CallISAPIRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param Url: url 资源
        # @type Url: String
        # @param InputData: 输入参数
        # @type InputData: String

        attr_accessor :DeviceId, :Url, :InputData

        def initialize(deviceid=nil, url=nil, inputdata=nil)
          @DeviceId = deviceid
          @Url = url
          @InputData = inputdata
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Url = params['Url']
          @InputData = params['InputData']
        end
      end

      # CallISAPI返回参数结构体
      class CallISAPIResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ISAPIOutputData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ISAPIOutputData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 车辆车牌识别结果信息
      class CarAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Serial: 车系
        # @type Serial: String
        # @param Brand: 车辆品牌
        # @type Brand: String
        # @param Type: 车辆类型
        # @type Type: String
        # @param Color: 车辆颜色
        # @type Color: String
        # @param Confidence: 置信度，0 - 100
        # @type Confidence: Integer
        # @param Year: 年份，识别不出年份时返回0
        # @type Year: Integer
        # @param PlateContent: 车牌信息
        # @type PlateContent: :class:`Tencentcloud::Iss.v20230517.models.PlateContent`
        # @param Location: 截图中坐标信息
        # @type Location: :class:`Tencentcloud::Iss.v20230517.models.Location`

        attr_accessor :Serial, :Brand, :Type, :Color, :Confidence, :Year, :PlateContent, :Location

        def initialize(serial=nil, brand=nil, type=nil, color=nil, confidence=nil, year=nil, platecontent=nil, location=nil)
          @Serial = serial
          @Brand = brand
          @Type = type
          @Color = color
          @Confidence = confidence
          @Year = year
          @PlateContent = platecontent
          @Location = location
        end

        def deserialize(params)
          @Serial = params['Serial']
          @Brand = params['Brand']
          @Type = params['Type']
          @Color = params['Color']
          @Confidence = params['Confidence']
          @Year = params['Year']
          unless params['PlateContent'].nil?
            @PlateContent = PlateContent.new
            @PlateContent.deserialize(params['PlateContent'])
          end
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # 通道属性信息
      class ChannelAttrInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备通道所属的设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备通道所属的设备名称
        # @type DeviceName: String
        # @param ChannelId: 设备通道ID
        # @type ChannelId: String
        # @param ChannelName: 设备通道名称
        # @type ChannelName: String

        attr_accessor :DeviceId, :DeviceName, :ChannelId, :ChannelName

        def initialize(deviceid=nil, devicename=nil, channelid=nil, channelname=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @ChannelId = channelid
          @ChannelName = channelname
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
        end
      end

      # 通道及通道所属设备信息
      class ChannelInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 通道所属的设备ID
        # @type DeviceId: String
        # @param ChannelId: 设备通道ID，一个设备通道只允许被一个上云计划添加
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

      # 厨师服识别结果详情
      class ChefClothAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间字符串
        # @type Time: String
        # @param Url: 截图 URL
        # @type Url: String
        # @param ChefClothInfoInfo: 厨师服信息
        # @type ChefClothInfoInfo: Array

        attr_accessor :Time, :Url, :ChefClothInfoInfo

        def initialize(time=nil, url=nil, chefclothinfoinfo=nil)
          @Time = time
          @Url = url
          @ChefClothInfoInfo = chefclothinfoinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @Url = params['Url']
          unless params['ChefClothInfoInfo'].nil?
            @ChefClothInfoInfo = []
            params['ChefClothInfoInfo'].each do |i|
              baseairesultinfo_tmp = BaseAIResultInfo.new
              baseairesultinfo_tmp.deserialize(i)
              @ChefClothInfoInfo << baseairesultinfo_tmp
            end
          end
        end
      end

      # 厨师帽识别结果详情
      class ChefHatAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间字符串
        # @type Time: String
        # @param Url: 截图 URL
        # @type Url: String
        # @param ChefHatInfo: 厨师帽信息
        # @type ChefHatInfo: Array

        attr_accessor :Time, :Url, :ChefHatInfo

        def initialize(time=nil, url=nil, chefhatinfo=nil)
          @Time = time
          @Url = url
          @ChefHatInfo = chefhatinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @Url = params['Url']
          unless params['ChefHatInfo'].nil?
            @ChefHatInfo = []
            params['ChefHatInfo'].each do |i|
              baseairesultinfo_tmp = BaseAIResultInfo.new
              baseairesultinfo_tmp.deserialize(i)
              @ChefHatInfo << baseairesultinfo_tmp
            end
          end
        end
      end

      # ControlDevicePTZ请求参数结构体
      class ControlDevicePTZRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID（从通道查询接口DescribeDeviceChannel中获取）
        # @type ChannelId: String
        # @param Type: 命令类型（上:up,下:down,左:left,右:right
        # 上左:leftup,上右:rightup,下左:leftdown,下右:rightdown
        # 放大:zoomin,缩小:zoomout
        # 聚焦远:focusfar,聚焦近:focusnear
        # 光圈放大:irisin,光圈缩小:irisout）
        # @type Type: String
        # @param Speed: 命令描述（速度值范围1-8）
        # @type Speed: Integer

        attr_accessor :ChannelId, :Type, :Speed

        def initialize(channelid=nil, type=nil, speed=nil)
          @ChannelId = channelid
          @Type = type
          @Speed = speed
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Type = params['Type']
          @Speed = params['Speed']
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

      # ControlDevicePreset请求参数结构体
      class ControlDevicePresetRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID（从通道查询接口DescribeDeviceChannel中获取）
        # @type ChannelId: String
        # @param Cmd: 命令（goto:预置位调用；
        # set:预置位设置；
        # del:预置位删除）
        # @type Cmd: String
        # @param Index: 预置位索引（只支持1-10的索引位置，超出报错）
        # @type Index: Integer

        attr_accessor :ChannelId, :Cmd, :Index

        def initialize(channelid=nil, cmd=nil, index=nil)
          @ChannelId = channelid
          @Cmd = cmd
          @Index = index
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Cmd = params['Cmd']
          @Index = params['Index']
        end
      end

      # ControlDevicePreset返回参数结构体
      class ControlDevicePresetResponse < TencentCloud::Common::AbstractModel
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

      # ControlDeviceSnapshot请求参数结构体
      class ControlDeviceSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param SnapNum: 连拍张数，可选值范围1～10
        # @type SnapNum: Integer
        # @param Interval: 抓拍间隔时间，可选值范围1～1800
        # @type Interval: Integer
        # @param Expire: 图片存储时间，默认 7 天，仅支持（7, 15, 30, 60, 90, 180, 365）天
        # @type Expire: Integer

        attr_accessor :ChannelId, :SnapNum, :Interval, :Expire

        def initialize(channelid=nil, snapnum=nil, interval=nil, expire=nil)
          @ChannelId = channelid
          @SnapNum = snapnum
          @Interval = interval
          @Expire = expire
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @SnapNum = params['SnapNum']
          @Interval = params['Interval']
          @Expire = params['Expire']
        end
      end

      # ControlDeviceSnapshot返回参数结构体
      class ControlDeviceSnapshotResponse < TencentCloud::Common::AbstractModel
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

      # 获取开流地址返回数据
      class ControlDeviceStreamData < TencentCloud::Common::AbstractModel
        # @param Flv: flv 流地址
        # @type Flv: String
        # @param Hls: hls 流地址
        # @type Hls: String
        # @param Rtmp: rtmp 流地址
        # @type Rtmp: String

        attr_accessor :Flv, :Hls, :Rtmp

        def initialize(flv=nil, hls=nil, rtmp=nil)
          @Flv = flv
          @Hls = hls
          @Rtmp = rtmp
        end

        def deserialize(params)
          @Flv = params['Flv']
          @Hls = params['Hls']
          @Rtmp = params['Rtmp']
        end
      end

      # ControlDeviceStream请求参数结构体
      class ControlDeviceStreamRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID（从通道查询接口DescribeDeviceChannel中获取）
        # @type ChannelId: String
        # @param StreamType: 流类型（1:主码流；
        # 2:子码流（不可以和 Resolution 同时下发））
        # @type StreamType: String
        # @param Resolution: 分辨率（1:QCIF；
        # 2:CIF；
        # 3:4CIF；
        # 4:D1；
        # 5:720P；
        # 6:1080P/I；
        # 自定义的19201080等等（需设备支持）（不可以和 StreamType 同时下发））
        # @type Resolution: String
        # @param IsInternal: 是否内网
        # @type IsInternal: Boolean

        attr_accessor :ChannelId, :StreamType, :Resolution, :IsInternal

        def initialize(channelid=nil, streamtype=nil, resolution=nil, isinternal=nil)
          @ChannelId = channelid
          @StreamType = streamtype
          @Resolution = resolution
          @IsInternal = isinternal
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @StreamType = params['StreamType']
          @Resolution = params['Resolution']
          @IsInternal = params['IsInternal']
        end
      end

      # ControlDeviceStream返回参数结构体
      class ControlDeviceStreamResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ControlDeviceStreamData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ControlDeviceStreamData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ControlRecord请求参数结构体
      class ControlRecordRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID（录像播放地址格式 https://${domain}/live/${ChannelId}@${Session}）
        # @type ChannelId: String
        # @param Session: 录像会话 ID （ 录像播放地址格式 https://${domain}/live/${ChannelId}@${Session}）
        # @type Session: String
        # @param ControlAction: 录像操作类型 （play:播放；pause:暂停 ；stop:关闭）
        # @type ControlAction: String
        # @param Position: 跳转进度 （ 参数应大于等于0，跳转到录像开始时间的相对时间（单位秒），例如0就是跳转到录像开始的时间,不可以和 Scale 参数同时出现）
        # @type Position: Integer
        # @param Scale: 速度 （ 范围（0.25,0.5,1,2,4,8），不可以和 Pos 参数同时出现）
        # @type Scale: Float

        attr_accessor :ChannelId, :Session, :ControlAction, :Position, :Scale

        def initialize(channelid=nil, session=nil, controlaction=nil, position=nil, scale=nil)
          @ChannelId = channelid
          @Session = session
          @ControlAction = controlaction
          @Position = position
          @Scale = scale
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Session = params['Session']
          @ControlAction = params['ControlAction']
          @Position = params['Position']
          @Scale = params['Scale']
        end
      end

      # ControlRecord返回参数结构体
      class ControlRecordResponse < TencentCloud::Common::AbstractModel
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

      # ControlRecordTimeline请求参数结构体
      class ControlRecordTimelineRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID（从通道查询接口DescribeDeviceChannel中获取）
        # @type ChannelId: String
        # @param Start: 起始时间
        # @type Start: Integer
        # @param End: 结束时间
        # @type End: Integer

        attr_accessor :ChannelId, :Start, :End

        def initialize(channelid=nil, start=nil, _end=nil)
          @ChannelId = channelid
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Start = params['Start']
          @End = params['End']
        end
      end

      # ControlRecordTimeline返回参数结构体
      class ControlRecordTimelineResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              timeline_tmp = Timeline.new
              timeline_tmp.deserialize(i)
              @Data << timeline_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAITask请求参数结构体
      class DeleteAITaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: AI任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteAITask返回参数结构体
      class DeleteAITaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDomain请求参数结构体
      class DeleteDomainRequest < TencentCloud::Common::AbstractModel
        # @param Id: 域名 ID
        # @type Id: String

        attr_accessor :Id

        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteDomain返回参数结构体
      class DeleteDomainResponse < TencentCloud::Common::AbstractModel
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

      # DeleteGateway请求参数结构体
      class DeleteGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID（从获取网关列表接口ListGateways中获取）
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DeleteGateway返回参数结构体
      class DeleteGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOrganization请求参数结构体
      class DeleteOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织ID（从查询组织接口DescribeOrganization中获取）
        # @type OrganizationId: String

        attr_accessor :OrganizationId

        def initialize(organizationid=nil)
          @OrganizationId = organizationid
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
        end
      end

      # DeleteOrganization返回参数结构体
      class DeleteOrganizationResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRecordBackupPlan请求参数结构体
      class DeleteRecordBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录像上云计划ID（从查询录像上云计划列表接口ListRecordBackupPlans中获取）
        # @type PlanId: String

        attr_accessor :PlanId

        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # DeleteRecordBackupPlan返回参数结构体
      class DeleteRecordBackupPlanResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRecordBackupTemplate请求参数结构体
      class DeleteRecordBackupTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID（从查询录像上云模板列表接口ListRecordBackupTemplates中获取）
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteRecordBackupTemplate返回参数结构体
      class DeleteRecordBackupTemplateResponse < TencentCloud::Common::AbstractModel
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
        # @param PlanId: 上云计划ID
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

      # DeleteRecordRetrieveTask请求参数结构体
      class DeleteRecordRetrieveTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 取回任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DeleteRecordRetrieveTask返回参数结构体
      class DeleteRecordRetrieveTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRecordTemplate请求参数结构体
      class DeleteRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteRecordTemplate返回参数结构体
      class DeleteRecordTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUserDevice请求参数结构体
      class DeleteUserDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID（从获取设备列表ListDevices接口中获取）
        # @type DeviceId: String

        attr_accessor :DeviceId

        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # DeleteUserDevice返回参数结构体
      class DeleteUserDeviceResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAITask请求参数结构体
      class DescribeAITaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: AI任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeAITask返回参数结构体
      class DescribeAITaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: AI任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AITaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AITaskInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAITaskResult请求参数结构体
      class DescribeAITaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: AI 任务 ID
        # @type TaskId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param Object: 桶内文件的路径。
        # @type Object: String
        # @param DetectType: AI 任务识别类型。可选值为 Facemask(口罩识别)、Chefhat(厨师帽识别)、Smoking(抽烟检测)、Chefcloth(厨师服识别)、PhoneCall(接打电话识别)、Pet(宠物识别)、Body(人体识别)和 Car(车辆车牌识别)
        # @type DetectType: String
        # @param BeginTime: 开始时间时间。秒级时间戳。开始时间和结束时间跨度小于等于30天
        # @type BeginTime: String
        # @param EndTime: 结束时间时间。秒级时间戳。开始时间和结束时间跨度小于等于30天
        # @type EndTime: String
        # @param PageNumber: 页码。默认为1
        # @type PageNumber: Integer
        # @param PageSize: 每页 AI 识别结果数量。可选值1～100，默认为10（按时间倒序显示识别结果）
        # @type PageSize: Integer

        attr_accessor :TaskId, :ChannelId, :Object, :DetectType, :BeginTime, :EndTime, :PageNumber, :PageSize

        def initialize(taskid=nil, channelid=nil, object=nil, detecttype=nil, begintime=nil, endtime=nil, pagenumber=nil, pagesize=nil)
          @TaskId = taskid
          @ChannelId = channelid
          @Object = object
          @DetectType = detecttype
          @BeginTime = begintime
          @EndTime = endtime
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ChannelId = params['ChannelId']
          @Object = params['Object']
          @DetectType = params['DetectType']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeAITaskResult返回参数结构体
      class DescribeAITaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Data: AI识别结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AITaskResultData`
        # @param TotalCount: AI识别结果数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AITaskResultData.new
            @Data.deserialize(params['Data'])
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCNAME请求参数结构体
      class DescribeCNAMERequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 服务节点 ID（从查询域名可绑定服务节点接口DescribeDomainRegion中获取）
        # @type ClusterId: String
        # @param DomainType: 域名类型，0:拉流域名 1:推流域名
        # @type DomainType: Integer

        attr_accessor :ClusterId, :DomainType

        def initialize(clusterid=nil, domaintype=nil)
          @ClusterId = clusterid
          @DomainType = domaintype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DomainType = params['DomainType']
        end
      end

      # DescribeCNAME返回参数结构体
      class DescribeCNAMEResponse < TencentCloud::Common::AbstractModel
        # @param Data: CNAME 记录值
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

      # 查询设备通道信息返回结果
      class DescribeDeviceChannelData < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备 ID
        # @type DeviceId: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: String
        # @param ChannelCode: 通道编码
        # @type ChannelCode: String
        # @param Name: 通道名称
        # @type Name: String
        # @param Status: 流状态（0:未传输,1:传输中）
        # @type Status: Integer
        # @param PTZType: 是否可控 Ptz（0:不可控,1:可控）
        # @type PTZType: Integer
        # @param Manufacturer: 通道厂商
        # @type Manufacturer: String
        # @param Resolution: 通道支持分辨率（分辨率列表由‘/’隔开，国标协议样例（6/3），自定义样例（12800960/640480））
        # @type Resolution: String
        # @param State: 通道在离线状态（0:离线,1:在线）
        # @type State: Integer
        # @param Region: 所在地域
        # @type Region: String

        attr_accessor :DeviceId, :ChannelId, :ChannelCode, :Name, :Status, :PTZType, :Manufacturer, :Resolution, :State, :Region

        def initialize(deviceid=nil, channelid=nil, channelcode=nil, name=nil, status=nil, ptztype=nil, manufacturer=nil, resolution=nil, state=nil, region=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
          @ChannelCode = channelcode
          @Name = name
          @Status = status
          @PTZType = ptztype
          @Manufacturer = manufacturer
          @Resolution = resolution
          @State = state
          @Region = region
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @ChannelCode = params['ChannelCode']
          @Name = params['Name']
          @Status = params['Status']
          @PTZType = params['PTZType']
          @Manufacturer = params['Manufacturer']
          @Resolution = params['Resolution']
          @State = params['State']
          @Region = params['Region']
        end
      end

      # DescribeDeviceChannel请求参数结构体
      class DescribeDeviceChannelRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID（从获取设备列表接口ListDevices中获取）
        # @type DeviceId: String

        attr_accessor :DeviceId

        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDeviceChannel返回参数结构体
      class DescribeDeviceChannelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
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
              describedevicechanneldata_tmp = DescribeDeviceChannelData.new
              describedevicechanneldata_tmp.deserialize(i)
              @Data << describedevicechanneldata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询设备接口返回数据
      class DescribeDeviceData < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param Code: 设备编码（国标设备即我们为设备生成的20位国标编码，rtmp 设备为10 位设备编码）
        # @type Code: String
        # @param Name: 设备名称
        # @type Name: String
        # @param AccessProtocol: 设备接入协议，1:RTMP,2:GB,3:GW
        # @type AccessProtocol: Integer
        # @param Type: 设备类型，1:IPC,2:NVR
        # @type Type: Integer
        # @param ClusterId: 设备接入服务节点id
        # @type ClusterId: String
        # @param ClusterName: 设备接入服务节点名称
        # @type ClusterName: String
        # @param TransportProtocol: 设备流传输协议，1:UDP,2:TCP
        # @type TransportProtocol: Integer
        # @param Password: 设备密码
        # @type Password: String
        # @param Description: 设备描述
        # @type Description: String
        # @param SipId: sip服务ID
        # @type SipId: String
        # @param SipDomain: sip服务域
        # @type SipDomain: String
        # @param SipIp: sip服务IP地址
        # @type SipIp: String
        # @param SipPort: sip服务端口
        # @type SipPort: Integer
        # @param PushStreamUrl: Rtmp设备推流地址(仅rtmp设备有效)
        # @type PushStreamUrl: String
        # @param Status: 设备状态，0:未注册,1:在线,2:离线,3:禁用
        # @type Status: Integer
        # @param OrganizationId: 设备所属组织ID
        # @type OrganizationId: String
        # @param GatewayId: 设备接入网关ID，从查询网关列表接口中获取（仅网关接入需要）
        # @type GatewayId: String
        # @param GatewayName: 设备所属网关名称
        # @type GatewayName: String
        # @param ProtocolTypeName: 设备网关协议名称
        # @type ProtocolTypeName: String
        # @param ProtocolType: 网关接入协议类型，1.海康SDK，2.大华SDK，3.宇视SDK，4.Onvif（仅网关接入需要）
        # @type ProtocolType: Integer
        # @param Ip: 设备接入IP
        # @type Ip: String
        # @param Port: 设备Port
        # @type Port: Integer
        # @param Username: 设备用户名
        # @type Username: String
        # @param Region: 设备地域
        # @type Region: String
        # @param Manufacturer: 设备厂商
        # @type Manufacturer: String
        # @param AudioSwitch: 音频关开（0：关闭；1：开启）关闭时丢弃音频
        # @type AudioSwitch: Integer
        # @param SubscribeSwitch: 订阅开关（0：关闭；1：开启）默认开启，开启状态下会订阅设备通道变化，仅国标NVR设备有效
        # @type SubscribeSwitch: Integer
        # @param AppName: RTMP推流地址自定义appName
        # @type AppName: String
        # @param StreamName: RTMP推流地址自定义streamName
        # @type StreamName: String
        # @param SilentFrameSwitch: 是否开启静音帧（0：关闭；1 开启）
        # @type SilentFrameSwitch: Integer

        attr_accessor :DeviceId, :Code, :Name, :AccessProtocol, :Type, :ClusterId, :ClusterName, :TransportProtocol, :Password, :Description, :SipId, :SipDomain, :SipIp, :SipPort, :PushStreamUrl, :Status, :OrganizationId, :GatewayId, :GatewayName, :ProtocolTypeName, :ProtocolType, :Ip, :Port, :Username, :Region, :Manufacturer, :AudioSwitch, :SubscribeSwitch, :AppName, :StreamName, :SilentFrameSwitch

        def initialize(deviceid=nil, code=nil, name=nil, accessprotocol=nil, type=nil, clusterid=nil, clustername=nil, transportprotocol=nil, password=nil, description=nil, sipid=nil, sipdomain=nil, sipip=nil, sipport=nil, pushstreamurl=nil, status=nil, organizationid=nil, gatewayid=nil, gatewayname=nil, protocoltypename=nil, protocoltype=nil, ip=nil, port=nil, username=nil, region=nil, manufacturer=nil, audioswitch=nil, subscribeswitch=nil, appname=nil, streamname=nil, silentframeswitch=nil)
          @DeviceId = deviceid
          @Code = code
          @Name = name
          @AccessProtocol = accessprotocol
          @Type = type
          @ClusterId = clusterid
          @ClusterName = clustername
          @TransportProtocol = transportprotocol
          @Password = password
          @Description = description
          @SipId = sipid
          @SipDomain = sipdomain
          @SipIp = sipip
          @SipPort = sipport
          @PushStreamUrl = pushstreamurl
          @Status = status
          @OrganizationId = organizationid
          @GatewayId = gatewayid
          @GatewayName = gatewayname
          @ProtocolTypeName = protocoltypename
          @ProtocolType = protocoltype
          @Ip = ip
          @Port = port
          @Username = username
          @Region = region
          @Manufacturer = manufacturer
          @AudioSwitch = audioswitch
          @SubscribeSwitch = subscribeswitch
          @AppName = appname
          @StreamName = streamname
          @SilentFrameSwitch = silentframeswitch
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Code = params['Code']
          @Name = params['Name']
          @AccessProtocol = params['AccessProtocol']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @TransportProtocol = params['TransportProtocol']
          @Password = params['Password']
          @Description = params['Description']
          @SipId = params['SipId']
          @SipDomain = params['SipDomain']
          @SipIp = params['SipIp']
          @SipPort = params['SipPort']
          @PushStreamUrl = params['PushStreamUrl']
          @Status = params['Status']
          @OrganizationId = params['OrganizationId']
          @GatewayId = params['GatewayId']
          @GatewayName = params['GatewayName']
          @ProtocolTypeName = params['ProtocolTypeName']
          @ProtocolType = params['ProtocolType']
          @Ip = params['Ip']
          @Port = params['Port']
          @Username = params['Username']
          @Region = params['Region']
          @Manufacturer = params['Manufacturer']
          @AudioSwitch = params['AudioSwitch']
          @SubscribeSwitch = params['SubscribeSwitch']
          @AppName = params['AppName']
          @StreamName = params['StreamName']
          @SilentFrameSwitch = params['SilentFrameSwitch']
        end
      end

      # 查询设备预置位返回数据
      class DescribeDevicePresetData < TencentCloud::Common::AbstractModel
        # @param Index: 预置位索引    只支持1-10的索引
        # @type Index: Integer
        # @param Name: 预置位名称
        # @type Name: String

        attr_accessor :Index, :Name

        def initialize(index=nil, name=nil)
          @Index = index
          @Name = name
        end

        def deserialize(params)
          @Index = params['Index']
          @Name = params['Name']
        end
      end

      # DescribeDevicePreset请求参数结构体
      class DescribeDevicePresetRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID（从通道查询接口DescribeDeviceChannel中获取）
        # @type ChannelId: String

        attr_accessor :ChannelId

        def initialize(channelid=nil)
          @ChannelId = channelid
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeDevicePreset返回参数结构体
      class DescribeDevicePresetResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              describedevicepresetdata_tmp = DescribeDevicePresetData.new
              describedevicepresetdata_tmp.deserialize(i)
              @Data << describedevicepresetdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询设备可接入集群信息
      class DescribeDeviceRegion < TencentCloud::Common::AbstractModel
        # @param Label: 服务节点描述
        # @type Label: String
        # @param Value: 服务节点 ID（对应为其他接口中所需的 ClusterId）
        # @type Value: String
        # @param Region: 地域信息
        # @type Region: String

        attr_accessor :Label, :Value, :Region

        def initialize(label=nil, value=nil, region=nil)
          @Label = label
          @Value = value
          @Region = region
        end

        def deserialize(params)
          @Label = params['Label']
          @Value = params['Value']
          @Region = params['Region']
        end
      end

      # DescribeDeviceRegion请求参数结构体
      class DescribeDeviceRegionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDeviceRegion返回参数结构体
      class DescribeDeviceRegionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              describedeviceregion_tmp = DescribeDeviceRegion.new
              describedeviceregion_tmp.deserialize(i)
              @Data << describedeviceregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询域名详情数据
      class DescribeDomainData < TencentCloud::Common::AbstractModel
        # @param Id: 域名ID
        # @type Id: String
        # @param PlayDomain: 播放域名
        # @type PlayDomain: String
        # @param InternalDomain: CNAME 记录值
        # @type InternalDomain: String
        # @param HaveCert: 是否上传证书（0：否，1：是）
        # @type HaveCert: Integer
        # @param ClusterId: 服务节点 ID
        # @type ClusterId: String
        # @param ClusterName: 服务节点名称
        # @type ClusterName: String
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param CertId: 证书ID
        # @type CertId: String
        # @param DomainType: 域名类型 0:拉流域名 1:推流域名
        # @type DomainType: Integer

        attr_accessor :Id, :PlayDomain, :InternalDomain, :HaveCert, :ClusterId, :ClusterName, :AppId, :CertId, :DomainType

        def initialize(id=nil, playdomain=nil, internaldomain=nil, havecert=nil, clusterid=nil, clustername=nil, appid=nil, certid=nil, domaintype=nil)
          @Id = id
          @PlayDomain = playdomain
          @InternalDomain = internaldomain
          @HaveCert = havecert
          @ClusterId = clusterid
          @ClusterName = clustername
          @AppId = appid
          @CertId = certid
          @DomainType = domaintype
        end

        def deserialize(params)
          @Id = params['Id']
          @PlayDomain = params['PlayDomain']
          @InternalDomain = params['InternalDomain']
          @HaveCert = params['HaveCert']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @AppId = params['AppId']
          @CertId = params['CertId']
          @DomainType = params['DomainType']
        end
      end

      # 查询域名可绑定集群数据
      class DescribeDomainRegionData < TencentCloud::Common::AbstractModel
        # @param Label: 服务节点描述
        # @type Label: String
        # @param Value: 服务节点 ID（对应为其他接口中所需的 ClusterId）
        # @type Value: String
        # @param Region: 地域信息
        # @type Region: String

        attr_accessor :Label, :Value, :Region

        def initialize(label=nil, value=nil, region=nil)
          @Label = label
          @Value = value
          @Region = region
        end

        def deserialize(params)
          @Label = params['Label']
          @Value = params['Value']
          @Region = params['Region']
        end
      end

      # DescribeDomainRegion请求参数结构体
      class DescribeDomainRegionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDomainRegion返回参数结构体
      class DescribeDomainRegionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              describedomainregiondata_tmp = DescribeDomainRegionData.new
              describedomainregiondata_tmp.deserialize(i)
              @Data << describedomainregiondata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomain请求参数结构体
      class DescribeDomainRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDomain返回参数结构体
      class DescribeDomainResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              describedomaindata_tmp = DescribeDomainData.new
              describedomaindata_tmp.deserialize(i)
              @Data << describedomaindata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询网关信息返回结果
      class DescribeGatewayData < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID，用于网关查询，更新，删除操作
        # @type GatewayId: String
        # @param GwId: 网关编码，由网关设备生成的唯一编码
        # @type GwId: String
        # @param Name: 网关名称，仅支持中文、英文、数字、_、-，长度不超过32个字符
        # @type Name: String
        # @param Description: 网关描述，仅支持中文、英文、数字、_、-，长度不超过128个字符
        # @type Description: String
        # @param ClusterId: 服务节点id
        # @type ClusterId: String
        # @param ClusterName: 服务节点名称
        # @type ClusterName: String
        # @param Status: 网关状态，0：离线，1:在线
        # @type Status: Integer
        # @param Version: 网关版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: Array
        # @param DeviceNum: 网关下挂设备数量
        # @type DeviceNum: Integer
        # @param CreatedAt: 激活时间
        # @type CreatedAt: String
        # @param Region: 所属地域
        # @type Region: String

        attr_accessor :GatewayId, :GwId, :Name, :Description, :ClusterId, :ClusterName, :Status, :Version, :DeviceNum, :CreatedAt, :Region

        def initialize(gatewayid=nil, gwid=nil, name=nil, description=nil, clusterid=nil, clustername=nil, status=nil, version=nil, devicenum=nil, createdat=nil, region=nil)
          @GatewayId = gatewayid
          @GwId = gwid
          @Name = name
          @Description = description
          @ClusterId = clusterid
          @ClusterName = clustername
          @Status = status
          @Version = version
          @DeviceNum = devicenum
          @CreatedAt = createdat
          @Region = region
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GwId = params['GwId']
          @Name = params['Name']
          @Description = params['Description']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Status = params['Status']
          unless params['Version'].nil?
            @Version = []
            params['Version'].each do |i|
              gatewayversion_tmp = GatewayVersion.new
              gatewayversion_tmp.deserialize(i)
              @Version << gatewayversion_tmp
            end
          end
          @DeviceNum = params['DeviceNum']
          @CreatedAt = params['CreatedAt']
          @Region = params['Region']
        end
      end

      # 查询网关监控信息返回结果
      class DescribeGatewayMonitor < TencentCloud::Common::AbstractModel
        # @param DeviceTotal: 设备接入总数
        # @type DeviceTotal: Integer
        # @param DeviceOnline: 设备在线数
        # @type DeviceOnline: Integer
        # @param DeviceOffline: 设备离线数
        # @type DeviceOffline: Integer
        # @param ChannelTotal: 视频通道总数
        # @type ChannelTotal: Integer
        # @param ChannelOnline: 视频通道在线数
        # @type ChannelOnline: Integer
        # @param ChannelOffline: 视频通道离线数
        # @type ChannelOffline: Integer
        # @param UpFlow: 网关上行流量,单位kbps
        # @type UpFlow: Integer
        # @param ChannelPull: 流在传输中的通道数
        # @type ChannelPull: Integer
        # @param ChannelUnPull: 流未传输中的通道数
        # @type ChannelUnPull: Integer

        attr_accessor :DeviceTotal, :DeviceOnline, :DeviceOffline, :ChannelTotal, :ChannelOnline, :ChannelOffline, :UpFlow, :ChannelPull, :ChannelUnPull

        def initialize(devicetotal=nil, deviceonline=nil, deviceoffline=nil, channeltotal=nil, channelonline=nil, channeloffline=nil, upflow=nil, channelpull=nil, channelunpull=nil)
          @DeviceTotal = devicetotal
          @DeviceOnline = deviceonline
          @DeviceOffline = deviceoffline
          @ChannelTotal = channeltotal
          @ChannelOnline = channelonline
          @ChannelOffline = channeloffline
          @UpFlow = upflow
          @ChannelPull = channelpull
          @ChannelUnPull = channelunpull
        end

        def deserialize(params)
          @DeviceTotal = params['DeviceTotal']
          @DeviceOnline = params['DeviceOnline']
          @DeviceOffline = params['DeviceOffline']
          @ChannelTotal = params['ChannelTotal']
          @ChannelOnline = params['ChannelOnline']
          @ChannelOffline = params['ChannelOffline']
          @UpFlow = params['UpFlow']
          @ChannelPull = params['ChannelPull']
          @ChannelUnPull = params['ChannelUnPull']
        end
      end

      # DescribeGatewayMonitor请求参数结构体
      class DescribeGatewayMonitorRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID（从获取网关列表接口ListGateways中获取）
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DescribeGatewayMonitor返回参数结构体
      class DescribeGatewayMonitorResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeGatewayMonitor`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeGatewayMonitor.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询网关所支持的接入协议
      class DescribeGatewayProtocolData < TencentCloud::Common::AbstractModel
        # @param TypeCode: 接入协议的字典码
        # @type TypeCode: String
        # @param Value: 接入协议类型值
        # @type Value: Integer
        # @param Label: 接入协议的类型描述
        # @type Label: String
        # @param ValueText: 协议值文本
        # @type ValueText: String

        attr_accessor :TypeCode, :Value, :Label, :ValueText

        def initialize(typecode=nil, value=nil, label=nil, valuetext=nil)
          @TypeCode = typecode
          @Value = value
          @Label = label
          @ValueText = valuetext
        end

        def deserialize(params)
          @TypeCode = params['TypeCode']
          @Value = params['Value']
          @Label = params['Label']
          @ValueText = params['ValueText']
        end
      end

      # DescribeGatewayProtocol请求参数结构体
      class DescribeGatewayProtocolRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeGatewayProtocol返回参数结构体
      class DescribeGatewayProtocolResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              describegatewayprotocoldata_tmp = DescribeGatewayProtocolData.new
              describegatewayprotocoldata_tmp.deserialize(i)
              @Data << describegatewayprotocoldata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGateway请求参数结构体
      class DescribeGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID（从获取网关列表接口ListGateways中获取）
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DescribeGateway返回参数结构体
      class DescribeGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeGatewayData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeGatewayData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询网关服务版本信息返回数据
      class DescribeGatewayVersion < TencentCloud::Common::AbstractModel
        # @param Name: 服务名
        # @type Name: String
        # @param Version: 服务版本
        # @type Version: String
        # @param LatestVersion: 服务最新版本
        # @type LatestVersion: String
        # @param IsUpdate: 是否需要更新
        # @type IsUpdate: Boolean
        # @param UpgradeInfo: 升级信息
        # @type UpgradeInfo: Array

        attr_accessor :Name, :Version, :LatestVersion, :IsUpdate, :UpgradeInfo

        def initialize(name=nil, version=nil, latestversion=nil, isupdate=nil, upgradeinfo=nil)
          @Name = name
          @Version = version
          @LatestVersion = latestversion
          @IsUpdate = isupdate
          @UpgradeInfo = upgradeinfo
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
          @LatestVersion = params['LatestVersion']
          @IsUpdate = params['IsUpdate']
          @UpgradeInfo = params['UpgradeInfo']
        end
      end

      # 查询网关服务版本信息返回数据
      class DescribeGatewayVersionData < TencentCloud::Common::AbstractModel
        # @param Services: 网关服务列表
        # @type Services: Array

        attr_accessor :Services

        def initialize(services=nil)
          @Services = services
        end

        def deserialize(params)
          unless params['Services'].nil?
            @Services = []
            params['Services'].each do |i|
              describegatewayversion_tmp = DescribeGatewayVersion.new
              describegatewayversion_tmp.deserialize(i)
              @Services << describegatewayversion_tmp
            end
          end
        end
      end

      # DescribeGatewayVersion请求参数结构体
      class DescribeGatewayVersionRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID（从获取网关列表接口ListGateways中获取）
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DescribeGatewayVersion返回参数结构体
      class DescribeGatewayVersionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeGatewayVersionData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeGatewayVersionData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询组织数据返回结果
      class DescribeOrganizationData < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织 ID
        # @type OrganizationId: String
        # @param Name: 组织名称
        # @type Name: String
        # @param ParentId: 组织父节点 ID
        # @type ParentId: String
        # @param Level: 组织层级
        # @type Level: Integer
        # @param AppId: 用户id
        # @type AppId: Integer
        # @param ParentIds: 组织结构
        # @type ParentIds: String
        # @param Total: 设备总数
        # @type Total: Integer
        # @param Online: 设备在线数量
        # @type Online: Integer

        attr_accessor :OrganizationId, :Name, :ParentId, :Level, :AppId, :ParentIds, :Total, :Online

        def initialize(organizationid=nil, name=nil, parentid=nil, level=nil, appid=nil, parentids=nil, total=nil, online=nil)
          @OrganizationId = organizationid
          @Name = name
          @ParentId = parentid
          @Level = level
          @AppId = appid
          @ParentIds = parentids
          @Total = total
          @Online = online
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @Name = params['Name']
          @ParentId = params['ParentId']
          @Level = params['Level']
          @AppId = params['AppId']
          @ParentIds = params['ParentIds']
          @Total = params['Total']
          @Online = params['Online']
        end
      end

      # DescribeOrganization请求参数结构体
      class DescribeOrganizationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeOrganization返回参数结构体
      class DescribeOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              describeorganizationdata_tmp = DescribeOrganizationData.new
              describeorganizationdata_tmp.deserialize(i)
              @Data << describeorganizationdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询录像上云计划返回数据
      class DescribeRecordBackupPlanData < TencentCloud::Common::AbstractModel
        # @param PlanId: 录像上云计划ID
        # @type PlanId: String
        # @param PlanName: 录像上云计划名称
        # @type PlanName: String
        # @param TemplateId: 录像上云模板ID
        # @type TemplateId: String
        # @param Describe: 录像上云计划描述
        # @type Describe: String
        # @param LifeCycle: 云文件生命周期
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Status: 录像上云计划状态，1:正常使用中，0:删除中，无法使用
        # @type Status: Integer
        # @param ChannelCount: 通道数量
        # @type ChannelCount: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 修改时间
        # @type UpdateAt: String

        attr_accessor :PlanId, :PlanName, :TemplateId, :Describe, :LifeCycle, :Status, :ChannelCount, :CreateAt, :UpdateAt

        def initialize(planid=nil, planname=nil, templateid=nil, describe=nil, lifecycle=nil, status=nil, channelcount=nil, createat=nil, updateat=nil)
          @PlanId = planid
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @LifeCycle = lifecycle
          @Status = status
          @ChannelCount = channelcount
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          @Status = params['Status']
          @ChannelCount = params['ChannelCount']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # DescribeRecordBackupPlan请求参数结构体
      class DescribeRecordBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录像上云计划ID（从查询录像上云计划列表接口ListRecordBackupPlans中获取）
        # @type PlanId: String

        attr_accessor :PlanId

        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # DescribeRecordBackupPlan返回参数结构体
      class DescribeRecordBackupPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeRecordBackupPlanData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeRecordBackupPlanData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询录像上云模板返回数据
      class DescribeRecordBackupTemplateData < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TimeSections: 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type TimeSections: Array
        # @param DevTimeSections: 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type DevTimeSections: Array
        # @param Scale: 上云倍速（支持1，2，4倍速）
        # @type Scale: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 更新时间
        # @type UpdateAt: String

        attr_accessor :TemplateId, :TemplateName, :TimeSections, :DevTimeSections, :Scale, :CreateAt, :UpdateAt

        def initialize(templateid=nil, templatename=nil, timesections=nil, devtimesections=nil, scale=nil, createat=nil, updateat=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TimeSections = timesections
          @DevTimeSections = devtimesections
          @Scale = scale
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
          unless params['DevTimeSections'].nil?
            @DevTimeSections = []
            params['DevTimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @DevTimeSections << recordtemplatetimesections_tmp
            end
          end
          @Scale = params['Scale']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # DescribeRecordBackupTemplate请求参数结构体
      class DescribeRecordBackupTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID（从查询录像上云模板列表接口ListRecordBackupTemplates中获取）
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeRecordBackupTemplate返回参数结构体
      class DescribeRecordBackupTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeRecordBackupTemplateData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeRecordBackupTemplateData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 用于查询设备云端录像时间轴信息返回数据
      class DescribeRecordFileData < TencentCloud::Common::AbstractModel
        # @param Tips: 提示类型，0:时间段内无归档录像，1:时间段内有归档录像
        # @type Tips: Integer
        # @param List: 存在为数组格式，不存在字段内容为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :Tips, :List

        def initialize(tips=nil, list=nil)
          @Tips = tips
          @List = list
        end

        def deserialize(params)
          @Tips = params['Tips']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              recordtimeline_tmp = RecordTimeLine.new
              recordtimeline_tmp.deserialize(i)
              @List << recordtimeline_tmp
            end
          end
        end
      end

      # DescribeRecordFile请求参数结构体
      class DescribeRecordFileRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 通道所属设备ID
        # @type DeviceId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param StartTime: 检索开始时间，UTC秒数，例如：1662114146，开始和结束时间段最长为一天，且不能跨天
        # @type StartTime: Integer
        # @param EndTime: 检索结束时间，UTC秒数，例如：1662114246，开始和结束时间段最长为一天，且不能跨天
        # @type EndTime: Integer
        # @param WithUrl: 是否携带每个时间段的播放url
        # @type WithUrl: Boolean

        attr_accessor :DeviceId, :ChannelId, :StartTime, :EndTime, :WithUrl

        def initialize(deviceid=nil, channelid=nil, starttime=nil, endtime=nil, withurl=nil)
          @DeviceId = deviceid
          @ChannelId = channelid
          @StartTime = starttime
          @EndTime = endtime
          @WithUrl = withurl
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ChannelId = params['ChannelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @WithUrl = params['WithUrl']
        end
      end

      # DescribeRecordFile返回参数结构体
      class DescribeRecordFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeRecordFileData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeRecordFileData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordPlan请求参数结构体
      class DescribeRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 实时上云计划ID
        # @type PlanId: String

        attr_accessor :PlanId

        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # DescribeRecordPlan返回参数结构体
      class DescribeRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.RecordPlanBaseInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RecordPlanBaseInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordPlaybackUrl请求参数结构体
      class DescribeRecordPlaybackUrlRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 设备通道ID
        # @type ChannelId: String
        # @param StartTime: 回放开始时间，UTC秒数，例如：1662114146，开始和结束时间段最长为一天，且不能跨天
        # @type StartTime: Integer
        # @param EndTime: 回放结束时间，UTC秒数，例如：1662114246，开始和结束时间段最长为一天，且不能跨天
        # @type EndTime: Integer
        # @param IsInternal: 是否获取内网地址
        # @type IsInternal: Boolean
        # @param CorrectTimestamp: 云录像回放时，是否需要开启时间戳矫正，主要解决时间戳反转，会退等问题导致无法播放
        # @type CorrectTimestamp: Boolean

        attr_accessor :ChannelId, :StartTime, :EndTime, :IsInternal, :CorrectTimestamp

        def initialize(channelid=nil, starttime=nil, endtime=nil, isinternal=nil, correcttimestamp=nil)
          @ChannelId = channelid
          @StartTime = starttime
          @EndTime = endtime
          @IsInternal = isinternal
          @CorrectTimestamp = correcttimestamp
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsInternal = params['IsInternal']
          @CorrectTimestamp = params['CorrectTimestamp']
        end
      end

      # DescribeRecordPlaybackUrl返回参数结构体
      class DescribeRecordPlaybackUrlResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.RecordPlaybackUrl`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RecordPlaybackUrl.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询云录像取回任务详情返回数据
      class DescribeRecordRetrieveTaskData < TencentCloud::Common::AbstractModel
        # @param TaskId: 取回任务ID
        # @type TaskId: String
        # @param TaskName: 取回任务名称
        # @type TaskName: String
        # @param StartTime: 取回录像的开始时间
        # @type StartTime: Integer
        # @param EndTime: 取回录像的结束时间
        # @type EndTime: Integer
        # @param Mode: 取回模式，1:极速模式，其他暂不支持
        # @type Mode: Integer
        # @param Expiration: 副本有效期
        # @type Expiration: Integer
        # @param Status: 任务状态，0:已取回，1:取回中，2:待取回
        # @type Status: Integer
        # @param Capacity: 取回容量，单位MB
        # @type Capacity: Float
        # @param Channels: 任务的设备通道id
        # @type Channels: Array
        # @param Describe: 任务描述
        # @type Describe: String
        # @param ChannelCount: 任务通道数量
        # @type ChannelCount: Integer

        attr_accessor :TaskId, :TaskName, :StartTime, :EndTime, :Mode, :Expiration, :Status, :Capacity, :Channels, :Describe, :ChannelCount

        def initialize(taskid=nil, taskname=nil, starttime=nil, endtime=nil, mode=nil, expiration=nil, status=nil, capacity=nil, channels=nil, describe=nil, channelcount=nil)
          @TaskId = taskid
          @TaskName = taskname
          @StartTime = starttime
          @EndTime = endtime
          @Mode = mode
          @Expiration = expiration
          @Status = status
          @Capacity = capacity
          @Channels = channels
          @Describe = describe
          @ChannelCount = channelcount
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Mode = params['Mode']
          @Expiration = params['Expiration']
          @Status = params['Status']
          @Capacity = params['Capacity']
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              recordretrievetaskchannelinfo_tmp = RecordRetrieveTaskChannelInfo.new
              recordretrievetaskchannelinfo_tmp.deserialize(i)
              @Channels << recordretrievetaskchannelinfo_tmp
            end
          end
          @Describe = params['Describe']
          @ChannelCount = params['ChannelCount']
        end
      end

      # DescribeRecordRetrieveTask请求参数结构体
      class DescribeRecordRetrieveTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录像取回任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeRecordRetrieveTask返回参数结构体
      class DescribeRecordRetrieveTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeRecordRetrieveTaskData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeRecordRetrieveTaskData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordSlice请求参数结构体
      class DescribeRecordSliceRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param StartTime: 检索开始时间，UTC秒数，例如：1662114146，开始和结束时间段最长为一天，且不能跨天
        # @type StartTime: Integer
        # @param EndTime: 检索结束时间，UTC秒数，例如：1662114246，开始和结束时间段最长为一天，且不能跨天
        # @type EndTime: Integer

        attr_accessor :ChannelId, :StartTime, :EndTime

        def initialize(channelid=nil, starttime=nil, endtime=nil)
          @ChannelId = channelid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeRecordSlice返回参数结构体
      class DescribeRecordSliceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 云录像切片信息列表
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
              recordsliceinfo_tmp = RecordSliceInfo.new
              recordsliceinfo_tmp.deserialize(i)
              @Data << recordsliceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordTemplate请求参数结构体
      class DescribeRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeRecordTemplate返回参数结构体
      class DescribeRecordTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.RecordTemplateInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RecordTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询推拉流鉴权返回数据结构
      class DescribeStreamAuthData < TencentCloud::Common::AbstractModel
        # @param Id: 鉴权配置ID（uuid）
        # @type Id: String
        # @param PullState: 是否开播放鉴权（1:开启,0:关闭）
        # @type PullState: Integer
        # @param PullSecret: 播放密钥（仅支持字母数字，长度0-10位）
        # @type PullSecret: String
        # @param PullExpired: 播放过期时间（单位：分钟）
        # @type PullExpired: Integer
        # @param PushState: 是否开启推流鉴权（1:开启,0:关闭）
        # @type PushState: Integer
        # @param PushSecret: 推流密钥（仅支持字母数字，长度0-10位）
        # @type PushSecret: String
        # @param PushExpired: 推流过期时间（单位：分钟）
        # @type PushExpired: Integer
        # @param AppId: 用户ID
        # @type AppId: Integer

        attr_accessor :Id, :PullState, :PullSecret, :PullExpired, :PushState, :PushSecret, :PushExpired, :AppId

        def initialize(id=nil, pullstate=nil, pullsecret=nil, pullexpired=nil, pushstate=nil, pushsecret=nil, pushexpired=nil, appid=nil)
          @Id = id
          @PullState = pullstate
          @PullSecret = pullsecret
          @PullExpired = pullexpired
          @PushState = pushstate
          @PushSecret = pushsecret
          @PushExpired = pushexpired
          @AppId = appid
        end

        def deserialize(params)
          @Id = params['Id']
          @PullState = params['PullState']
          @PullSecret = params['PullSecret']
          @PullExpired = params['PullExpired']
          @PushState = params['PushState']
          @PushSecret = params['PushSecret']
          @PushExpired = params['PushExpired']
          @AppId = params['AppId']
        end
      end

      # DescribeStreamAuth请求参数结构体
      class DescribeStreamAuthRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeStreamAuth返回参数结构体
      class DescribeStreamAuthResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeStreamAuthData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeStreamAuthData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTask请求参数结构体
      class DescribeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 简单任务或复杂任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTask返回参数结构体
      class DescribeTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务详情
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.TaskData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TaskData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserDevice请求参数结构体
      class DescribeUserDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID（从获取设备列表接口ListDevices中获取）
        # @type DeviceId: String

        attr_accessor :DeviceId

        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeUserDevice返回参数结构体
      class DescribeUserDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeDeviceData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDeviceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询视频通道码率的返回结果列表
      class DescribeVideoBitRateList < TencentCloud::Common::AbstractModel
        # @param BitRates: 通道码率列表
        # @type BitRates: Array

        attr_accessor :BitRates

        def initialize(bitrates=nil)
          @BitRates = bitrates
        end

        def deserialize(params)
          unless params['BitRates'].nil?
            @BitRates = []
            params['BitRates'].each do |i|
              bitrateinfo_tmp = BitRateInfo.new
              bitrateinfo_tmp.deserialize(i)
              @BitRates << bitrateinfo_tmp
            end
          end
        end
      end

      # DescribeVideoBitRate请求参数结构体
      class DescribeVideoBitRateRequest < TencentCloud::Common::AbstractModel
        # @param ChannelIds: 通道ID列表
        # @type ChannelIds: Array

        attr_accessor :ChannelIds

        def initialize(channelids=nil)
          @ChannelIds = channelids
        end

        def deserialize(params)
          @ChannelIds = params['ChannelIds']
        end
      end

      # DescribeVideoBitRate返回参数结构体
      class DescribeVideoBitRateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeVideoBitRateList`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeVideoBitRateList.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取云录像下载URL返回的数据
      class DescribeVideoDownloadUrlData < TencentCloud::Common::AbstractModel
        # @param Url: 录像文件下载 URL
        # 注意：
        # URL 有效期是10分钟，过期后将拒绝访问，若需再用请重新获取
        # 录像文件下载采用分块传输编码，响应头Transfer-Encoding:chunked
        # 下载文件命名格式为{ChannelId}-{BeginTime}-{EndTime}.{FileType}
        # @type Url: String
        # @param ActualBeginTime: 实际下载录像的开始时间
        # 注意：当请求中指定IsRespActualTime参数为true时，才有该字段
        # @type ActualBeginTime: String
        # @param ActualEndTime: 实际下载录像的结束时间
        # 注意：当请求中指定IsRespActualTime参数为true时，才有该字段
        # @type ActualEndTime: String

        attr_accessor :Url, :ActualBeginTime, :ActualEndTime

        def initialize(url=nil, actualbegintime=nil, actualendtime=nil)
          @Url = url
          @ActualBeginTime = actualbegintime
          @ActualEndTime = actualendtime
        end

        def deserialize(params)
          @Url = params['Url']
          @ActualBeginTime = params['ActualBeginTime']
          @ActualEndTime = params['ActualEndTime']
        end
      end

      # DescribeVideoDownloadUrl请求参数结构体
      class DescribeVideoDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID
        # @type ChannelId: String
        # @param BeginTime: 下载的开始时间，UTC 秒数，开始和结束时间段最长为60分钟，且不能跨天。
        # 注意：实际下载的文件时长可能会大于该时段时长，通过指定IsRespActualTime参数可以获取实际下载的开始时间和结束时间。 原因是下载是TS切片对齐的，其目的也是为了保证用户下载数据的完整性，完全包含其指定的时间段。
        # @type BeginTime: String
        # @param EndTime: 下载的结束时间，UTC 秒数，开始和结束时间段最长为60分钟，且不能跨天。
        # 注意：实际下载的文件时长可能会大于该时段时长，通过指定IsRespActualTime参数可以获取实际下载的开始时间和结束时间。 原因是下载是TS切片对齐的，其目的也是为了保证用户下载数据的完整性，完全包含其指定的时间段。
        # @type EndTime: String
        # @param FileType: 文件格式，"mp4"：mp4格式，"ts"：ts文件格式
        # @type FileType: String
        # @param IsRespActualTime: 响应data中是否携带实际下载录像的开始时间与结束时间
        # @type IsRespActualTime: Boolean
        # @param IsInternal: 是否返回内网下载URL，默认是false，返回公网下载URL，true则返回内网下载URL
        # @type IsInternal: Boolean
        # @param Expires: 设置URL的有效期, 最小值是1秒, 最大值是86400秒, 不设置的话, 默认是600秒
        # @type Expires: Integer
        # @param IsSupportG711: 下载的MP4文件是否支持G711音频编码.
        # 注意: 如果云端录像中的音频编码为AAC, 那么下载的MP4默认是支持AAC编码的
        # 如果云端录像中的音频编码为G711且 IsSupportG711设置为true时, 下载的MP4是支持G711音频编码
        # 如果云端录像中的音频编码为G711且 IsSupportG711设置为false时, 下载的MP4是不支持G711音频编码
        # 该参数只对FileType为mp4才有效, 不设置的话, 默认是false
        # @type IsSupportG711: Boolean

        attr_accessor :ChannelId, :BeginTime, :EndTime, :FileType, :IsRespActualTime, :IsInternal, :Expires, :IsSupportG711

        def initialize(channelid=nil, begintime=nil, endtime=nil, filetype=nil, isrespactualtime=nil, isinternal=nil, expires=nil, issupportg711=nil)
          @ChannelId = channelid
          @BeginTime = begintime
          @EndTime = endtime
          @FileType = filetype
          @IsRespActualTime = isrespactualtime
          @IsInternal = isinternal
          @Expires = expires
          @IsSupportG711 = issupportg711
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @FileType = params['FileType']
          @IsRespActualTime = params['IsRespActualTime']
          @IsInternal = params['IsInternal']
          @Expires = params['Expires']
          @IsSupportG711 = params['IsSupportG711']
        end
      end

      # DescribeVideoDownloadUrl返回参数结构体
      class DescribeVideoDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的数据结构
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.DescribeVideoDownloadUrlData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeVideoDownloadUrlData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 口罩识别结果详情
      class FaceMaskAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间字符串
        # @type Time: String
        # @param Url: 截图 URL
        # @type Url: String
        # @param FaceMaskInfo: 口罩信息
        # @type FaceMaskInfo: Array

        attr_accessor :Time, :Url, :FaceMaskInfo

        def initialize(time=nil, url=nil, facemaskinfo=nil)
          @Time = time
          @Url = url
          @FaceMaskInfo = facemaskinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @Url = params['Url']
          unless params['FaceMaskInfo'].nil?
            @FaceMaskInfo = []
            params['FaceMaskInfo'].each do |i|
              baseairesultinfo_tmp = BaseAIResultInfo.new
              baseairesultinfo_tmp.deserialize(i)
              @FaceMaskInfo << baseairesultinfo_tmp
            end
          end
        end
      end

      # 抓拍结果信息
      class GBDeviceSnapInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称
        # @type FileName: String
        # @param DownloadUrl: 下载地址，空值表示存储图片过期
        # @type DownloadUrl: String
        # @param ImageSize: 图片大小，单位B
        # @type ImageSize: Integer
        # @param CreatedTime: 文件的创建时间
        # @type CreatedTime: String
        # @param ReceivedTime: 图片的接收时间
        # @type ReceivedTime: String
        # @param PreviewUrl: 预览地址，空值表示存储图片过期
        # @type PreviewUrl: String
        # @param SessionId: 国标信令会话ID，同时对应控制设备抓拍 ( ControlDeviceSnapshot )接口返回的request_id
        # @type SessionId: String

        attr_accessor :FileName, :DownloadUrl, :ImageSize, :CreatedTime, :ReceivedTime, :PreviewUrl, :SessionId

        def initialize(filename=nil, downloadurl=nil, imagesize=nil, createdtime=nil, receivedtime=nil, previewurl=nil, sessionid=nil)
          @FileName = filename
          @DownloadUrl = downloadurl
          @ImageSize = imagesize
          @CreatedTime = createdtime
          @ReceivedTime = receivedtime
          @PreviewUrl = previewurl
          @SessionId = sessionid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @DownloadUrl = params['DownloadUrl']
          @ImageSize = params['ImageSize']
          @CreatedTime = params['CreatedTime']
          @ReceivedTime = params['ReceivedTime']
          @PreviewUrl = params['PreviewUrl']
          @SessionId = params['SessionId']
        end
      end

      # 网关设备数据
      class GatewayDevice < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param ProtocolType: 网关接入协议类型
        # @type ProtocolType: Integer
        # @param ProtocolTypeName: 网关接入协议名称
        # @type ProtocolTypeName: String
        # @param Name: 设备名称
        # @type Name: String
        # @param Type: 设备类型
        # @type Type: Integer
        # @param Ip: 设备内网IP
        # @type Ip: String
        # @param Port: 设备端口
        # @type Port: Integer
        # @param ChannelNum: 设备下通道数
        # @type ChannelNum: Integer
        # @param Status: 设备状态
        # @type Status: Integer

        attr_accessor :DeviceId, :ProtocolType, :ProtocolTypeName, :Name, :Type, :Ip, :Port, :ChannelNum, :Status

        def initialize(deviceid=nil, protocoltype=nil, protocoltypename=nil, name=nil, type=nil, ip=nil, port=nil, channelnum=nil, status=nil)
          @DeviceId = deviceid
          @ProtocolType = protocoltype
          @ProtocolTypeName = protocoltypename
          @Name = name
          @Type = type
          @Ip = ip
          @Port = port
          @ChannelNum = channelnum
          @Status = status
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ProtocolType = params['ProtocolType']
          @ProtocolTypeName = params['ProtocolTypeName']
          @Name = params['Name']
          @Type = params['Type']
          @Ip = params['Ip']
          @Port = params['Port']
          @ChannelNum = params['ChannelNum']
          @Status = params['Status']
        end
      end

      # 网关详情版本信息
      class GatewayVersion < TencentCloud::Common::AbstractModel
        # @param Name: 服务名称
        # @type Name: String
        # @param Version: 服务版本
        # @type Version: String

        attr_accessor :Name, :Version

        def initialize(name=nil, version=nil)
          @Name = name
          @Version = version
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
        end
      end

      # 查询网关列表返回结果
      class GatewaysData < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID
        # @type GatewayId: String
        # @param GwId: 网关编码
        # @type GwId: String
        # @param Name: 网关名称，仅支持中文、英文、数字、_、-，长度不超过32个字符
        # @type Name: String
        # @param Description: 网关描述，仅支持中文、英文、数字、_、-，长度不超过128个字符
        # @type Description: String
        # @param ClusterId: 网关所属服务节点ID
        # @type ClusterId: String
        # @param ClusterName: 网关所属服务节点名称
        # @type ClusterName: String
        # @param Region: 网关所属地域
        # @type Region: String
        # @param Status: 网关状态，0：离线，1:在线
        # @type Status: Integer
        # @param CreatedAt: 网关激活时间
        # @type CreatedAt: String
        # @param DeviceNum: 所属网关设备数量
        # @type DeviceNum: Integer

        attr_accessor :GatewayId, :GwId, :Name, :Description, :ClusterId, :ClusterName, :Region, :Status, :CreatedAt, :DeviceNum

        def initialize(gatewayid=nil, gwid=nil, name=nil, description=nil, clusterid=nil, clustername=nil, region=nil, status=nil, createdat=nil, devicenum=nil)
          @GatewayId = gatewayid
          @GwId = gwid
          @Name = name
          @Description = description
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @Status = status
          @CreatedAt = createdat
          @DeviceNum = devicenum
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GwId = params['GwId']
          @Name = params['Name']
          @Description = params['Description']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @DeviceNum = params['DeviceNum']
        end
      end

      # ISUP智能安全接入 API返回数据
      class ISAPIOutputData < TencentCloud::Common::AbstractModel
        # @param OutputData: 输出参数
        # @type OutputData: String

        attr_accessor :OutputData

        def initialize(outputdata=nil)
          @OutputData = outputdata
        end

        def deserialize(params)
          @OutputData = params['OutputData']
        end
      end

      # 生命周期，云文件生命周期设置，管理文件冷、热存储的时间
      class LifeCycleData < TencentCloud::Common::AbstractModel
        # @param Transition: 云文件热存储时长，单位天，最小1天，最大3650天
        # @type Transition: Integer
        # @param Expiration: 云文件冷存储时长， 单位天，0表示不设置，设置时最小60天，Expiration字段加Transition字段不超过3650天
        # @type Expiration: Integer

        attr_accessor :Transition, :Expiration

        def initialize(transition=nil, expiration=nil)
          @Transition = transition
          @Expiration = expiration
        end

        def deserialize(params)
          @Transition = params['Transition']
          @Expiration = params['Expiration']
        end
      end

      # 获取AI任务列表的数据
      class ListAITaskData < TencentCloud::Common::AbstractModel
        # @param List: AI任务列表
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
              aitaskinfo_tmp = AITaskInfo.new
              aitaskinfo_tmp.deserialize(i)
              @List << aitaskinfo_tmp
            end
          end
        end
      end

      # ListAITasks请求参数结构体
      class ListAITasksRequest < TencentCloud::Common::AbstractModel
        # @param IsContainChannelList: 是否包含通道列表。"true"代表包含通道列表，"false"代表不包含通道列表，默认为 false
        # @type IsContainChannelList: Boolean
        # @param IsContainTemplate: 是否包含AI配置。"true"代表包含任务配置，"false"代表不包含任务配置，默认为 false。
        # @type IsContainTemplate: Boolean
        # @param PageNumber: 页码。默认为1
        # @type PageNumber: Integer
        # @param PageSize: 每页数量。可选值1～200，默认为20
        # @type PageSize: Integer

        attr_accessor :IsContainChannelList, :IsContainTemplate, :PageNumber, :PageSize

        def initialize(iscontainchannellist=nil, iscontaintemplate=nil, pagenumber=nil, pagesize=nil)
          @IsContainChannelList = iscontainchannellist
          @IsContainTemplate = iscontaintemplate
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @IsContainChannelList = params['IsContainChannelList']
          @IsContainTemplate = params['IsContainTemplate']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListAITasks返回参数结构体
      class ListAITasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: AI 任务数量
        # @type TotalCount: Integer
        # @param Data: AI任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListAITaskData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = ListAITaskData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取设备列表的响应
      class ListDeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备 ID
        # @type DeviceId: String
        # @param Code: 设备编码
        # @type Code: String
        # @param Status: 设备状态。0:未注册，1:在线，2:离线，3:禁用
        # @type Status: Integer
        # @param TransportProtocol: 设备流传输协议。1:UDP,2:TCP
        # @type TransportProtocol: Integer
        # @param Name: 设备名称
        # @type Name: String
        # @param Type: 设备类型。1:IPC,2:NVR
        # @type Type: Integer
        # @param Password: 设备密码
        # @type Password: String
        # @param Description: 描述
        # @type Description: String
        # @param ClusterId: 设备接入服务节点 ID
        # @type ClusterId: String
        # @param ClusterName: 服务节点名称
        # @type ClusterName: String
        # @param AccessProtocol: 接入协议。1:RTMP,2:GB,3:GW
        # @type AccessProtocol: Integer
        # @param OrganizationId: 设备所属组织 ID
        # @type OrganizationId: String
        # @param ChannelNum: 通道数量
        # @type ChannelNum: Integer

        attr_accessor :DeviceId, :Code, :Status, :TransportProtocol, :Name, :Type, :Password, :Description, :ClusterId, :ClusterName, :AccessProtocol, :OrganizationId, :ChannelNum

        def initialize(deviceid=nil, code=nil, status=nil, transportprotocol=nil, name=nil, type=nil, password=nil, description=nil, clusterid=nil, clustername=nil, accessprotocol=nil, organizationid=nil, channelnum=nil)
          @DeviceId = deviceid
          @Code = code
          @Status = status
          @TransportProtocol = transportprotocol
          @Name = name
          @Type = type
          @Password = password
          @Description = description
          @ClusterId = clusterid
          @ClusterName = clustername
          @AccessProtocol = accessprotocol
          @OrganizationId = organizationid
          @ChannelNum = channelnum
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Code = params['Code']
          @Status = params['Status']
          @TransportProtocol = params['TransportProtocol']
          @Name = params['Name']
          @Type = params['Type']
          @Password = params['Password']
          @Description = params['Description']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @AccessProtocol = params['AccessProtocol']
          @OrganizationId = params['OrganizationId']
          @ChannelNum = params['ChannelNum']
        end
      end

      # ListDeviceSnapshots请求参数结构体
      class ListDeviceSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param DeviceId: 设备ID（该字段暂不生效）
        # @type DeviceId: String
        # @param Start: 查询开始时间，默认查询当天
        # @type Start: Integer
        # @param End: 查询结束时间，默认查询当天
        # @type End: Integer
        # @param PageNumber: 分页页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 分页大小，默认200，最大2000
        # @type PageSize: Integer

        attr_accessor :ChannelId, :DeviceId, :Start, :End, :PageNumber, :PageSize

        def initialize(channelid=nil, deviceid=nil, start=nil, _end=nil, pagenumber=nil, pagesize=nil)
          @ChannelId = channelid
          @DeviceId = deviceid
          @Start = start
          @End = _end
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @DeviceId = params['DeviceId']
          @Start = params['Start']
          @End = params['End']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDeviceSnapshots返回参数结构体
      class ListDeviceSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 抓拍结果信息列表
        # @type Data: Array
        # @param TotalCount: 抓拍结果总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              gbdevicesnapinfo_tmp = GBDeviceSnapInfo.new
              gbdevicesnapinfo_tmp.deserialize(i)
              @Data << gbdevicesnapinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListDevices请求参数结构体
      class ListDevicesRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织ID
        # @type OrganizationId: String
        # @param IsContainSubLevel: 是否获取当前层级及子层级的设备列表，默认false
        # @type IsContainSubLevel: Boolean
        # @param IsContainUser: 是否包含当前用户已关联的设备，默认false
        # @type IsContainUser: Boolean
        # @param AccessProtocol: 设备接入协议。1:RTMP，2:GB，3:GW，4:IVCP(私有协议)
        # @type AccessProtocol: Integer
        # @param Type: 设备类型。1:IPC，2:NVR
        # @type Type: Integer
        # @param Status: 设备状态。0:未注册，1:在线，2:离线，3:禁用
        # @type Status: Integer
        # @param ClusterId: 服务节点ID
        # @type ClusterId: String
        # @param Keyword: 模糊搜索设备的关键字
        # @type Keyword: String
        # @param CurrentUin: 当前用户Uin
        # @type CurrentUin: Integer
        # @param PageNumber: 页码，默认为1。
        # @type PageNumber: Integer
        # @param PageSize: 每页数量，默认为20，单页最大10000条
        # @type PageSize: Integer

        attr_accessor :OrganizationId, :IsContainSubLevel, :IsContainUser, :AccessProtocol, :Type, :Status, :ClusterId, :Keyword, :CurrentUin, :PageNumber, :PageSize

        def initialize(organizationid=nil, iscontainsublevel=nil, iscontainuser=nil, accessprotocol=nil, type=nil, status=nil, clusterid=nil, keyword=nil, currentuin=nil, pagenumber=nil, pagesize=nil)
          @OrganizationId = organizationid
          @IsContainSubLevel = iscontainsublevel
          @IsContainUser = iscontainuser
          @AccessProtocol = accessprotocol
          @Type = type
          @Status = status
          @ClusterId = clusterid
          @Keyword = keyword
          @CurrentUin = currentuin
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @IsContainSubLevel = params['IsContainSubLevel']
          @IsContainUser = params['IsContainUser']
          @AccessProtocol = params['AccessProtocol']
          @Type = params['Type']
          @Status = params['Status']
          @ClusterId = params['ClusterId']
          @Keyword = params['Keyword']
          @CurrentUin = params['CurrentUin']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDevices返回参数结构体
      class ListDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备列表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 设备总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              listdeviceinfo_tmp = ListDeviceInfo.new
              listdeviceinfo_tmp.deserialize(i)
              @Data << listdeviceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 用户禁止播流的通道列表返回数据
      class ListForbidplayChannelsData < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # @type PageNumber: Integer
        # @param PageSize: 当前页的设备数量
        # @type PageSize: Integer
        # @param TotalCount: 本次查询的设备通道总数
        # @type TotalCount: Integer
        # @param List: 设备通道信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :List

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, list=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @List = list
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              channelattrinfo_tmp = ChannelAttrInfo.new
              channelattrinfo_tmp.deserialize(i)
              @List << channelattrinfo_tmp
            end
          end
        end
      end

      # 查询网关设备列表返回数据
      class ListGatewayDevicesData < TencentCloud::Common::AbstractModel
        # @param List: 网关下设备列表
        # @type List: Array
        # @param TotalCount: 网关下设备总数
        # @type TotalCount: Integer

        attr_accessor :List, :TotalCount

        def initialize(list=nil, totalcount=nil)
          @List = list
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              gatewaydevice_tmp = GatewayDevice.new
              gatewaydevice_tmp.deserialize(i)
              @List << gatewaydevice_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # ListGatewayDevices请求参数结构体
      class ListGatewayDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID（从获取网关列表接口ListGateways中获取）
        # @type GatewayId: String
        # @param PageNumber: 分页页数
        # @type PageNumber: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer

        attr_accessor :GatewayId, :PageNumber, :PageSize

        def initialize(gatewayid=nil, pagenumber=nil, pagesize=nil)
          @GatewayId = gatewayid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListGatewayDevices返回参数结构体
      class ListGatewayDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListGatewayDevicesData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListGatewayDevicesData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询网关列表返回结果
      class ListGatewaysData < TencentCloud::Common::AbstractModel
        # @param List: 网关列表
        # @type List: Array
        # @param TotalCount: 网关数量
        # @type TotalCount: Integer

        attr_accessor :List, :TotalCount

        def initialize(list=nil, totalcount=nil)
          @List = list
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              gatewaysdata_tmp = GatewaysData.new
              gatewaysdata_tmp.deserialize(i)
              @List << gatewaysdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # ListGateways请求参数结构体
      class ListGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 每页数量，默认为20
        # @type PageSize: Integer
        # @param Name: 网关名称
        # @type Name: String
        # @param ClusterId: 服务节点ID
        # @type ClusterId: String
        # @param Status: 网关状态（0：离线，1 ：在线）
        # @type Status: Integer

        attr_accessor :PageNumber, :PageSize, :Name, :ClusterId, :Status

        def initialize(pagenumber=nil, pagesize=nil, name=nil, clusterid=nil, status=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Name = name
          @ClusterId = clusterid
          @Status = status
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Name = params['Name']
          @ClusterId = params['ClusterId']
          @Status = params['Status']
        end
      end

      # ListGateways返回参数结构体
      class ListGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListGatewaysData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListGatewaysData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 组织目录下的未添加到实时上云计划中的通道数量返回数据
      class ListOrganizationChannelNumbersData < TencentCloud::Common::AbstractModel
        # @param TotalCount: 组织下通道总数
        # @type TotalCount: Integer
        # @param NotInPlanCount: 组织下未添加到计划的通道总数
        # @type NotInPlanCount: Integer

        attr_accessor :TotalCount, :NotInPlanCount

        def initialize(totalcount=nil, notinplancount=nil)
          @TotalCount = totalcount
          @NotInPlanCount = notinplancount
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @NotInPlanCount = params['NotInPlanCount']
        end
      end

      # ListOrganizationChannelNumbers请求参数结构体
      class ListOrganizationChannelNumbersRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织ID，json数组格式，最多一次支持10个组织
        # @type OrganizationId: Array

        attr_accessor :OrganizationId

        def initialize(organizationid=nil)
          @OrganizationId = organizationid
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
        end
      end

      # ListOrganizationChannelNumbers返回参数结构体
      class ListOrganizationChannelNumbersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListOrganizationChannelNumbersData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListOrganizationChannelNumbersData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询组织目录下的通道列表返回数据
      class ListOrganizationChannelsData < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # @type PageNumber: Integer
        # @param PageSize: 当前页的设备数量
        # @type PageSize: Integer
        # @param TotalCount: 本次查询的设备通道总数
        # @type TotalCount: Integer
        # @param List: 设备通道信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :List

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, list=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @List = list
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              organizationchannelinfo_tmp = OrganizationChannelInfo.new
              organizationchannelinfo_tmp.deserialize(i)
              @List << organizationchannelinfo_tmp
            end
          end
        end
      end

      # ListOrganizationChannels请求参数结构体
      class ListOrganizationChannelsRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织ID
        # @type OrganizationId: String
        # @param PageSize: 每页最大数量
        # @type PageSize: Integer
        # @param PageNumber: 第几页
        # @type PageNumber: Integer
        # @param DeviceName: 查询条件，则按照设备名称查询
        # 查询条件同时只有一个生效。长度不超过32字节
        # @type DeviceName: String
        # @param ChannelName: 查询条件，则按照通道名称查询
        # 查询条件同时只有一个生效。长度不超过32字节
        # @type ChannelName: String

        attr_accessor :OrganizationId, :PageSize, :PageNumber, :DeviceName, :ChannelName

        def initialize(organizationid=nil, pagesize=nil, pagenumber=nil, devicename=nil, channelname=nil)
          @OrganizationId = organizationid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @DeviceName = devicename
          @ChannelName = channelname
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @DeviceName = params['DeviceName']
          @ChannelName = params['ChannelName']
        end
      end

      # ListOrganizationChannels返回参数结构体
      class ListOrganizationChannelsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListOrganizationChannelsData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListOrganizationChannelsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询录像上云计划列表返回数据
      class ListRecordBackupPlanData < TencentCloud::Common::AbstractModel
        # @param PlanId: 录像上云计划ID
        # @type PlanId: String
        # @param PlanName: 录像上云计划名称
        # @type PlanName: String
        # @param TemplateId: 录像上云模板ID
        # @type TemplateId: String
        # @param Describe: 录像上云计划描述
        # @type Describe: String
        # @param LifeCycle: 云文件生命周期
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Status: 录像上云计划状态，1:正常使用中，0:删除中，无法使用
        # @type Status: Integer
        # @param ChannelCount: 通道数量
        # @type ChannelCount: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 修改时间
        # @type UpdateAt: String

        attr_accessor :PlanId, :PlanName, :TemplateId, :Describe, :LifeCycle, :Status, :ChannelCount, :CreateAt, :UpdateAt

        def initialize(planid=nil, planname=nil, templateid=nil, describe=nil, lifecycle=nil, status=nil, channelcount=nil, createat=nil, updateat=nil)
          @PlanId = planid
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @LifeCycle = lifecycle
          @Status = status
          @ChannelCount = channelcount
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          @Status = params['Status']
          @ChannelCount = params['ChannelCount']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # 查询录像上云计划关联通道的返回数据
      class ListRecordBackupPlanDevicesData < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # @type PageNumber: Integer
        # @param PageSize: 当前页的设备数量
        # @type PageSize: Integer
        # @param TotalCount: 本次查询的设备通道总数
        # @type TotalCount: Integer
        # @param List: 设备通道信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :List

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, list=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @List = list
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              recordplanchannelinfo_tmp = RecordPlanChannelInfo.new
              recordplanchannelinfo_tmp.deserialize(i)
              @List << recordplanchannelinfo_tmp
            end
          end
        end
      end

      # ListRecordBackupPlanDevices请求参数结构体
      class ListRecordBackupPlanDevicesRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 录像计划ID（从查询录像上云计划列表接口ListRecordBackupPlans中获取）
        # @type PlanId: String
        # @param DeviceName: 按照设备名称查询（为空时，不参考该参数）
        # @type DeviceName: String
        # @param ChannelName: 按照通道名称查询（为空时，不参考该参数）
        # @type ChannelName: String
        # @param OrganizationName: 按照组织名称查询（为空时，不参考该参数）
        # @type OrganizationName: String
        # @param PageSize: 每页最大数量
        # @type PageSize: Integer
        # @param PageNumber: 分页页数
        # @type PageNumber: Integer

        attr_accessor :PlanId, :DeviceName, :ChannelName, :OrganizationName, :PageSize, :PageNumber

        def initialize(planid=nil, devicename=nil, channelname=nil, organizationname=nil, pagesize=nil, pagenumber=nil)
          @PlanId = planid
          @DeviceName = devicename
          @ChannelName = channelname
          @OrganizationName = organizationname
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @DeviceName = params['DeviceName']
          @ChannelName = params['ChannelName']
          @OrganizationName = params['OrganizationName']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # ListRecordBackupPlanDevices返回参数结构体
      class ListRecordBackupPlanDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListRecordBackupPlanDevicesData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListRecordBackupPlanDevicesData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRecordBackupPlans请求参数结构体
      class ListRecordBackupPlansRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListRecordBackupPlans返回参数结构体
      class ListRecordBackupPlansResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              listrecordbackupplandata_tmp = ListRecordBackupPlanData.new
              listrecordbackupplandata_tmp.deserialize(i)
              @Data << listrecordbackupplandata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询录像上云模板列表返回数据
      class ListRecordBackupTemplatesData < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TimeSections: 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type TimeSections: Array
        # @param DevTimeSections: 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type DevTimeSections: Array
        # @param Scale: 上云倍速（支持1，2，4倍速）
        # @type Scale: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 更新时间
        # @type UpdateAt: String

        attr_accessor :TemplateId, :TemplateName, :TimeSections, :DevTimeSections, :Scale, :CreateAt, :UpdateAt

        def initialize(templateid=nil, templatename=nil, timesections=nil, devtimesections=nil, scale=nil, createat=nil, updateat=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TimeSections = timesections
          @DevTimeSections = devtimesections
          @Scale = scale
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
          unless params['DevTimeSections'].nil?
            @DevTimeSections = []
            params['DevTimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @DevTimeSections << recordtemplatetimesections_tmp
            end
          end
          @Scale = params['Scale']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # ListRecordBackupTemplates请求参数结构体
      class ListRecordBackupTemplatesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListRecordBackupTemplates返回参数结构体
      class ListRecordBackupTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
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
              listrecordbackuptemplatesdata_tmp = ListRecordBackupTemplatesData.new
              listrecordbackuptemplatesdata_tmp.deserialize(i)
              @Data << listrecordbackuptemplatesdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 用户下所有实时上云计划中的通道id列表返回数据
      class ListRecordPlanChannelsData < TencentCloud::Common::AbstractModel
        # @param List: 用户所有计划下通道id，存在通道是为数组格式，不存在时，字段数据为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :List

        def initialize(list=nil)
          @List = list
        end

        def deserialize(params)
          @List = params['List']
        end
      end

      # ListRecordPlanChannels请求参数结构体
      class ListRecordPlanChannelsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListRecordPlanChannels返回参数结构体
      class ListRecordPlanChannelsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListRecordPlanChannelsData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListRecordPlanChannelsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云计划下的设备通道列表返回数据
      class ListRecordPlanDevicesData < TencentCloud::Common::AbstractModel
        # @param PageNumber: 第几页
        # @type PageNumber: Integer
        # @param PageSize: 当前页的设备数量
        # @type PageSize: Integer
        # @param TotalCount: 本次查询的设备通道总数
        # @type TotalCount: Integer
        # @param List: 设备通道信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :List

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, list=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @List = list
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              recordplanchannelinfo_tmp = RecordPlanChannelInfo.new
              recordplanchannelinfo_tmp.deserialize(i)
              @List << recordplanchannelinfo_tmp
            end
          end
        end
      end

      # ListRecordPlanDevices请求参数结构体
      class ListRecordPlanDevicesRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 上云计划ID
        # @type PlanId: String
        # @param PageSize: 每页最大数量
        # @type PageSize: Integer
        # @param PageNumber: 第几页
        # @type PageNumber: Integer
        # @param DeviceName: 按照设备名称查询，为空时，不参考该参数
        # 通道名称、设备名称、组织名称同时只有一个有效，如果同时多个字段有值，按照通道名称、设备名称、组织名称的优先级顺序查询，如果都为空，则全量查询。长度不超过32字节
        # @type DeviceName: String
        # @param ChannelName: 按照通道名称查询，为空时，不参考该参数
        # 通道名称、设备名称、组织名称同时只有一个有效，如果同时多个字段有值，按照通道名称、设备名称、组织名称的优先级顺序查询，如果都为空，则全量查询。长度不超过32字节
        # @type ChannelName: String
        # @param OrganizationName: 按照组织名称查询|，为空时，不参考该参数
        # 通道名称、设备名称、组织名称同时只有一个有效，如果同时多个字段有值，按照通道名称、设备名称、组织名称的优先级顺序查询，如果都为空，则全量查询。长度不超过32字节
        # @type OrganizationName: String

        attr_accessor :PlanId, :PageSize, :PageNumber, :DeviceName, :ChannelName, :OrganizationName

        def initialize(planid=nil, pagesize=nil, pagenumber=nil, devicename=nil, channelname=nil, organizationname=nil)
          @PlanId = planid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @DeviceName = devicename
          @ChannelName = channelname
          @OrganizationName = organizationname
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @DeviceName = params['DeviceName']
          @ChannelName = params['ChannelName']
          @OrganizationName = params['OrganizationName']
        end
      end

      # ListRecordPlanDevices返回参数结构体
      class ListRecordPlanDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListRecordPlanDevicesData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListRecordPlanDevicesData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRecordPlans请求参数结构体
      class ListRecordPlansRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListRecordPlans返回参数结构体
      class ListRecordPlansResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果，存在计划时，为Json数组格式，不存在计划时，字段数据为空
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
              recordplanbaseinfo_tmp = RecordPlanBaseInfo.new
              recordplanbaseinfo_tmp.deserialize(i)
              @Data << recordplanbaseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRecordRetrieveTasks请求参数结构体
      class ListRecordRetrieveTasksRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListRecordRetrieveTasks返回参数结构体
      class ListRecordRetrieveTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
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
              recordretrievetaskdetailsinfo_tmp = RecordRetrieveTaskDetailsInfo.new
              recordretrievetaskdetailsinfo_tmp.deserialize(i)
              @Data << recordretrievetaskdetailsinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListRecordTemplates请求参数结构体
      class ListRecordTemplatesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListRecordTemplates返回参数结构体
      class ListRecordTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果，存在模板时，为Json数组格式，不存在模板时，字段数据为空
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
              recordtemplateinfo_tmp = RecordTemplateInfo.new
              recordtemplateinfo_tmp.deserialize(i)
              @Data << recordtemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 列举子任务列表
      class ListSubTasksData < TencentCloud::Common::AbstractModel
        # @param List: 子任务列表
        # @type List: Array
        # @param TotalCount: 子任务数量
        # @type TotalCount: Integer

        attr_accessor :List, :TotalCount

        def initialize(list=nil, totalcount=nil)
          @List = list
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              subtaskdata_tmp = SubTaskData.new
              subtaskdata_tmp.deserialize(i)
              @List << subtaskdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # ListSubTasks请求参数结构体
      class ListSubTasksRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 复杂任务ID
        # @type TaskId: String
        # @param PageNumber: 页码，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 每页数量，默认为10
        # @type PageSize: Integer
        # @param Status: 默认不对该字段进行筛选，否则根据任务状态进行筛选。状态码：1-NEW，2-RUNNING，3-COMPLETED，4-FAILED
        # @type Status: Integer

        attr_accessor :TaskId, :PageNumber, :PageSize, :Status

        def initialize(taskid=nil, pagenumber=nil, pagesize=nil, status=nil)
          @TaskId = taskid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Status = status
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Status = params['Status']
        end
      end

      # ListSubTasks返回参数结构体
      class ListSubTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListSubTasksData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListSubTasksData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询任务列表
      class ListTasksData < TencentCloud::Common::AbstractModel
        # @param List: 任务列表
        # @type List: Array
        # @param TotalCount: 任务数量
        # @type TotalCount: Integer

        attr_accessor :List, :TotalCount

        def initialize(list=nil, totalcount=nil)
          @List = list
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              taskdata_tmp = TaskData.new
              taskdata_tmp.deserialize(i)
              @List << taskdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # ListTasks请求参数结构体
      class ListTasksRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，默认为1
        # @type PageNumber: Integer
        # @param PageSize: 每页数量，默认为20
        # @type PageSize: Integer
        # @param Operation: 默认不根据该字段进行筛选，否则根据设备操作类型进行筛选，目前值有：BatchDeleteUserDevice，BatchDisableDevice，BatchEnableDevice，
        # BatchUpgradeDevice，
        # BatchResetDevice,
        # BatchRebootDevice,
        # BatchRefreshDeviceChannel
        # @type Operation: String
        # @param Status: 默认不根据该字段进行筛选，否则根据任务状态进行筛选。状态码：1-未执行，2-执行中，3-完成，4-取消
        # @type Status: Integer
        # @param BeginTime: 开始时间
        # @type BeginTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :PageNumber, :PageSize, :Operation, :Status, :BeginTime, :EndTime

        def initialize(pagenumber=nil, pagesize=nil, operation=nil, status=nil, begintime=nil, endtime=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Operation = operation
          @Status = status
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Operation = params['Operation']
          @Status = params['Status']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # ListTasks返回参数结构体
      class ListTasksResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListTasksData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTasksData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AI识别结果在画面中坐标
      class Location < TencentCloud::Common::AbstractModel
        # @param X: 左上角 X 坐标轴
        # @type X: Integer
        # @param Y: 左上角 Y 坐标轴
        # @type Y: Integer
        # @param Width: 方框宽
        # @type Width: Integer
        # @param Height: 方框高
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

      # AI分析的时间段配置
      class OperTimeSlot < TencentCloud::Common::AbstractModel
        # @param Start: 开始时间。格式为"hh:mm:ss"，且 Start 必须小于 End
        # @type Start: String
        # @param End: 结束时间。格式为"hh:mm:ss"，且 Start 必须小于 End
        # @type End: String

        attr_accessor :Start, :End

        def initialize(start=nil, _end=nil)
          @Start = start
          @End = _end
        end

        def deserialize(params)
          @Start = params['Start']
          @End = params['End']
        end
      end

      # 组织目录下的通道信息
      class OrganizationChannelInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备通道所属的设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备通道所属的设备名称
        # @type DeviceName: String
        # @param ChannelId: 设备通道ID
        # @type ChannelId: String
        # @param ChannelName: 设备通道名称
        # @type ChannelName: String
        # @param InPlan: 该通道是否在上云计划中，如果是，则不能在添加到其他上云计划|true：在上云计划中，false：不在上云计划中
        # @type InPlan: Boolean

        attr_accessor :DeviceId, :DeviceName, :ChannelId, :ChannelName, :InPlan

        def initialize(deviceid=nil, devicename=nil, channelid=nil, channelname=nil, inplan=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @ChannelId = channelid
          @ChannelName = channelname
          @InPlan = inplan
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @InPlan = params['InPlan']
        end
      end

      # 宠物识别结果详情
      class PetAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间字符串
        # @type Time: String
        # @param Url: 截图 URL
        # @type Url: String
        # @param PetInfo: 宠物信息
        # @type PetInfo: Array

        attr_accessor :Time, :Url, :PetInfo

        def initialize(time=nil, url=nil, petinfo=nil)
          @Time = time
          @Url = url
          @PetInfo = petinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @Url = params['Url']
          unless params['PetInfo'].nil?
            @PetInfo = []
            params['PetInfo'].each do |i|
              baseairesultinfo_tmp = BaseAIResultInfo.new
              baseairesultinfo_tmp.deserialize(i)
              @PetInfo << baseairesultinfo_tmp
            end
          end
        end
      end

      # 打电话识别结果详情
      class PhoneCallAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间字符串
        # @type Time: String
        # @param Url: 截图 URL
        # @type Url: String
        # @param PhoneCallInfo: 打电话信息
        # @type PhoneCallInfo: Array

        attr_accessor :Time, :Url, :PhoneCallInfo

        def initialize(time=nil, url=nil, phonecallinfo=nil)
          @Time = time
          @Url = url
          @PhoneCallInfo = phonecallinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @Url = params['Url']
          unless params['PhoneCallInfo'].nil?
            @PhoneCallInfo = []
            params['PhoneCallInfo'].each do |i|
              baseairesultinfo_tmp = BaseAIResultInfo.new
              baseairesultinfo_tmp.deserialize(i)
              @PhoneCallInfo << baseairesultinfo_tmp
            end
          end
        end
      end

      # AI车牌信息
      class PlateContent < TencentCloud::Common::AbstractModel
        # @param Plate: 车牌号信息
        # @type Plate: String
        # @param Color: 车牌的颜色
        # @type Color: String
        # @param Type: 车牌的种类，例如普通蓝牌
        # @type Type: String
        # @param Location: 截图中坐标信息
        # @type Location: :class:`Tencentcloud::Iss.v20230517.models.Location`

        attr_accessor :Plate, :Color, :Type, :Location

        def initialize(plate=nil, color=nil, type=nil, location=nil)
          @Plate = plate
          @Color = color
          @Type = type
          @Location = location
        end

        def deserialize(params)
          @Plate = params['Plate']
          @Color = params['Color']
          @Type = params['Type']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # 本地录像播放url数据结构
      class PlayRecordData < TencentCloud::Common::AbstractModel
        # @param Flv: 录像播放地址
        # @type Flv: String

        attr_accessor :Flv

        def initialize(flv=nil)
          @Flv = flv
        end

        def deserialize(params)
          @Flv = params['Flv']
        end
      end

      # PlayRecord请求参数结构体
      class PlayRecordRequest < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道 ID（从查询通道DescribeDeviceChannel接口中获取）
        # @type ChannelId: String
        # @param Start: 起始时间
        # @type Start: Integer
        # @param End:  结束时间
        # @type End: Integer
        # @param StreamType: 流类型（1:主码流；2:子码流（不可以和 Resolution 同时下发））
        # @type StreamType: Integer
        # @param Resolution: 分辨率（1:QCIF；2:CIF； 3:4CIF； 4:D1； 5:720P； 6:1080P/I； 自定义的19201080等等（需设备支持）（不可以和 StreamType 同时下发））
        # @type Resolution: String
        # @param IsInternal: 是否内网
        # @type IsInternal: Boolean

        attr_accessor :ChannelId, :Start, :End, :StreamType, :Resolution, :IsInternal

        def initialize(channelid=nil, start=nil, _end=nil, streamtype=nil, resolution=nil, isinternal=nil)
          @ChannelId = channelid
          @Start = start
          @End = _end
          @StreamType = streamtype
          @Resolution = resolution
          @IsInternal = isinternal
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Start = params['Start']
          @End = params['End']
          @StreamType = params['StreamType']
          @Resolution = params['Resolution']
          @IsInternal = params['IsInternal']
        end
      end

      # PlayRecord返回参数结构体
      class PlayRecordResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.PlayRecordData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PlayRecordData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryForbidPlayChannelList请求参数结构体
      class QueryForbidPlayChannelListRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 子用户uin，也可以是主用户的uin
        # @type UserId: String
        # @param PageSize: 每页最大数量，最大为200，超过按照200返回
        # @type PageSize: Integer
        # @param PageNumber: 第几页
        # @type PageNumber: Integer

        attr_accessor :UserId, :PageSize, :PageNumber

        def initialize(userid=nil, pagesize=nil, pagenumber=nil)
          @UserId = userid
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # QueryForbidPlayChannelList返回参数结构体
      class QueryForbidPlayChannelListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.ListForbidplayChannelsData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListForbidplayChannelsData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 实时上云计划基础信息
      class RecordPlanBaseInfo < TencentCloud::Common::AbstractModel
        # @param PlanId: 上云计划ID
        # @type PlanId: String
        # @param PlanName: 上云计划名称
        # @type PlanName: String
        # @param TemplateId: 上云模板ID
        # @type TemplateId: String
        # @param Describe: 上云计划描述
        # @type Describe: String
        # @param StreamType: 码流类型，default:设备默认码流类型，main:主码流，sub:子码流，其他根据设备能力集自定义
        # @type StreamType: String
        # @param LifeCycle: 云文件生命周期
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Status: 录像计划状态，1:正常使用中，0:删除中，无法使用
        # @type Status: Integer
        # @param ChannelCount: 通道总数
        # @type ChannelCount: Integer
        # @param RepairMode: 录像补录模式（0:不启用，1:启用）
        # @type RepairMode: Integer

        attr_accessor :PlanId, :PlanName, :TemplateId, :Describe, :StreamType, :LifeCycle, :Status, :ChannelCount, :RepairMode

        def initialize(planid=nil, planname=nil, templateid=nil, describe=nil, streamtype=nil, lifecycle=nil, status=nil, channelcount=nil, repairmode=nil)
          @PlanId = planid
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @StreamType = streamtype
          @LifeCycle = lifecycle
          @Status = status
          @ChannelCount = channelcount
          @RepairMode = repairmode
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          @StreamType = params['StreamType']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          @Status = params['Status']
          @ChannelCount = params['ChannelCount']
          @RepairMode = params['RepairMode']
        end
      end

      # 计划下的设备通道信息
      class RecordPlanChannelInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备通道所属的设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备通道所属的设备名称
        # @type DeviceName: String
        # @param ChannelId: 设备通道ID
        # @type ChannelId: String
        # @param ChannelName: 设备通道名称
        # @type ChannelName: String
        # @param OrganizationName: 所属组织名称
        # @type OrganizationName: String
        # @param AccessProtocol: 通道所属设备的接入协议类型
        # @type AccessProtocol: Integer

        attr_accessor :DeviceId, :DeviceName, :ChannelId, :ChannelName, :OrganizationName, :AccessProtocol

        def initialize(deviceid=nil, devicename=nil, channelid=nil, channelname=nil, organizationname=nil, accessprotocol=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @ChannelId = channelid
          @ChannelName = channelname
          @OrganizationName = organizationname
          @AccessProtocol = accessprotocol
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @OrganizationName = params['OrganizationName']
          @AccessProtocol = params['AccessProtocol']
        end
      end

      # 实时上云计划添加和修改的返回数据
      class RecordPlanOptData < TencentCloud::Common::AbstractModel
        # @param PlanId: 上云计划ID
        # @type PlanId: String
        # @param PlanName: 上云计划名称
        # @type PlanName: String
        # @param TemplateId: 上云模板ID
        # @type TemplateId: String
        # @param Describe: 上云计划描述
        # @type Describe: String
        # @param LifeCycle: 云文件生命周期
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param StreamType: 码流类型，default:设备默认码流类型，main:主码流，sub:子码流，其他根据设备能力集自定义
        # @type StreamType: String
        # @param RepairMode: 录像补录模式（0:不启用，1:启用）
        # @type RepairMode: Integer

        attr_accessor :PlanId, :PlanName, :TemplateId, :Describe, :LifeCycle, :StreamType, :RepairMode

        def initialize(planid=nil, planname=nil, templateid=nil, describe=nil, lifecycle=nil, streamtype=nil, repairmode=nil)
          @PlanId = planid
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @LifeCycle = lifecycle
          @StreamType = streamtype
          @RepairMode = repairmode
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          @StreamType = params['StreamType']
          @RepairMode = params['RepairMode']
        end
      end

      # 云录像回放url
      class RecordPlaybackUrl < TencentCloud::Common::AbstractModel
        # @param Hls: hls回放url
        # @type Hls: String

        attr_accessor :Hls

        def initialize(hls=nil)
          @Hls = hls
        end

        def deserialize(params)
          @Hls = params['Hls']
        end
      end

      # 取回任务通道信息
      class RecordRetrieveTaskChannelInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备通道所属的设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备通道所属的设备名称
        # @type DeviceName: String
        # @param ChannelId: 设备通道ID
        # @type ChannelId: String
        # @param ChannelName: 设备通道名称
        # @type ChannelName: String
        # @param Status: 任务状态，0:已取回，1:取回中，2:待取回, 3:无归档录像
        # @type Status: Integer

        attr_accessor :DeviceId, :DeviceName, :ChannelId, :ChannelName, :Status

        def initialize(deviceid=nil, devicename=nil, channelid=nil, channelname=nil, status=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @ChannelId = channelid
          @ChannelName = channelname
          @Status = status
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @Status = params['Status']
        end
      end

      # 录像取回任务详情基础信息
      class RecordRetrieveTaskDetailsInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param StartTime: 取回录像的开始时间
        # @type StartTime: Integer
        # @param EndTime: 取回录像的结束时间
        # @type EndTime: Integer
        # @param Mode: 取回模式，1:极速模式，其他暂不支持
        # @type Mode: Integer
        # @param Expiration: 副本有效期
        # @type Expiration: Integer
        # @param Status: 任务状态， 0:已取回，1:取回中，2:待取回
        # @type Status: Integer
        # @param Capacity: 取回容量，单位MB
        # @type Capacity: Integer
        # @param Describe: 任务描述
        # @type Describe: String
        # @param ChannelCount: 任务通道数量
        # @type ChannelCount: Integer

        attr_accessor :TaskId, :TaskName, :StartTime, :EndTime, :Mode, :Expiration, :Status, :Capacity, :Describe, :ChannelCount

        def initialize(taskid=nil, taskname=nil, starttime=nil, endtime=nil, mode=nil, expiration=nil, status=nil, capacity=nil, describe=nil, channelcount=nil)
          @TaskId = taskid
          @TaskName = taskname
          @StartTime = starttime
          @EndTime = endtime
          @Mode = mode
          @Expiration = expiration
          @Status = status
          @Capacity = capacity
          @Describe = describe
          @ChannelCount = channelcount
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Mode = params['Mode']
          @Expiration = params['Expiration']
          @Status = params['Status']
          @Capacity = params['Capacity']
          @Describe = params['Describe']
          @ChannelCount = params['ChannelCount']
        end
      end

      # 录像切片信息
      class RecordSliceInfo < TencentCloud::Common::AbstractModel
        # @param PlanId: 计划ID
        # @type PlanId: String
        # @param List: 录像切片开始和结束时间列表
        # @type List: Array

        attr_accessor :PlanId, :List

        def initialize(planid=nil, list=nil)
          @PlanId = planid
          @List = list
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              recordtimeline_tmp = RecordTimeLine.new
              recordtimeline_tmp.deserialize(i)
              @List << recordtimeline_tmp
            end
          end
        end
      end

      # 实时上云模板信息数据
      class RecordTemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TimeSections: 上云时间段，按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟
        # @type TimeSections: Array

        attr_accessor :TemplateId, :TemplateName, :TimeSections

        def initialize(templateid=nil, templatename=nil, timesections=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TimeSections = timesections
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
        end
      end

      # 上云模板的时间片段数据格式
      class RecordTemplateTimeSections < TencentCloud::Common::AbstractModel
        # @param DayOfWeek: 周日期，取值范围1～7（对应周一～周日
        # @type DayOfWeek: Integer
        # @param StartTime: 开始时间，格式：HH:MM:SS，范围：[00:00:00～23:59:59]
        # @type StartTime: String
        # @param EndTime: 结束时间，格式：HH:MM:SS，范围：[00:00:00～23:59:59]
        # @type EndTime: String

        attr_accessor :DayOfWeek, :StartTime, :EndTime

        def initialize(dayofweek=nil, starttime=nil, endtime=nil)
          @DayOfWeek = dayofweek
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DayOfWeek = params['DayOfWeek']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 云录像时间片段
      class RecordTimeLine < TencentCloud::Common::AbstractModel
        # @param Begin: 时间片段开始时间，UTC秒数，例如：1662114146
        # @type Begin: Integer
        # @param End: 时间片段结束时间，UTC秒数，例如：1662114146
        # @type End: Integer
        # @param HlsUrl: 对应时间片段的播放url
        # @type HlsUrl: String

        attr_accessor :Begin, :End, :HlsUrl

        def initialize(_begin=nil, _end=nil, hlsurl=nil)
          @Begin = _begin
          @End = _end
          @HlsUrl = hlsurl
        end

        def deserialize(params)
          @Begin = params['Begin']
          @End = params['End']
          @HlsUrl = params['HlsUrl']
        end
      end

      # RefreshDeviceChannel请求参数结构体
      class RefreshDeviceChannelRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备 ID（从获取设备列表ListDevices接口中获取）
        # @type DeviceId: String

        attr_accessor :DeviceId

        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # RefreshDeviceChannel返回参数结构体
      class RefreshDeviceChannelResponse < TencentCloud::Common::AbstractModel
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

      # SetForbidPlayChannels请求参数结构体
      class SetForbidPlayChannelsRequest < TencentCloud::Common::AbstractModel
        # @param Channels: 要禁播的通道参数，一次最多可以设置200个通道
        # @type Channels: Array
        # @param UserId: 用户uin，可以是子用户的也可以是主用户的uin
        # @type UserId: String

        attr_accessor :Channels, :UserId

        def initialize(channels=nil, userid=nil)
          @Channels = channels
          @UserId = userid
        end

        def deserialize(params)
          unless params['Channels'].nil?
            @Channels = []
            params['Channels'].each do |i|
              setforbidplaychannelparam_tmp = SetForbidplayChannelParam.new
              setforbidplaychannelparam_tmp.deserialize(i)
              @Channels << setforbidplaychannelparam_tmp
            end
          end
          @UserId = params['UserId']
        end
      end

      # SetForbidPlayChannels返回参数结构体
      class SetForbidPlayChannelsResponse < TencentCloud::Common::AbstractModel
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

      # 设置通道禁止播流，有通道Id和使能enable字段
      class SetForbidplayChannelParam < TencentCloud::Common::AbstractModel
        # @param ChannelId: 通道Id
        # @type ChannelId: String
        # @param Enable: 是否禁止通道播流
        # @type Enable: Boolean

        attr_accessor :ChannelId, :Enable

        def initialize(channelid=nil, enable=nil)
          @ChannelId = channelid
          @Enable = enable
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @Enable = params['Enable']
        end
      end

      # 抽烟识别结果详情
      class SmokingAIResultInfo < TencentCloud::Common::AbstractModel
        # @param Time: 时间字符串
        # @type Time: String
        # @param Url: 截图 URL
        # @type Url: String
        # @param SmokingInfo: 抽烟信息
        # @type SmokingInfo: Array

        attr_accessor :Time, :Url, :SmokingInfo

        def initialize(time=nil, url=nil, smokinginfo=nil)
          @Time = time
          @Url = url
          @SmokingInfo = smokinginfo
        end

        def deserialize(params)
          @Time = params['Time']
          @Url = params['Url']
          unless params['SmokingInfo'].nil?
            @SmokingInfo = []
            params['SmokingInfo'].each do |i|
              baseairesultinfo_tmp = BaseAIResultInfo.new
              baseairesultinfo_tmp.deserialize(i)
              @SmokingInfo << baseairesultinfo_tmp
            end
          end
        end
      end

      # 截图配置
      class SnapshotConfig < TencentCloud::Common::AbstractModel
        # @param TimeInterval: 截图频率。可选值1～20秒
        # @type TimeInterval: Integer
        # @param OperTimeSlot: 模板生效的时间段。最多包含5组时间段
        # @type OperTimeSlot: Array

        attr_accessor :TimeInterval, :OperTimeSlot

        def initialize(timeinterval=nil, opertimeslot=nil)
          @TimeInterval = timeinterval
          @OperTimeSlot = opertimeslot
        end

        def deserialize(params)
          @TimeInterval = params['TimeInterval']
          unless params['OperTimeSlot'].nil?
            @OperTimeSlot = []
            params['OperTimeSlot'].each do |i|
              opertimeslot_tmp = OperTimeSlot.new
              opertimeslot_tmp.deserialize(i)
              @OperTimeSlot << opertimeslot_tmp
            end
          end
        end
      end

      # 子任务详情
      class SubTaskData < TencentCloud::Common::AbstractModel
        # @param SubTaskId: 子任务ID
        # @type SubTaskId: String
        # @param Status: 任务状态1:NEW,2:RUNNING,3:COMPLETED ,4:FAILED
        # @type Status: Integer
        # @param FailReason: 任务失败原因
        # @type FailReason: String
        # @param Progress: 任务进度
        # @type Progress: Float
        # @param Action: 操作类型
        # @type Action: String
        # @param ActionZhDesc: 操作类型中文描述
        # @type ActionZhDesc: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param StartedAt: 启动任务时间
        # @type StartedAt: String
        # @param CreatedAt: 创建任务时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新任务时间
        # @type UpdatedAt: String
        # @param Runtime: 任务运行时间，单位ms
        # @type Runtime: Integer
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param ChannelName: 通道名称
        # @type ChannelName: String

        attr_accessor :SubTaskId, :Status, :FailReason, :Progress, :Action, :ActionZhDesc, :ResourceId, :StartedAt, :CreatedAt, :UpdatedAt, :Runtime, :DeviceId, :DeviceName, :ChannelId, :ChannelName

        def initialize(subtaskid=nil, status=nil, failreason=nil, progress=nil, action=nil, actionzhdesc=nil, resourceid=nil, startedat=nil, createdat=nil, updatedat=nil, runtime=nil, deviceid=nil, devicename=nil, channelid=nil, channelname=nil)
          @SubTaskId = subtaskid
          @Status = status
          @FailReason = failreason
          @Progress = progress
          @Action = action
          @ActionZhDesc = actionzhdesc
          @ResourceId = resourceid
          @StartedAt = startedat
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Runtime = runtime
          @DeviceId = deviceid
          @DeviceName = devicename
          @ChannelId = channelid
          @ChannelName = channelname
        end

        def deserialize(params)
          @SubTaskId = params['SubTaskId']
          @Status = params['Status']
          @FailReason = params['FailReason']
          @Progress = params['Progress']
          @Action = params['Action']
          @ActionZhDesc = params['ActionZhDesc']
          @ResourceId = params['ResourceId']
          @StartedAt = params['StartedAt']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @Runtime = params['Runtime']
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
        end
      end

      # 查询复杂任务详情返回结果
      class TaskData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Status: 任务状态1:NEW,2:RUNNING,3:COMPLETED ,4:FAILED
        # @type Status: Integer
        # @param FailReason: 失败原因
        # @type FailReason: String
        # @param Progress: 进度（0-1）
        # @type Progress: Float
        # @param Action: 任务操作类型，批量任务类型以Batch开头
        # @type Action: String
        # @param ActionZhDesc: 操作类型中文描述
        # @type ActionZhDesc: String
        # @param TaskType: 任务类型 1.简单 2.复杂 3.子任务
        # @type TaskType: Integer
        # @param ResourceId: 任务资源id（复杂任务该字段无效）
        # @type ResourceId: String
        # @param Total: 总任务数（仅复杂任务有效）
        # @type Total: Integer
        # @param SuccessCount: 成功任务数（仅复杂任务有效）
        # @type SuccessCount: Integer
        # @param FailCount: 失败任务数（仅复杂任务有效）
        # @type FailCount: Integer
        # @param RunningCount: 运行任务数（仅复杂任务有效）
        # @type RunningCount: Integer
        # @param StartedAt: 启动任务时间
        # @type StartedAt: String
        # @param CreatedAt: 创建任务时间
        # @type CreatedAt: String
        # @param UpdatedAt: 更新任务时间
        # @type UpdatedAt: String
        # @param Runtime: 任务运行时间，单位ms
        # @type Runtime: Integer
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ChannelId: 通道ID
        # @type ChannelId: String
        # @param ChannelName:  通道名称
        # @type ChannelName: String

        attr_accessor :TaskId, :Status, :FailReason, :Progress, :Action, :ActionZhDesc, :TaskType, :ResourceId, :Total, :SuccessCount, :FailCount, :RunningCount, :StartedAt, :CreatedAt, :UpdatedAt, :Runtime, :DeviceId, :DeviceName, :ChannelId, :ChannelName

        def initialize(taskid=nil, status=nil, failreason=nil, progress=nil, action=nil, actionzhdesc=nil, tasktype=nil, resourceid=nil, total=nil, successcount=nil, failcount=nil, runningcount=nil, startedat=nil, createdat=nil, updatedat=nil, runtime=nil, deviceid=nil, devicename=nil, channelid=nil, channelname=nil)
          @TaskId = taskid
          @Status = status
          @FailReason = failreason
          @Progress = progress
          @Action = action
          @ActionZhDesc = actionzhdesc
          @TaskType = tasktype
          @ResourceId = resourceid
          @Total = total
          @SuccessCount = successcount
          @FailCount = failcount
          @RunningCount = runningcount
          @StartedAt = startedat
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @Runtime = runtime
          @DeviceId = deviceid
          @DeviceName = devicename
          @ChannelId = channelid
          @ChannelName = channelname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @FailReason = params['FailReason']
          @Progress = params['Progress']
          @Action = params['Action']
          @ActionZhDesc = params['ActionZhDesc']
          @TaskType = params['TaskType']
          @ResourceId = params['ResourceId']
          @Total = params['Total']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
          @RunningCount = params['RunningCount']
          @StartedAt = params['StartedAt']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @Runtime = params['Runtime']
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
        end
      end

      # 时间片段结构体
      class Timeline < TencentCloud::Common::AbstractModel
        # @param Begin: 分片起始时间
        # @type Begin: Integer
        # @param End: 分片结束时间
        # @type End: Integer

        attr_accessor :Begin, :End

        def initialize(_begin=nil, _end=nil)
          @Begin = _begin
          @End = _end
        end

        def deserialize(params)
          @Begin = params['Begin']
          @End = params['End']
        end
      end

      # UpdateAITask请求参数结构体
      class UpdateAITaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: AI 任务 ID
        # @type TaskId: String
        # @param Name: AI 任务名称。仅支持中文、英文、数字、_、-，长度不超过32个字符
        # @type Name: String
        # @param Desc: AI 任务描述。仅支持中文、英文、数字、_、-，长度不超过128个字符
        # @type Desc: String
        # @param ChannelList: 通道 ID 列表。不能添加存在于其他 AI 任务的通道，限制1000个通道。
        # @type ChannelList: Array
        # @param CallbackUrl: AI 结果回调地址。类似 "http://ip:port/***或者https://domain/***
        # @type CallbackUrl: String
        # @param IsStartTheTask: 是否立即开启 AI 任务。"true"代表立即开启 AI 任务，"false"代表暂不开启 AI 任务，默认为 false。
        # @type IsStartTheTask: Boolean
        # @param Templates: AI 配置列表
        # @type Templates: Array

        attr_accessor :TaskId, :Name, :Desc, :ChannelList, :CallbackUrl, :IsStartTheTask, :Templates

        def initialize(taskid=nil, name=nil, desc=nil, channellist=nil, callbackurl=nil, isstartthetask=nil, templates=nil)
          @TaskId = taskid
          @Name = name
          @Desc = desc
          @ChannelList = channellist
          @CallbackUrl = callbackurl
          @IsStartTheTask = isstartthetask
          @Templates = templates
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Name = params['Name']
          @Desc = params['Desc']
          @ChannelList = params['ChannelList']
          @CallbackUrl = params['CallbackUrl']
          @IsStartTheTask = params['IsStartTheTask']
          unless params['Templates'].nil?
            @Templates = []
            params['Templates'].each do |i|
              aitemplates_tmp = AITemplates.new
              aitemplates_tmp.deserialize(i)
              @Templates << aitemplates_tmp
            end
          end
        end
      end

      # UpdateAITask返回参数结构体
      class UpdateAITaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: AI任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.AITaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AITaskInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateAITaskStatus请求参数结构体
      class UpdateAITaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: AI 任务 ID
        # @type TaskId: String
        # @param Status: AI 任务状态。"on"代表开启了 AI 分析任务，"off"代表停止AI分析任务
        # @type Status: String

        attr_accessor :TaskId, :Status

        def initialize(taskid=nil, status=nil)
          @TaskId = taskid
          @Status = status
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
        end
      end

      # UpdateAITaskStatus返回参数结构体
      class UpdateAITaskStatusResponse < TencentCloud::Common::AbstractModel
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

      # 修改设备接口返回数据
      class UpdateDeviceData < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param Code: 设备编码（国标设备即我们为设备生成的20位国标编码，rtmp 设备为10 位设备编码）
        # @type Code: String
        # @param Name: 设备名称
        # @type Name: String
        # @param AccessProtocol: 设备接入协议，1:RTMP,2:GB,3:GW
        # @type AccessProtocol: Integer
        # @param Type: 设备类型，1:IPC,2:NVR
        # @type Type: Integer
        # @param ClusterId: 设备接入服务节点ID
        # @type ClusterId: String
        # @param ClusterName: 设备接入服务节点名称
        # @type ClusterName: String
        # @param TransportProtocol: 设备流传输协议，1:UDP,2:TCP
        # @type TransportProtocol: Integer
        # @param Password: 设备密码
        # @type Password: String
        # @param Description: 设备描述
        # @type Description: String
        # @param Status: 设备状态，0:未注册,1:在线,2:离线,3:禁用
        # @type Status: Integer
        # @param OrganizationId: 设备所属组织ID
        # @type OrganizationId: Integer
        # @param GatewayId: 设备接入网关ID，从查询网关列表接口中获取（仅网关接入需要）
        # @type GatewayId: String
        # @param ProtocolType: 网关接入协议类型，1.海康SDK，2.大华SDK，3.宇视SDK，4.Onvif（仅网关接入需要）
        # @type ProtocolType: Integer
        # @param Ip: 设备接入IP
        # @type Ip: String
        # @param Port: 设备Port
        # @type Port: Integer
        # @param Username: 设备用户名
        # @type Username: String
        # @param AppId: 用户Id
        # @type AppId: Integer

        attr_accessor :DeviceId, :Code, :Name, :AccessProtocol, :Type, :ClusterId, :ClusterName, :TransportProtocol, :Password, :Description, :Status, :OrganizationId, :GatewayId, :ProtocolType, :Ip, :Port, :Username, :AppId

        def initialize(deviceid=nil, code=nil, name=nil, accessprotocol=nil, type=nil, clusterid=nil, clustername=nil, transportprotocol=nil, password=nil, description=nil, status=nil, organizationid=nil, gatewayid=nil, protocoltype=nil, ip=nil, port=nil, username=nil, appid=nil)
          @DeviceId = deviceid
          @Code = code
          @Name = name
          @AccessProtocol = accessprotocol
          @Type = type
          @ClusterId = clusterid
          @ClusterName = clustername
          @TransportProtocol = transportprotocol
          @Password = password
          @Description = description
          @Status = status
          @OrganizationId = organizationid
          @GatewayId = gatewayid
          @ProtocolType = protocoltype
          @Ip = ip
          @Port = port
          @Username = username
          @AppId = appid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Code = params['Code']
          @Name = params['Name']
          @AccessProtocol = params['AccessProtocol']
          @Type = params['Type']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @TransportProtocol = params['TransportProtocol']
          @Password = params['Password']
          @Description = params['Description']
          @Status = params['Status']
          @OrganizationId = params['OrganizationId']
          @GatewayId = params['GatewayId']
          @ProtocolType = params['ProtocolType']
          @Ip = params['Ip']
          @Port = params['Port']
          @Username = params['Username']
          @AppId = params['AppId']
        end
      end

      # UpdateDeviceOrganization请求参数结构体
      class UpdateDeviceOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIds: 设备 ID 数组（从获取设备列表接口ListDevices中获取）
        # @type DeviceIds: Array
        # @param OrganizationId: 组织 ID（从查询组织接口DescribeOrganization中获取）
        # @type OrganizationId: String

        attr_accessor :DeviceIds, :OrganizationId

        def initialize(deviceids=nil, organizationid=nil)
          @DeviceIds = deviceids
          @OrganizationId = organizationid
        end

        def deserialize(params)
          @DeviceIds = params['DeviceIds']
          @OrganizationId = params['OrganizationId']
        end
      end

      # UpdateDeviceOrganization返回参数结构体
      class UpdateDeviceOrganizationResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDeviceStatus请求参数结构体
      class UpdateDeviceStatusRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备 ID（从获取设备列表接口ListDevices中获取）
        # @type DeviceId: String
        # @param Status: 禁用启用状态码（2：启用，3:禁用）
        # @type Status: Integer

        attr_accessor :DeviceId, :Status

        def initialize(deviceid=nil, status=nil)
          @DeviceId = deviceid
          @Status = status
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Status = params['Status']
        end
      end

      # UpdateDeviceStatus返回参数结构体
      class UpdateDeviceStatusResponse < TencentCloud::Common::AbstractModel
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

      # 修改网关信息返回结果
      class UpdateGatewayData < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID
        # @type GatewayId: String
        # @param GwId: 网关编码
        # @type GwId: String
        # @param Name: 网关名称，仅支持中文、英文、数字、_、-，长度不超过32个字符
        # @type Name: String
        # @param Description: 网关描述，仅支持中文、英文、数字、_、-，长度不超过128个字符
        # @type Description: String
        # @param ClusterId: 服务节点ID
        # @type ClusterId: String
        # @param ClusterName: 服务节点名称
        # @type ClusterName: String
        # @param Status: 网关状态，0：离线，1:在线
        # @type Status: Integer
        # @param CreatedAt: 激活时间
        # @type CreatedAt: Integer
        # @param Secret: 网关密钥
        # @type Secret: String
        # @param Version: 网关版本信息
        # @type Version: String

        attr_accessor :GatewayId, :GwId, :Name, :Description, :ClusterId, :ClusterName, :Status, :CreatedAt, :Secret, :Version

        def initialize(gatewayid=nil, gwid=nil, name=nil, description=nil, clusterid=nil, clustername=nil, status=nil, createdat=nil, secret=nil, version=nil)
          @GatewayId = gatewayid
          @GwId = gwid
          @Name = name
          @Description = description
          @ClusterId = clusterid
          @ClusterName = clustername
          @Status = status
          @CreatedAt = createdat
          @Secret = secret
          @Version = version
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GwId = params['GwId']
          @Name = params['Name']
          @Description = params['Description']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Status = params['Status']
          @CreatedAt = params['CreatedAt']
          @Secret = params['Secret']
          @Version = params['Version']
        end
      end

      # UpdateGateway请求参数结构体
      class UpdateGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID（从获取网关列表ListGateways接口中获取）
        # @type GatewayId: String
        # @param Name: 仅支持中文、英文、数网关名称，字、_、-，长度不超过32个字符
        # @type Name: String
        # @param Description: 网关描述，仅支持中文、英文、数字、_、-，长度不超过128个字符
        # @type Description: String

        attr_accessor :GatewayId, :Name, :Description

        def initialize(gatewayid=nil, name=nil, description=nil)
          @GatewayId = gatewayid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # UpdateGateway返回参数结构体
      class UpdateGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.UpdateGatewayData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateGatewayData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改组织接口返回数据
      class UpdateOrgData < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织 ID
        # @type OrganizationId: String
        # @param Name: 组织名称
        # @type Name: String
        # @param ParentId: 组织父节点 ID
        # @type ParentId: String
        # @param Level: 组织层级
        # @type Level: Integer
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param ParentIds: 组织结构
        # @type ParentIds: String
        # @param Total: 设备总数
        # @type Total: Integer
        # @param Online: 设备在线数量
        # @type Online: Integer

        attr_accessor :OrganizationId, :Name, :ParentId, :Level, :AppId, :ParentIds, :Total, :Online

        def initialize(organizationid=nil, name=nil, parentid=nil, level=nil, appid=nil, parentids=nil, total=nil, online=nil)
          @OrganizationId = organizationid
          @Name = name
          @ParentId = parentid
          @Level = level
          @AppId = appid
          @ParentIds = parentids
          @Total = total
          @Online = online
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @Name = params['Name']
          @ParentId = params['ParentId']
          @Level = params['Level']
          @AppId = params['AppId']
          @ParentIds = params['ParentIds']
          @Total = params['Total']
          @Online = params['Online']
        end
      end

      # UpdateOrganization请求参数结构体
      class UpdateOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param OrganizationId: 组织ID（从查询组织接口DescribeOrganization中获取）
        # @type OrganizationId: String
        # @param Name: 组织名称，支持中文、英文、数字、空格、中英文括号、_、-, 长度不超过64位，且组织名称不能重复
        # @type Name: String

        attr_accessor :OrganizationId, :Name

        def initialize(organizationid=nil, name=nil)
          @OrganizationId = organizationid
          @Name = name
        end

        def deserialize(params)
          @OrganizationId = params['OrganizationId']
          @Name = params['Name']
        end
      end

      # UpdateOrganization返回参数结构体
      class UpdateOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.UpdateOrgData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateOrgData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改录像上云计划返回数据
      class UpdateRecordBackupPlanData < TencentCloud::Common::AbstractModel
        # @param PlanId: 录像上云计划ID
        # @type PlanId: String
        # @param PlanName: 录像上云计划名称
        # @type PlanName: String
        # @param TemplateId: 录像上云模板ID
        # @type TemplateId: String
        # @param Describe: 录像上云计划描述
        # @type Describe: String
        # @param LifeCycle: 云文件生命周期
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Status: 录像上云计划状态，1:正常使用中，0:删除中，无法使用
        # @type Status: Integer
        # @param ChannelCount: 通道数量
        # @type ChannelCount: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 修改时间
        # @type UpdateAt: String

        attr_accessor :PlanId, :PlanName, :TemplateId, :Describe, :LifeCycle, :Status, :ChannelCount, :CreateAt, :UpdateAt

        def initialize(planid=nil, planname=nil, templateid=nil, describe=nil, lifecycle=nil, status=nil, channelcount=nil, createat=nil, updateat=nil)
          @PlanId = planid
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @LifeCycle = lifecycle
          @Status = status
          @ChannelCount = channelcount
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          @Status = params['Status']
          @ChannelCount = params['ChannelCount']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # 修改录像上云计划数据结构
      class UpdateRecordBackupPlanModify < TencentCloud::Common::AbstractModel
        # @param PlanName: 录像上云计划名称（仅支持中文、英文、数字、_、-，长度不超过32个字符，计划名称全局唯一，不能为空，不能重复，不修改名称时，不需要该字段）
        # @type PlanName: String
        # @param TemplateId: 录制模板ID（从查询录像上云模板列表接口ListRecordBackupTemplates中获取，不修改模板ID时，不需要该字段）
        # @type TemplateId: String
        # @param Describe: 录像上云计划描述（仅支持中文、英文、数字、_、-，长度不超过128个字符， 不修改描述时，不需要该字段）
        # @type Describe: String
        # @param LifeCycle: 生命周期（录像文件生命周期设置，管理文件冷、热存储的时间，不修改生命周期时，不需要该字段）
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Add: 要新增的设备通道（Json数组，没有新增时，不需要该字段，一次添加通道总数不超过5000个，包括组织目录下的通道数量）
        # @type Add: Array
        # @param Del: 要删除的设备通道（Json数组，内容为要删除的设备通道id，没有删除设备通道时，不需要该字段）
        # @type Del: Array
        # @param OrganizationId: 添加组织目录下所有设备通道（Json数组，可以为空，并且通道总数量不超过5000个（包括Add字段通道数量））
        # @type OrganizationId: Array

        attr_accessor :PlanName, :TemplateId, :Describe, :LifeCycle, :Add, :Del, :OrganizationId

        def initialize(planname=nil, templateid=nil, describe=nil, lifecycle=nil, add=nil, del=nil, organizationid=nil)
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @LifeCycle = lifecycle
          @Add = add
          @Del = del
          @OrganizationId = organizationid
        end

        def deserialize(params)
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          unless params['Add'].nil?
            @Add = []
            params['Add'].each do |i|
              channelinfo_tmp = ChannelInfo.new
              channelinfo_tmp.deserialize(i)
              @Add << channelinfo_tmp
            end
          end
          @Del = params['Del']
          @OrganizationId = params['OrganizationId']
        end
      end

      # UpdateRecordBackupPlan请求参数结构体
      class UpdateRecordBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 计划ID
        # @type PlanId: String
        # @param Mod: 修改的内容
        # @type Mod: :class:`Tencentcloud::Iss.v20230517.models.UpdateRecordBackupPlanModify`

        attr_accessor :PlanId, :Mod

        def initialize(planid=nil, mod=nil)
          @PlanId = planid
          @Mod = mod
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          unless params['Mod'].nil?
            @Mod = UpdateRecordBackupPlanModify.new
            @Mod.deserialize(params['Mod'])
          end
        end
      end

      # UpdateRecordBackupPlan返回参数结构体
      class UpdateRecordBackupPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.UpdateRecordBackupPlanData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateRecordBackupPlanData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改录像上云模板返回数据
      class UpdateRecordBackupTemplateData < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param TimeSections: 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type TimeSections: Array
        # @param DevTimeSections: 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type DevTimeSections: Array
        # @param Scale: 上云倍速（支持1，2，4倍速）
        # @type Scale: Integer
        # @param CreateAt: 创建时间
        # @type CreateAt: String
        # @param UpdateAt: 更新时间
        # @type UpdateAt: String

        attr_accessor :TemplateId, :TemplateName, :TimeSections, :DevTimeSections, :Scale, :CreateAt, :UpdateAt

        def initialize(templateid=nil, templatename=nil, timesections=nil, devtimesections=nil, scale=nil, createat=nil, updateat=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TimeSections = timesections
          @DevTimeSections = devtimesections
          @Scale = scale
          @CreateAt = createat
          @UpdateAt = updateat
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
          unless params['DevTimeSections'].nil?
            @DevTimeSections = []
            params['DevTimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @DevTimeSections << recordtemplatetimesections_tmp
            end
          end
          @Scale = params['Scale']
          @CreateAt = params['CreateAt']
          @UpdateAt = params['UpdateAt']
        end
      end

      # 修改录像上云模板数据结构
      class UpdateRecordBackupTemplateModify < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称（不修改名称时，不需要带该字段）
        # @type TemplateName: String
        # @param TimeSections: 上云时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type TimeSections: Array
        # @param DevTimeSections: 录像时间段（按周进行设置，支持一天设置多个时间段，每个时间段不小于10分钟）
        # @type DevTimeSections: Array
        # @param Scale: 上云倍速（支持1，2，4倍速）
        # @type Scale: Integer

        attr_accessor :TemplateName, :TimeSections, :DevTimeSections, :Scale

        def initialize(templatename=nil, timesections=nil, devtimesections=nil, scale=nil)
          @TemplateName = templatename
          @TimeSections = timesections
          @DevTimeSections = devtimesections
          @Scale = scale
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
          unless params['DevTimeSections'].nil?
            @DevTimeSections = []
            params['DevTimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @DevTimeSections << recordtemplatetimesections_tmp
            end
          end
          @Scale = params['Scale']
        end
      end

      # UpdateRecordBackupTemplate请求参数结构体
      class UpdateRecordBackupTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID（从查询录像上云模板列表接口ListRecordBackupTemplates中获取）
        # @type TemplateId: String
        # @param Mod: 修改录像上云模板数据
        # @type Mod: :class:`Tencentcloud::Iss.v20230517.models.UpdateRecordBackupTemplateModify`

        attr_accessor :TemplateId, :Mod

        def initialize(templateid=nil, mod=nil)
          @TemplateId = templateid
          @Mod = mod
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Mod'].nil?
            @Mod = UpdateRecordBackupTemplateModify.new
            @Mod.deserialize(params['Mod'])
          end
        end
      end

      # UpdateRecordBackupTemplate返回参数结构体
      class UpdateRecordBackupTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.UpdateRecordBackupTemplateData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateRecordBackupTemplateData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改实时上云录像计划的数据
      class UpdateRecordPlanData < TencentCloud::Common::AbstractModel
        # @param PlanName: 上云计划名称，仅支持中文、英文、数字、_、-，长度不超过32个字符，计划名称全局唯一，不能为空，不能重复，不修改名称时，不需要该字段
        # @type PlanName: String
        # @param TemplateId: 上云模板ID，不修改模板ID时，不需要该字段
        # @type TemplateId: String
        # @param Describe: 上云计划描述，仅支持中文、英文、数字、_、-，长度不超过128个字符， 不修改描述时，不需要该字段
        # @type Describe: String
        # @param StreamType: 码流类型，default:不指定码流类型，以设备默认推送类型为主， main:主码流，sub:子码流，其他根据设备能力集自定义，长度不能超过32个字节
        # @type StreamType: String
        # @param LifeCycle: 生命周期，文件生命周期设置，管理文件冷、热存储的时间，不修改生命周期时，不需要该字段
        # @type LifeCycle: :class:`Tencentcloud::Iss.v20230517.models.LifeCycleData`
        # @param Add: 要新增的设备通道,Json数组，没有新增时，不需要该字段，一次添加通道总数不超过5000个，包括组织目录下的通道数量
        # @type Add: Array
        # @param Del: 要删除的设备通道，Json数组，内容为要删除的设备通道id，没有删除设备通道时，不需要该字段
        # @type Del: Array
        # @param OrganizationId: 组织目录ID，添加组织目录下所有设备通道，Json数组，可以为空，并且通道总数量不超过5000个（包括Add字段通道数量）
        # @type OrganizationId: Array
        # @param RepairMode: 录像补录模式（0:不启用，1:启用）
        # @type RepairMode: Integer

        attr_accessor :PlanName, :TemplateId, :Describe, :StreamType, :LifeCycle, :Add, :Del, :OrganizationId, :RepairMode

        def initialize(planname=nil, templateid=nil, describe=nil, streamtype=nil, lifecycle=nil, add=nil, del=nil, organizationid=nil, repairmode=nil)
          @PlanName = planname
          @TemplateId = templateid
          @Describe = describe
          @StreamType = streamtype
          @LifeCycle = lifecycle
          @Add = add
          @Del = del
          @OrganizationId = organizationid
          @RepairMode = repairmode
        end

        def deserialize(params)
          @PlanName = params['PlanName']
          @TemplateId = params['TemplateId']
          @Describe = params['Describe']
          @StreamType = params['StreamType']
          unless params['LifeCycle'].nil?
            @LifeCycle = LifeCycleData.new
            @LifeCycle.deserialize(params['LifeCycle'])
          end
          unless params['Add'].nil?
            @Add = []
            params['Add'].each do |i|
              channelinfo_tmp = ChannelInfo.new
              channelinfo_tmp.deserialize(i)
              @Add << channelinfo_tmp
            end
          end
          @Del = params['Del']
          @OrganizationId = params['OrganizationId']
          @RepairMode = params['RepairMode']
        end
      end

      # UpdateRecordPlan请求参数结构体
      class UpdateRecordPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 计划ID
        # @type PlanId: String
        # @param Mod: 修改计划的内容
        # @type Mod: :class:`Tencentcloud::Iss.v20230517.models.UpdateRecordPlanData`

        attr_accessor :PlanId, :Mod

        def initialize(planid=nil, mod=nil)
          @PlanId = planid
          @Mod = mod
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          unless params['Mod'].nil?
            @Mod = UpdateRecordPlanData.new
            @Mod.deserialize(params['Mod'])
          end
        end
      end

      # UpdateRecordPlan返回参数结构体
      class UpdateRecordPlanResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.RecordPlanOptData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RecordPlanOptData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改实时上云模板的请求数据结构
      class UpdateRecordTemplateData < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称， 不修改名称时，不需要带该字段
        # @type TemplateName: String
        # @param TimeSections: 上云时间段，不修改名称时，不需要带该字段
        # @type TimeSections: Array

        attr_accessor :TemplateName, :TimeSections

        def initialize(templatename=nil, timesections=nil)
          @TemplateName = templatename
          @TimeSections = timesections
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          unless params['TimeSections'].nil?
            @TimeSections = []
            params['TimeSections'].each do |i|
              recordtemplatetimesections_tmp = RecordTemplateTimeSections.new
              recordtemplatetimesections_tmp.deserialize(i)
              @TimeSections << recordtemplatetimesections_tmp
            end
          end
        end
      end

      # UpdateRecordTemplate请求参数结构体
      class UpdateRecordTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param Mod: 修改内容
        # @type Mod: :class:`Tencentcloud::Iss.v20230517.models.UpdateRecordTemplateData`

        attr_accessor :TemplateId, :Mod

        def initialize(templateid=nil, mod=nil)
          @TemplateId = templateid
          @Mod = mod
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['Mod'].nil?
            @Mod = UpdateRecordTemplateData.new
            @Mod.deserialize(params['Mod'])
          end
        end
      end

      # UpdateRecordTemplate返回参数结构体
      class UpdateRecordTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.RecordTemplateInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RecordTemplateInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateUserDevice请求参数结构体
      class UpdateUserDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID（从获取设备列表接口ListDevices中获取）
        # @type DeviceId: String
        # @param Name: 设备名称（仅支持中文、英文、数字、空格、中英文括号、_、-, 长度不超过128位）
        # @type Name: String
        # @param TransportProtocol: 设备流传输协议，仅国标设备有效，填0则不做更改（1:UDP,2:TCP）
        # @type TransportProtocol: Integer
        # @param Password: 设备密码（仅国标，网关设备支持，长度不超过 64 位）
        # @type Password: String
        # @param Description: 设备描述（长度不超过128位）
        # @type Description: String
        # @param Ip: 设备接入Ip（仅网关接入支持）
        # @type Ip: String
        # @param Port: 设备Port（仅网关接入支持）
        # @type Port: Integer
        # @param Username: 设备用户名（仅网关接入支持）
        # @type Username: String
        # @param ProtocolType: 网关设备接入协议（仅网关接入支持）
        # @type ProtocolType: Integer
        # @param AudioSwitch: 音频关开（0：关闭；1：开启）默认开启，关闭时丢弃音频
        # @type AudioSwitch: Integer
        # @param SubscribeSwitch: 订阅开关（0：关闭；1：开启）默认开启，开启状态下会订阅设备通道变化，仅国标NVR设备有效
        # @type SubscribeSwitch: Integer
        # @param SilentFrameSwitch: 是否开启静音帧（0：关闭；1 开启）
        # @type SilentFrameSwitch: Integer

        attr_accessor :DeviceId, :Name, :TransportProtocol, :Password, :Description, :Ip, :Port, :Username, :ProtocolType, :AudioSwitch, :SubscribeSwitch, :SilentFrameSwitch

        def initialize(deviceid=nil, name=nil, transportprotocol=nil, password=nil, description=nil, ip=nil, port=nil, username=nil, protocoltype=nil, audioswitch=nil, subscribeswitch=nil, silentframeswitch=nil)
          @DeviceId = deviceid
          @Name = name
          @TransportProtocol = transportprotocol
          @Password = password
          @Description = description
          @Ip = ip
          @Port = port
          @Username = username
          @ProtocolType = protocoltype
          @AudioSwitch = audioswitch
          @SubscribeSwitch = subscribeswitch
          @SilentFrameSwitch = silentframeswitch
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Name = params['Name']
          @TransportProtocol = params['TransportProtocol']
          @Password = params['Password']
          @Description = params['Description']
          @Ip = params['Ip']
          @Port = params['Port']
          @Username = params['Username']
          @ProtocolType = params['ProtocolType']
          @AudioSwitch = params['AudioSwitch']
          @SubscribeSwitch = params['SubscribeSwitch']
          @SilentFrameSwitch = params['SilentFrameSwitch']
        end
      end

      # UpdateUserDevice返回参数结构体
      class UpdateUserDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回数据
        # @type Data: :class:`Tencentcloud::Iss.v20230517.models.UpdateDeviceData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateDeviceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpgradeGateway请求参数结构体
      class UpgradeGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关索引ID（从获取网关列表ListGateways接口中获取）
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # UpgradeGateway返回参数结构体
      class UpgradeGatewayResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

