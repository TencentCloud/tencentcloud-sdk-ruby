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
  module Chc
    module V20230418
      # 已通过设备型号评估的型号信息
      class AvailableModelVersion < TencentCloud::Common::AbstractModel
        # @param ModelVersion: 带有版本号的设备型号
        # @type ModelVersion: String
        # @param DevHeight: 设备高度
        # @type DevHeight: String
        # @param DeviceType: 设备类型，server 服务器，netDevice 网络设备
        # @type DeviceType: String

        attr_accessor :ModelVersion, :DevHeight, :DeviceType

        def initialize(modelversion=nil, devheight=nil, devicetype=nil)
          @ModelVersion = modelversion
          @DevHeight = devheight
          @DeviceType = devicetype
        end

        def deserialize(params)
          @ModelVersion = params['ModelVersion']
          @DevHeight = params['DevHeight']
          @DeviceType = params['DeviceType']
        end
      end

      # 围笼
      class Cage < TencentCloud::Common::AbstractModel
        # @param CageName: 围笼名称
        # @type CageName: String
        # @param CheckerSet: 围笼审核人账号ID
        # @type CheckerSet: Array

        attr_accessor :CageName, :CheckerSet

        def initialize(cagename=nil, checkerset=nil)
          @CageName = cagename
          @CheckerSet = checkerset
        end

        def deserialize(params)
          @CageName = params['CageName']
          @CheckerSet = params['CheckerSet']
        end
      end

      # 园区信息
      class Campus < TencentCloud::Common::AbstractModel
        # @param CampusId: 园区ID
        # @type CampusId: Integer
        # @param CampusName: 园区名称
        # @type CampusName: String

        attr_accessor :CampusId, :CampusName

        def initialize(campusid=nil, campusname=nil)
          @CampusId = campusid
          @CampusName = campusname
        end

        def deserialize(params)
          @CampusId = params['CampusId']
          @CampusName = params['CampusName']
        end
      end

      # 通用服务的基本信息
      class CommonServiceBaseInfo < TencentCloud::Common::AbstractModel
        # @param IdcName: 机房名称
        # @type IdcName: String
        # @param ContactName: 业务联系人
        # @type ContactName: String
        # @param ContactPhone: 联系人电话
        # @type ContactPhone: String
        # @param Instructions: 操作说明
        # @type Instructions: String
        # @param ServiceLevel: 1 、2 、3 分别代表 L1、L2、L3
        # @type ServiceLevel: Integer
        # @param PreAuthorization: 操作预授权
        # @type PreAuthorization: Boolean

        attr_accessor :IdcName, :ContactName, :ContactPhone, :Instructions, :ServiceLevel, :PreAuthorization

        def initialize(idcname=nil, contactname=nil, contactphone=nil, instructions=nil, servicelevel=nil, preauthorization=nil)
          @IdcName = idcname
          @ContactName = contactname
          @ContactPhone = contactphone
          @Instructions = instructions
          @ServiceLevel = servicelevel
          @PreAuthorization = preauthorization
        end

        def deserialize(params)
          @IdcName = params['IdcName']
          @ContactName = params['ContactName']
          @ContactPhone = params['ContactPhone']
          @Instructions = params['Instructions']
          @ServiceLevel = params['ServiceLevel']
          @PreAuthorization = params['PreAuthorization']
        end
      end

      # ConfirmCommonServiceWorkOrder请求参数结构体
      class ConfirmCommonServiceWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 工单ID
        # @type OrderId: String

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # ConfirmCommonServiceWorkOrder返回参数结构体
      class ConfirmCommonServiceWorkOrderResponse < TencentCloud::Common::AbstractModel
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

      # CreateCommonServiceWorkOrder请求参数结构体
      class CreateCommonServiceWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param DevicePositionSet: 设备及位置信息列表
        # @type DevicePositionSet: Array
        # @param ServiceLevel: 服务级别，只支持传入 1、2、3，分别对应 L1、L2、L3
        # @type ServiceLevel: Integer
        # @param PreAuthorization: 操作预授权
        # @type PreAuthorization: Boolean
        # @param ContactName: 业务联系人
        # @type ContactName: String
        # @param ContactPhone: 联系人电话
        # @type ContactPhone: String
        # @param DeviceType: 设备类型 server 服务器，netDevice 网络设备
        # @type DeviceType: String
        # @param Instructions: 操作说明
        # @type Instructions: String

        attr_accessor :DevicePositionSet, :ServiceLevel, :PreAuthorization, :ContactName, :ContactPhone, :DeviceType, :Instructions

        def initialize(devicepositionset=nil, servicelevel=nil, preauthorization=nil, contactname=nil, contactphone=nil, devicetype=nil, instructions=nil)
          @DevicePositionSet = devicepositionset
          @ServiceLevel = servicelevel
          @PreAuthorization = preauthorization
          @ContactName = contactname
          @ContactPhone = contactphone
          @DeviceType = devicetype
          @Instructions = instructions
        end

        def deserialize(params)
          unless params['DevicePositionSet'].nil?
            @DevicePositionSet = []
            params['DevicePositionSet'].each do |i|
              deviceposition_tmp = DevicePosition.new
              deviceposition_tmp.deserialize(i)
              @DevicePositionSet << deviceposition_tmp
            end
          end
          @ServiceLevel = params['ServiceLevel']
          @PreAuthorization = params['PreAuthorization']
          @ContactName = params['ContactName']
          @ContactPhone = params['ContactPhone']
          @DeviceType = params['DeviceType']
          @Instructions = params['Instructions']
        end
      end

      # CreateCommonServiceWorkOrder返回参数结构体
      class CreateCommonServiceWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateModelEvaluationWorkOrder请求参数结构体
      class CreateModelEvaluationWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param ModelSet: 设备名称及型号
        # @type ModelSet: Array
        # @param CampusId: 园区ID
        # @type CampusId: Integer
        # @param DeviceType: 只支持传入 server 和 netDevice
        # @type DeviceType: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :ModelSet, :CampusId, :DeviceType, :Remark

        def initialize(modelset=nil, campusid=nil, devicetype=nil, remark=nil)
          @ModelSet = modelset
          @CampusId = campusid
          @DeviceType = devicetype
          @Remark = remark
        end

        def deserialize(params)
          unless params['ModelSet'].nil?
            @ModelSet = []
            params['ModelSet'].each do |i|
              modelversion_tmp = ModelVersion.new
              modelversion_tmp.deserialize(i)
              @ModelSet << modelversion_tmp
            end
          end
          @CampusId = params['CampusId']
          @DeviceType = params['DeviceType']
          @Remark = params['Remark']
        end
      end

      # CreateModelEvaluationWorkOrder返回参数结构体
      class CreateModelEvaluationWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateMovingWorkOrder请求参数结构体
      class CreateMovingWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param DeviceType: 设备类型，server, netDevice
        # @type DeviceType: String
        # @param WithPowerOn: 上架后是否开电
        # @type WithPowerOn: Boolean
        # @param DeviceMovingList: 设备搬迁信息列表
        # @type DeviceMovingList: Array
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :IdcId, :DeviceType, :WithPowerOn, :DeviceMovingList, :Remark

        def initialize(idcid=nil, devicetype=nil, withpoweron=nil, devicemovinglist=nil, remark=nil)
          @IdcId = idcid
          @DeviceType = devicetype
          @WithPowerOn = withpoweron
          @DeviceMovingList = devicemovinglist
          @Remark = remark
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
          @WithPowerOn = params['WithPowerOn']
          unless params['DeviceMovingList'].nil?
            @DeviceMovingList = []
            params['DeviceMovingList'].each do |i|
              devicerackon_tmp = DeviceRackOn.new
              devicerackon_tmp.deserialize(i)
              @DeviceMovingList << devicerackon_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # CreateMovingWorkOrder返回参数结构体
      class CreateMovingWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateNetDeviceModel请求参数结构体
      class CreateNetDeviceModelRequest < TencentCloud::Common::AbstractModel
        # @param ModelDetail: 网络设备型号
        # @type ModelDetail: :class:`Tencentcloud::Chc.v20230418.models.NetDeviceModel`

        attr_accessor :ModelDetail

        def initialize(modeldetail=nil)
          @ModelDetail = modeldetail
        end

        def deserialize(params)
          unless params['ModelDetail'].nil?
            @ModelDetail = NetDeviceModel.new
            @ModelDetail.deserialize(params['ModelDetail'])
          end
        end
      end

      # CreateNetDeviceModel返回参数结构体
      class CreateNetDeviceModelResponse < TencentCloud::Common::AbstractModel
        # @param DevModel: 型号名称
        # @type DevModel: String
        # @param Version: 版本号
        # @type Version: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DevModel, :Version, :RequestId

        def initialize(devmodel=nil, version=nil, requestid=nil)
          @DevModel = devmodel
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @DevModel = params['DevModel']
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # CreatePersonnelVisitWorkOrder请求参数结构体
      class CreatePersonnelVisitWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param PersonnelSet: 到访人员信息
        # @type PersonnelSet: Array
        # @param IdcId: 机房 ID
        # @type IdcId: Integer
        # @param IdcUnitIdSet: 机房管理单元列表
        # @type IdcUnitIdSet: Array
        # @param EnterStartTime: 到访开始时间
        # @type EnterStartTime: String
        # @param EnterEndTime: 到访结束时间
        # @type EnterEndTime: String
        # @param VisitReason: 到访原因，映射关系：IT_OPERATION IT运维 OTHER 其他
        # @type VisitReason: Array
        # @param VisitRemark: 到访说明
        # @type VisitRemark: String

        attr_accessor :PersonnelSet, :IdcId, :IdcUnitIdSet, :EnterStartTime, :EnterEndTime, :VisitReason, :VisitRemark

        def initialize(personnelset=nil, idcid=nil, idcunitidset=nil, enterstarttime=nil, enterendtime=nil, visitreason=nil, visitremark=nil)
          @PersonnelSet = personnelset
          @IdcId = idcid
          @IdcUnitIdSet = idcunitidset
          @EnterStartTime = enterstarttime
          @EnterEndTime = enterendtime
          @VisitReason = visitreason
          @VisitRemark = visitremark
        end

        def deserialize(params)
          unless params['PersonnelSet'].nil?
            @PersonnelSet = []
            params['PersonnelSet'].each do |i|
              personnel_tmp = Personnel.new
              personnel_tmp.deserialize(i)
              @PersonnelSet << personnel_tmp
            end
          end
          @IdcId = params['IdcId']
          @IdcUnitIdSet = params['IdcUnitIdSet']
          @EnterStartTime = params['EnterStartTime']
          @EnterEndTime = params['EnterEndTime']
          @VisitReason = params['VisitReason']
          @VisitRemark = params['VisitRemark']
        end
      end

      # CreatePersonnelVisitWorkOrder返回参数结构体
      class CreatePersonnelVisitWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePowerOffWorkOrder请求参数结构体
      class CreatePowerOffWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param DeviceType: 设备类型，server, netDevice
        # @type DeviceType: String
        # @param IsPowerOffConfirm: 关电确认，1.授权时关电 2.关电前需要确认
        # @type IsPowerOffConfirm: String
        # @param DeviceSnList: 设备sn列表
        # @type DeviceSnList: Array
        # @param PowerOffConfirmInfo: 关电前需要确认时必填
        # @type PowerOffConfirmInfo: :class:`Tencentcloud::Chc.v20230418.models.PowerOffConfirm`
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :IdcId, :DeviceType, :IsPowerOffConfirm, :DeviceSnList, :PowerOffConfirmInfo, :Remark

        def initialize(idcid=nil, devicetype=nil, ispoweroffconfirm=nil, devicesnlist=nil, poweroffconfirminfo=nil, remark=nil)
          @IdcId = idcid
          @DeviceType = devicetype
          @IsPowerOffConfirm = ispoweroffconfirm
          @DeviceSnList = devicesnlist
          @PowerOffConfirmInfo = poweroffconfirminfo
          @Remark = remark
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
          @IsPowerOffConfirm = params['IsPowerOffConfirm']
          @DeviceSnList = params['DeviceSnList']
          unless params['PowerOffConfirmInfo'].nil?
            @PowerOffConfirmInfo = PowerOffConfirm.new
            @PowerOffConfirmInfo.deserialize(params['PowerOffConfirmInfo'])
          end
          @Remark = params['Remark']
        end
      end

      # CreatePowerOffWorkOrder返回参数结构体
      class CreatePowerOffWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePowerOnWorkOrder请求参数结构体
      class CreatePowerOnWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param DeviceType: 设备类型，server, netDevice
        # @type DeviceType: String
        # @param DeviceSnList: 设备sn列表
        # @type DeviceSnList: Array

        attr_accessor :IdcId, :DeviceType, :DeviceSnList

        def initialize(idcid=nil, devicetype=nil, devicesnlist=nil)
          @IdcId = idcid
          @DeviceType = devicetype
          @DeviceSnList = devicesnlist
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
          @DeviceSnList = params['DeviceSnList']
        end
      end

      # CreatePowerOnWorkOrder返回参数结构体
      class CreatePowerOnWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateQuitWorkOrder请求参数结构体
      class CreateQuitWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param DeviceType: 设备类型，server, netDevice, otherDevice
        # @type DeviceType: String
        # @param StuffOption: 下架选择 1.自行解决 2.由腾讯IDC负责 3.不涉及下架，如：其他设备退出
        # @type StuffOption: String
        # @param IsPowerOffConfirm: 关电确认 1.授权时关电 2.关电前需要确认
        # @type IsPowerOffConfirm: String
        # @param DeviceSnList: 设备sn列表
        # @type DeviceSnList: Array
        # @param HandoverMethod: 交接方式 1.物流上门收货 2.客户上门自提
        # @type HandoverMethod: String
        # @param SelfOperationInfo: 自行解决必填
        # @type SelfOperationInfo: :class:`Tencentcloud::Chc.v20230418.models.SelfOperation`
        # @param PowerOffConfirmInfo: 关电前需要确认时必填
        # @type PowerOffConfirmInfo: :class:`Tencentcloud::Chc.v20230418.models.PowerOffConfirm`
        # @param Remark: 备注
        # @type Remark: String
        # @param LogisticsReceipt: 物流上门收货必传
        # @type LogisticsReceipt: :class:`Tencentcloud::Chc.v20230418.models.LogisticsReceipt`
        # @param CustomerReceipt: 客户上门自提必传
        # @type CustomerReceipt: :class:`Tencentcloud::Chc.v20230418.models.CustomerReceipt`

        attr_accessor :IdcId, :DeviceType, :StuffOption, :IsPowerOffConfirm, :DeviceSnList, :HandoverMethod, :SelfOperationInfo, :PowerOffConfirmInfo, :Remark, :LogisticsReceipt, :CustomerReceipt

        def initialize(idcid=nil, devicetype=nil, stuffoption=nil, ispoweroffconfirm=nil, devicesnlist=nil, handovermethod=nil, selfoperationinfo=nil, poweroffconfirminfo=nil, remark=nil, logisticsreceipt=nil, customerreceipt=nil)
          @IdcId = idcid
          @DeviceType = devicetype
          @StuffOption = stuffoption
          @IsPowerOffConfirm = ispoweroffconfirm
          @DeviceSnList = devicesnlist
          @HandoverMethod = handovermethod
          @SelfOperationInfo = selfoperationinfo
          @PowerOffConfirmInfo = poweroffconfirminfo
          @Remark = remark
          @LogisticsReceipt = logisticsreceipt
          @CustomerReceipt = customerreceipt
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
          @StuffOption = params['StuffOption']
          @IsPowerOffConfirm = params['IsPowerOffConfirm']
          @DeviceSnList = params['DeviceSnList']
          @HandoverMethod = params['HandoverMethod']
          unless params['SelfOperationInfo'].nil?
            @SelfOperationInfo = SelfOperation.new
            @SelfOperationInfo.deserialize(params['SelfOperationInfo'])
          end
          unless params['PowerOffConfirmInfo'].nil?
            @PowerOffConfirmInfo = PowerOffConfirm.new
            @PowerOffConfirmInfo.deserialize(params['PowerOffConfirmInfo'])
          end
          @Remark = params['Remark']
          unless params['LogisticsReceipt'].nil?
            @LogisticsReceipt = LogisticsReceipt.new
            @LogisticsReceipt.deserialize(params['LogisticsReceipt'])
          end
          unless params['CustomerReceipt'].nil?
            @CustomerReceipt = CustomerReceipt.new
            @CustomerReceipt.deserialize(params['CustomerReceipt'])
          end
        end
      end

      # CreateQuitWorkOrder返回参数结构体
      class CreateQuitWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRackOffWorkOrder请求参数结构体
      class CreateRackOffWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param DeviceType: 设备类型，server, netDevice
        # @type DeviceType: String
        # @param StuffOption: 下架人员 1.自行解决 2.由腾讯IDC负责
        # @type StuffOption: String
        # @param IsPowerOffConfirm: 关电确认 1.授权时关电 2.关电前需要确认
        # @type IsPowerOffConfirm: String
        # @param DeviceSnList: 设备sn列表
        # @type DeviceSnList: Array
        # @param SelfOperationInfo: 自行解决必填
        # @type SelfOperationInfo: :class:`Tencentcloud::Chc.v20230418.models.SelfOperation`
        # @param PowerOffConfirmInfo: 关电前需要确认时必填
        # @type PowerOffConfirmInfo: :class:`Tencentcloud::Chc.v20230418.models.PowerOffConfirm`
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :IdcId, :DeviceType, :StuffOption, :IsPowerOffConfirm, :DeviceSnList, :SelfOperationInfo, :PowerOffConfirmInfo, :Remark

        def initialize(idcid=nil, devicetype=nil, stuffoption=nil, ispoweroffconfirm=nil, devicesnlist=nil, selfoperationinfo=nil, poweroffconfirminfo=nil, remark=nil)
          @IdcId = idcid
          @DeviceType = devicetype
          @StuffOption = stuffoption
          @IsPowerOffConfirm = ispoweroffconfirm
          @DeviceSnList = devicesnlist
          @SelfOperationInfo = selfoperationinfo
          @PowerOffConfirmInfo = poweroffconfirminfo
          @Remark = remark
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
          @StuffOption = params['StuffOption']
          @IsPowerOffConfirm = params['IsPowerOffConfirm']
          @DeviceSnList = params['DeviceSnList']
          unless params['SelfOperationInfo'].nil?
            @SelfOperationInfo = SelfOperation.new
            @SelfOperationInfo.deserialize(params['SelfOperationInfo'])
          end
          unless params['PowerOffConfirmInfo'].nil?
            @PowerOffConfirmInfo = PowerOffConfirm.new
            @PowerOffConfirmInfo.deserialize(params['PowerOffConfirmInfo'])
          end
          @Remark = params['Remark']
        end
      end

      # CreateRackOffWorkOrder返回参数结构体
      class CreateRackOffWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRackOnWorkOrder请求参数结构体
      class CreateRackOnWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param DeviceType: 设备类型，server, netDevice
        # @type DeviceType: String
        # @param StuffOption: 上架人员 1.自行解决 2.由腾讯IDC负责
        # @type StuffOption: String
        # @param WithPowerOn: 上架后是否开电
        # @type WithPowerOn: Boolean
        # @param DeviceRackOnList: 服务器收货列表
        # @type DeviceRackOnList: Array
        # @param SelfOperationInfo: 自行解决必填
        # @type SelfOperationInfo: :class:`Tencentcloud::Chc.v20230418.models.SelfOperation`

        attr_accessor :IdcId, :DeviceType, :StuffOption, :WithPowerOn, :DeviceRackOnList, :SelfOperationInfo

        def initialize(idcid=nil, devicetype=nil, stuffoption=nil, withpoweron=nil, devicerackonlist=nil, selfoperationinfo=nil)
          @IdcId = idcid
          @DeviceType = devicetype
          @StuffOption = stuffoption
          @WithPowerOn = withpoweron
          @DeviceRackOnList = devicerackonlist
          @SelfOperationInfo = selfoperationinfo
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
          @StuffOption = params['StuffOption']
          @WithPowerOn = params['WithPowerOn']
          unless params['DeviceRackOnList'].nil?
            @DeviceRackOnList = []
            params['DeviceRackOnList'].each do |i|
              devicerackon_tmp = DeviceRackOn.new
              devicerackon_tmp.deserialize(i)
              @DeviceRackOnList << devicerackon_tmp
            end
          end
          unless params['SelfOperationInfo'].nil?
            @SelfOperationInfo = SelfOperation.new
            @SelfOperationInfo.deserialize(params['SelfOperationInfo'])
          end
        end
      end

      # CreateRackOnWorkOrder返回参数结构体
      class CreateRackOnWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateReceivingWorkOrder请求参数结构体
      class CreateReceivingWorkOrderRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param DeviceType: 设备类型，server, netDevice, wire, otherDevice
        # @type DeviceType: String
        # @param EntryTime: 进入时间
        # @type EntryTime: String
        # @param ReceivingOperation: 1.收货-仅核对外包装完整和数量，不开箱 2.验收-开箱核对型号SN一致
        # @type ReceivingOperation: String
        # @param IsExpressDelivery: 是否快递寄件
        # @type IsExpressDelivery: Boolean
        # @param ExpressInfo: 快递寄件信息,快递寄件必填
        # @type ExpressInfo: :class:`Tencentcloud::Chc.v20230418.models.ExpressDelivery`
        # @param Remark: 备注
        # @type Remark: String
        # @param ServerDeviceList: 服务器收货列表
        # @type ServerDeviceList: Array
        # @param NetDeviceList: 网络设备收货列表
        # @type NetDeviceList: Array
        # @param WireDeviceList: 线材收货列表
        # @type WireDeviceList: Array
        # @param OtherDeviceList: 其他设备收货列表
        # @type OtherDeviceList: Array

        attr_accessor :IdcId, :DeviceType, :EntryTime, :ReceivingOperation, :IsExpressDelivery, :ExpressInfo, :Remark, :ServerDeviceList, :NetDeviceList, :WireDeviceList, :OtherDeviceList

        def initialize(idcid=nil, devicetype=nil, entrytime=nil, receivingoperation=nil, isexpressdelivery=nil, expressinfo=nil, remark=nil, serverdevicelist=nil, netdevicelist=nil, wiredevicelist=nil, otherdevicelist=nil)
          @IdcId = idcid
          @DeviceType = devicetype
          @EntryTime = entrytime
          @ReceivingOperation = receivingoperation
          @IsExpressDelivery = isexpressdelivery
          @ExpressInfo = expressinfo
          @Remark = remark
          @ServerDeviceList = serverdevicelist
          @NetDeviceList = netdevicelist
          @WireDeviceList = wiredevicelist
          @OtherDeviceList = otherdevicelist
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
          @EntryTime = params['EntryTime']
          @ReceivingOperation = params['ReceivingOperation']
          @IsExpressDelivery = params['IsExpressDelivery']
          unless params['ExpressInfo'].nil?
            @ExpressInfo = ExpressDelivery.new
            @ExpressInfo.deserialize(params['ExpressInfo'])
          end
          @Remark = params['Remark']
          unless params['ServerDeviceList'].nil?
            @ServerDeviceList = []
            params['ServerDeviceList'].each do |i|
              serverreceivinginfo_tmp = ServerReceivingInfo.new
              serverreceivinginfo_tmp.deserialize(i)
              @ServerDeviceList << serverreceivinginfo_tmp
            end
          end
          unless params['NetDeviceList'].nil?
            @NetDeviceList = []
            params['NetDeviceList'].each do |i|
              netreceivinginfo_tmp = NetReceivingInfo.new
              netreceivinginfo_tmp.deserialize(i)
              @NetDeviceList << netreceivinginfo_tmp
            end
          end
          unless params['WireDeviceList'].nil?
            @WireDeviceList = []
            params['WireDeviceList'].each do |i|
              wirereceivinginfo_tmp = WireReceivingInfo.new
              wirereceivinginfo_tmp.deserialize(i)
              @WireDeviceList << wirereceivinginfo_tmp
            end
          end
          unless params['OtherDeviceList'].nil?
            @OtherDeviceList = []
            params['OtherDeviceList'].each do |i|
              otherdevreceivinginfo_tmp = OtherDevReceivingInfo.new
              otherdevreceivinginfo_tmp.deserialize(i)
              @OtherDeviceList << otherdevreceivinginfo_tmp
            end
          end
        end
      end

      # CreateReceivingWorkOrder返回参数结构体
      class CreateReceivingWorkOrderResponse < TencentCloud::Common::AbstractModel
        # @param WorkOrderSet: 创建的工单信息
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkOrderSet, :RequestId

        def initialize(workorderset=nil, requestid=nil)
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workordertinyinfo_tmp = WorkOrderTinyInfo.new
              workordertinyinfo_tmp.deserialize(i)
              @WorkOrderSet << workordertinyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateServerModel请求参数结构体
      class CreateServerModelRequest < TencentCloud::Common::AbstractModel
        # @param ModelDetail: 设备型号详情
        # @type ModelDetail: :class:`Tencentcloud::Chc.v20230418.models.ServerModel`

        attr_accessor :ModelDetail

        def initialize(modeldetail=nil)
          @ModelDetail = modeldetail
        end

        def deserialize(params)
          unless params['ModelDetail'].nil?
            @ModelDetail = ServerModel.new
            @ModelDetail.deserialize(params['ModelDetail'])
          end
        end
      end

      # CreateServerModel返回参数结构体
      class CreateServerModelResponse < TencentCloud::Common::AbstractModel
        # @param DevModel: 型号名称
        # @type DevModel: String
        # @param Version: 版本
        # @type Version: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DevModel, :Version, :RequestId

        def initialize(devmodel=nil, version=nil, requestid=nil)
          @DevModel = devmodel
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @DevModel = params['DevModel']
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # 客户信息
      class CustomerInfo < TencentCloud::Common::AbstractModel
        # @param CustomerName: 公司全称
        # @type CustomerName: String
        # @param ShortCustomerName: 公司简称
        # @type ShortCustomerName: String
        # @param WholeFlag: 是否全托管用户
        # @type WholeFlag: Boolean

        attr_accessor :CustomerName, :ShortCustomerName, :WholeFlag

        def initialize(customername=nil, shortcustomername=nil, wholeflag=nil)
          @CustomerName = customername
          @ShortCustomerName = shortcustomername
          @WholeFlag = wholeflag
        end

        def deserialize(params)
          @CustomerName = params['CustomerName']
          @ShortCustomerName = params['ShortCustomerName']
          @WholeFlag = params['WholeFlag']
        end
      end

      # 客户上门自提信息
      class CustomerReceipt < TencentCloud::Common::AbstractModel
        # @param PickUpStuff: 自提人员姓名
        # @type PickUpStuff: String
        # @param PickUpStuffContact: 自提人电话
        # @type PickUpStuffContact: String
        # @param PickUpStuffIDCard: 自提人身份证号
        # @type PickUpStuffIDCard: String
        # @param PickUpTime: 自提时间
        # @type PickUpTime: String

        attr_accessor :PickUpStuff, :PickUpStuffContact, :PickUpStuffIDCard, :PickUpTime

        def initialize(pickupstuff=nil, pickupstuffcontact=nil, pickupstuffidcard=nil, pickuptime=nil)
          @PickUpStuff = pickupstuff
          @PickUpStuffContact = pickupstuffcontact
          @PickUpStuffIDCard = pickupstuffidcard
          @PickUpTime = pickuptime
        end

        def deserialize(params)
          @PickUpStuff = params['PickUpStuff']
          @PickUpStuffContact = params['PickUpStuffContact']
          @PickUpStuffIDCard = params['PickUpStuffIDCard']
          @PickUpTime = params['PickUpTime']
        end
      end

      # DescribeAvailableModelList请求参数结构体
      class DescribeAvailableModelListRequest < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房ID
        # @type IdcId: Integer
        # @param DeviceType: server 服务器，netDevice 网络设备
        # @type DeviceType: String

        attr_accessor :IdcId, :DeviceType

        def initialize(idcid=nil, devicetype=nil)
          @IdcId = idcid
          @DeviceType = devicetype
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @DeviceType = params['DeviceType']
        end
      end

      # DescribeAvailableModelList返回参数结构体
      class DescribeAvailableModelListResponse < TencentCloud::Common::AbstractModel
        # @param ModelVersionSet: 机房内可用的设备型号及版本列表
        # @type ModelVersionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelVersionSet, :RequestId

        def initialize(modelversionset=nil, requestid=nil)
          @ModelVersionSet = modelversionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelVersionSet'].nil?
            @ModelVersionSet = []
            params['ModelVersionSet'].each do |i|
              availablemodelversion_tmp = AvailableModelVersion.new
              availablemodelversion_tmp.deserialize(i)
              @ModelVersionSet << availablemodelversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCampusList请求参数结构体
      class DescribeCampusListRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCampusList返回参数结构体
      class DescribeCampusListResponse < TencentCloud::Common::AbstractModel
        # @param CampusSet: 客户可操作的园区列表
        # @type CampusSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CampusSet, :RequestId

        def initialize(campusset=nil, requestid=nil)
          @CampusSet = campusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CampusSet'].nil?
            @CampusSet = []
            params['CampusSet'].each do |i|
              campus_tmp = Campus.new
              campus_tmp.deserialize(i)
              @CampusSet << campus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCommonServiceWorkOrderDetail请求参数结构体
      class DescribeCommonServiceWorkOrderDetailRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 工单ID
        # @type OrderId: String

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # DescribeCommonServiceWorkOrderDetail返回参数结构体
      class DescribeCommonServiceWorkOrderDetailResponse < TencentCloud::Common::AbstractModel
        # @param StepSet: 进度
        # @type StepSet: Array
        # @param BaseInfo: 基本信息
        # @type BaseInfo: :class:`Tencentcloud::Chc.v20230418.models.CommonServiceBaseInfo`
        # @param DeviceSet: 设备信息
        # @type DeviceSet: Array
        # @param OrderStatus: 工单状态
        # @type OrderStatus: String
        # @param RejectReason: 拒绝原因
        # @type RejectReason: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StepSet, :BaseInfo, :DeviceSet, :OrderStatus, :RejectReason, :RequestId

        def initialize(stepset=nil, baseinfo=nil, deviceset=nil, orderstatus=nil, rejectreason=nil, requestid=nil)
          @StepSet = stepset
          @BaseInfo = baseinfo
          @DeviceSet = deviceset
          @OrderStatus = orderstatus
          @RejectReason = rejectreason
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StepSet'].nil?
            @StepSet = []
            params['StepSet'].each do |i|
              orderstep_tmp = OrderStep.new
              orderstep_tmp.deserialize(i)
              @StepSet << orderstep_tmp
            end
          end
          unless params['BaseInfo'].nil?
            @BaseInfo = CommonServiceBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              deviceposition_tmp = DevicePosition.new
              deviceposition_tmp.deserialize(i)
              @DeviceSet << deviceposition_tmp
            end
          end
          @OrderStatus = params['OrderStatus']
          @RejectReason = params['RejectReason']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomerInfo请求参数结构体
      class DescribeCustomerInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCustomerInfo返回参数结构体
      class DescribeCustomerInfoResponse < TencentCloud::Common::AbstractModel
        # @param CustomerInfo: 客户信息
        # @type CustomerInfo: :class:`Tencentcloud::Chc.v20230418.models.CustomerInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerInfo, :RequestId

        def initialize(customerinfo=nil, requestid=nil)
          @CustomerInfo = customerinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomerInfo'].nil?
            @CustomerInfo = CustomerInfo.new
            @CustomerInfo.deserialize(params['CustomerInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceList请求参数结构体
      class DescribeDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param DeviceType: 设备类型 server 服务器，netDevice 网络设备，otherDevice 其他设备
        # @type DeviceType: String
        # @param Filters: <li><strong>rack-id</strong></li> <p style="padding-left: 30px;">按照【<strong>机架ID</strong>】进行过滤。例如：15082。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;"></p> <li><strong> sn</strong></li> <p style="padding-left: 30px;">按照【<strong>设备 SN 码</strong>】进行过滤，设备 SN 例如：TEN948P004。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong> idc-id</strong></li> <p style="padding-left: 30px;">按照【<strong>机房ID</strong>】进行过滤，机房ID例如：159。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>  <li><strong>idc-unit-id </strong></li> <p style="padding-left: 30px;">按照【<strong>机房管理单元ID</strong>】进行过滤，机房管理ID例如：568。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>server-type-id</strong></li> <p style="padding-left: 30px;">按照【<strong>机器子类型</strong>】进行过滤，只包含以下几种：1:服务器, 2:Twins主机, 3:Twins子机,5:虚拟机, 6:2U4S主机, 7:2U4S子机,8 Rack主机,9 Rack子机，例如： 1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>status</strong></li> <p style="padding-left: 30px;">按照【<strong>设备状态</strong>】进行过滤，操作状态只包含：POWER_ON 设备开电，POWER_OFF 设备关电，RACK_OFF 未上架，MOVING 搬迁中 。例如： POWER_OFF。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>svr-is-special</strong></li> <p style="padding-left: 30px;">按照【<strong>是否</strong>】进行过滤，支持 0：自有，1 租用。例如： 1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为1000
        # @type Limit: Integer
        # @param DstService: 传入目标服务，返回允许进行此服务的设备列表；可以和Filters一起使用。允许的值：('rackOn', 'powerOn', 'powerOff', 'rackOff', 'quit', 'moving'，'netDeviceCommon', 'serverCommon')
        # @type DstService: String

        attr_accessor :DeviceType, :Filters, :Offset, :Limit, :DstService

        def initialize(devicetype=nil, filters=nil, offset=nil, limit=nil, dstservice=nil)
          @DeviceType = devicetype
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @DstService = dstservice
        end

        def deserialize(params)
          @DeviceType = params['DeviceType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DstService = params['DstService']
        end
      end

      # DescribeDeviceList返回参数结构体
      class DescribeDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param DeviceSet: 服务器列表
        # @type DeviceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :DeviceSet, :RequestId

        def initialize(total=nil, deviceset=nil, requestid=nil)
          @Total = total
          @DeviceSet = deviceset
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              device_tmp = Device.new
              device_tmp.deserialize(i)
              @DeviceSet << device_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceWorkOrderDetail请求参数结构体
      class DescribeDeviceWorkOrderDetailRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 工单ID
        # @type OrderId: String

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # DescribeDeviceWorkOrderDetail返回参数结构体
      class DescribeDeviceWorkOrderDetailResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 工单ID
        # @type OrderId: String
        # @param ServiceType: 服务类型
        # @type ServiceType: String
        # @param OrderType: 工单类型
        # @type OrderType: String
        # @param OrderStatus: 工单状态
        # @type OrderStatus: String
        # @param StepSet: 工单流程状态
        # @type StepSet: Array
        # @param DeviceSet: 工单设备信息
        # @type DeviceSet: Array
        # @param BaseInfo: 工单的入参信息
        # @type BaseInfo: :class:`Tencentcloud::Chc.v20230418.models.DeviceOrderBaseInfo`
        # @param RejectReason: 工单的拒绝原因，工单状态为reject的时候返回
        # @type RejectReason: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :ServiceType, :OrderType, :OrderStatus, :StepSet, :DeviceSet, :BaseInfo, :RejectReason, :RequestId

        def initialize(orderid=nil, servicetype=nil, ordertype=nil, orderstatus=nil, stepset=nil, deviceset=nil, baseinfo=nil, rejectreason=nil, requestid=nil)
          @OrderId = orderid
          @ServiceType = servicetype
          @OrderType = ordertype
          @OrderStatus = orderstatus
          @StepSet = stepset
          @DeviceSet = deviceset
          @BaseInfo = baseinfo
          @RejectReason = rejectreason
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @ServiceType = params['ServiceType']
          @OrderType = params['OrderType']
          @OrderStatus = params['OrderStatus']
          unless params['StepSet'].nil?
            @StepSet = []
            params['StepSet'].each do |i|
              orderstep_tmp = OrderStep.new
              orderstep_tmp.deserialize(i)
              @StepSet << orderstep_tmp
            end
          end
          unless params['DeviceSet'].nil?
            @DeviceSet = []
            params['DeviceSet'].each do |i|
              devicehistory_tmp = DeviceHistory.new
              devicehistory_tmp.deserialize(i)
              @DeviceSet << devicehistory_tmp
            end
          end
          unless params['BaseInfo'].nil?
            @BaseInfo = DeviceOrderBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          @RejectReason = params['RejectReason']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdcUnitAssetDetail请求参数结构体
      class DescribeIdcUnitAssetDetailRequest < TencentCloud::Common::AbstractModel
        # @param IdcUnitId: 机房管理单元ID
        # @type IdcUnitId: Integer

        attr_accessor :IdcUnitId

        def initialize(idcunitid=nil)
          @IdcUnitId = idcunitid
        end

        def deserialize(params)
          @IdcUnitId = params['IdcUnitId']
        end
      end

      # DescribeIdcUnitAssetDetail返回参数结构体
      class DescribeIdcUnitAssetDetailResponse < TencentCloud::Common::AbstractModel
        # @param IdcUnitDetail: 机房管理单元详情
        # @type IdcUnitDetail: :class:`Tencentcloud::Chc.v20230418.models.IdcUnitInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdcUnitDetail, :RequestId

        def initialize(idcunitdetail=nil, requestid=nil)
          @IdcUnitDetail = idcunitdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdcUnitDetail'].nil?
            @IdcUnitDetail = IdcUnitInfo.new
            @IdcUnitDetail.deserialize(params['IdcUnitDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdcUnitDetail请求参数结构体
      class DescribeIdcUnitDetailRequest < TencentCloud::Common::AbstractModel
        # @param IdcUnitId: 机房管理单元ID
        # @type IdcUnitId: Integer

        attr_accessor :IdcUnitId

        def initialize(idcunitid=nil)
          @IdcUnitId = idcunitid
        end

        def deserialize(params)
          @IdcUnitId = params['IdcUnitId']
        end
      end

      # DescribeIdcUnitDetail返回参数结构体
      class DescribeIdcUnitDetailResponse < TencentCloud::Common::AbstractModel
        # @param IdcUnitDetail: 机房管理单元详情
        # @type IdcUnitDetail: :class:`Tencentcloud::Chc.v20230418.models.IdcUnitInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdcUnitDetail, :RequestId

        def initialize(idcunitdetail=nil, requestid=nil)
          @IdcUnitDetail = idcunitdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdcUnitDetail'].nil?
            @IdcUnitDetail = IdcUnitInfo.new
            @IdcUnitDetail.deserialize(params['IdcUnitDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdcs请求参数结构体
      class DescribeIdcsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeIdcs返回参数结构体
      class DescribeIdcsResponse < TencentCloud::Common::AbstractModel
        # @param IdcSet: 机房管理单元列表
        # @type IdcSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IdcSet, :RequestId

        def initialize(idcset=nil, requestid=nil)
          @IdcSet = idcset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IdcSet'].nil?
            @IdcSet = []
            params['IdcSet'].each do |i|
              idc_tmp = Idc.new
              idc_tmp.deserialize(i)
              @IdcSet << idc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelEvaluationWorkOrderDetail请求参数结构体
      class DescribeModelEvaluationWorkOrderDetailRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 工单ID
        # @type OrderId: String

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # DescribeModelEvaluationWorkOrderDetail返回参数结构体
      class DescribeModelEvaluationWorkOrderDetailResponse < TencentCloud::Common::AbstractModel
        # @param StepSet: 工单进度
        # @type StepSet: Array
        # @param BaseInfo: 工单详情
        # @type BaseInfo: :class:`Tencentcloud::Chc.v20230418.models.ModelEvaluationBaseInfo`
        # @param NetDeviceModelSet: 评估中的网络设备型号详情
        # @type NetDeviceModelSet: Array
        # @param ServerModelSet: 评估中的服务器型号详情
        # @type ServerModelSet: Array
        # @param OrderStatus: 订单状态, process 处理中 ，reject 已拒绝 ，finish 已完成，exception 异常
        # @type OrderStatus: String
        # @param RejectReason: 工单拒绝原因
        # @type RejectReason: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StepSet, :BaseInfo, :NetDeviceModelSet, :ServerModelSet, :OrderStatus, :RejectReason, :RequestId

        def initialize(stepset=nil, baseinfo=nil, netdevicemodelset=nil, servermodelset=nil, orderstatus=nil, rejectreason=nil, requestid=nil)
          @StepSet = stepset
          @BaseInfo = baseinfo
          @NetDeviceModelSet = netdevicemodelset
          @ServerModelSet = servermodelset
          @OrderStatus = orderstatus
          @RejectReason = rejectreason
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StepSet'].nil?
            @StepSet = []
            params['StepSet'].each do |i|
              orderstep_tmp = OrderStep.new
              orderstep_tmp.deserialize(i)
              @StepSet << orderstep_tmp
            end
          end
          unless params['BaseInfo'].nil?
            @BaseInfo = ModelEvaluationBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['NetDeviceModelSet'].nil?
            @NetDeviceModelSet = []
            params['NetDeviceModelSet'].each do |i|
              modelversiondetail_tmp = ModelVersionDetail.new
              modelversiondetail_tmp.deserialize(i)
              @NetDeviceModelSet << modelversiondetail_tmp
            end
          end
          unless params['ServerModelSet'].nil?
            @ServerModelSet = []
            params['ServerModelSet'].each do |i|
              modelversiondetail_tmp = ModelVersionDetail.new
              modelversiondetail_tmp.deserialize(i)
              @ServerModelSet << modelversiondetail_tmp
            end
          end
          @OrderStatus = params['OrderStatus']
          @RejectReason = params['RejectReason']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModel请求参数结构体
      class DescribeModelRequest < TencentCloud::Common::AbstractModel
        # @param DevModel: 服务器设备型号
        # @type DevModel: String
        # @param CampusId: 园区ID
        # @type CampusId: Integer
        # @param DeviceType: 设备类型，服务器传入 server，网络设备传入 netDevice
        # @type DeviceType: String
        # @param Checked: 是否只返回已评估的版本
        # @type Checked: Boolean

        attr_accessor :DevModel, :CampusId, :DeviceType, :Checked

        def initialize(devmodel=nil, campusid=nil, devicetype=nil, checked=nil)
          @DevModel = devmodel
          @CampusId = campusid
          @DeviceType = devicetype
          @Checked = checked
        end

        def deserialize(params)
          @DevModel = params['DevModel']
          @CampusId = params['CampusId']
          @DeviceType = params['DeviceType']
          @Checked = params['Checked']
        end
      end

      # DescribeModel返回参数结构体
      class DescribeModelResponse < TencentCloud::Common::AbstractModel
        # @param ModelSet: 设备型号详情
        # @type ModelSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelSet, :RequestId

        def initialize(modelset=nil, requestid=nil)
          @ModelSet = modelset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelSet'].nil?
            @ModelSet = []
            params['ModelSet'].each do |i|
              modelversiondetail_tmp = ModelVersionDetail.new
              modelversiondetail_tmp.deserialize(i)
              @ModelSet << modelversiondetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelTemplate请求参数结构体
      class DescribeModelTemplateRequest < TencentCloud::Common::AbstractModel
        # @param DeviceType: 型号类型，只支持传入 server 和 netDevice
        # @type DeviceType: String

        attr_accessor :DeviceType

        def initialize(devicetype=nil)
          @DeviceType = devicetype
        end

        def deserialize(params)
          @DeviceType = params['DeviceType']
        end
      end

      # DescribeModelTemplate返回参数结构体
      class DescribeModelTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateDetail: 该型号模板的选项列表
        # @type TemplateDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateDetail, :RequestId

        def initialize(templatedetail=nil, requestid=nil)
          @TemplateDetail = templatedetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TemplateDetail'].nil?
            @TemplateDetail = []
            params['TemplateDetail'].each do |i|
              templateoption_tmp = TemplateOption.new
              templateoption_tmp.deserialize(i)
              @TemplateDetail << templateoption_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelVersionList请求参数结构体
      class DescribeModelVersionListRequest < TencentCloud::Common::AbstractModel
        # @param DeviceType: 型号类型，只支持传入 netDevice 和 server
        # @type DeviceType: String
        # @param Filters: model-name  型号名称  类型：String  必选：否
        # @type Filters: Array
        # @param Checked: 是否已评估
        # @type Checked: Boolean
        # @param CampusId: 园区ID，当 Checked 参数传 True 时，该参数必须传值
        # @type CampusId: Integer

        attr_accessor :DeviceType, :Filters, :Checked, :CampusId

        def initialize(devicetype=nil, filters=nil, checked=nil, campusid=nil)
          @DeviceType = devicetype
          @Filters = filters
          @Checked = checked
          @CampusId = campusid
        end

        def deserialize(params)
          @DeviceType = params['DeviceType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Checked = params['Checked']
          @CampusId = params['CampusId']
        end
      end

      # DescribeModelVersionList返回参数结构体
      class DescribeModelVersionListResponse < TencentCloud::Common::AbstractModel
        # @param ModelVersionSet: 型号和对应的版本数量
        # @type ModelVersionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelVersionSet, :RequestId

        def initialize(modelversionset=nil, requestid=nil)
          @ModelVersionSet = modelversionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ModelVersionSet'].nil?
            @ModelVersionSet = []
            params['ModelVersionSet'].each do |i|
              modelversioncount_tmp = ModelVersionCount.new
              modelversioncount_tmp.deserialize(i)
              @ModelVersionSet << modelversioncount_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonnelVisitWorkOrderDetail请求参数结构体
      class DescribePersonnelVisitWorkOrderDetailRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 工单ID
        # @type OrderId: String

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # DescribePersonnelVisitWorkOrderDetail返回参数结构体
      class DescribePersonnelVisitWorkOrderDetailResponse < TencentCloud::Common::AbstractModel
        # @param StepSet: 工单进度
        # @type StepSet: Array
        # @param BaseInfo: 工单详情
        # @type BaseInfo: :class:`Tencentcloud::Chc.v20230418.models.PersonnelVisitBaseInfo`
        # @param PersonnelSet: 到访人员详情
        # @type PersonnelSet: Array
        # @param OrderStatus: 工单状态 订单状态, processing 处理中 ，reject 已拒绝 ，finish 已完成，exception 异常
        # @type OrderStatus: String
        # @param RejectReason: 拒绝原因
        # @type RejectReason: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StepSet, :BaseInfo, :PersonnelSet, :OrderStatus, :RejectReason, :RequestId

        def initialize(stepset=nil, baseinfo=nil, personnelset=nil, orderstatus=nil, rejectreason=nil, requestid=nil)
          @StepSet = stepset
          @BaseInfo = baseinfo
          @PersonnelSet = personnelset
          @OrderStatus = orderstatus
          @RejectReason = rejectreason
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StepSet'].nil?
            @StepSet = []
            params['StepSet'].each do |i|
              orderstep_tmp = OrderStep.new
              orderstep_tmp.deserialize(i)
              @StepSet << orderstep_tmp
            end
          end
          unless params['BaseInfo'].nil?
            @BaseInfo = PersonnelVisitBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['PersonnelSet'].nil?
            @PersonnelSet = []
            params['PersonnelSet'].each do |i|
              personnel_tmp = Personnel.new
              personnel_tmp.deserialize(i)
              @PersonnelSet << personnel_tmp
            end
          end
          @OrderStatus = params['OrderStatus']
          @RejectReason = params['RejectReason']
          @RequestId = params['RequestId']
        end
      end

      # DescribePositionStatusSummary请求参数结构体
      class DescribePositionStatusSummaryRequest < TencentCloud::Common::AbstractModel
        # @param Filters: <li><strong>rack-id</strong></li> <p style="padding-left: 30px;">按照【<strong>机架ID</strong>】进行过滤。例如：15082。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;"></p> <li><strong> rack-name</strong></li> <p style="padding-left: 30px;">按照【<strong>机架名称</strong>】进行过滤，机架名称例如：M301-E10。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong> idc-id</strong></li> <p style="padding-left: 30px;">按照【<strong>机房ID</strong>】进行过滤，机房ID例如：159。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>  <li><strong>idc-unit-id </strong></li> <p style="padding-left: 30px;">按照【<strong>机房管理单元ID</strong>】进行过滤，机房管理ID例如：568。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>position-status</strong></li> <p style="padding-left: 30px;">按照【<strong>机位状态</strong>】进行过滤，机位状态只包含以下四种：机位状态,0 空闲,1 已用,2 不可用,3 预占用,4 预留，例如： 0。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>op-status</strong></li> <p style="padding-left: 30px;">按照【<strong>操作状态</strong>】进行过滤，操作状态只包含两种：FINISH 操作完成，PENDING 操作中，例如： PENDING。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribePositionStatusSummary返回参数结构体
      class DescribePositionStatusSummaryResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总数
        # @type Total: Integer
        # @param StatusCountSet: 状态及对应数量
        # @type StatusCountSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :StatusCountSet, :RequestId

        def initialize(total=nil, statuscountset=nil, requestid=nil)
          @Total = total
          @StatusCountSet = statuscountset
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['StatusCountSet'].nil?
            @StatusCountSet = []
            params['StatusCountSet'].each do |i|
              positionstatusitem_tmp = PositionStatusItem.new
              positionstatusitem_tmp.deserialize(i)
              @StatusCountSet << positionstatusitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePositions请求参数结构体
      class DescribePositionsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer
        # @param Filters: <li><strong>rack-id</strong></li> <p style="padding-left: 30px;">按照【<strong>机架ID</strong>】进行过滤。例如：15082。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;"></p> <li><strong> rack-name</strong></li> <p style="padding-left: 30px;">按照【<strong>机架名称</strong>】进行过滤，机架名称例如：M301-E10。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong> idc-id</strong></li> <p style="padding-left: 30px;">按照【<strong>机房ID</strong>】进行过滤，机房ID例如：159。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>  <li><strong>idc-unit-id </strong></li> <p style="padding-left: 30px;">按照【<strong>机房管理单元ID</strong>】进行过滤，机房管理ID例如：568。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p> <li><strong>position-status</strong></li> <p style="padding-left: 30px;">按照【<strong>机位状态</strong>】进行过滤，机位状态只包含以下四种：机位状态,0 空闲,1 已用,2 不可用,3 预占用,4 预留，例如： 0。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # <li><strong>op-status</strong></li> <p style="padding-left: 30px;">按照【<strong>操作状态</strong>】进行过滤，操作状态只包含两种：FINISH 操作完成，PENDING 操作中，例如： PENDING。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribePositions返回参数结构体
      class DescribePositionsResponse < TencentCloud::Common::AbstractModel
        # @param PositionSet: 客户拥有的机位列表
        # @type PositionSet: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PositionSet, :Total, :RequestId

        def initialize(positionset=nil, total=nil, requestid=nil)
          @PositionSet = positionset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PositionSet'].nil?
            @PositionSet = []
            params['PositionSet'].each do |i|
              position_tmp = Position.new
              position_tmp.deserialize(i)
              @PositionSet << position_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRacksDistribution请求参数结构体
      class DescribeRacksDistributionRequest < TencentCloud::Common::AbstractModel
        # @param IdcUnitId: 机房管理单元ID
        # @type IdcUnitId: Integer

        attr_accessor :IdcUnitId

        def initialize(idcunitid=nil)
          @IdcUnitId = idcunitid
        end

        def deserialize(params)
          @IdcUnitId = params['IdcUnitId']
        end
      end

      # DescribeRacksDistribution返回参数结构体
      class DescribeRacksDistributionResponse < TencentCloud::Common::AbstractModel
        # @param DistributionSet: 机架的用量分布
        # @type DistributionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DistributionSet, :RequestId

        def initialize(distributionset=nil, requestid=nil)
          @DistributionSet = distributionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DistributionSet'].nil?
            @DistributionSet = []
            params['DistributionSet'].each do |i|
              distribution_tmp = Distribution.new
              distribution_tmp.deserialize(i)
              @DistributionSet << distribution_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRacks请求参数结构体
      class DescribeRacksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer
        # @param Filters: 过滤条件

        # rack-id
        # 按照机架id进行过滤。
        # 类型：String
        # 必选：否

        # rack-name
        # 按照机架名称进行过滤。
        # 类型：String
        # 必选：否

        # idc-id
        # 按照机房id进行过滤。
        # 类型：String
        # 必选：否

        # idc-unit-id
        # 按照机房管理单元id过滤
        # 类型： String
        # 必选： 否

        # is-power-on
        # 按照是否开电进行过滤，支持传入 0 和 1。1 代表开电，0 代表关电
        # 类型： String
        # 必选： 否

        # hosting-type
        # 按照托管类型进行过滤。支持传入 CUSTOMER_MIX 代表客户混合，CUSTOMER_ONLY 代表客户独享 ，NOT_INIT 代表未初始化
        # 类型： String
        # 必选： 否

        # @type Filters: Array
        # @param DstService: 传入目标服务，返回允许进行此服务的机架列表；可以和Filters一起使用。允许的值：('rackPowerOn', 'rackPowerOff')
        # @type DstService: String

        attr_accessor :Offset, :Limit, :Filters, :DstService

        def initialize(offset=nil, limit=nil, filters=nil, dstservice=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @DstService = dstservice
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @DstService = params['DstService']
        end
      end

      # DescribeRacks返回参数结构体
      class DescribeRacksResponse < TencentCloud::Common::AbstractModel
        # @param RackSet: 客户拥有的机架列表
        # @type RackSet: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RackSet, :Total, :RequestId

        def initialize(rackset=nil, total=nil, requestid=nil)
          @RackSet = rackset
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RackSet'].nil?
            @RackSet = []
            params['RackSet'].each do |i|
              rack_tmp = Rack.new
              rack_tmp.deserialize(i)
              @RackSet << rack_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceUsage请求参数结构体
      class DescribeResourceUsageRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeResourceUsage返回参数结构体
      class DescribeResourceUsageResponse < TencentCloud::Common::AbstractModel
        # @param HostingServerCount: 托管服务器数量
        # @type HostingServerCount: Integer
        # @param RentServerCount: 租用服务器数量
        # @type RentServerCount: Integer
        # @param NetDeviceCount: 网络设备数量
        # @type NetDeviceCount: Integer
        # @param RackTotalCount: 机架总数
        # @type RackTotalCount: Integer
        # @param RackPowerOnCount: 开电机架总数
        # @type RackPowerOnCount: Integer
        # @param PositionUsedCount: 机位使用数量
        # @type PositionUsedCount: Integer
        # @param PositionTotalCount: 机位总数
        # @type PositionTotalCount: Integer
        # @param RackPowerOnRate: 机架开电率，保留一位小数
        # @type RackPowerOnRate: String
        # @param PositionUsedRate: 机位使用率，
        # @type PositionUsedRate: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HostingServerCount, :RentServerCount, :NetDeviceCount, :RackTotalCount, :RackPowerOnCount, :PositionUsedCount, :PositionTotalCount, :RackPowerOnRate, :PositionUsedRate, :RequestId

        def initialize(hostingservercount=nil, rentservercount=nil, netdevicecount=nil, racktotalcount=nil, rackpoweroncount=nil, positionusedcount=nil, positiontotalcount=nil, rackpoweronrate=nil, positionusedrate=nil, requestid=nil)
          @HostingServerCount = hostingservercount
          @RentServerCount = rentservercount
          @NetDeviceCount = netdevicecount
          @RackTotalCount = racktotalcount
          @RackPowerOnCount = rackpoweroncount
          @PositionUsedCount = positionusedcount
          @PositionTotalCount = positiontotalcount
          @RackPowerOnRate = rackpoweronrate
          @PositionUsedRate = positionusedrate
          @RequestId = requestid
        end

        def deserialize(params)
          @HostingServerCount = params['HostingServerCount']
          @RentServerCount = params['RentServerCount']
          @NetDeviceCount = params['NetDeviceCount']
          @RackTotalCount = params['RackTotalCount']
          @RackPowerOnCount = params['RackPowerOnCount']
          @PositionUsedCount = params['PositionUsedCount']
          @PositionTotalCount = params['PositionTotalCount']
          @RackPowerOnRate = params['RackPowerOnRate']
          @PositionUsedRate = params['PositionUsedRate']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkOrderList请求参数结构体
      class DescribeWorkOrderListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。支持：service-type、order-type、order-status、order-id
        # @type Filters: Array
        # @param SnList: 通过sn过滤工单，上限10个
        # @type SnList: Array
        # @param Offset: 起始
        # @type Offset: Integer
        # @param Limit: 长度
        # @type Limit: Integer

        attr_accessor :Filters, :SnList, :Offset, :Limit

        def initialize(filters=nil, snlist=nil, offset=nil, limit=nil)
          @Filters = filters
          @SnList = snlist
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SnList = params['SnList']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeWorkOrderList返回参数结构体
      class DescribeWorkOrderListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param WorkOrderSet: 查询结果
        # @type WorkOrderSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WorkOrderSet, :RequestId

        def initialize(totalcount=nil, workorderset=nil, requestid=nil)
          @TotalCount = totalcount
          @WorkOrderSet = workorderset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WorkOrderSet'].nil?
            @WorkOrderSet = []
            params['WorkOrderSet'].each do |i|
              workorderdata_tmp = WorkOrderData.new
              workorderdata_tmp.deserialize(i)
              @WorkOrderSet << workorderdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkOrderStatistics请求参数结构体
      class DescribeWorkOrderStatisticsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWorkOrderStatistics返回参数结构体
      class DescribeWorkOrderStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 总工单数量
        # @type TotalNum: Integer
        # @param ProcessingNum: 进行中的工单数量
        # @type ProcessingNum: Integer
        # @param ConfirmingNum: 待确认的工单数量
        # @type ConfirmingNum: Integer
        # @param FinishNum: 完成的工单数量
        # @type FinishNum: Integer
        # @param RejectNum: 拒绝的工单数量
        # @type RejectNum: Integer
        # @param ExceptionNum: 异常的工单数量
        # @type ExceptionNum: Integer
        # @param CancelNum: 客户取消的工单数量
        # @type CancelNum: Integer
        # @param CheckingNum: 围笼进出审核的工单数量
        # @type CheckingNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :ProcessingNum, :ConfirmingNum, :FinishNum, :RejectNum, :ExceptionNum, :CancelNum, :CheckingNum, :RequestId

        def initialize(totalnum=nil, processingnum=nil, confirmingnum=nil, finishnum=nil, rejectnum=nil, exceptionnum=nil, cancelnum=nil, checkingnum=nil, requestid=nil)
          @TotalNum = totalnum
          @ProcessingNum = processingnum
          @ConfirmingNum = confirmingnum
          @FinishNum = finishnum
          @RejectNum = rejectnum
          @ExceptionNum = exceptionnum
          @CancelNum = cancelnum
          @CheckingNum = checkingnum
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @ProcessingNum = params['ProcessingNum']
          @ConfirmingNum = params['ConfirmingNum']
          @FinishNum = params['FinishNum']
          @RejectNum = params['RejectNum']
          @ExceptionNum = params['ExceptionNum']
          @CancelNum = params['CancelNum']
          @CheckingNum = params['CheckingNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkOrderTypes请求参数结构体
      class DescribeWorkOrderTypesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWorkOrderTypes返回参数结构体
      class DescribeWorkOrderTypesResponse < TencentCloud::Common::AbstractModel
        # @param CollectedWorkOderTypeSet: 已收藏的工单类型列表
        # @type CollectedWorkOderTypeSet: Array
        # @param WorkOrderFamilySet: 全部工单类型列表
        # @type WorkOrderFamilySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CollectedWorkOderTypeSet, :WorkOrderFamilySet, :RequestId

        def initialize(collectedworkodertypeset=nil, workorderfamilyset=nil, requestid=nil)
          @CollectedWorkOderTypeSet = collectedworkodertypeset
          @WorkOrderFamilySet = workorderfamilyset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CollectedWorkOderTypeSet'].nil?
            @CollectedWorkOderTypeSet = []
            params['CollectedWorkOderTypeSet'].each do |i|
              workordertypedetail_tmp = WorkOrderTypeDetail.new
              workordertypedetail_tmp.deserialize(i)
              @CollectedWorkOderTypeSet << workordertypedetail_tmp
            end
          end
          unless params['WorkOrderFamilySet'].nil?
            @WorkOrderFamilySet = []
            params['WorkOrderFamilySet'].each do |i|
              workorderfamilydetail_tmp = WorkOrderFamilyDetail.new
              workorderfamilydetail_tmp.deserialize(i)
              @WorkOrderFamilySet << workorderfamilydetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 服务器信息
      class Device < TencentCloud::Common::AbstractModel
        # @param Sn: 设备 SN 码
        # @type Sn: String
        # @param ModelVersion: 设备型号版本
        # @type ModelVersion: String
        # @param AssetId: 设备固资号。只有设备类型为服务器时才返回
        # @type AssetId: String
        # @param SvrIsSpecial: 0 自有，1 租用。只有设备类型为服务器时才返回
        # @type SvrIsSpecial: Integer
        # @param Ip: IP。
        # @type Ip: String
        # @param IdcName: 设备所属的机房名称
        # @type IdcName: String
        # @param IdcId: 设备所属的机房ID
        # @type IdcId: Integer
        # @param IdcUnitId: 设备所属的机房管理单元ID
        # @type IdcUnitId: Integer
        # @param IdcUnitName: 设备所属的机房管理单元名称
        # @type IdcUnitName: String
        # @param RackId: 已上架设备所在的机架ID，未上架设备不返回
        # @type RackId: Integer
        # @param ServerTypeId: 服务器类型， 1 代表服务器， 7 代表 2U4S。只有设备类型为服务器时才返回
        # @type ServerTypeId: Integer
        # @param RackName: 已上架设备所在的机架名称，未上架设备不返回
        # @type RackName: String
        # @param PositionCode: 已上架设备所在的机位编号，未上架设备不返回。只有设备类型为服务器时才返回
        # @type PositionCode: Integer
        # @param Status: 设备状态：POWER_ON 已开电 POWER_OFF 未开电 RACK_OFF 未上架 MOVING 搬迁中
        # @type Status: String
        # @param PowerOnTime: 设备最近一次的开电时间，YYYY-MM-DD 格式。
        # @type PowerOnTime: String
        # @param OnshelfDate: 设备最近一次的上架时间，YYYY-MM-DD 格式。
        # @type OnshelfDate: String
        # @param DeviceType: 设备类型 server 服务器，netDevice 网络设备
        # @type DeviceType: String
        # @param Manufacturer: 厂商
        # @type Manufacturer: String
        # @param TypeName: 其他设备-设备子类型
        # @type TypeName: String
        # @param HardwareMemo: 硬件备注
        # @type HardwareMemo: String

        attr_accessor :Sn, :ModelVersion, :AssetId, :SvrIsSpecial, :Ip, :IdcName, :IdcId, :IdcUnitId, :IdcUnitName, :RackId, :ServerTypeId, :RackName, :PositionCode, :Status, :PowerOnTime, :OnshelfDate, :DeviceType, :Manufacturer, :TypeName, :HardwareMemo

        def initialize(sn=nil, modelversion=nil, assetid=nil, svrisspecial=nil, ip=nil, idcname=nil, idcid=nil, idcunitid=nil, idcunitname=nil, rackid=nil, servertypeid=nil, rackname=nil, positioncode=nil, status=nil, powerontime=nil, onshelfdate=nil, devicetype=nil, manufacturer=nil, typename=nil, hardwarememo=nil)
          @Sn = sn
          @ModelVersion = modelversion
          @AssetId = assetid
          @SvrIsSpecial = svrisspecial
          @Ip = ip
          @IdcName = idcname
          @IdcId = idcid
          @IdcUnitId = idcunitid
          @IdcUnitName = idcunitname
          @RackId = rackid
          @ServerTypeId = servertypeid
          @RackName = rackname
          @PositionCode = positioncode
          @Status = status
          @PowerOnTime = powerontime
          @OnshelfDate = onshelfdate
          @DeviceType = devicetype
          @Manufacturer = manufacturer
          @TypeName = typename
          @HardwareMemo = hardwarememo
        end

        def deserialize(params)
          @Sn = params['Sn']
          @ModelVersion = params['ModelVersion']
          @AssetId = params['AssetId']
          @SvrIsSpecial = params['SvrIsSpecial']
          @Ip = params['Ip']
          @IdcName = params['IdcName']
          @IdcId = params['IdcId']
          @IdcUnitId = params['IdcUnitId']
          @IdcUnitName = params['IdcUnitName']
          @RackId = params['RackId']
          @ServerTypeId = params['ServerTypeId']
          @RackName = params['RackName']
          @PositionCode = params['PositionCode']
          @Status = params['Status']
          @PowerOnTime = params['PowerOnTime']
          @OnshelfDate = params['OnshelfDate']
          @DeviceType = params['DeviceType']
          @Manufacturer = params['Manufacturer']
          @TypeName = params['TypeName']
          @HardwareMemo = params['HardwareMemo']
        end
      end

      # 工单的设备信息
      class DeviceHistory < TencentCloud::Common::AbstractModel
        # @param Sn: 设备sn
        # @type Sn: String
        # @param DeviceType: 设备类型
        # @type DeviceType: String
        # @param RackName: 机架名
        # @type RackName: String
        # @param PositionCode: 机位号
        # @type PositionCode: Integer
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param IdcName: 机房名称
        # @type IdcName: String
        # @param IdcUnitId: 机房管理单元id
        # @type IdcUnitId: Integer
        # @param IdcUnitName: 机房管理单元名称
        # @type IdcUnitName: String
        # @param AssetId: 固资号
        # @type AssetId: String
        # @param ModelVersion: 设备型号-版本，只有收货单详情返回
        # @type ModelVersion: String
        # @param DeviceHeight: 设备高度，只有收货单详情返回
        # @type DeviceHeight: String
        # @param Need10GbSlot: 需要万兆机位，只有收货单详情返回
        # @type Need10GbSlot: String
        # @param NeedDCPower: 需要直流电，只有收货单详情返回
        # @type NeedDCPower: String
        # @param NeedExtranet: 需要外网，只有收货单详情返回
        # @type NeedExtranet: String
        # @param NeedVirtualization: 需要虚拟化，只有收货单详情返回
        # @type NeedVirtualization: String
        # @param Manufacturer: 厂商,只有收货单详情返回
        # @type Manufacturer: String
        # @param HardwareMemo: 硬件备注
        # @type HardwareMemo: String
        # @param DstRackName: 目标机架
        # @type DstRackName: String
        # @param DstPositionCode: 目标机位
        # @type DstPositionCode: String
        # @param DstIp: 目标ip
        # @type DstIp: String
        # @param TypeName: 设备子类型, 其他设备/线材用
        # @type TypeName: String
        # @param Quantity: 线材-数量，只有收货单详情返回
        # @type Quantity: Integer
        # @param Unit: 计量单位，，只有收货单详情返回，'箱', '卷', '套'
        # @type Unit: String
        # @param ReceiptNumber: 线材-收货凭证号，只有收货单详情返回
        # @type ReceiptNumber: String

        attr_accessor :Sn, :DeviceType, :RackName, :PositionCode, :IdcId, :IdcName, :IdcUnitId, :IdcUnitName, :AssetId, :ModelVersion, :DeviceHeight, :Need10GbSlot, :NeedDCPower, :NeedExtranet, :NeedVirtualization, :Manufacturer, :HardwareMemo, :DstRackName, :DstPositionCode, :DstIp, :TypeName, :Quantity, :Unit, :ReceiptNumber

        def initialize(sn=nil, devicetype=nil, rackname=nil, positioncode=nil, idcid=nil, idcname=nil, idcunitid=nil, idcunitname=nil, assetid=nil, modelversion=nil, deviceheight=nil, need10gbslot=nil, needdcpower=nil, needextranet=nil, needvirtualization=nil, manufacturer=nil, hardwarememo=nil, dstrackname=nil, dstpositioncode=nil, dstip=nil, typename=nil, quantity=nil, unit=nil, receiptnumber=nil)
          @Sn = sn
          @DeviceType = devicetype
          @RackName = rackname
          @PositionCode = positioncode
          @IdcId = idcid
          @IdcName = idcname
          @IdcUnitId = idcunitid
          @IdcUnitName = idcunitname
          @AssetId = assetid
          @ModelVersion = modelversion
          @DeviceHeight = deviceheight
          @Need10GbSlot = need10gbslot
          @NeedDCPower = needdcpower
          @NeedExtranet = needextranet
          @NeedVirtualization = needvirtualization
          @Manufacturer = manufacturer
          @HardwareMemo = hardwarememo
          @DstRackName = dstrackname
          @DstPositionCode = dstpositioncode
          @DstIp = dstip
          @TypeName = typename
          @Quantity = quantity
          @Unit = unit
          @ReceiptNumber = receiptnumber
        end

        def deserialize(params)
          @Sn = params['Sn']
          @DeviceType = params['DeviceType']
          @RackName = params['RackName']
          @PositionCode = params['PositionCode']
          @IdcId = params['IdcId']
          @IdcName = params['IdcName']
          @IdcUnitId = params['IdcUnitId']
          @IdcUnitName = params['IdcUnitName']
          @AssetId = params['AssetId']
          @ModelVersion = params['ModelVersion']
          @DeviceHeight = params['DeviceHeight']
          @Need10GbSlot = params['Need10GbSlot']
          @NeedDCPower = params['NeedDCPower']
          @NeedExtranet = params['NeedExtranet']
          @NeedVirtualization = params['NeedVirtualization']
          @Manufacturer = params['Manufacturer']
          @HardwareMemo = params['HardwareMemo']
          @DstRackName = params['DstRackName']
          @DstPositionCode = params['DstPositionCode']
          @DstIp = params['DstIp']
          @TypeName = params['TypeName']
          @Quantity = params['Quantity']
          @Unit = params['Unit']
          @ReceiptNumber = params['ReceiptNumber']
        end
      end

      # 设备类工单的基础历史入参信息
      class DeviceOrderBaseInfo < TencentCloud::Common::AbstractModel
        # @param IdcId: 机房id
        # @type IdcId: Integer
        # @param IdcName: 机房名称
        # @type IdcName: String
        # @param DeviceType: 设备类型
        # @type DeviceType: String
        # @param Remark: 备注
        # @type Remark: String
        # @param ReceivingOperation: 1.收货-仅核对外包装完整和数量，不开箱 2.验收-开箱核对型号SN一致
        # @type ReceivingOperation: String
        # @param EntryTime: 设备收货-进入时间
        # @type EntryTime: String
        # @param IsExpressDelivery: 设备收货-是否快递寄件
        # @type IsExpressDelivery: Boolean
        # @param ExpressInfo: 设备收货-快递寄件信息
        # @type ExpressInfo: :class:`Tencentcloud::Chc.v20230418.models.ExpressDelivery`
        # @param StuffOption: 上/下架人员 1.自行解决 2.由腾讯IDC负责
        # @type StuffOption: String
        # @param SelfOperationInfo: 上/下架自行解决信息
        # @type SelfOperationInfo: :class:`Tencentcloud::Chc.v20230418.models.SelfOperation`
        # @param WithPowerOn: 上架后开电
        # @type WithPowerOn: Boolean
        # @param IsPowerOffConfirm: 关电确认 1.授权时关电 2.关电前需要确认
        # @type IsPowerOffConfirm: String
        # @param PowerOffConfirmInfo: 关电前需要确认信息
        # @type PowerOffConfirmInfo: :class:`Tencentcloud::Chc.v20230418.models.PowerOffConfirm`
        # @param HandoverMethod: 退出交接方式 1.物流上门收货 2.客户上门自提
        # @type HandoverMethod: String
        # @param CustomerReceipt: 客户上门自提信息
        # @type CustomerReceipt: :class:`Tencentcloud::Chc.v20230418.models.CustomerReceipt`
        # @param LogisticsReceipt: 物流上门收货信息
        # @type LogisticsReceipt: :class:`Tencentcloud::Chc.v20230418.models.LogisticsReceipt`

        attr_accessor :IdcId, :IdcName, :DeviceType, :Remark, :ReceivingOperation, :EntryTime, :IsExpressDelivery, :ExpressInfo, :StuffOption, :SelfOperationInfo, :WithPowerOn, :IsPowerOffConfirm, :PowerOffConfirmInfo, :HandoverMethod, :CustomerReceipt, :LogisticsReceipt

        def initialize(idcid=nil, idcname=nil, devicetype=nil, remark=nil, receivingoperation=nil, entrytime=nil, isexpressdelivery=nil, expressinfo=nil, stuffoption=nil, selfoperationinfo=nil, withpoweron=nil, ispoweroffconfirm=nil, poweroffconfirminfo=nil, handovermethod=nil, customerreceipt=nil, logisticsreceipt=nil)
          @IdcId = idcid
          @IdcName = idcname
          @DeviceType = devicetype
          @Remark = remark
          @ReceivingOperation = receivingoperation
          @EntryTime = entrytime
          @IsExpressDelivery = isexpressdelivery
          @ExpressInfo = expressinfo
          @StuffOption = stuffoption
          @SelfOperationInfo = selfoperationinfo
          @WithPowerOn = withpoweron
          @IsPowerOffConfirm = ispoweroffconfirm
          @PowerOffConfirmInfo = poweroffconfirminfo
          @HandoverMethod = handovermethod
          @CustomerReceipt = customerreceipt
          @LogisticsReceipt = logisticsreceipt
        end

        def deserialize(params)
          @IdcId = params['IdcId']
          @IdcName = params['IdcName']
          @DeviceType = params['DeviceType']
          @Remark = params['Remark']
          @ReceivingOperation = params['ReceivingOperation']
          @EntryTime = params['EntryTime']
          @IsExpressDelivery = params['IsExpressDelivery']
          unless params['ExpressInfo'].nil?
            @ExpressInfo = ExpressDelivery.new
            @ExpressInfo.deserialize(params['ExpressInfo'])
          end
          @StuffOption = params['StuffOption']
          unless params['SelfOperationInfo'].nil?
            @SelfOperationInfo = SelfOperation.new
            @SelfOperationInfo.deserialize(params['SelfOperationInfo'])
          end
          @WithPowerOn = params['WithPowerOn']
          @IsPowerOffConfirm = params['IsPowerOffConfirm']
          unless params['PowerOffConfirmInfo'].nil?
            @PowerOffConfirmInfo = PowerOffConfirm.new
            @PowerOffConfirmInfo.deserialize(params['PowerOffConfirmInfo'])
          end
          @HandoverMethod = params['HandoverMethod']
          unless params['CustomerReceipt'].nil?
            @CustomerReceipt = CustomerReceipt.new
            @CustomerReceipt.deserialize(params['CustomerReceipt'])
          end
          unless params['LogisticsReceipt'].nil?
            @LogisticsReceipt = LogisticsReceipt.new
            @LogisticsReceipt.deserialize(params['LogisticsReceipt'])
          end
        end
      end

      # 设备及位置信息
      class DevicePosition < TencentCloud::Common::AbstractModel
        # @param Sn: 设备SN
        # @type Sn: String
        # @param RackName: 机架名称
        # @type RackName: String
        # @param IdcUnitId: 机房管理单元ID
        # @type IdcUnitId: Integer
        # @param IdcName: 机房名称
        # @type IdcName: String
        # @param IdcUnitName: 机房管理单元名称
        # @type IdcUnitName: String
        # @param AssetId: 设备固资。只有服务器设备才需要这个值
        # @type AssetId: String
        # @param PositionCode: 机位编号，只有服务器设备才需要传这个值
        # @type PositionCode: Integer
        # @param DeviceType: server 代表服务器，netDevice 代表网络设备
        # @type DeviceType: String

        attr_accessor :Sn, :RackName, :IdcUnitId, :IdcName, :IdcUnitName, :AssetId, :PositionCode, :DeviceType

        def initialize(sn=nil, rackname=nil, idcunitid=nil, idcname=nil, idcunitname=nil, assetid=nil, positioncode=nil, devicetype=nil)
          @Sn = sn
          @RackName = rackname
          @IdcUnitId = idcunitid
          @IdcName = idcname
          @IdcUnitName = idcunitname
          @AssetId = assetid
          @PositionCode = positioncode
          @DeviceType = devicetype
        end

        def deserialize(params)
          @Sn = params['Sn']
          @RackName = params['RackName']
          @IdcUnitId = params['IdcUnitId']
          @IdcName = params['IdcName']
          @IdcUnitName = params['IdcUnitName']
          @AssetId = params['AssetId']
          @PositionCode = params['PositionCode']
          @DeviceType = params['DeviceType']
        end
      end

      # 设备上架信息
      class DeviceRackOn < TencentCloud::Common::AbstractModel
        # @param DeviceSn: 设备sn
        # @type DeviceSn: String
        # @param DstRackName: 目标机架
        # @type DstRackName: String
        # @param DstPositionCode: 目标机位,服务器必传,网络设备不用传
        # @type DstPositionCode: String
        # @param DstIp: 设备ip
        # @type DstIp: String

        attr_accessor :DeviceSn, :DstRackName, :DstPositionCode, :DstIp

        def initialize(devicesn=nil, dstrackname=nil, dstpositioncode=nil, dstip=nil)
          @DeviceSn = devicesn
          @DstRackName = dstrackname
          @DstPositionCode = dstpositioncode
          @DstIp = dstip
        end

        def deserialize(params)
          @DeviceSn = params['DeviceSn']
          @DstRackName = params['DstRackName']
          @DstPositionCode = params['DstPositionCode']
          @DstIp = params['DstIp']
        end
      end

      # 机架用量分布
      class Distribution < TencentCloud::Common::AbstractModel
        # @param RackNumber: 机架编号
        # @type RackNumber: String
        # @param RackUsageSet: 机架的用量分布
        # @type RackUsageSet: Array

        attr_accessor :RackNumber, :RackUsageSet

        def initialize(racknumber=nil, rackusageset=nil)
          @RackNumber = racknumber
          @RackUsageSet = rackusageset
        end

        def deserialize(params)
          @RackNumber = params['RackNumber']
          unless params['RackUsageSet'].nil?
            @RackUsageSet = []
            params['RackUsageSet'].each do |i|
              rackusage_tmp = RackUsage.new
              rackusage_tmp.deserialize(i)
              @RackUsageSet << rackusage_tmp
            end
          end
        end
      end

      # 快递寄件信息,快递寄件必填
      class ExpressDelivery < TencentCloud::Common::AbstractModel
        # @param LogisticsCompany: 物流公司
        # @type LogisticsCompany: String
        # @param ExpressNumber: 快递单号
        # @type ExpressNumber: String

        attr_accessor :LogisticsCompany, :ExpressNumber

        def initialize(logisticscompany=nil, expressnumber=nil)
          @LogisticsCompany = logisticscompany
          @ExpressNumber = expressnumber
        end

        def deserialize(params)
          @LogisticsCompany = params['LogisticsCompany']
          @ExpressNumber = params['ExpressNumber']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 机房信息
      class Idc < TencentCloud::Common::AbstractModel
        # @param IdcName: 机房名称
        # @type IdcName: String
        # @param IdcId: 机房ID
        # @type IdcId: Integer
        # @param IdcUnitSet: 机房管理单元详情列表
        # @type IdcUnitSet: Array

        attr_accessor :IdcName, :IdcId, :IdcUnitSet

        def initialize(idcname=nil, idcid=nil, idcunitset=nil)
          @IdcName = idcname
          @IdcId = idcid
          @IdcUnitSet = idcunitset
        end

        def deserialize(params)
          @IdcName = params['IdcName']
          @IdcId = params['IdcId']
          unless params['IdcUnitSet'].nil?
            @IdcUnitSet = []
            params['IdcUnitSet'].each do |i|
              idcunit_tmp = IdcUnit.new
              idcunit_tmp.deserialize(i)
              @IdcUnitSet << idcunit_tmp
            end
          end
        end
      end

      # 机房管理单元
      class IdcUnit < TencentCloud::Common::AbstractModel
        # @param IdcUnitId: 机房管理单元 ID
        # @type IdcUnitId: Integer
        # @param IdcUnitName: 机房管理单元名称
        # @type IdcUnitName: String
        # @param CageSet: 围笼列表
        # @type CageSet: Array

        attr_accessor :IdcUnitId, :IdcUnitName, :CageSet

        def initialize(idcunitid=nil, idcunitname=nil, cageset=nil)
          @IdcUnitId = idcunitid
          @IdcUnitName = idcunitname
          @CageSet = cageset
        end

        def deserialize(params)
          @IdcUnitId = params['IdcUnitId']
          @IdcUnitName = params['IdcUnitName']
          unless params['CageSet'].nil?
            @CageSet = []
            params['CageSet'].each do |i|
              cage_tmp = Cage.new
              cage_tmp.deserialize(i)
              @CageSet << cage_tmp
            end
          end
        end
      end

      # 机房管理单元
      class IdcUnitInfo < TencentCloud::Common::AbstractModel
        # @param Address: 机房管理单元地址
        # @type Address: String
        # @param Operator: 机房经理
        # @type Operator: String
        # @param TelNumber: 联系电话
        # @type TelNumber: String
        # @param AssetManager: 资产管理员
        # @type AssetManager: String
        # @param AssetManagerTelNumber: 资产管理员电话
        # @type AssetManagerTelNumber: String

        attr_accessor :Address, :Operator, :TelNumber, :AssetManager, :AssetManagerTelNumber

        def initialize(address=nil, operator=nil, telnumber=nil, assetmanager=nil, assetmanagertelnumber=nil)
          @Address = address
          @Operator = operator
          @TelNumber = telnumber
          @AssetManager = assetmanager
          @AssetManagerTelNumber = assetmanagertelnumber
        end

        def deserialize(params)
          @Address = params['Address']
          @Operator = params['Operator']
          @TelNumber = params['TelNumber']
          @AssetManager = params['AssetManager']
          @AssetManagerTelNumber = params['AssetManagerTelNumber']
        end
      end

      # 物流上门收货信息
      class LogisticsReceipt < TencentCloud::Common::AbstractModel
        # @param LogisticsArrivalTime: 物流预计上门时间
        # @type LogisticsArrivalTime: String
        # @param LogisticsCompany: 物流公司名称
        # @type LogisticsCompany: String
        # @param LogisticsStuff: 物流联系人
        # @type LogisticsStuff: String
        # @param LogisticsStuffContact: 物流电话
        # @type LogisticsStuffContact: String
        # @param ReceiverContact: 收货人电话
        # @type ReceiverContact: String
        # @param ReceiverName: 收货人姓名
        # @type ReceiverName: String
        # @param ShippingAddress: 收货地址
        # @type ShippingAddress: String

        attr_accessor :LogisticsArrivalTime, :LogisticsCompany, :LogisticsStuff, :LogisticsStuffContact, :ReceiverContact, :ReceiverName, :ShippingAddress

        def initialize(logisticsarrivaltime=nil, logisticscompany=nil, logisticsstuff=nil, logisticsstuffcontact=nil, receivercontact=nil, receivername=nil, shippingaddress=nil)
          @LogisticsArrivalTime = logisticsarrivaltime
          @LogisticsCompany = logisticscompany
          @LogisticsStuff = logisticsstuff
          @LogisticsStuffContact = logisticsstuffcontact
          @ReceiverContact = receivercontact
          @ReceiverName = receivername
          @ShippingAddress = shippingaddress
        end

        def deserialize(params)
          @LogisticsArrivalTime = params['LogisticsArrivalTime']
          @LogisticsCompany = params['LogisticsCompany']
          @LogisticsStuff = params['LogisticsStuff']
          @LogisticsStuffContact = params['LogisticsStuffContact']
          @ReceiverContact = params['ReceiverContact']
          @ReceiverName = params['ReceiverName']
          @ShippingAddress = params['ShippingAddress']
        end
      end

      # 设备评估工单基本信息
      class ModelEvaluationBaseInfo < TencentCloud::Common::AbstractModel
        # @param CustomerName: 客户名称
        # @type CustomerName: String
        # @param DeviceType: server 服务器  netDevice 网络设备
        # @type DeviceType: String
        # @param CampusName: 园区名称
        # @type CampusName: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :CustomerName, :DeviceType, :CampusName, :Remark

        def initialize(customername=nil, devicetype=nil, campusname=nil, remark=nil)
          @CustomerName = customername
          @DeviceType = devicetype
          @CampusName = campusname
          @Remark = remark
        end

        def deserialize(params)
          @CustomerName = params['CustomerName']
          @DeviceType = params['DeviceType']
          @CampusName = params['CampusName']
          @Remark = params['Remark']
        end
      end

      # 型号以及版本号
      class ModelVersion < TencentCloud::Common::AbstractModel
        # @param DevModel: 型号名称
        # @type DevModel: String
        # @param Version: 版本
        # @type Version: String

        attr_accessor :DevModel, :Version

        def initialize(devmodel=nil, version=nil)
          @DevModel = devmodel
          @Version = version
        end

        def deserialize(params)
          @DevModel = params['DevModel']
          @Version = params['Version']
        end
      end

      # 型号和对应的版本数量
      class ModelVersionCount < TencentCloud::Common::AbstractModel
        # @param DevModel: 型号名称
        # @type DevModel: String
        # @param VersionCount: 版本数量
        # @type VersionCount: Integer

        attr_accessor :DevModel, :VersionCount

        def initialize(devmodel=nil, versioncount=nil)
          @DevModel = devmodel
          @VersionCount = versioncount
        end

        def deserialize(params)
          @DevModel = params['DevModel']
          @VersionCount = params['VersionCount']
        end
      end

      # 带有园区评估记录的型号详情
      class ModelVersionDetail < TencentCloud::Common::AbstractModel
        # @param Version: 版本号
        # @type Version: String
        # @param CheckResult: 0 代表在当前园区没评估过，1 代表完全满足IDC准入标准 2 代表存在托管风险 3 代表不满足IDC准入标准
        # @type CheckResult: Integer
        # @param OptionSet: 型号各个配置项的详情
        # @type OptionSet: Array
        # @param ModelVersion: 设备型号名称及版本
        # @type ModelVersion: String

        attr_accessor :Version, :CheckResult, :OptionSet, :ModelVersion

        def initialize(version=nil, checkresult=nil, optionset=nil, modelversion=nil)
          @Version = version
          @CheckResult = checkresult
          @OptionSet = optionset
          @ModelVersion = modelversion
        end

        def deserialize(params)
          @Version = params['Version']
          @CheckResult = params['CheckResult']
          unless params['OptionSet'].nil?
            @OptionSet = []
            params['OptionSet'].each do |i|
              templateoption_tmp = TemplateOption.new
              templateoption_tmp.deserialize(i)
              @OptionSet << templateoption_tmp
            end
          end
          @ModelVersion = params['ModelVersion']
        end
      end

      # ModifyWorkOrderTypeCollectFlag请求参数结构体
      class ModifyWorkOrderTypeCollectFlagRequest < TencentCloud::Common::AbstractModel
        # @param WorkOrderType: 工单类型的唯一英文标识
        # @type WorkOrderType: String

        attr_accessor :WorkOrderType

        def initialize(workordertype=nil)
          @WorkOrderType = workordertype
        end

        def deserialize(params)
          @WorkOrderType = params['WorkOrderType']
        end
      end

      # ModifyWorkOrderTypeCollectFlag返回参数结构体
      class ModifyWorkOrderTypeCollectFlagResponse < TencentCloud::Common::AbstractModel
        # @param CurrentCollectFlag: 工单类型当前的收藏状态
        # @type CurrentCollectFlag: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CurrentCollectFlag, :RequestId

        def initialize(currentcollectflag=nil, requestid=nil)
          @CurrentCollectFlag = currentcollectflag
          @RequestId = requestid
        end

        def deserialize(params)
          @CurrentCollectFlag = params['CurrentCollectFlag']
          @RequestId = params['RequestId']
        end
      end

      # 网络设备型号详情
      class NetDeviceModel < TencentCloud::Common::AbstractModel
        # @param Version: 版本号
        # @type Version: String
        # @param ModelVersion: 型号和版本的组合名称
        # @type ModelVersion: String
        # @param DevModel: 型号名
        # @type DevModel: String
        # @param DevWidth: 宽度
        # @type DevWidth: String
        # @param DevDepth: 深度
        # @type DevDepth: String
        # @param DevWeight: 重量
        # @type DevWeight: String
        # @param MountEar: 是否携带挂耳
        # @type MountEar: String
        # @param AccordCCC: 是否符合CCC认证
        # @type AccordCCC: String
        # @param PassNetwork: 是否通过入网许可认证
        # @type PassNetwork: String
        # @param PowerportType: 电源接口型号
        # @type PowerportType: String
        # @param PowerModule: 电源模块
        # @type PowerModule: String
        # @param PowermoduleNum: 电源模块数量
        # @type PowermoduleNum: String
        # @param PowermodulePosition: 电源模块位置
        # @type PowermodulePosition: String
        # @param HighVoltageAdapt: 高压直流自适应
        # @type HighVoltageAdapt: String
        # @param PowerEnergy: 实际工作功耗(W)
        # @type PowerEnergy: String
        # @param InwindPosition: 进风口位置
        # @type InwindPosition: String
        # @param OutwindPosition: 出风口位置
        # @type OutwindPosition: String
        # @param BusinessPortPosition: 业务端口位置
        # @type BusinessPortPosition: String
        # @param LineManager: 带有理线器
        # @type LineManager: String
        # @param CheckResult: 0 代表在当前园区没评估过，1 代表完全满足IDC准入标准  2 代表存在托管风险  3 代表不满足IDC准入标准
        # @type CheckResult: Integer
        # @param DevHeight: 设备高度
        # @type DevHeight: String

        attr_accessor :Version, :ModelVersion, :DevModel, :DevWidth, :DevDepth, :DevWeight, :MountEar, :AccordCCC, :PassNetwork, :PowerportType, :PowerModule, :PowermoduleNum, :PowermodulePosition, :HighVoltageAdapt, :PowerEnergy, :InwindPosition, :OutwindPosition, :BusinessPortPosition, :LineManager, :CheckResult, :DevHeight

        def initialize(version=nil, modelversion=nil, devmodel=nil, devwidth=nil, devdepth=nil, devweight=nil, mountear=nil, accordccc=nil, passnetwork=nil, powerporttype=nil, powermodule=nil, powermodulenum=nil, powermoduleposition=nil, highvoltageadapt=nil, powerenergy=nil, inwindposition=nil, outwindposition=nil, businessportposition=nil, linemanager=nil, checkresult=nil, devheight=nil)
          @Version = version
          @ModelVersion = modelversion
          @DevModel = devmodel
          @DevWidth = devwidth
          @DevDepth = devdepth
          @DevWeight = devweight
          @MountEar = mountear
          @AccordCCC = accordccc
          @PassNetwork = passnetwork
          @PowerportType = powerporttype
          @PowerModule = powermodule
          @PowermoduleNum = powermodulenum
          @PowermodulePosition = powermoduleposition
          @HighVoltageAdapt = highvoltageadapt
          @PowerEnergy = powerenergy
          @InwindPosition = inwindposition
          @OutwindPosition = outwindposition
          @BusinessPortPosition = businessportposition
          @LineManager = linemanager
          @CheckResult = checkresult
          @DevHeight = devheight
        end

        def deserialize(params)
          @Version = params['Version']
          @ModelVersion = params['ModelVersion']
          @DevModel = params['DevModel']
          @DevWidth = params['DevWidth']
          @DevDepth = params['DevDepth']
          @DevWeight = params['DevWeight']
          @MountEar = params['MountEar']
          @AccordCCC = params['AccordCCC']
          @PassNetwork = params['PassNetwork']
          @PowerportType = params['PowerportType']
          @PowerModule = params['PowerModule']
          @PowermoduleNum = params['PowermoduleNum']
          @PowermodulePosition = params['PowermodulePosition']
          @HighVoltageAdapt = params['HighVoltageAdapt']
          @PowerEnergy = params['PowerEnergy']
          @InwindPosition = params['InwindPosition']
          @OutwindPosition = params['OutwindPosition']
          @BusinessPortPosition = params['BusinessPortPosition']
          @LineManager = params['LineManager']
          @CheckResult = params['CheckResult']
          @DevHeight = params['DevHeight']
        end
      end

      # 网络设备收货详情
      class NetReceivingInfo < TencentCloud::Common::AbstractModel
        # @param DeviceSn: 设备sn
        # @type DeviceSn: String
        # @param ModelVersion: 设备型号-版本
        # @type ModelVersion: String
        # @param HardwareMemo: 硬件备注
        # @type HardwareMemo: String
        # @param Manufacturer: 厂商
        # @type Manufacturer: String

        attr_accessor :DeviceSn, :ModelVersion, :HardwareMemo, :Manufacturer

        def initialize(devicesn=nil, modelversion=nil, hardwarememo=nil, manufacturer=nil)
          @DeviceSn = devicesn
          @ModelVersion = modelversion
          @HardwareMemo = hardwarememo
          @Manufacturer = manufacturer
        end

        def deserialize(params)
          @DeviceSn = params['DeviceSn']
          @ModelVersion = params['ModelVersion']
          @HardwareMemo = params['HardwareMemo']
          @Manufacturer = params['Manufacturer']
        end
      end

      # 型号选项下拉框中的选项值
      class OptionValueItem < TencentCloud::Common::AbstractModel
        # @param OptionValue: 选项的值
        # @type OptionValue: String
        # @param Selected: 是否默认选中
        # @type Selected: Boolean

        attr_accessor :OptionValue, :Selected

        def initialize(optionvalue=nil, selected=nil)
          @OptionValue = optionvalue
          @Selected = selected
        end

        def deserialize(params)
          @OptionValue = params['OptionValue']
          @Selected = params['Selected']
        end
      end

      # 工单详情中的工单流程步骤
      class OrderStep < TencentCloud::Common::AbstractModel
        # @param StepName: 步骤名
        # @type StepName: String
        # @param OwnerName: 处理人
        # @type OwnerName: String
        # @param FinishTime: 完成时间
        # @type FinishTime: String
        # @param StepStatus: 此步骤状态
        # @type StepStatus: String

        attr_accessor :StepName, :OwnerName, :FinishTime, :StepStatus

        def initialize(stepname=nil, ownername=nil, finishtime=nil, stepstatus=nil)
          @StepName = stepname
          @OwnerName = ownername
          @FinishTime = finishtime
          @StepStatus = stepstatus
        end

        def deserialize(params)
          @StepName = params['StepName']
          @OwnerName = params['OwnerName']
          @FinishTime = params['FinishTime']
          @StepStatus = params['StepStatus']
        end
      end

      # 其他设备收货信息
      class OtherDevReceivingInfo < TencentCloud::Common::AbstractModel
        # @param DeviceSn: 设备sn
        # @type DeviceSn: String
        # @param TypeName: 'USB', '移动硬盘', '网络设备板卡', '网络设备模块', '服务器硬盘', '服务器内存', '其他'
        # @type TypeName: String
        # @param Manufacturer: 厂商
        # @type Manufacturer: String
        # @param HardwareMemo: 硬件备注
        # @type HardwareMemo: String

        attr_accessor :DeviceSn, :TypeName, :Manufacturer, :HardwareMemo

        def initialize(devicesn=nil, typename=nil, manufacturer=nil, hardwarememo=nil)
          @DeviceSn = devicesn
          @TypeName = typename
          @Manufacturer = manufacturer
          @HardwareMemo = hardwarememo
        end

        def deserialize(params)
          @DeviceSn = params['DeviceSn']
          @TypeName = params['TypeName']
          @Manufacturer = params['Manufacturer']
          @HardwareMemo = params['HardwareMemo']
        end
      end

      # 到访人员
      class Personnel < TencentCloud::Common::AbstractModel
        # @param IDCardNumber: 证件号码
        # @type IDCardNumber: String
        # @param IDCardType: 证件类型。对应关系如下：IDENTITY_CARD: 身份证,
        # HONG_KONG_AND_MACAO_PASS: 港澳通行证',
        # PASSPORT: 护照,
        # DRIVING_LICENSE: 驾照,
        # OTHER: 其他
        # @type IDCardType: String
        # @param Company: 公司名称
        # @type Company: String
        # @param LanguageType: 语言。对应关系：ENGLISH: 英文, CHINESE: 中文
        # @type LanguageType: String
        # @param Name: 姓名
        # @type Name: String
        # @param TelNumber: 电话
        # @type TelNumber: String
        # @param Position: 职位
        # @type Position: String
        # @param Wechat: 微信
        # @type Wechat: String
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :IDCardNumber, :IDCardType, :Company, :LanguageType, :Name, :TelNumber, :Position, :Wechat, :Email

        def initialize(idcardnumber=nil, idcardtype=nil, company=nil, languagetype=nil, name=nil, telnumber=nil, position=nil, wechat=nil, email=nil)
          @IDCardNumber = idcardnumber
          @IDCardType = idcardtype
          @Company = company
          @LanguageType = languagetype
          @Name = name
          @TelNumber = telnumber
          @Position = position
          @Wechat = wechat
          @Email = email
        end

        def deserialize(params)
          @IDCardNumber = params['IDCardNumber']
          @IDCardType = params['IDCardType']
          @Company = params['Company']
          @LanguageType = params['LanguageType']
          @Name = params['Name']
          @TelNumber = params['TelNumber']
          @Position = params['Position']
          @Wechat = params['Wechat']
          @Email = params['Email']
        end
      end

      # 人员到访工单基本信息
      class PersonnelVisitBaseInfo < TencentCloud::Common::AbstractModel
        # @param IdcName: 机房名称
        # @type IdcName: String
        # @param VisitReason: 到访原因。到访原因，映射关系：DEVICE_MAINTENANCE 设备维护 DEVICE_MOVE 设备收货上下架 CHECK 盘点 OTHER 其他
        # @type VisitReason: Array
        # @param VisitRemark: 到访原因
        # @type VisitRemark: String
        # @param EnterStartTime: 到访结束时间
        # @type EnterStartTime: String
        # @param EnterEndTime: 到访开始时间
        # @type EnterEndTime: String
        # @param IdcUnitNameList: 机房管理单元列表
        # @type IdcUnitNameList: Array

        attr_accessor :IdcName, :VisitReason, :VisitRemark, :EnterStartTime, :EnterEndTime, :IdcUnitNameList

        def initialize(idcname=nil, visitreason=nil, visitremark=nil, enterstarttime=nil, enterendtime=nil, idcunitnamelist=nil)
          @IdcName = idcname
          @VisitReason = visitreason
          @VisitRemark = visitremark
          @EnterStartTime = enterstarttime
          @EnterEndTime = enterendtime
          @IdcUnitNameList = idcunitnamelist
        end

        def deserialize(params)
          @IdcName = params['IdcName']
          @VisitReason = params['VisitReason']
          @VisitRemark = params['VisitRemark']
          @EnterStartTime = params['EnterStartTime']
          @EnterEndTime = params['EnterEndTime']
          @IdcUnitNameList = params['IdcUnitNameList']
        end
      end

      # 机位信息
      class Position < TencentCloud::Common::AbstractModel
        # @param PositionId: 机位ID
        # @type PositionId: Integer
        # @param Height: 机位高度
        # @type Height: Integer
        # @param PositionCode: 机位编号
        # @type PositionCode: String
        # @param PositionStatus: 机位状态,0 空闲,1 已用,2 不可用,3 预占用,4 预留
        # @type PositionStatus: Integer
        # @param PlanDeviceType: 设备规划类型ID
        # @type PlanDeviceType: Integer
        # @param IdcUnitId: 机位所属的机房管理单元ID
        # @type IdcUnitId: Integer
        # @param RackId: 机位所属的机架ID
        # @type RackId: Integer
        # @param RackName: 机位所属的机架名称
        # @type RackName: String
        # @param IdcUnitName: 机位所属的机房管理单元名称
        # @type IdcUnitName: String
        # @param IdcName: 机位所属的机房名称
        # @type IdcName: String
        # @param IdcId: 机位所属的机房ID
        # @type IdcId: Integer
        # @param Sn: 机位上如果有设备，该字段代表设备的 SN 码，如果是空闲机位，不返回该字段。
        # @type Sn: String
        # @param AssetId: 机位上如果有设备，该字段代表设备的固资号，如果是空闲机位，不返回该字段。
        # @type AssetId: String
        # @param ModelVersion: 机位上如果有设备，该字段代表设备的设备型号加版本号，如果是空闲机位，不返回该字段。
        # @type ModelVersion: String

        attr_accessor :PositionId, :Height, :PositionCode, :PositionStatus, :PlanDeviceType, :IdcUnitId, :RackId, :RackName, :IdcUnitName, :IdcName, :IdcId, :Sn, :AssetId, :ModelVersion

        def initialize(positionid=nil, height=nil, positioncode=nil, positionstatus=nil, plandevicetype=nil, idcunitid=nil, rackid=nil, rackname=nil, idcunitname=nil, idcname=nil, idcid=nil, sn=nil, assetid=nil, modelversion=nil)
          @PositionId = positionid
          @Height = height
          @PositionCode = positioncode
          @PositionStatus = positionstatus
          @PlanDeviceType = plandevicetype
          @IdcUnitId = idcunitid
          @RackId = rackid
          @RackName = rackname
          @IdcUnitName = idcunitname
          @IdcName = idcname
          @IdcId = idcid
          @Sn = sn
          @AssetId = assetid
          @ModelVersion = modelversion
        end

        def deserialize(params)
          @PositionId = params['PositionId']
          @Height = params['Height']
          @PositionCode = params['PositionCode']
          @PositionStatus = params['PositionStatus']
          @PlanDeviceType = params['PlanDeviceType']
          @IdcUnitId = params['IdcUnitId']
          @RackId = params['RackId']
          @RackName = params['RackName']
          @IdcUnitName = params['IdcUnitName']
          @IdcName = params['IdcName']
          @IdcId = params['IdcId']
          @Sn = params['Sn']
          @AssetId = params['AssetId']
          @ModelVersion = params['ModelVersion']
        end
      end

      # 机位状态及对应的数量
      class PositionStatusItem < TencentCloud::Common::AbstractModel
        # @param PositionStatus: 状态值
        # @type PositionStatus: Integer
        # @param Count: 对应的机位数量
        # @type Count: Integer

        attr_accessor :PositionStatus, :Count

        def initialize(positionstatus=nil, count=nil)
          @PositionStatus = positionstatus
          @Count = count
        end

        def deserialize(params)
          @PositionStatus = params['PositionStatus']
          @Count = params['Count']
        end
      end

      # 关电确认信息
      class PowerOffConfirm < TencentCloud::Common::AbstractModel
        # @param ConfirmContact: 联系人
        # @type ConfirmContact: String
        # @param ConfirmContactNumber: 联系人电话
        # @type ConfirmContactNumber: String

        attr_accessor :ConfirmContact, :ConfirmContactNumber

        def initialize(confirmcontact=nil, confirmcontactnumber=nil)
          @ConfirmContact = confirmcontact
          @ConfirmContactNumber = confirmcontactnumber
        end

        def deserialize(params)
          @ConfirmContact = params['ConfirmContact']
          @ConfirmContactNumber = params['ConfirmContactNumber']
        end
      end

      # 机架的信息
      class Rack < TencentCloud::Common::AbstractModel
        # @param RackName: 机架名称
        # @type RackName: String
        # @param IdcUnitId: 机架所属的机房管理单元ID
        # @type IdcUnitId: Integer
        # @param IdcUnitName: 机架所属的机房管理单元名称
        # @type IdcUnitName: String
        # @param IdcName: 机架所属的机房名称
        # @type IdcName: String
        # @param IdcId: 机架所属的机房ID
        # @type IdcId: Integer
        # @param RackId: 机架ID
        # @type RackId: Integer
        # @param IsPowerOn: 是否开电
        # @type IsPowerOn: Boolean
        # @param RackOpenTime: 机架最近一次开电时间，YYYY-MM-DD 格式
        # @type RackOpenTime: String
        # @param HostingType: 托管类型
        # @type HostingType: String

        attr_accessor :RackName, :IdcUnitId, :IdcUnitName, :IdcName, :IdcId, :RackId, :IsPowerOn, :RackOpenTime, :HostingType

        def initialize(rackname=nil, idcunitid=nil, idcunitname=nil, idcname=nil, idcid=nil, rackid=nil, ispoweron=nil, rackopentime=nil, hostingtype=nil)
          @RackName = rackname
          @IdcUnitId = idcunitid
          @IdcUnitName = idcunitname
          @IdcName = idcname
          @IdcId = idcid
          @RackId = rackid
          @IsPowerOn = ispoweron
          @RackOpenTime = rackopentime
          @HostingType = hostingtype
        end

        def deserialize(params)
          @RackName = params['RackName']
          @IdcUnitId = params['IdcUnitId']
          @IdcUnitName = params['IdcUnitName']
          @IdcName = params['IdcName']
          @IdcId = params['IdcId']
          @RackId = params['RackId']
          @IsPowerOn = params['IsPowerOn']
          @RackOpenTime = params['RackOpenTime']
          @HostingType = params['HostingType']
        end
      end

      # 机架用量
      class RackUsage < TencentCloud::Common::AbstractModel
        # @param RackId: 机架ID
        # @type RackId: Integer
        # @param UsedNum: 已使用的机位数量
        # @type UsedNum: Integer
        # @param UnusedNum: 空闲机位数量
        # @type UnusedNum: Integer
        # @param RackShortName: 机架简称
        # @type RackShortName: String
        # @param TotalNum: 机位总数
        # @type TotalNum: Integer
        # @param UsedRate: 机位使用率
        # @type UsedRate: Float

        attr_accessor :RackId, :UsedNum, :UnusedNum, :RackShortName, :TotalNum, :UsedRate

        def initialize(rackid=nil, usednum=nil, unusednum=nil, rackshortname=nil, totalnum=nil, usedrate=nil)
          @RackId = rackid
          @UsedNum = usednum
          @UnusedNum = unusednum
          @RackShortName = rackshortname
          @TotalNum = totalnum
          @UsedRate = usedrate
        end

        def deserialize(params)
          @RackId = params['RackId']
          @UsedNum = params['UsedNum']
          @UnusedNum = params['UnusedNum']
          @RackShortName = params['RackShortName']
          @TotalNum = params['TotalNum']
          @UsedRate = params['UsedRate']
        end
      end

      # 客户自行上门信息
      class SelfOperation < TencentCloud::Common::AbstractModel
        # @param StuffContact: 联系人员电话
        # @type StuffContact: String
        # @param StuffIDCard: 身份证号
        # @type StuffIDCard: String
        # @param StuffName: 人员姓名
        # @type StuffName: String
        # @param OperationTime: 上门时间
        # @type OperationTime: String

        attr_accessor :StuffContact, :StuffIDCard, :StuffName, :OperationTime

        def initialize(stuffcontact=nil, stuffidcard=nil, stuffname=nil, operationtime=nil)
          @StuffContact = stuffcontact
          @StuffIDCard = stuffidcard
          @StuffName = stuffname
          @OperationTime = operationtime
        end

        def deserialize(params)
          @StuffContact = params['StuffContact']
          @StuffIDCard = params['StuffIDCard']
          @StuffName = params['StuffName']
          @OperationTime = params['OperationTime']
        end
      end

      # 服务器设备型号
      class ServerModel < TencentCloud::Common::AbstractModel
        # @param DevModel: 型号名称
        # @type DevModel: String
        # @param DevNode: 节点数
        # @type DevNode: String
        # @param DevHeight: 设备高度
        # @type DevHeight: String
        # @param PowerEnergy: 功耗
        # @type PowerEnergy: String
        # @param PowerportType: 电源接口型号
        # @type PowerportType: String
        # @param PowermoduleNum: 电源模块数量
        # @type PowermoduleNum: String
        # @param InwindPosition: 进风口位置
        # @type InwindPosition: String
        # @param OutwindPosition: 出风口位置
        # @type OutwindPosition: String
        # @param NetportPosition: 网卡接口位置
        # @type NetportPosition: String
        # @param DevWidth: 宽度
        # @type DevWidth: String
        # @param DevDepth: 深度
        # @type DevDepth: String
        # @param DevWeight: 重量
        # @type DevWeight: String
        # @param PowerModule: 电源模块
        # @type PowerModule: String
        # @param PowermodulePosition: 电源模块位置
        # @type PowermodulePosition: String
        # @param NetportType: 网络接口类型
        # @type NetportType: String
        # @param NetSpeed: 网卡速率
        # @type NetSpeed: String
        # @param CheckResult: 0 代表在当前园区没评估过，1 代表完全满足IDC准入标准 2 代表存在托管风险 3 代表不满足IDC准入标准
        # @type CheckResult: Integer
        # @param Version: 版本号
        # @type Version: String
        # @param ModelVersion: 型号和版本的组合名称
        # @type ModelVersion: String

        attr_accessor :DevModel, :DevNode, :DevHeight, :PowerEnergy, :PowerportType, :PowermoduleNum, :InwindPosition, :OutwindPosition, :NetportPosition, :DevWidth, :DevDepth, :DevWeight, :PowerModule, :PowermodulePosition, :NetportType, :NetSpeed, :CheckResult, :Version, :ModelVersion

        def initialize(devmodel=nil, devnode=nil, devheight=nil, powerenergy=nil, powerporttype=nil, powermodulenum=nil, inwindposition=nil, outwindposition=nil, netportposition=nil, devwidth=nil, devdepth=nil, devweight=nil, powermodule=nil, powermoduleposition=nil, netporttype=nil, netspeed=nil, checkresult=nil, version=nil, modelversion=nil)
          @DevModel = devmodel
          @DevNode = devnode
          @DevHeight = devheight
          @PowerEnergy = powerenergy
          @PowerportType = powerporttype
          @PowermoduleNum = powermodulenum
          @InwindPosition = inwindposition
          @OutwindPosition = outwindposition
          @NetportPosition = netportposition
          @DevWidth = devwidth
          @DevDepth = devdepth
          @DevWeight = devweight
          @PowerModule = powermodule
          @PowermodulePosition = powermoduleposition
          @NetportType = netporttype
          @NetSpeed = netspeed
          @CheckResult = checkresult
          @Version = version
          @ModelVersion = modelversion
        end

        def deserialize(params)
          @DevModel = params['DevModel']
          @DevNode = params['DevNode']
          @DevHeight = params['DevHeight']
          @PowerEnergy = params['PowerEnergy']
          @PowerportType = params['PowerportType']
          @PowermoduleNum = params['PowermoduleNum']
          @InwindPosition = params['InwindPosition']
          @OutwindPosition = params['OutwindPosition']
          @NetportPosition = params['NetportPosition']
          @DevWidth = params['DevWidth']
          @DevDepth = params['DevDepth']
          @DevWeight = params['DevWeight']
          @PowerModule = params['PowerModule']
          @PowermodulePosition = params['PowermodulePosition']
          @NetportType = params['NetportType']
          @NetSpeed = params['NetSpeed']
          @CheckResult = params['CheckResult']
          @Version = params['Version']
          @ModelVersion = params['ModelVersion']
        end
      end

      # 服务器收货信息
      class ServerReceivingInfo < TencentCloud::Common::AbstractModel
        # @param DeviceSn: 设备sn
        # @type DeviceSn: String
        # @param ModelVersion: 设备型号-版本
        # @type ModelVersion: String
        # @param Need10GbSlot: 需要万兆机位
        # @type Need10GbSlot: String
        # @param NeedDCPower: 需要直流电
        # @type NeedDCPower: String
        # @param NeedExtranet: 需要外网
        # @type NeedExtranet: String
        # @param NeedVirtualization: 需要虚拟化
        # @type NeedVirtualization: String
        # @param HardwareMemo: 硬件备注
        # @type HardwareMemo: String

        attr_accessor :DeviceSn, :ModelVersion, :Need10GbSlot, :NeedDCPower, :NeedExtranet, :NeedVirtualization, :HardwareMemo

        def initialize(devicesn=nil, modelversion=nil, need10gbslot=nil, needdcpower=nil, needextranet=nil, needvirtualization=nil, hardwarememo=nil)
          @DeviceSn = devicesn
          @ModelVersion = modelversion
          @Need10GbSlot = need10gbslot
          @NeedDCPower = needdcpower
          @NeedExtranet = needextranet
          @NeedVirtualization = needvirtualization
          @HardwareMemo = hardwarememo
        end

        def deserialize(params)
          @DeviceSn = params['DeviceSn']
          @ModelVersion = params['ModelVersion']
          @Need10GbSlot = params['Need10GbSlot']
          @NeedDCPower = params['NeedDCPower']
          @NeedExtranet = params['NeedExtranet']
          @NeedVirtualization = params['NeedVirtualization']
          @HardwareMemo = params['HardwareMemo']
        end
      end

      # 型号模板的选项
      class TemplateOption < TencentCloud::Common::AbstractModel
        # @param OptionName: 选项名称
        # @type OptionName: String
        # @param Standard: 腾讯的标准
        # @type Standard: String
        # @param StandardInfo: 腾讯标准的展示字段
        # @type StandardInfo: String
        # @param OptionKey: 选项的唯一标识
        # @type OptionKey: String
        # @param InputType: 输入的类型
        # @type InputType: String
        # @param ValueType: 输入值的类型
        # @type ValueType: String
        # @param CompareType: 是否符合腾讯标准的比较方式，-- 为不做比较
        # @type CompareType: String
        # @param OptionValueSet: 下拉列表中填充的选项值
        # @type OptionValueSet: Array
        # @param InputHint: 输入框中的占位的提示符
        # @type InputHint: String
        # @param InputInfo: 输入框下方的提示文案
        # @type InputInfo: String
        # @param OptionValue: 客户写入的值
        # @type OptionValue: String

        attr_accessor :OptionName, :Standard, :StandardInfo, :OptionKey, :InputType, :ValueType, :CompareType, :OptionValueSet, :InputHint, :InputInfo, :OptionValue

        def initialize(optionname=nil, standard=nil, standardinfo=nil, optionkey=nil, inputtype=nil, valuetype=nil, comparetype=nil, optionvalueset=nil, inputhint=nil, inputinfo=nil, optionvalue=nil)
          @OptionName = optionname
          @Standard = standard
          @StandardInfo = standardinfo
          @OptionKey = optionkey
          @InputType = inputtype
          @ValueType = valuetype
          @CompareType = comparetype
          @OptionValueSet = optionvalueset
          @InputHint = inputhint
          @InputInfo = inputinfo
          @OptionValue = optionvalue
        end

        def deserialize(params)
          @OptionName = params['OptionName']
          @Standard = params['Standard']
          @StandardInfo = params['StandardInfo']
          @OptionKey = params['OptionKey']
          @InputType = params['InputType']
          @ValueType = params['ValueType']
          @CompareType = params['CompareType']
          unless params['OptionValueSet'].nil?
            @OptionValueSet = []
            params['OptionValueSet'].each do |i|
              optionvalueitem_tmp = OptionValueItem.new
              optionvalueitem_tmp.deserialize(i)
              @OptionValueSet << optionvalueitem_tmp
            end
          end
          @InputHint = params['InputHint']
          @InputInfo = params['InputInfo']
          @OptionValue = params['OptionValue']
        end
      end

      # 线材收货信息
      class WireReceivingInfo < TencentCloud::Common::AbstractModel
        # @param TypeName: '光纤', '网线', '电源线'
        # @type TypeName: String
        # @param Quantity: 数量
        # @type Quantity: Integer
        # @param Unit: '箱', '卷', '套'
        # @type Unit: String
        # @param ReceiptNumber: 收货凭证号
        # @type ReceiptNumber: String
        # @param HardwareMemo: 硬件备注
        # @type HardwareMemo: String

        attr_accessor :TypeName, :Quantity, :Unit, :ReceiptNumber, :HardwareMemo

        def initialize(typename=nil, quantity=nil, unit=nil, receiptnumber=nil, hardwarememo=nil)
          @TypeName = typename
          @Quantity = quantity
          @Unit = unit
          @ReceiptNumber = receiptnumber
          @HardwareMemo = hardwarememo
        end

        def deserialize(params)
          @TypeName = params['TypeName']
          @Quantity = params['Quantity']
          @Unit = params['Unit']
          @ReceiptNumber = params['ReceiptNumber']
          @HardwareMemo = params['HardwareMemo']
        end
      end

      # 工单的常用信息返回
      class WorkOrderData < TencentCloud::Common::AbstractModel
        # @param WorkOrderId: 工单号
        # @type WorkOrderId: String
        # @param ServiceType: 服务类型，一个服务可能会产生多个工单
        # @type ServiceType: String
        # @param OrderType: 工单类型
        # @type OrderType: String
        # @param OrderStatus: 工单状态
        # @type OrderStatus: String
        # @param Creator: 工单创建人
        # @type Creator: String
        # @param CreateTime: 工单创建时间
        # @type CreateTime: String
        # @param FinishTime: 工单完成时间
        # @type FinishTime: String

        attr_accessor :WorkOrderId, :ServiceType, :OrderType, :OrderStatus, :Creator, :CreateTime, :FinishTime

        def initialize(workorderid=nil, servicetype=nil, ordertype=nil, orderstatus=nil, creator=nil, createtime=nil, finishtime=nil)
          @WorkOrderId = workorderid
          @ServiceType = servicetype
          @OrderType = ordertype
          @OrderStatus = orderstatus
          @Creator = creator
          @CreateTime = createtime
          @FinishTime = finishtime
        end

        def deserialize(params)
          @WorkOrderId = params['WorkOrderId']
          @ServiceType = params['ServiceType']
          @OrderType = params['OrderType']
          @OrderStatus = params['OrderStatus']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          @FinishTime = params['FinishTime']
        end
      end

      # 带有分类的工单类型列表
      class WorkOrderFamilyDetail < TencentCloud::Common::AbstractModel
        # @param WorkOrderFamily: 工单类型大类的名称
        # @type WorkOrderFamily: String
        # @param WorkOrderTypeSet: 工单类型详情列表
        # @type WorkOrderTypeSet: Array

        attr_accessor :WorkOrderFamily, :WorkOrderTypeSet

        def initialize(workorderfamily=nil, workordertypeset=nil)
          @WorkOrderFamily = workorderfamily
          @WorkOrderTypeSet = workordertypeset
        end

        def deserialize(params)
          @WorkOrderFamily = params['WorkOrderFamily']
          unless params['WorkOrderTypeSet'].nil?
            @WorkOrderTypeSet = []
            params['WorkOrderTypeSet'].each do |i|
              workordertypedetail_tmp = WorkOrderTypeDetail.new
              workordertypedetail_tmp.deserialize(i)
              @WorkOrderTypeSet << workordertypedetail_tmp
            end
          end
        end
      end

      # 工单信息的简要，一般用于工单创建的返回
      class WorkOrderTinyInfo < TencentCloud::Common::AbstractModel
        # @param WorkOrderId: 工单id
        # @type WorkOrderId: String
        # @param ServiceType: 服务类型，一个服务可能会产生多个工单
        # @type ServiceType: String
        # @param OrderType: 工单类型
        # @type OrderType: String

        attr_accessor :WorkOrderId, :ServiceType, :OrderType

        def initialize(workorderid=nil, servicetype=nil, ordertype=nil)
          @WorkOrderId = workorderid
          @ServiceType = servicetype
          @OrderType = ordertype
        end

        def deserialize(params)
          @WorkOrderId = params['WorkOrderId']
          @ServiceType = params['ServiceType']
          @OrderType = params['OrderType']
        end
      end

      # 工单类型详情
      class WorkOrderTypeDetail < TencentCloud::Common::AbstractModel
        # @param WorkOrderFamily: 工单类型所属的大类
        # @type WorkOrderFamily: String
        # @param WorkOrderName: 工单类型名称
        # @type WorkOrderName: String
        # @param WorkOrderType: 工单类型的唯一英文标识
        # @type WorkOrderType: String
        # @param WorkOrderDescription: 工单类型简述
        # @type WorkOrderDescription: String
        # @param CollectFlag: 是否被收藏
        # @type CollectFlag: Boolean
        # @param SlaMessage: 服务时效
        # @type SlaMessage: String

        attr_accessor :WorkOrderFamily, :WorkOrderName, :WorkOrderType, :WorkOrderDescription, :CollectFlag, :SlaMessage

        def initialize(workorderfamily=nil, workordername=nil, workordertype=nil, workorderdescription=nil, collectflag=nil, slamessage=nil)
          @WorkOrderFamily = workorderfamily
          @WorkOrderName = workordername
          @WorkOrderType = workordertype
          @WorkOrderDescription = workorderdescription
          @CollectFlag = collectflag
          @SlaMessage = slamessage
        end

        def deserialize(params)
          @WorkOrderFamily = params['WorkOrderFamily']
          @WorkOrderName = params['WorkOrderName']
          @WorkOrderType = params['WorkOrderType']
          @WorkOrderDescription = params['WorkOrderDescription']
          @CollectFlag = params['CollectFlag']
          @SlaMessage = params['SlaMessage']
        end
      end

    end
  end
end

