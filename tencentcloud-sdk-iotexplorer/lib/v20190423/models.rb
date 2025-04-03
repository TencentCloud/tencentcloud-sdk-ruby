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
  module Iotexplorer
    module V20190423
      # 设备激活详情信息
      class ActivateDeviceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceType: 实例类型
        # @type InstanceType: Integer
        # @param DeviceActivationDetails: 设备激活信息
        # @type DeviceActivationDetails: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceActivationDetail`
        # @param RegisteredDeviceType: 已注册设备类型信息
        # @type RegisteredDeviceType: :class:`Tencentcloud::Iotexplorer.v20190423.models.RegisteredDeviceTypeInfo`
        # @param RegisteredDeviceNetType: 已注册设备通信类型信息
        # @type RegisteredDeviceNetType: :class:`Tencentcloud::Iotexplorer.v20190423.models.RegisteredDeviceNetTypeInfo`

        attr_accessor :InstanceId, :InstanceType, :DeviceActivationDetails, :RegisteredDeviceType, :RegisteredDeviceNetType

        def initialize(instanceid=nil, instancetype=nil, deviceactivationdetails=nil, registereddevicetype=nil, registereddevicenettype=nil)
          @InstanceId = instanceid
          @InstanceType = instancetype
          @DeviceActivationDetails = deviceactivationdetails
          @RegisteredDeviceType = registereddevicetype
          @RegisteredDeviceNetType = registereddevicenettype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceType = params['InstanceType']
          unless params['DeviceActivationDetails'].nil?
            @DeviceActivationDetails = DeviceActivationDetail.new
            @DeviceActivationDetails.deserialize(params['DeviceActivationDetails'])
          end
          unless params['RegisteredDeviceType'].nil?
            @RegisteredDeviceType = RegisteredDeviceTypeInfo.new
            @RegisteredDeviceType.deserialize(params['RegisteredDeviceType'])
          end
          unless params['RegisteredDeviceNetType'].nil?
            @RegisteredDeviceNetType = RegisteredDeviceNetTypeInfo.new
            @RegisteredDeviceNetType.deserialize(params['RegisteredDeviceNetType'])
          end
        end
      end

      # ActivateTWeCallLicense请求参数结构体
      class ActivateTWeCallLicenseRequest < TencentCloud::Common::AbstractModel
        # @param PkgType: TWecall类型：0-体验套餐；1-家庭安防场景； 2-穿戴类场景； 3-生活娱乐场景； 4-对讲及其它场景
        # @type PkgType: Integer
        # @param MiniProgramAppId: 参数已弃用，不用传参
        # @type MiniProgramAppId: String
        # @param DeviceList: 设备列表
        # @type DeviceList: Array

        attr_accessor :PkgType, :MiniProgramAppId, :DeviceList
        extend Gem::Deprecate
        deprecate :MiniProgramAppId, :none, 2025, 4
        deprecate :MiniProgramAppId=, :none, 2025, 4

        def initialize(pkgtype=nil, miniprogramappid=nil, devicelist=nil)
          @PkgType = pkgtype
          @MiniProgramAppId = miniprogramappid
          @DeviceList = devicelist
        end

        def deserialize(params)
          @PkgType = params['PkgType']
          @MiniProgramAppId = params['MiniProgramAppId']
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              twecallinfo_tmp = TWeCallInfo.new
              twecallinfo_tmp.deserialize(i)
              @DeviceList << twecallinfo_tmp
            end
          end
        end
      end

      # ActivateTWeCallLicense返回参数结构体
      class ActivateTWeCallLicenseResponse < TencentCloud::Common::AbstractModel
        # @param DeviceList: 设备激活返回数据
        # @type DeviceList: Array
        # @param FailureList: 设备激活失败返回数据
        # @type FailureList: Array
        # @param SuccessList: 设备激活成功返回数据
        # @type SuccessList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceList, :FailureList, :SuccessList, :RequestId
        extend Gem::Deprecate
        deprecate :DeviceList, :none, 2025, 4
        deprecate :DeviceList=, :none, 2025, 4

        def initialize(devicelist=nil, failurelist=nil, successlist=nil, requestid=nil)
          @DeviceList = devicelist
          @FailureList = failurelist
          @SuccessList = successlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              deviceactiveresult_tmp = DeviceActiveResult.new
              deviceactiveresult_tmp.deserialize(i)
              @DeviceList << deviceactiveresult_tmp
            end
          end
          unless params['FailureList'].nil?
            @FailureList = []
            params['FailureList'].each do |i|
              deviceactiveresult_tmp = DeviceActiveResult.new
              deviceactiveresult_tmp.deserialize(i)
              @FailureList << deviceactiveresult_tmp
            end
          end
          unless params['SuccessList'].nil?
            @SuccessList = []
            params['SuccessList'].each do |i|
              deviceactiveresult_tmp = DeviceActiveResult.new
              deviceactiveresult_tmp.deserialize(i)
              @SuccessList << deviceactiveresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 云api直接绑定设备出参
      class AppDeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 产品ID/设备名
        # @type DeviceId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param AliasName: 设备别名
        # @type AliasName: String
        # @param IconUrl: icon地址
        # @type IconUrl: String
        # @param FamilyId: 家庭ID
        # @type FamilyId: String
        # @param RoomId: 房间ID
        # @type RoomId: String
        # @param DeviceType: 设备类型
        # @type DeviceType: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer

        attr_accessor :DeviceId, :ProductId, :DeviceName, :AliasName, :IconUrl, :FamilyId, :RoomId, :DeviceType, :CreateTime, :UpdateTime

        def initialize(deviceid=nil, productid=nil, devicename=nil, aliasname=nil, iconurl=nil, familyid=nil, roomid=nil, devicetype=nil, createtime=nil, updatetime=nil)
          @DeviceId = deviceid
          @ProductId = productid
          @DeviceName = devicename
          @AliasName = aliasname
          @IconUrl = iconurl
          @FamilyId = familyid
          @RoomId = roomid
          @DeviceType = devicetype
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @AliasName = params['AliasName']
          @IconUrl = params['IconUrl']
          @FamilyId = params['FamilyId']
          @RoomId = params['RoomId']
          @DeviceType = params['DeviceType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 授权小程序信息
      class AuthMiniProgramAppInfo < TencentCloud::Common::AbstractModel
        # @param MiniProgramAppId: 小程序APPID
        # @type MiniProgramAppId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param MiniProgramName: 小程序名称
        # @type MiniProgramName: String
        # @param LicenseNum: 激活码数
        # @type LicenseNum: Integer
        # @param IotAppId: 应用ID
        # @type IotAppId: String
        # @param IotAppName: 应用名称
        # @type IotAppName: String

        attr_accessor :MiniProgramAppId, :CreateTime, :MiniProgramName, :LicenseNum, :IotAppId, :IotAppName

        def initialize(miniprogramappid=nil, createtime=nil, miniprogramname=nil, licensenum=nil, iotappid=nil, iotappname=nil)
          @MiniProgramAppId = miniprogramappid
          @CreateTime = createtime
          @MiniProgramName = miniprogramname
          @LicenseNum = licensenum
          @IotAppId = iotappid
          @IotAppName = iotappname
        end

        def deserialize(params)
          @MiniProgramAppId = params['MiniProgramAppId']
          @CreateTime = params['CreateTime']
          @MiniProgramName = params['MiniProgramName']
          @LicenseNum = params['LicenseNum']
          @IotAppId = params['IotAppId']
          @IotAppName = params['IotAppName']
        end
      end

      # 获取返回列表的详情。
      class BatchProductionInfo < TencentCloud::Common::AbstractModel
        # @param BatchProductionId: 量产ID
        # @type BatchProductionId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param BurnMethod: 烧录方式
        # @type BurnMethod: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String

        attr_accessor :BatchProductionId, :ProductId, :BurnMethod, :CreateTime, :ProductName

        def initialize(batchproductionid=nil, productid=nil, burnmethod=nil, createtime=nil, productname=nil)
          @BatchProductionId = batchproductionid
          @ProductId = productid
          @BurnMethod = burnmethod
          @CreateTime = createtime
          @ProductName = productname
        end

        def deserialize(params)
          @BatchProductionId = params['BatchProductionId']
          @ProductId = params['ProductId']
          @BurnMethod = params['BurnMethod']
          @CreateTime = params['CreateTime']
          @ProductName = params['ProductName']
        end
      end

      # BindCloudStorageUser请求参数结构体
      class BindCloudStorageUserRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :UserId

        def initialize(productid=nil, devicename=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
        end
      end

      # BindCloudStorageUser返回参数结构体
      class BindCloudStorageUserResponse < TencentCloud::Common::AbstractModel
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

      # BindDeviceInfo
      class BindDeviceInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # BindDevices请求参数结构体
      class BindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID。
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名。
        # @type GatewayDeviceName: String
        # @param ProductId: 被绑定设备的产品ID。
        # @type ProductId: String
        # @param DeviceNames: 被绑定的多个设备名。
        # @type DeviceNames: Array

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :DeviceNames

        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, devicenames=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
        end
      end

      # BindDevices返回参数结构体
      class BindDevicesResponse < TencentCloud::Common::AbstractModel
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

      # 绑定、未绑定产品详细信息
      class BindProductInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param ProductName: 产品名称。
        # @type ProductName: String
        # @param ProjectId: 产品所属项目ID。
        # @type ProjectId: String
        # @param DataProtocol: 物模型类型。
        # @type DataProtocol: Integer
        # @param CategoryId: 产品分组模板ID
        # @type CategoryId: Integer
        # @param ProductType: 产品类型
        # @type ProductType: Integer
        # @param NetType: 连接类型
        # @type NetType: String
        # @param DevStatus: 状态
        # @type DevStatus: String
        # @param ProductOwnerName: 产品拥有者名称
        # @type ProductOwnerName: String

        attr_accessor :ProductId, :ProductName, :ProjectId, :DataProtocol, :CategoryId, :ProductType, :NetType, :DevStatus, :ProductOwnerName

        def initialize(productid=nil, productname=nil, projectid=nil, dataprotocol=nil, categoryid=nil, producttype=nil, nettype=nil, devstatus=nil, productownername=nil)
          @ProductId = productid
          @ProductName = productname
          @ProjectId = projectid
          @DataProtocol = dataprotocol
          @CategoryId = categoryid
          @ProductType = producttype
          @NetType = nettype
          @DevStatus = devstatus
          @ProductOwnerName = productownername
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProjectId = params['ProjectId']
          @DataProtocol = params['DataProtocol']
          @CategoryId = params['CategoryId']
          @ProductType = params['ProductType']
          @NetType = params['NetType']
          @DevStatus = params['DevStatus']
          @ProductOwnerName = params['ProductOwnerName']
        end
      end

      # BindProducts请求参数结构体
      class BindProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID。
        # @type GatewayProductId: String
        # @param ProductIds: 待绑定的子产品ID数组。
        # @type ProductIds: Array

        attr_accessor :GatewayProductId, :ProductIds

        def initialize(gatewayproductid=nil, productids=nil)
          @GatewayProductId = gatewayproductid
          @ProductIds = productids
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @ProductIds = params['ProductIds']
        end
      end

      # BindProducts返回参数结构体
      class BindProductsResponse < TencentCloud::Common::AbstractModel
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

      # CallDeviceActionAsync请求参数结构体
      class CallDeviceActionAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActionId: 产品数据模板中行为功能的标识符，由开发者自行根据设备的应用场景定义
        # @type ActionId: String
        # @param InputParams: 输入参数
        # @type InputParams: String

        attr_accessor :ProductId, :DeviceName, :ActionId, :InputParams

        def initialize(productid=nil, devicename=nil, actionid=nil, inputparams=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ActionId = actionid
          @InputParams = inputparams
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ActionId = params['ActionId']
          @InputParams = params['InputParams']
        end
      end

      # CallDeviceActionAsync返回参数结构体
      class CallDeviceActionAsyncResponse < TencentCloud::Common::AbstractModel
        # @param ClientToken: 调用Id
        # @type ClientToken: String
        # @param Status: 异步调用状态
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientToken, :Status, :RequestId

        def initialize(clienttoken=nil, status=nil, requestid=nil)
          @ClientToken = clienttoken
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientToken = params['ClientToken']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CallDeviceActionSync请求参数结构体
      class CallDeviceActionSyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActionId: 产品数据模板中行为功能的标识符，由开发者自行根据设备的应用场景定义
        # @type ActionId: String
        # @param InputParams: 输入参数
        # @type InputParams: String

        attr_accessor :ProductId, :DeviceName, :ActionId, :InputParams

        def initialize(productid=nil, devicename=nil, actionid=nil, inputparams=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ActionId = actionid
          @InputParams = inputparams
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ActionId = params['ActionId']
          @InputParams = params['InputParams']
        end
      end

      # CallDeviceActionSync返回参数结构体
      class CallDeviceActionSyncResponse < TencentCloud::Common::AbstractModel
        # @param ClientToken: 调用Id
        # @type ClientToken: String
        # @param OutputParams: 输出参数，取值设备端上报$thing/up/action method为action_reply 的 response字段，物模型协议参考https://cloud.tencent.com/document/product/1081/34916#.E8.AE.BE.E5.A4.87.E8.A1.8C.E4.B8.BA.E8.B0.83.E7.94.A8
        # @type OutputParams: String
        # @param Status: 返回状态，取值设备端上报$thing/up/action	method为action_reply 的 status字段，如果不包含status字段，则取默认值，空字符串，物模型协议参考https://cloud.tencent.com/document/product/1081/34916#.E8.AE.BE.E5.A4.87.E8.A1.8C.E4.B8.BA.E8.B0.83.E7.94.A8
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientToken, :OutputParams, :Status, :RequestId

        def initialize(clienttoken=nil, outputparams=nil, status=nil, requestid=nil)
          @ClientToken = clienttoken
          @OutputParams = outputparams
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientToken = params['ClientToken']
          @OutputParams = params['OutputParams']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 标签数据结构
      class CamTag < TencentCloud::Common::AbstractModel
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

      # CancelAssignTWeCallLicense请求参数结构体
      class CancelAssignTWeCallLicenseRequest < TencentCloud::Common::AbstractModel
        # @param PkgId: 订单号
        # @type PkgId: String

        attr_accessor :PkgId

        def initialize(pkgid=nil)
          @PkgId = pkgid
        end

        def deserialize(params)
          @PkgId = params['PkgId']
        end
      end

      # CancelAssignTWeCallLicense返回参数结构体
      class CancelAssignTWeCallLicenseResponse < TencentCloud::Common::AbstractModel
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

      # ChangeP2PRoute请求参数结构体
      class ChangeP2PRouteRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param RouteId: P2P线路
        # @type RouteId: Integer

        attr_accessor :ProductId, :DeviceName, :RouteId

        def initialize(productid=nil, devicename=nil, routeid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @RouteId = routeid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @RouteId = params['RouteId']
        end
      end

      # ChangeP2PRoute返回参数结构体
      class ChangeP2PRouteResponse < TencentCloud::Common::AbstractModel
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

      # CheckFirmwareUpdate请求参数结构体
      class CheckFirmwareUpdateRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # CheckFirmwareUpdate返回参数结构体
      class CheckFirmwareUpdateResponse < TencentCloud::Common::AbstractModel
        # @param CurrentVersion: 设备当前固件版本。
        # @type CurrentVersion: String
        # @param DstVersion: 固件可升级版本。
        # @type DstVersion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CurrentVersion, :DstVersion, :RequestId

        def initialize(currentversion=nil, dstversion=nil, requestid=nil)
          @CurrentVersion = currentversion
          @DstVersion = dstversion
          @RequestId = requestid
        end

        def deserialize(params)
          @CurrentVersion = params['CurrentVersion']
          @DstVersion = params['DstVersion']
          @RequestId = params['RequestId']
        end
      end

      # 云存 AI 服务任务信息
      class CloudStorageAIServiceTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 云存 AI 服务任务 ID
        # @type TaskId: String
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param ServiceType: 云存 AI 服务类型。可能取值：

        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # - `VideoToText`：视频语义理解
        # @type ServiceType: String
        # @param StartTime: 对应云存视频的起始时间
        # @type StartTime: Integer
        # @param EndTime: 对应云存视频的结束时间
        # @type EndTime: Integer
        # @param Status: 任务状态（1：失败；2：成功但结果为空；3：成功且结果非空；4：执行中）
        # @type Status: Integer
        # @param Result: 任务结果
        # @type Result: String
        # @param Files: 任务输出文件列表
        # @type Files: Array
        # @param FilesInfo: 任务输出文件信息列表
        # @type FilesInfo: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: Integer
        # @param CustomId: 自定义任务 ID
        # @type CustomId: String

        attr_accessor :TaskId, :ProductId, :DeviceName, :ChannelId, :ServiceType, :StartTime, :EndTime, :Status, :Result, :Files, :FilesInfo, :CreateTime, :UpdateTime, :CustomId

        def initialize(taskid=nil, productid=nil, devicename=nil, channelid=nil, servicetype=nil, starttime=nil, endtime=nil, status=nil, result=nil, files=nil, filesinfo=nil, createtime=nil, updatetime=nil, customid=nil)
          @TaskId = taskid
          @ProductId = productid
          @DeviceName = devicename
          @ChannelId = channelid
          @ServiceType = servicetype
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Result = result
          @Files = files
          @FilesInfo = filesinfo
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CustomId = customid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @ServiceType = params['ServiceType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Result = params['Result']
          @Files = params['Files']
          unless params['FilesInfo'].nil?
            @FilesInfo = []
            params['FilesInfo'].each do |i|
              cloudstorageaiservicetaskfileinfo_tmp = CloudStorageAIServiceTaskFileInfo.new
              cloudstorageaiservicetaskfileinfo_tmp.deserialize(i)
              @FilesInfo << cloudstorageaiservicetaskfileinfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CustomId = params['CustomId']
        end
      end

      # 云存 AI 任务输出文件信息
      class CloudStorageAIServiceTaskFileInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称（含扩展名）
        # @type FileName: String
        # @param FileSize: 文件大小（单位：bytes）
        # @type FileSize: Integer
        # @param DownloadURL: 文件下载 URL
        # @type DownloadURL: String
        # @param MimeType: 文件的 MIME Type
        # @type MimeType: String
        # @param VideoMetaInfo: 视频文件元数据（仅当文件为视频类型时包含该字段）
        # @type VideoMetaInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.CloudStorageAIServiceTaskVideoMetaInfo`
        # @param Labels: 文件标签
        # @type Labels: Array

        attr_accessor :FileName, :FileSize, :DownloadURL, :MimeType, :VideoMetaInfo, :Labels

        def initialize(filename=nil, filesize=nil, downloadurl=nil, mimetype=nil, videometainfo=nil, labels=nil)
          @FileName = filename
          @FileSize = filesize
          @DownloadURL = downloadurl
          @MimeType = mimetype
          @VideoMetaInfo = videometainfo
          @Labels = labels
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @DownloadURL = params['DownloadURL']
          @MimeType = params['MimeType']
          unless params['VideoMetaInfo'].nil?
            @VideoMetaInfo = CloudStorageAIServiceTaskVideoMetaInfo.new
            @VideoMetaInfo.deserialize(params['VideoMetaInfo'])
          end
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              cloudstorageaiservicetaskfilelabel_tmp = CloudStorageAIServiceTaskFileLabel.new
              cloudstorageaiservicetaskfilelabel_tmp.deserialize(i)
              @Labels << cloudstorageaiservicetaskfilelabel_tmp
            end
          end
        end
      end

      # 云存 AI 任务输出文件标签
      class CloudStorageAIServiceTaskFileLabel < TencentCloud::Common::AbstractModel
        # @param Key: key1
        # @type Key: String
        # @param Value: value1
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 云存 AI 任务输出视频文件元数据
      class CloudStorageAIServiceTaskVideoMetaInfo < TencentCloud::Common::AbstractModel
        # @param ThumbnailFileName: 视频对应的缩略图的文件名称（含扩展名）
        # @type ThumbnailFileName: String
        # @param DurationMilliSeconds: 视频时长（单位：毫秒）
        # @type DurationMilliSeconds: Integer

        attr_accessor :ThumbnailFileName, :DurationMilliSeconds

        def initialize(thumbnailfilename=nil, durationmilliseconds=nil)
          @ThumbnailFileName = thumbnailfilename
          @DurationMilliSeconds = durationmilliseconds
        end

        def deserialize(params)
          @ThumbnailFileName = params['ThumbnailFileName']
          @DurationMilliSeconds = params['DurationMilliSeconds']
        end
      end

      # 云存事件
      class CloudStorageEvent < TencentCloud::Common::AbstractModel
        # @param StartTime: 事件起始时间（Unix 时间戳，秒级
        # @type StartTime: Integer
        # @param EndTime: 事件结束时间（Unix 时间戳，秒级
        # @type EndTime: Integer
        # @param Thumbnail: 事件缩略图
        # @type Thumbnail: String
        # @param EventId: 事件ID
        # @type EventId: String
        # @param UploadStatus: 事件录像上传状态，Finished: 全部上传成功 Partial: 部分上传成功 Failed: 上传失败
        # @type UploadStatus: String
        # @param Data: 事件自定义数据
        # @type Data: String

        attr_accessor :StartTime, :EndTime, :Thumbnail, :EventId, :UploadStatus, :Data

        def initialize(starttime=nil, endtime=nil, thumbnail=nil, eventid=nil, uploadstatus=nil, data=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Thumbnail = thumbnail
          @EventId = eventid
          @UploadStatus = uploadstatus
          @Data = data
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Thumbnail = params['Thumbnail']
          @EventId = params['EventId']
          @UploadStatus = params['UploadStatus']
          @Data = params['Data']
        end
      end

      # 云存事件及其关联的云存 AI 任务
      class CloudStorageEventWithAITasks < TencentCloud::Common::AbstractModel
        # @param StartTime: 事件起始时间（Unix 时间戳，秒级
        # @type StartTime: Integer
        # @param EndTime: 事件结束时间（Unix 时间戳，秒级
        # @type EndTime: Integer
        # @param Thumbnail: 事件缩略图
        # @type Thumbnail: String
        # @param EventId: 事件ID
        # @type EventId: String
        # @param UploadStatus: 事件录像上传状态，Finished: 全部上传成功 Partial: 部分上传成功 Failed: 上传失败
        # @type UploadStatus: String
        # @param Data: 事件自定义数据
        # @type Data: String
        # @param AITasks: 事件关联的云存 AI 任务列表
        # @type AITasks: Array

        attr_accessor :StartTime, :EndTime, :Thumbnail, :EventId, :UploadStatus, :Data, :AITasks

        def initialize(starttime=nil, endtime=nil, thumbnail=nil, eventid=nil, uploadstatus=nil, data=nil, aitasks=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Thumbnail = thumbnail
          @EventId = eventid
          @UploadStatus = uploadstatus
          @Data = data
          @AITasks = aitasks
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Thumbnail = params['Thumbnail']
          @EventId = params['EventId']
          @UploadStatus = params['UploadStatus']
          @Data = params['Data']
          unless params['AITasks'].nil?
            @AITasks = []
            params['AITasks'].each do |i|
              cloudstorageaiservicetask_tmp = CloudStorageAIServiceTask.new
              cloudstorageaiservicetask_tmp.deserialize(i)
              @AITasks << cloudstorageaiservicetask_tmp
            end
          end
        end
      end

      # 云存套餐包信息
      class CloudStoragePackageInfo < TencentCloud::Common::AbstractModel
        # @param PackageId: 套餐包id
        # @type PackageId: String
        # @param PackageName: 套餐包名字
        # @type PackageName: String
        # @param Num: 套餐包数量
        # @type Num: Integer
        # @param UsedNum: 已使用数量
        # @type UsedNum: Integer

        attr_accessor :PackageId, :PackageName, :Num, :UsedNum

        def initialize(packageid=nil, packagename=nil, num=nil, usednum=nil)
          @PackageId = packageid
          @PackageName = packagename
          @Num = num
          @UsedNum = usednum
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @Num = params['Num']
          @UsedNum = params['UsedNum']
        end
      end

      # 云存时间轴接口返回数据
      class CloudStorageTimeData < TencentCloud::Common::AbstractModel
        # @param TimeList: 云存时间轴信息列表
        # @type TimeList: Array
        # @param VideoURL: 播放地址
        # @type VideoURL: String

        attr_accessor :TimeList, :VideoURL

        def initialize(timelist=nil, videourl=nil)
          @TimeList = timelist
          @VideoURL = videourl
        end

        def deserialize(params)
          unless params['TimeList'].nil?
            @TimeList = []
            params['TimeList'].each do |i|
              cloudstoragetimeinfo_tmp = CloudStorageTimeInfo.new
              cloudstoragetimeinfo_tmp.deserialize(i)
              @TimeList << cloudstoragetimeinfo_tmp
            end
          end
          @VideoURL = params['VideoURL']
        end
      end

      # 云存时间轴信息
      class CloudStorageTimeInfo < TencentCloud::Common::AbstractModel
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

      # 云存用户信息
      class CloudStorageUserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :UserId

        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # ControlDeviceData请求参数结构体
      class ControlDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Data: 属性数据, JSON格式字符串, 注意字段需要在物模型属性里定义
        # @type Data: String
        # @param Method: 请求类型 , 不填该参数或者 desired 表示下发属性给设备,  reported 表示模拟设备上报属性
        # @type Method: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName , 通常情况不需要填写
        # @type DeviceId: String
        # @param DataTimestamp: 上报数据UNIX时间戳(毫秒), 仅对Method:reported有效
        # @type DataTimestamp: Integer

        attr_accessor :ProductId, :DeviceName, :Data, :Method, :DeviceId, :DataTimestamp

        def initialize(productid=nil, devicename=nil, data=nil, method=nil, deviceid=nil, datatimestamp=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Data = data
          @Method = method
          @DeviceId = deviceid
          @DataTimestamp = datatimestamp
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Data = params['Data']
          @Method = params['Method']
          @DeviceId = params['DeviceId']
          @DataTimestamp = params['DataTimestamp']
        end
      end

      # ControlDeviceData返回参数结构体
      class ControlDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回信息
        # @type Data: String
        # @param Result: JSON字符串， 返回下发控制的结果信息,
        # Sent = 1 表示设备已经在线并且订阅了控制下发的mqtt topic.
        # pushResult 是表示发送结果，其中 0 表示成功， 23101 表示设备未在线或没有订阅相关的 MQTT Topic。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Result, :RequestId

        def initialize(data=nil, result=nil, requestid=nil)
          @Data = data
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchProduction请求参数结构体
      class CreateBatchProductionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param BurnMethod: 烧录方式，0为直接烧录，1为动态注册。
        # @type BurnMethod: Integer
        # @param GenerationMethod: 生成方式，0为系统生成，1为文件上传。
        # @type GenerationMethod: Integer
        # @param UploadUrl: 文件上传URL，用于文件上传时填写。
        # @type UploadUrl: String
        # @param BatchCnt: 量产数量，用于系统生成时填写。
        # @type BatchCnt: Integer
        # @param GenerationQRCode: 是否生成二维码,0为不生成，1为生成。
        # @type GenerationQRCode: Integer

        attr_accessor :ProjectId, :ProductId, :BurnMethod, :GenerationMethod, :UploadUrl, :BatchCnt, :GenerationQRCode

        def initialize(projectid=nil, productid=nil, burnmethod=nil, generationmethod=nil, uploadurl=nil, batchcnt=nil, generationqrcode=nil)
          @ProjectId = projectid
          @ProductId = productid
          @BurnMethod = burnmethod
          @GenerationMethod = generationmethod
          @UploadUrl = uploadurl
          @BatchCnt = batchcnt
          @GenerationQRCode = generationqrcode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductId = params['ProductId']
          @BurnMethod = params['BurnMethod']
          @GenerationMethod = params['GenerationMethod']
          @UploadUrl = params['UploadUrl']
          @BatchCnt = params['BatchCnt']
          @GenerationQRCode = params['GenerationQRCode']
        end
      end

      # CreateBatchProduction返回参数结构体
      class CreateBatchProductionResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param BatchProductionId: 量产id
        # @type BatchProductionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :ProductId, :BatchProductionId, :RequestId

        def initialize(projectid=nil, productid=nil, batchproductionid=nil, requestid=nil)
          @ProjectId = projectid
          @ProductId = productid
          @BatchProductionId = batchproductionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductId = params['ProductId']
          @BatchProductionId = params['BatchProductionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudStorageAIService请求参数结构体
      class CreateCloudStorageAIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param PackageId: 云存 AI 套餐 ID。可选值：

        # - `1m_low_od`：低功耗目标检测月套餐
        # - `1y_low_od`：低功耗目标检测年套餐
        # - `1m_ev_od`：事件目标检测月套餐
        # - `1y_ev_od`：事件目标检测年套餐
        # - `1m_ft_od`：全时目标检测月套餐
        # - `1y_ft_od`：全时目标检测年套餐
        # - `1m_low_hl`：低功耗视频浓缩月套餐
        # - `1y_low_hl`：低功耗视频浓缩年套餐
        # - `1m_ev_hl`：事件视频浓缩月套餐
        # - `1y_ev_hl`：事件视频浓缩年套餐
        # - `1m_ft_hl`：全时视频浓缩月套餐
        # - `1y_ft_hl`：全时视频浓缩年套餐
        # @type PackageId: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param OrderId: 订单 ID
        # @type OrderId: String

        attr_accessor :ProductId, :DeviceName, :PackageId, :ChannelId, :OrderId

        def initialize(productid=nil, devicename=nil, packageid=nil, channelid=nil, orderid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @PackageId = packageid
          @ChannelId = channelid
          @OrderId = orderid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @PackageId = params['PackageId']
          @ChannelId = params['ChannelId']
          @OrderId = params['OrderId']
        end
      end

      # CreateCloudStorageAIService返回参数结构体
      class CreateCloudStorageAIServiceResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单 ID
        # @type OrderId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :RequestId

        def initialize(orderid=nil, requestid=nil)
          @OrderId = orderid
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudStorageAIServiceTask请求参数结构体
      class CreateCloudStorageAIServiceTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # - `VideoToText`：视频语义理解
        # @type ServiceType: String
        # @param StartTime: 待分析云存的起始时间
        # @type StartTime: Integer
        # @param EndTime: 待分析云存的结束时间
        # @type EndTime: Integer
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param Config: 视频分析配置参数
        # @type Config: String
        # @param ROI: 视频分析识别区域
        # @type ROI: String
        # @param VideoURLs: 分析外部传入的视频 URL 列表，支持 HLS 点播（m3u8）及常见视频格式（mp4 等）
        # @type VideoURLs: Array
        # @param CustomId: 自定义任务 ID
        # @type CustomId: String

        attr_accessor :ProductId, :DeviceName, :ServiceType, :StartTime, :EndTime, :ChannelId, :Config, :ROI, :VideoURLs, :CustomId

        def initialize(productid=nil, devicename=nil, servicetype=nil, starttime=nil, endtime=nil, channelid=nil, config=nil, roi=nil, videourls=nil, customid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @StartTime = starttime
          @EndTime = endtime
          @ChannelId = channelid
          @Config = config
          @ROI = roi
          @VideoURLs = videourls
          @CustomId = customid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ChannelId = params['ChannelId']
          @Config = params['Config']
          @ROI = params['ROI']
          @VideoURLs = params['VideoURLs']
          @CustomId = params['CustomId']
        end
      end

      # CreateCloudStorageAIServiceTask返回参数结构体
      class CreateCloudStorageAIServiceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
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

      # CreateDeviceChannel请求参数结构体
      class CreateDeviceChannelRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :ChannelId

        def initialize(productid=nil, devicename=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
        end
      end

      # CreateDeviceChannel返回参数结构体
      class CreateDeviceChannelResponse < TencentCloud::Common::AbstractModel
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

      # CreateDevice请求参数结构体
      class CreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}。
        # @type DeviceName: String
        # @param DevAddr: LoRaWAN 设备地址
        # @type DevAddr: String
        # @param AppKey: LoRaWAN 应用密钥
        # @type AppKey: String
        # @param DevEUI: LoRaWAN 设备唯一标识
        # @type DevEUI: String
        # @param AppSKey: LoRaWAN 应用会话密钥
        # @type AppSKey: String
        # @param NwkSKey: LoRaWAN 网络会话密钥
        # @type NwkSKey: String
        # @param DefinedPsk: 手动指定设备的PSK密钥
        # @type DefinedPsk: String

        attr_accessor :ProductId, :DeviceName, :DevAddr, :AppKey, :DevEUI, :AppSKey, :NwkSKey, :DefinedPsk

        def initialize(productid=nil, devicename=nil, devaddr=nil, appkey=nil, deveui=nil, appskey=nil, nwkskey=nil, definedpsk=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DevAddr = devaddr
          @AppKey = appkey
          @DevEUI = deveui
          @AppSKey = appskey
          @NwkSKey = nwkskey
          @DefinedPsk = definedpsk
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DevAddr = params['DevAddr']
          @AppKey = params['AppKey']
          @DevEUI = params['DevEUI']
          @AppSKey = params['AppSKey']
          @NwkSKey = params['NwkSKey']
          @DefinedPsk = params['DefinedPsk']
        end
      end

      # CreateDevice返回参数结构体
      class CreateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备参数描述。
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeviceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateExternalSourceAIServiceTask请求参数结构体
      class CreateExternalSourceAIServiceTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # - `VideoToText`：视频语义理解
        # @type ServiceType: String
        # @param VideoURLs: 分析外部传入的视频 URL 列表，支持 HLS 点播（m3u8）及常见视频格式（mp4 等）
        # @type VideoURLs: Array
        # @param CustomId: 自定义任务 ID
        # @type CustomId: String
        # @param Config: 视频分析配置参数
        # @type Config: String
        # @param ROI: 视频分析识别区域
        # @type ROI: String

        attr_accessor :ProductId, :ServiceType, :VideoURLs, :CustomId, :Config, :ROI

        def initialize(productid=nil, servicetype=nil, videourls=nil, customid=nil, config=nil, roi=nil)
          @ProductId = productid
          @ServiceType = servicetype
          @VideoURLs = videourls
          @CustomId = customid
          @Config = config
          @ROI = roi
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ServiceType = params['ServiceType']
          @VideoURLs = params['VideoURLs']
          @CustomId = params['CustomId']
          @Config = params['Config']
          @ROI = params['ROI']
        end
      end

      # CreateExternalSourceAIServiceTask返回参数结构体
      class CreateExternalSourceAIServiceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
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

      # CreateFenceBind请求参数结构体
      class CreateFenceBindRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Items: 围栏绑定的产品列表
        # @type Items: Array

        attr_accessor :FenceId, :Items

        def initialize(fenceid=nil, items=nil)
          @FenceId = fenceid
          @Items = items
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @Items << fencebindproductitem_tmp
            end
          end
        end
      end

      # CreateFenceBind返回参数结构体
      class CreateFenceBindResponse < TencentCloud::Common::AbstractModel
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

      # CreateFreeCloudStorage请求参数结构体
      class CreateFreeCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param PackageId: 云存套餐ID：
        # lye1w3d：低功耗事件3天周套餐。
        # ye1w3d：事件3天周套餐
        # @type PackageId: String
        # @param Override: 如果当前设备已开启云存套餐，Override=1会使用新套餐覆盖原有套餐。不传此参数则默认为0。
        # @type Override: Integer
        # @param PackageQueue: 套餐列表顺序：PackageQueue=front会立即使用新购买的套餐，新购套餐结束后，列表中下一个未过期的套餐继续生效；PackageQueue=end会等设备当前所有已购买套餐过期后才会生效新购套餐。与Override参数不能同时使用。
        # @type PackageQueue: String
        # @param OrderId: 订单id
        # @type OrderId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer
        # @param StorageRegion: 云存视频存储区域，国内默认为ap-guangzhou。海外默认为东南亚ap-singapore，可选美东na-ashburn、欧洲eu-frankfurt。
        # @type StorageRegion: String

        attr_accessor :ProductId, :DeviceName, :PackageId, :Override, :PackageQueue, :OrderId, :ChannelId, :StorageRegion

        def initialize(productid=nil, devicename=nil, packageid=nil, override=nil, packagequeue=nil, orderid=nil, channelid=nil, storageregion=nil)
          @ProductId = productid
          @DeviceName = devicename
          @PackageId = packageid
          @Override = override
          @PackageQueue = packagequeue
          @OrderId = orderid
          @ChannelId = channelid
          @StorageRegion = storageregion
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @PackageId = params['PackageId']
          @Override = params['Override']
          @PackageQueue = params['PackageQueue']
          @OrderId = params['OrderId']
          @ChannelId = params['ChannelId']
          @StorageRegion = params['StorageRegion']
        end
      end

      # CreateFreeCloudStorage返回参数结构体
      class CreateFreeCloudStorageResponse < TencentCloud::Common::AbstractModel
        # @param Price: 订单金额，单位为分
        # @type Price: Integer
        # @param Amount: 支付金额，单位为分
        # @type Amount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :Amount, :RequestId

        def initialize(price=nil, amount=nil, requestid=nil)
          @Price = price
          @Amount = amount
          @RequestId = requestid
        end

        def deserialize(params)
          @Price = params['Price']
          @Amount = params['Amount']
          @RequestId = params['RequestId']
        end
      end

      # CreateIotVideoCloudStorage请求参数结构体
      class CreateIotVideoCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param PackageId: 云存套餐ID：
        # yc1m3d ： 全时3天存储月套餐。
        # yc1m7d ： 全时7天存储月套餐。
        # yc1m30d ：全时30天存储月套餐。
        # yc1y3d ：全时3天存储年套餐。
        # yc1y7d ：全时7天存储年套餐。
        # yc1y30d ：全时30天存储年套餐。
        # ye1m3d ：事件3天存储月套餐。
        # ye1m7d ：事件7天存储月套餐。
        # ye1m30d ：事件30天存储月套餐 。
        # ye1y3d ：事件3天存储年套餐。
        # ye1y7d ：事件7天存储年套餐。
        # ye1y30d ：事件30天存储年套餐。
        # yc1w7d : 全时7天存储周套餐。
        # ye1w7d : 事件7天存储周套餐。
        # lye1m3d：低功耗事件3天月套餐。
        # lye1m7d：低功耗事件7天月套餐。
        # lye1m30d：低功耗事件30天月套餐。
        # lye1y3d：低功耗事件3天年套餐。
        # lye1y7d：低功耗事件7天年套餐。
        # lye1y30d：低功耗事件30天年套餐。
        # @type PackageId: String
        # @param Override: 如果当前设备已开启云存套餐，Override=1会使用新套餐覆盖原有套餐。不传此参数则默认为0。
        # @type Override: Integer
        # @param PackageQueue: 套餐列表顺序：PackageQueue=front会立即使用新购买的套餐，新购套餐结束后，列表中下一个未过期的套餐继续生效；PackageQueue=end会等设备当前所有已购买套餐过期后才会生效新购套餐。与Override参数不能同时使用。
        # @type PackageQueue: String
        # @param OrderId: 订单id
        # @type OrderId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer
        # @param StorageRegion: 云存视频存储区域，国内默认为ap-guangzhou。海外默认为东南亚ap-singapore，可选美东na-ashburn、欧洲eu-frankfurt。
        # @type StorageRegion: String

        attr_accessor :ProductId, :DeviceName, :PackageId, :Override, :PackageQueue, :OrderId, :ChannelId, :StorageRegion

        def initialize(productid=nil, devicename=nil, packageid=nil, override=nil, packagequeue=nil, orderid=nil, channelid=nil, storageregion=nil)
          @ProductId = productid
          @DeviceName = devicename
          @PackageId = packageid
          @Override = override
          @PackageQueue = packagequeue
          @OrderId = orderid
          @ChannelId = channelid
          @StorageRegion = storageregion
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @PackageId = params['PackageId']
          @Override = params['Override']
          @PackageQueue = params['PackageQueue']
          @OrderId = params['OrderId']
          @ChannelId = params['ChannelId']
          @StorageRegion = params['StorageRegion']
        end
      end

      # CreateIotVideoCloudStorage返回参数结构体
      class CreateIotVideoCloudStorageResponse < TencentCloud::Common::AbstractModel
        # @param Price: 订单金额，单位为分
        # @type Price: Integer
        # @param Amount: 支付金额，单位为分
        # @type Amount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :Amount, :RequestId

        def initialize(price=nil, amount=nil, requestid=nil)
          @Price = price
          @Amount = amount
          @RequestId = requestid
        end

        def deserialize(params)
          @Price = params['Price']
          @Amount = params['Amount']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoRaFrequency请求参数结构体
      class CreateLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqName: 频点配置名称
        # @type FreqName: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行RX1信道
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行RX2信道
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行RX1信道
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行RX2信道
        # @type ChannelsJoinRX2: Array
        # @param Description: 频点配置描述
        # @type Description: String

        attr_accessor :FreqName, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2, :Description

        def initialize(freqname=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil, description=nil)
          @FreqName = freqname
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
          @Description = description
        end

        def deserialize(params)
          @FreqName = params['FreqName']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
          @Description = params['Description']
        end
      end

      # CreateLoRaFrequency返回参数结构体
      class CreateLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: LoRa频点信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateLoRaGateway请求参数结构体
      class CreateLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关Id
        # @type GatewayId: String
        # @param Name: 网关名称
        # @type Name: String
        # @param Description: 详情描述
        # @type Description: String
        # @param Location: 位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param Position: 位置信息
        # @type Position: String
        # @param PositionDetails: 位置详情
        # @type PositionDetails: String
        # @param IsPublic: 是否公开
        # @type IsPublic: Boolean
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :GatewayId, :Name, :Description, :Location, :Position, :PositionDetails, :IsPublic, :FrequencyId

        def initialize(gatewayid=nil, name=nil, description=nil, location=nil, position=nil, positiondetails=nil, ispublic=nil, frequencyid=nil)
          @GatewayId = gatewayid
          @Name = name
          @Description = description
          @Location = location
          @Position = position
          @PositionDetails = positiondetails
          @IsPublic = ispublic
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new
            @Location.deserialize(params['Location'])
          end
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          @IsPublic = params['IsPublic']
          @FrequencyId = params['FrequencyId']
        end
      end

      # CreateLoRaGateway返回参数结构体
      class CreateLoRaGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Gateway: LoRa 网关信息
        # @type Gateway: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Gateway, :RequestId

        def initialize(gateway=nil, requestid=nil)
          @Gateway = gateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Gateway'].nil?
            @Gateway = LoRaGatewayItem.new
            @Gateway.deserialize(params['Gateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePositionFence请求参数结构体
      class CreatePositionFenceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param FenceName: 围栏名称
        # @type FenceName: String
        # @param FenceArea: 围栏区域信息，采用 GeoJSON 格式
        # @type FenceArea: String
        # @param FenceDesc: 围栏描述
        # @type FenceDesc: String

        attr_accessor :SpaceId, :FenceName, :FenceArea, :FenceDesc

        def initialize(spaceid=nil, fencename=nil, fencearea=nil, fencedesc=nil)
          @SpaceId = spaceid
          @FenceName = fencename
          @FenceArea = fencearea
          @FenceDesc = fencedesc
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @FenceName = params['FenceName']
          @FenceArea = params['FenceArea']
          @FenceDesc = params['FenceDesc']
        end
      end

      # CreatePositionFence返回参数结构体
      class CreatePositionFenceResponse < TencentCloud::Common::AbstractModel
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

      # CreatePositionSpace请求参数结构体
      class CreatePositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param SpaceName: 空间名称
        # @type SpaceName: String
        # @param AuthorizeType: 授权类型，0：只读 1：读写
        # @type AuthorizeType: Integer
        # @param ProductIdList: 产品列表
        # @type ProductIdList: Array
        # @param Description: 描述
        # @type Description: String
        # @param Icon: 缩略图
        # @type Icon: String

        attr_accessor :ProjectId, :SpaceName, :AuthorizeType, :ProductIdList, :Description, :Icon

        def initialize(projectid=nil, spacename=nil, authorizetype=nil, productidlist=nil, description=nil, icon=nil)
          @ProjectId = projectid
          @SpaceName = spacename
          @AuthorizeType = authorizetype
          @ProductIdList = productidlist
          @Description = description
          @Icon = icon
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SpaceName = params['SpaceName']
          @AuthorizeType = params['AuthorizeType']
          @ProductIdList = params['ProductIdList']
          @Description = params['Description']
          @Icon = params['Icon']
        end
      end

      # CreatePositionSpace返回参数结构体
      class CreatePositionSpaceResponse < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间Id
        # @type SpaceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpaceId, :RequestId

        def initialize(spaceid=nil, requestid=nil)
          @SpaceId = spaceid
          @RequestId = requestid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param InstanceId: 实例ID，不带实例ID，默认为公共实例
        # @type InstanceId: String

        attr_accessor :ProjectName, :ProjectDesc, :InstanceId

        def initialize(projectname=nil, projectdesc=nil, instanceid=nil)
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @InstanceId = params['InstanceId']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 返回信息
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId

        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntry.new
            @Project.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateStudioProduct请求参数结构体
      class CreateStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称，名称不能和已经存在的产品名称重复。命名规则：[a-zA-Z0-9:_-]{1,32}
        # @type ProductName: String
        # @param CategoryId: 产品分组模板ID , ( 自定义模板填写1 , 控制台调用会使用预置的其他ID)
        # @type CategoryId: Integer
        # @param ProductType: 产品类型 填写 ( 0 普通产品 ， 5 网关产品)
        # @type ProductType: Integer
        # @param EncryptionType: 加密类型 ，1表示证书认证，2表示秘钥认证，21表示TID认证-SE方式，22表示TID认证-软加固方式
        # @type EncryptionType: String
        # @param NetType: 连接类型 可以填写 wifi、wifi-ble、cellular、5g、lorawan、ble、ethernet、wifi-ethernet、else、sub_zigbee、sub_ble、sub_433mhz、sub_else、sub_blemesh
        # @type NetType: String
        # @param DataProtocol: 数据协议 (1 使用物模型 2 为自定义)
        # @type DataProtocol: Integer
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param ProjectId: 产品的项目ID
        # @type ProjectId: String
        # @param Rate: 平均传输速率
        # @type Rate: String
        # @param Period: 期限
        # @type Period: String

        attr_accessor :ProductName, :CategoryId, :ProductType, :EncryptionType, :NetType, :DataProtocol, :ProductDesc, :ProjectId, :Rate, :Period

        def initialize(productname=nil, categoryid=nil, producttype=nil, encryptiontype=nil, nettype=nil, dataprotocol=nil, productdesc=nil, projectid=nil, rate=nil, period=nil)
          @ProductName = productname
          @CategoryId = categoryid
          @ProductType = producttype
          @EncryptionType = encryptiontype
          @NetType = nettype
          @DataProtocol = dataprotocol
          @ProductDesc = productdesc
          @ProjectId = projectid
          @Rate = rate
          @Period = period
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @CategoryId = params['CategoryId']
          @ProductType = params['ProductType']
          @EncryptionType = params['EncryptionType']
          @NetType = params['NetType']
          @DataProtocol = params['DataProtocol']
          @ProductDesc = params['ProductDesc']
          @ProjectId = params['ProjectId']
          @Rate = params['Rate']
          @Period = params['Period']
        end
      end

      # CreateStudioProduct返回参数结构体
      class CreateStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品描述
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId

        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTRTCSignaturesWithRoomId请求参数结构体
      class CreateTRTCSignaturesWithRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param TRTCUserIds: TRTC进房间的用户名称数组，数组元素不可重复，最长不超过 10 个。
        # @type TRTCUserIds: Array
        # @param RoomId: 房间id
        # @type RoomId: String

        attr_accessor :TRTCUserIds, :RoomId

        def initialize(trtcuserids=nil, roomid=nil)
          @TRTCUserIds = trtcuserids
          @RoomId = roomid
        end

        def deserialize(params)
          @TRTCUserIds = params['TRTCUserIds']
          @RoomId = params['RoomId']
        end
      end

      # CreateTRTCSignaturesWithRoomId返回参数结构体
      class CreateTRTCSignaturesWithRoomIdResponse < TencentCloud::Common::AbstractModel
        # @param TRTCParamList: 返回参数数组
        # @type TRTCParamList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TRTCParamList, :RequestId

        def initialize(trtcparamlist=nil, requestid=nil)
          @TRTCParamList = trtcparamlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TRTCParamList'].nil?
            @TRTCParamList = []
            params['TRTCParamList'].each do |i|
              trtcparams_tmp = TRTCParams.new
              trtcparams_tmp.deserialize(i)
              @TRTCParamList << trtcparams_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTopicPolicy请求参数结构体
      class CreateTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限，1发布，2订阅，3订阅和发布
        # @type Privilege: Integer

        attr_accessor :ProductId, :TopicName, :Privilege

        def initialize(productid=nil, topicname=nil, privilege=nil)
          @ProductId = productid
          @TopicName = topicname
          @Privilege = privilege
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
          @Privilege = params['Privilege']
        end
      end

      # CreateTopicPolicy返回参数结构体
      class CreateTopicPolicyResponse < TencentCloud::Common::AbstractModel
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

      # CreateTopicRule请求参数结构体
      class CreateTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 规则内容
        # @type TopicRulePayload: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRulePayload`

        attr_accessor :RuleName, :TopicRulePayload

        def initialize(rulename=nil, topicrulepayload=nil)
          @RuleName = rulename
          @TopicRulePayload = topicrulepayload
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['TopicRulePayload'].nil?
            @TopicRulePayload = TopicRulePayload.new
            @TopicRulePayload.deserialize(params['TopicRulePayload'])
          end
        end
      end

      # CreateTopicRule返回参数结构体
      class CreateTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCloudStorageEvent请求参数结构体
      class DeleteCloudStorageEventRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param EventId: 事件id
        # @type EventId: String
        # @param StartTime: 开始时间，unix时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间
        # @type EndTime: Integer
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :EventId, :StartTime, :EndTime, :UserId, :ChannelId

        def initialize(productid=nil, devicename=nil, eventid=nil, starttime=nil, endtime=nil, userid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @EventId = eventid
          @StartTime = starttime
          @EndTime = endtime
          @UserId = userid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @EventId = params['EventId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
        end
      end

      # DeleteCloudStorageEvent返回参数结构体
      class DeleteCloudStorageEventResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String
        # @param ForceDelete: 是否删除绑定设备
        # @type ForceDelete: Boolean

        attr_accessor :ProductId, :DeviceName, :ForceDelete

        def initialize(productid=nil, devicename=nil, forcedelete=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ForceDelete = forcedelete
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ForceDelete = params['ForceDelete']
        end
      end

      # DeleteDevice返回参数结构体
      class DeleteDeviceResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 删除的结果代码
        # @type ResultCode: String
        # @param ResultMessage: 删除的结果信息
        # @type ResultMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ResultMessage, :RequestId

        def initialize(resultcode=nil, resultmessage=nil, requestid=nil)
          @ResultCode = resultcode
          @ResultMessage = resultmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMessage = params['ResultMessage']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDevices请求参数结构体
      class DeleteDevicesRequest < TencentCloud::Common::AbstractModel
        # @param DevicesItems: 多个设备标识
        # @type DevicesItems: Array

        attr_accessor :DevicesItems

        def initialize(devicesitems=nil)
          @DevicesItems = devicesitems
        end

        def deserialize(params)
          unless params['DevicesItems'].nil?
            @DevicesItems = []
            params['DevicesItems'].each do |i|
              devicesitem_tmp = DevicesItem.new
              devicesitem_tmp.deserialize(i)
              @DevicesItems << devicesitem_tmp
            end
          end
        end
      end

      # DeleteDevices返回参数结构体
      class DeleteDevicesResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 删除的结果代码
        # @type ResultCode: String
        # @param ResultMessage: 删除的结果信息
        # @type ResultMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ResultMessage, :RequestId

        def initialize(resultcode=nil, resultmessage=nil, requestid=nil)
          @ResultCode = resultcode
          @ResultMessage = resultmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMessage = params['ResultMessage']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFenceBind请求参数结构体
      class DeleteFenceBindRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Items: 围栏绑定的产品信息
        # @type Items: Array

        attr_accessor :FenceId, :Items

        def initialize(fenceid=nil, items=nil)
          @FenceId = fenceid
          @Items = items
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @Items << fencebindproductitem_tmp
            end
          end
        end
      end

      # DeleteFenceBind返回参数结构体
      class DeleteFenceBindResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoRaFrequency请求参数结构体
      class DeleteLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String

        attr_accessor :FreqId

        def initialize(freqid=nil)
          @FreqId = freqid
        end

        def deserialize(params)
          @FreqId = params['FreqId']
        end
      end

      # DeleteLoRaFrequency返回参数结构体
      class DeleteLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoRaGateway请求参数结构体
      class DeleteLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关 Id
        # @type GatewayId: String

        attr_accessor :GatewayId

        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DeleteLoRaGateway返回参数结构体
      class DeleteLoRaGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeletePositionFence请求参数结构体
      class DeletePositionFenceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param FenceId: 围栏Id
        # @type FenceId: Integer

        attr_accessor :SpaceId, :FenceId

        def initialize(spaceid=nil, fenceid=nil)
          @SpaceId = spaceid
          @FenceId = fenceid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @FenceId = params['FenceId']
        end
      end

      # DeletePositionFence返回参数结构体
      class DeletePositionFenceResponse < TencentCloud::Common::AbstractModel
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

      # DeletePositionSpace请求参数结构体
      class DeletePositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String

        attr_accessor :SpaceId

        def initialize(spaceid=nil)
          @SpaceId = spaceid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
        end
      end

      # DeletePositionSpace返回参数结构体
      class DeletePositionSpaceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
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

      # DeleteStudioProduct请求参数结构体
      class DeleteStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DeleteStudioProduct返回参数结构体
      class DeleteStudioProductResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTopicPolicy请求参数结构体
      class DeleteTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String

        attr_accessor :ProductId, :TopicName

        def initialize(productid=nil, topicname=nil)
          @ProductId = productid
          @TopicName = topicname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
        end
      end

      # DeleteTopicPolicy返回参数结构体
      class DeleteTopicPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTopicRule请求参数结构体
      class DeleteTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名
        # @type RuleName: String

        attr_accessor :RuleName

        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DeleteTopicRule返回参数结构体
      class DeleteTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # DescribeActivateDevice请求参数结构体
      class DescribeActivateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeActivateDevice返回参数结构体
      class DescribeActivateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备激活详情信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.ActivateDeviceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ActivateDeviceInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeActivateLicenseService请求参数结构体
      class DescribeActivateLicenseServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param LicenseType: 激活码类型
        # @type LicenseType: String

        attr_accessor :InstanceId, :LicenseType

        def initialize(instanceid=nil, licensetype=nil)
          @InstanceId = instanceid
          @LicenseType = licensetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LicenseType = params['LicenseType']
        end
      end

      # DescribeActivateLicenseService返回参数结构体
      class DescribeActivateLicenseServiceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 增值服务激活码信息
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
              licenseservicenuminfo_tmp = LicenseServiceNumInfo.new
              licenseservicenuminfo_tmp.deserialize(i)
              @Data << licenseservicenuminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchProduction请求参数结构体
      class DescribeBatchProductionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param BatchProductionId: 量产ID
        # @type BatchProductionId: String

        attr_accessor :ProductId, :BatchProductionId

        def initialize(productid=nil, batchproductionid=nil)
          @ProductId = productid
          @BatchProductionId = batchproductionid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @BatchProductionId = params['BatchProductionId']
        end
      end

      # DescribeBatchProduction返回参数结构体
      class DescribeBatchProductionResponse < TencentCloud::Common::AbstractModel
        # @param BatchCnt: 量产数量。
        # @type BatchCnt: Integer
        # @param BurnMethod: 烧录方式。
        # @type BurnMethod: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: Integer
        # @param DownloadUrl: 下载URL。
        # @type DownloadUrl: String
        # @param GenerationMethod: 生成方式。
        # @type GenerationMethod: Integer
        # @param UploadUrl: 上传URL。
        # @type UploadUrl: String
        # @param SuccessCount: 成功数
        # @type SuccessCount: Integer
        # @param LastFailedReason: 量产最后失败原因
        # @type LastFailedReason: String
        # @param Status: 量产状态  0：任务创建，未量产；1：处理中；2：量产结束上传结果中；3：任务完成
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchCnt, :BurnMethod, :CreateTime, :DownloadUrl, :GenerationMethod, :UploadUrl, :SuccessCount, :LastFailedReason, :Status, :RequestId

        def initialize(batchcnt=nil, burnmethod=nil, createtime=nil, downloadurl=nil, generationmethod=nil, uploadurl=nil, successcount=nil, lastfailedreason=nil, status=nil, requestid=nil)
          @BatchCnt = batchcnt
          @BurnMethod = burnmethod
          @CreateTime = createtime
          @DownloadUrl = downloadurl
          @GenerationMethod = generationmethod
          @UploadUrl = uploadurl
          @SuccessCount = successcount
          @LastFailedReason = lastfailedreason
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchCnt = params['BatchCnt']
          @BurnMethod = params['BurnMethod']
          @CreateTime = params['CreateTime']
          @DownloadUrl = params['DownloadUrl']
          @GenerationMethod = params['GenerationMethod']
          @UploadUrl = params['UploadUrl']
          @SuccessCount = params['SuccessCount']
          @LastFailedReason = params['LastFailedReason']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindedProducts请求参数结构体
      class DescribeBindedProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param ProductSource: 是否跨账号绑定产品
        # @type ProductSource: Integer

        attr_accessor :GatewayProductId, :Offset, :Limit, :ProductSource

        def initialize(gatewayproductid=nil, offset=nil, limit=nil, productsource=nil)
          @GatewayProductId = gatewayproductid
          @Offset = offset
          @Limit = limit
          @ProductSource = productsource
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductSource = params['ProductSource']
        end
      end

      # DescribeBindedProducts返回参数结构体
      class DescribeBindedProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 当前分页的子产品数组
        # @type Products: Array
        # @param Total: 绑定的子产品总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId

        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              bindproductinfo_tmp = BindProductInfo.new
              bindproductinfo_tmp.deserialize(i)
              @Products << bindproductinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageAIServiceCallback请求参数结构体
      class DescribeCloudStorageAIServiceCallbackRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeCloudStorageAIServiceCallback返回参数结构体
      class DescribeCloudStorageAIServiceCallbackResponse < TencentCloud::Common::AbstractModel
        # @param Type: 推送类型。http：HTTP 回调
        # @type Type: String
        # @param CallbackUrl: HTTP 回调 URL
        # @type CallbackUrl: String
        # @param CallbackToken: HTTP 回调鉴权 Token
        # @type CallbackToken: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :CallbackUrl, :CallbackToken, :RequestId

        def initialize(type=nil, callbackurl=nil, callbacktoken=nil, requestid=nil)
          @Type = type
          @CallbackUrl = callbackurl
          @CallbackToken = callbacktoken
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @CallbackUrl = params['CallbackUrl']
          @CallbackToken = params['CallbackToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageAIService请求参数结构体
      class DescribeCloudStorageAIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # @type ServiceType: String

        attr_accessor :ProductId, :DeviceName, :ServiceType

        def initialize(productid=nil, devicename=nil, servicetype=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
        end
      end

      # DescribeCloudStorageAIService返回参数结构体
      class DescribeCloudStorageAIServiceResponse < TencentCloud::Common::AbstractModel
        # @param Type: 云存 AI 套餐类型。可能取值：

        # - `1`：全时套餐
        # - `2`：事件套餐
        # - `3`：低功耗套餐
        # @type Type: Integer
        # @param Status: 云存 AI 套餐生效状态。可能取值：

        # - `0`：未开通或已过期
        # - `1`：生效中
        # @type Status: Integer
        # @param ExpireTime: 云存 AI 套餐过期时间 UNIX 时间戳
        # @type ExpireTime: Integer
        # @param UserId: 用户 ID
        # @type UserId: String
        # @param Enabled: 视频分析启用状态
        # @type Enabled: Boolean
        # @param Config: 视频分析配置参数
        # @type Config: String
        # @param ROI: 视频分析识别区域
        # @type ROI: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :Status, :ExpireTime, :UserId, :Enabled, :Config, :ROI, :RequestId

        def initialize(type=nil, status=nil, expiretime=nil, userid=nil, enabled=nil, config=nil, roi=nil, requestid=nil)
          @Type = type
          @Status = status
          @ExpireTime = expiretime
          @UserId = userid
          @Enabled = enabled
          @Config = config
          @ROI = roi
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @Status = params['Status']
          @ExpireTime = params['ExpireTime']
          @UserId = params['UserId']
          @Enabled = params['Enabled']
          @Config = params['Config']
          @ROI = params['ROI']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageAIServiceTask请求参数结构体
      class DescribeCloudStorageAIServiceTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param FileURLExpireTime: 下载 URL 的过期时间。

        # 若传入该参数，则响应中将包含所有文件的下载 URL
        # @type FileURLExpireTime: Integer

        attr_accessor :TaskId, :FileURLExpireTime

        def initialize(taskid=nil, fileurlexpiretime=nil)
          @TaskId = taskid
          @FileURLExpireTime = fileurlexpiretime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileURLExpireTime = params['FileURLExpireTime']
        end
      end

      # DescribeCloudStorageAIServiceTask返回参数结构体
      class DescribeCloudStorageAIServiceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息
        # @type TaskInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.CloudStorageAIServiceTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId

        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = CloudStorageAIServiceTask.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageAIServiceTasks请求参数结构体
      class DescribeCloudStorageAIServiceTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # - `VideoToText`：视频语义理解
        # @type ServiceType: String
        # @param Limit: 分页拉取数量
        # @type Limit: Integer
        # @param Offset: 分页拉取偏移
        # @type Offset: Integer
        # @param Status: 任务状态。可选值：
        # - （不传）：查询全部状态的任务
        # - `1`：失败
        # - `2`：成功但结果为空
        # - `3`：成功且结果非空
        # - `4`：执行中
        # @type Status: Integer
        # @param UserId: 用户 ID
        # @type UserId: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param DeviceNames: 设备名称列表。

        # 当需要同时查询多台设备的任务列表时传入，优先级高于参数 `DeviceName`
        # @type DeviceNames: Array
        # @param StartTime: 查询任务时间范围的起始时间（秒级 UNIX 时间戳）
        # @type StartTime: Integer
        # @param EndTime: 查询任务时间范围的结束时间（秒级 UNIX 时间戳）
        # @type EndTime: Integer
        # @param FileURLExpireTime: 下载 URL 的过期时间。

        # 若传入该参数，则响应中将包含所有文件的下载 URL
        # @type FileURLExpireTime: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceType, :Limit, :Offset, :Status, :UserId, :ChannelId, :DeviceNames, :StartTime, :EndTime, :FileURLExpireTime

        def initialize(productid=nil, devicename=nil, servicetype=nil, limit=nil, offset=nil, status=nil, userid=nil, channelid=nil, devicenames=nil, starttime=nil, endtime=nil, fileurlexpiretime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @Limit = limit
          @Offset = offset
          @Status = status
          @UserId = userid
          @ChannelId = channelid
          @DeviceNames = devicenames
          @StartTime = starttime
          @EndTime = endtime
          @FileURLExpireTime = fileurlexpiretime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Status = params['Status']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
          @DeviceNames = params['DeviceNames']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @FileURLExpireTime = params['FileURLExpireTime']
        end
      end

      # DescribeCloudStorageAIServiceTasks返回参数结构体
      class DescribeCloudStorageAIServiceTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param Total: 任务数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :Total, :RequestId

        def initialize(tasks=nil, total=nil, requestid=nil)
          @Tasks = tasks
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              cloudstorageaiservicetask_tmp = CloudStorageAIServiceTask.new
              cloudstorageaiservicetask_tmp.deserialize(i)
              @Tasks << cloudstorageaiservicetask_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageDate请求参数结构体
      class DescribeCloudStorageDateRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :UserId, :ChannelId

        def initialize(productid=nil, devicename=nil, userid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeCloudStorageDate返回参数结构体
      class DescribeCloudStorageDateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 云存日期数组，["2021-01-05","2021-01-06"]
        # @type Data: Array
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

      # DescribeCloudStorageEvents请求参数结构体
      class DescribeCloudStorageEventsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param StartTime: 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        # @type StartTime: Integer
        # @param EndTime: 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        # @type EndTime: Integer
        # @param Context: 请求上下文, 用作查询游标
        # @type Context: String
        # @param Size: 查询数据项目的最大数量, 默认为10。假设传Size=10，返回的实际事件数量为N，则 5 <= N <= 10。
        # @type Size: Integer
        # @param EventId: 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        # @type EventId: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID 非NVR设备则不填 NVR设备则必填 默认为无
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :StartTime, :EndTime, :Context, :Size, :EventId, :UserId, :ChannelId

        def initialize(productid=nil, devicename=nil, starttime=nil, endtime=nil, context=nil, size=nil, eventid=nil, userid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @Size = size
          @EventId = eventid
          @UserId = userid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @Size = params['Size']
          @EventId = params['EventId']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeCloudStorageEvents返回参数结构体
      class DescribeCloudStorageEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 云存事件列表
        # @type Events: Array
        # @param Context: 请求上下文, 用作查询游标
        # @type Context: String
        # @param Listover: 拉取结果是否已经结束
        # @type Listover: Boolean
        # @param Total: 内部结果数量，并不等同于事件总数。
        # @type Total: Integer
        # @param VideoURL: 视频播放URL
        # @type VideoURL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :Context, :Listover, :Total, :VideoURL, :RequestId

        def initialize(events=nil, context=nil, listover=nil, total=nil, videourl=nil, requestid=nil)
          @Events = events
          @Context = context
          @Listover = listover
          @Total = total
          @VideoURL = videourl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              cloudstorageevent_tmp = CloudStorageEvent.new
              cloudstorageevent_tmp.deserialize(i)
              @Events << cloudstorageevent_tmp
            end
          end
          @Context = params['Context']
          @Listover = params['Listover']
          @Total = params['Total']
          @VideoURL = params['VideoURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageEventsWithAITasks请求参数结构体
      class DescribeCloudStorageEventsWithAITasksRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceTypes: 事件关联的视频 AI 分析服务类型（支持多选）。可选值：

        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # - `VideoToText`：视频语义理解
        # @type ServiceTypes: Array
        # @param StartTime: 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        # @type StartTime: Integer
        # @param EndTime: 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        # @type EndTime: Integer
        # @param Context: 请求上下文, 用作查询游标
        # @type Context: String
        # @param Size: 查询数据项目的最大数量, 默认为10。假设传Size=10，返回的实际事件数量为N，则 5 <= N <= 10。
        # @type Size: Integer
        # @param EventId: 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        # @type EventId: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID 非NVR设备则不填 NVR设备则必填 默认为无
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceTypes, :StartTime, :EndTime, :Context, :Size, :EventId, :UserId, :ChannelId

        def initialize(productid=nil, devicename=nil, servicetypes=nil, starttime=nil, endtime=nil, context=nil, size=nil, eventid=nil, userid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceTypes = servicetypes
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @Size = size
          @EventId = eventid
          @UserId = userid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceTypes = params['ServiceTypes']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @Size = params['Size']
          @EventId = params['EventId']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeCloudStorageEventsWithAITasks返回参数结构体
      class DescribeCloudStorageEventsWithAITasksResponse < TencentCloud::Common::AbstractModel
        # @param Events: 云存事件列表
        # @type Events: Array
        # @param Context: 请求上下文, 用作查询游标
        # @type Context: String
        # @param Listover: 拉取结果是否已经结束
        # @type Listover: Boolean
        # @param Total: 内部结果数量，并不等同于事件总数。
        # @type Total: Integer
        # @param VideoURL: 视频播放URL
        # @type VideoURL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :Context, :Listover, :Total, :VideoURL, :RequestId

        def initialize(events=nil, context=nil, listover=nil, total=nil, videourl=nil, requestid=nil)
          @Events = events
          @Context = context
          @Listover = listover
          @Total = total
          @VideoURL = videourl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              cloudstorageeventwithaitasks_tmp = CloudStorageEventWithAITasks.new
              cloudstorageeventwithaitasks_tmp.deserialize(i)
              @Events << cloudstorageeventwithaitasks_tmp
            end
          end
          @Context = params['Context']
          @Listover = params['Listover']
          @Total = params['Total']
          @VideoURL = params['VideoURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageMultiThumbnail请求参数结构体
      class DescribeCloudStorageMultiThumbnailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param MultiThumbnail: 多个缩略图文件名根据 | 分割
        # @type MultiThumbnail: String

        attr_accessor :ProductId, :DeviceName, :MultiThumbnail

        def initialize(productid=nil, devicename=nil, multithumbnail=nil)
          @ProductId = productid
          @DeviceName = devicename
          @MultiThumbnail = multithumbnail
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @MultiThumbnail = params['MultiThumbnail']
        end
      end

      # DescribeCloudStorageMultiThumbnail返回参数结构体
      class DescribeCloudStorageMultiThumbnailResponse < TencentCloud::Common::AbstractModel
        # @param ThumbnailURLInfoList: 缩略图访问地址
        # @type ThumbnailURLInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ThumbnailURLInfoList, :RequestId

        def initialize(thumbnailurlinfolist=nil, requestid=nil)
          @ThumbnailURLInfoList = thumbnailurlinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ThumbnailURLInfoList'].nil?
            @ThumbnailURLInfoList = []
            params['ThumbnailURLInfoList'].each do |i|
              thumbnailurlinfolist_tmp = ThumbnailURLInfoList.new
              thumbnailurlinfolist_tmp.deserialize(i)
              @ThumbnailURLInfoList << thumbnailurlinfolist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageOrder请求参数结构体
      class DescribeCloudStorageOrderRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单id
        # @type OrderId: String

        attr_accessor :OrderId

        def initialize(orderid=nil)
          @OrderId = orderid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
        end
      end

      # DescribeCloudStorageOrder返回参数结构体
      class DescribeCloudStorageOrderResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 云存套餐开始时间
        # @type StartTime: Integer
        # @param ExpireTime: 云存套餐过期时间
        # @type ExpireTime: Integer
        # @param PackageId: 套餐id
        # @type PackageId: String
        # @param Status: 套餐状态
        # 0：等待生效
        # 1: 已过期
        # 2:生效
        # @type Status: Integer
        # @param ChannelId: 通道id
        # @type ChannelId: Integer
        # @param Price: 订单金额，单位为分
        # @type Price: Integer
        # @param Amount: 支付金额，单位为分
        # @type Amount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :ExpireTime, :PackageId, :Status, :ChannelId, :Price, :Amount, :RequestId

        def initialize(starttime=nil, expiretime=nil, packageid=nil, status=nil, channelid=nil, price=nil, amount=nil, requestid=nil)
          @StartTime = starttime
          @ExpireTime = expiretime
          @PackageId = packageid
          @Status = status
          @ChannelId = channelid
          @Price = price
          @Amount = amount
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @ExpireTime = params['ExpireTime']
          @PackageId = params['PackageId']
          @Status = params['Status']
          @ChannelId = params['ChannelId']
          @Price = params['Price']
          @Amount = params['Amount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStoragePackageConsumeDetails请求参数结构体
      class DescribeCloudStoragePackageConsumeDetailsRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始日期
        # @type StartDate: String
        # @param EndDate: 结束日期
        # @type EndDate: String

        attr_accessor :StartDate, :EndDate

        def initialize(startdate=nil, enddate=nil)
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeCloudStoragePackageConsumeDetails返回参数结构体
      class DescribeCloudStoragePackageConsumeDetailsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCloudStoragePackageConsumeStats请求参数结构体
      class DescribeCloudStoragePackageConsumeStatsRequest < TencentCloud::Common::AbstractModel
        # @param StartDate: 开始日期
        # @type StartDate: String
        # @param EndDate: 结束日期，开始与结束日期间隔不可超过一年
        # @type EndDate: String

        attr_accessor :StartDate, :EndDate

        def initialize(startdate=nil, enddate=nil)
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeCloudStoragePackageConsumeStats返回参数结构体
      class DescribeCloudStoragePackageConsumeStatsResponse < TencentCloud::Common::AbstractModel
        # @param Stats: 统计列表详情
        # @type Stats: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Stats, :RequestId

        def initialize(stats=nil, requestid=nil)
          @Stats = stats
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Stats'].nil?
            @Stats = []
            params['Stats'].each do |i|
              packageconsumestat_tmp = PackageConsumeStat.new
              packageconsumestat_tmp.deserialize(i)
              @Stats << packageconsumestat_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorage请求参数结构体
      class DescribeCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 云存用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID 非NVR设备不填 NVR设备必填 默认为无
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :UserId, :ChannelId

        def initialize(productid=nil, devicename=nil, userid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeCloudStorage返回参数结构体
      class DescribeCloudStorageResponse < TencentCloud::Common::AbstractModel
        # @param Status: 云存开启状态，1为开启，0为未开启或已过期
        # @type Status: Integer
        # @param Type: 云存类型，1为全时云存，2为事件云存
        # @type Type: Integer
        # @param ExpireTime: 云存套餐过期时间
        # @type ExpireTime: Integer
        # @param ShiftDuration: 云存回看时长
        # @type ShiftDuration: Integer
        # @param UserId: 云存用户ID
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Type, :ExpireTime, :ShiftDuration, :UserId, :RequestId

        def initialize(status=nil, type=nil, expiretime=nil, shiftduration=nil, userid=nil, requestid=nil)
          @Status = status
          @Type = type
          @ExpireTime = expiretime
          @ShiftDuration = shiftduration
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @ShiftDuration = params['ShiftDuration']
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageStreamData请求参数结构体
      class DescribeCloudStorageStreamDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param StartTime: 图片流事件开始时间
        # @type StartTime: Integer

        attr_accessor :ProductId, :DeviceName, :StartTime

        def initialize(productid=nil, devicename=nil, starttime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @StartTime = starttime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTime = params['StartTime']
        end
      end

      # DescribeCloudStorageStreamData返回参数结构体
      class DescribeCloudStorageStreamDataResponse < TencentCloud::Common::AbstractModel
        # @param VideoStream: 图片流视频地址
        # @type VideoStream: String
        # @param AudioStream: 图片流音频地址
        # @type AudioStream: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VideoStream, :AudioStream, :RequestId

        def initialize(videostream=nil, audiostream=nil, requestid=nil)
          @VideoStream = videostream
          @AudioStream = audiostream
          @RequestId = requestid
        end

        def deserialize(params)
          @VideoStream = params['VideoStream']
          @AudioStream = params['AudioStream']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageThumbnailList请求参数结构体
      class DescribeCloudStorageThumbnailListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ThumbnailList: 缩略图文件名列表
        # @type ThumbnailList: Array

        attr_accessor :ProductId, :DeviceName, :ThumbnailList

        def initialize(productid=nil, devicename=nil, thumbnaillist=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ThumbnailList = thumbnaillist
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ThumbnailList = params['ThumbnailList']
        end
      end

      # DescribeCloudStorageThumbnailList返回参数结构体
      class DescribeCloudStorageThumbnailListResponse < TencentCloud::Common::AbstractModel
        # @param ThumbnailURLInfoList: 缩略图访问地址
        # @type ThumbnailURLInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ThumbnailURLInfoList, :RequestId

        def initialize(thumbnailurlinfolist=nil, requestid=nil)
          @ThumbnailURLInfoList = thumbnailurlinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ThumbnailURLInfoList'].nil?
            @ThumbnailURLInfoList = []
            params['ThumbnailURLInfoList'].each do |i|
              thumbnailurlinfolist_tmp = ThumbnailURLInfoList.new
              thumbnailurlinfolist_tmp.deserialize(i)
              @ThumbnailURLInfoList << thumbnailurlinfolist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageThumbnail请求参数结构体
      class DescribeCloudStorageThumbnailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Thumbnail: 缩略图文件名
        # @type Thumbnail: String

        attr_accessor :ProductId, :DeviceName, :Thumbnail

        def initialize(productid=nil, devicename=nil, thumbnail=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Thumbnail = thumbnail
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Thumbnail = params['Thumbnail']
        end
      end

      # DescribeCloudStorageThumbnail返回参数结构体
      class DescribeCloudStorageThumbnailResponse < TencentCloud::Common::AbstractModel
        # @param ThumbnailURL: 缩略图访问地址
        # @type ThumbnailURL: String
        # @param ExpireTime: 缩略图访问地址的过期时间
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ThumbnailURL, :ExpireTime, :RequestId

        def initialize(thumbnailurl=nil, expiretime=nil, requestid=nil)
          @ThumbnailURL = thumbnailurl
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @ThumbnailURL = params['ThumbnailURL']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageTime请求参数结构体
      class DescribeCloudStorageTimeRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Date: 云存日期，例如"2020-01-05"
        # @type Date: String
        # @param StartTime: 开始时间，unix时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间
        # @type EndTime: Integer
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :Date, :StartTime, :EndTime, :UserId, :ChannelId

        def initialize(productid=nil, devicename=nil, date=nil, starttime=nil, endtime=nil, userid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Date = date
          @StartTime = starttime
          @EndTime = endtime
          @UserId = userid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Date = params['Date']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeCloudStorageTime返回参数结构体
      class DescribeCloudStorageTimeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 接口返回数据
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.CloudStorageTimeData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CloudStorageTimeData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageUsers请求参数结构体
      class DescribeCloudStorageUsersRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Limit: 分页拉取数量
        # @type Limit: Integer
        # @param Offset: 分页拉取偏移
        # @type Offset: Integer

        attr_accessor :ProductId, :DeviceName, :Limit, :Offset

        def initialize(productid=nil, devicename=nil, limit=nil, offset=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCloudStorageUsers返回参数结构体
      class DescribeCloudStorageUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户总数
        # @type TotalCount: Integer
        # @param Users: 用户信息
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Users, :RequestId

        def initialize(totalcount=nil, users=nil, requestid=nil)
          @TotalCount = totalcount
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              cloudstorageuserinfo_tmp = CloudStorageUserInfo.new
              cloudstorageuserinfo_tmp.deserialize(i)
              @Users << cloudstorageuserinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceBindGateway请求参数结构体
      class DescribeDeviceBindGatewayRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDeviceBindGateway返回参数结构体
      class DescribeDeviceBindGatewayResponse < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备名
        # @type GatewayDeviceName: String
        # @param GatewayName: 网关产品名称
        # @type GatewayName: String
        # @param GatewayProductOwnerName: 设备对应产品所属的主账号名称
        # @type GatewayProductOwnerName: String
        # @param GatewayProductOwnerUin: 设备对应产品所属的主账号 UIN
        # @type GatewayProductOwnerUin: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayProductId, :GatewayDeviceName, :GatewayName, :GatewayProductOwnerName, :GatewayProductOwnerUin, :RequestId

        def initialize(gatewayproductid=nil, gatewaydevicename=nil, gatewayname=nil, gatewayproductownername=nil, gatewayproductowneruin=nil, requestid=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @GatewayName = gatewayname
          @GatewayProductOwnerName = gatewayproductownername
          @GatewayProductOwnerUin = gatewayproductowneruin
          @RequestId = requestid
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @GatewayName = params['GatewayName']
          @GatewayProductOwnerName = params['GatewayProductOwnerName']
          @GatewayProductOwnerUin = params['GatewayProductOwnerUin']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceDataHistory请求参数结构体
      class DescribeDeviceDataHistoryRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 区间开始时间（Unix 时间戳，毫秒级）
        # @type MinTime: Integer
        # @param MaxTime: 区间结束时间（Unix 时间戳，毫秒级）
        # @type MaxTime: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # @type FieldName: String
        # @param Limit: 返回条数
        # @type Limit: Integer
        # @param Context: 检索上下文
        # @type Context: String

        attr_accessor :MinTime, :MaxTime, :ProductId, :DeviceName, :FieldName, :Limit, :Context

        def initialize(mintime=nil, maxtime=nil, productid=nil, devicename=nil, fieldname=nil, limit=nil, context=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @ProductId = productid
          @DeviceName = devicename
          @FieldName = fieldname
          @Limit = limit
          @Context = context
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FieldName = params['FieldName']
          @Limit = params['Limit']
          @Context = params['Context']
        end
      end

      # DescribeDeviceDataHistory返回参数结构体
      class DescribeDeviceDataHistoryResponse < TencentCloud::Common::AbstractModel
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # @type FieldName: String
        # @param Listover: 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        # @type Listover: Boolean
        # @param Context: 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        # @type Context: String
        # @param Results: 历史数据结果数组，返回对应时间点及取值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FieldName, :Listover, :Context, :Results, :RequestId

        def initialize(fieldname=nil, listover=nil, context=nil, results=nil, requestid=nil)
          @FieldName = fieldname
          @Listover = listover
          @Context = context
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Listover = params['Listover']
          @Context = params['Context']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              devicedatahistoryitem_tmp = DeviceDataHistoryItem.new
              devicedatahistoryitem_tmp.deserialize(i)
              @Results << devicedatahistoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceData请求参数结构体
      class DescribeDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName
        # @type DeviceId: String

        attr_accessor :ProductId, :DeviceName, :DeviceId

        def initialize(productid=nil, devicename=nil, deviceid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDeviceData返回参数结构体
      class DescribeDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备数据
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

      # DescribeDeviceFirmWare请求参数结构体
      class DescribeDeviceFirmWareRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDeviceFirmWare返回参数结构体
      class DescribeDeviceFirmWareResponse < TencentCloud::Common::AbstractModel
        # @param Data: 固件信息
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

      # DescribeDeviceFirmwares请求参数结构体
      class DescribeDeviceFirmwaresRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDeviceFirmwares返回参数结构体
      class DescribeDeviceFirmwaresResponse < TencentCloud::Common::AbstractModel
        # @param Firmwares: 固件信息列表
        # @type Firmwares: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Firmwares, :RequestId

        def initialize(firmwares=nil, requestid=nil)
          @Firmwares = firmwares
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Firmwares'].nil?
            @Firmwares = []
            params['Firmwares'].each do |i|
              devicefirmwareinfo_tmp = DeviceFirmwareInfo.new
              devicefirmwareinfo_tmp.deserialize(i)
              @Firmwares << devicefirmwareinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceLocationSolve请求参数结构体
      class DescribeDeviceLocationSolveRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param LocationType: 定位解析类型，wifi或GNSSNavigation
        # @type LocationType: String
        # @param GNSSNavigation: LoRaEdge卫星导航电文
        # @type GNSSNavigation: String
        # @param WiFiInfo: wifi信息
        # @type WiFiInfo: Array

        attr_accessor :ProductId, :DeviceName, :LocationType, :GNSSNavigation, :WiFiInfo

        def initialize(productid=nil, devicename=nil, locationtype=nil, gnssnavigation=nil, wifiinfo=nil)
          @ProductId = productid
          @DeviceName = devicename
          @LocationType = locationtype
          @GNSSNavigation = gnssnavigation
          @WiFiInfo = wifiinfo
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @LocationType = params['LocationType']
          @GNSSNavigation = params['GNSSNavigation']
          unless params['WiFiInfo'].nil?
            @WiFiInfo = []
            params['WiFiInfo'].each do |i|
              wifiinfo_tmp = WifiInfo.new
              wifiinfo_tmp.deserialize(i)
              @WiFiInfo << wifiinfo_tmp
            end
          end
        end
      end

      # DescribeDeviceLocationSolve返回参数结构体
      class DescribeDeviceLocationSolveResponse < TencentCloud::Common::AbstractModel
        # @param Longitude: 经度
        # @type Longitude: Float
        # @param Latitude: 纬度
        # @type Latitude: Float
        # @param LocationType: 类型
        # @type LocationType: String
        # @param Accuracy: 误差精度预估，单位为米
        # @type Accuracy: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Longitude, :Latitude, :LocationType, :Accuracy, :RequestId

        def initialize(longitude=nil, latitude=nil, locationtype=nil, accuracy=nil, requestid=nil)
          @Longitude = longitude
          @Latitude = latitude
          @LocationType = locationtype
          @Accuracy = accuracy
          @RequestId = requestid
        end

        def deserialize(params)
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
          @LocationType = params['LocationType']
          @Accuracy = params['Accuracy']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicePackages请求参数结构体
      class DescribeDevicePackagesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Limit: 分页拉取数量
        # @type Limit: Integer
        # @param Offset: 分页拉取偏移
        # @type Offset: Integer
        # @param CSUserId: 用户id
        # @type CSUserId: String
        # @param ChannelId: 通道id
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :Limit, :Offset, :CSUserId, :ChannelId

        def initialize(productid=nil, devicename=nil, limit=nil, offset=nil, csuserid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Limit = limit
          @Offset = offset
          @CSUserId = csuserid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @CSUserId = params['CSUserId']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeDevicePackages返回参数结构体
      class DescribeDevicePackagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 有效云存套餐数量
        # @type TotalCount: Integer
        # @param Packages: 有效云存套餐列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Packages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Packages, :RequestId

        def initialize(totalcount=nil, packages=nil, requestid=nil)
          @TotalCount = totalcount
          @Packages = packages
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Packages'].nil?
            @Packages = []
            params['Packages'].each do |i|
              packageinfo_tmp = PackageInfo.new
              packageinfo_tmp.deserialize(i)
              @Packages << packageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicePositionList请求参数结构体
      class DescribeDevicePositionListRequest < TencentCloud::Common::AbstractModel
        # @param ProductIdList: 产品标识列表
        # @type ProductIdList: Array
        # @param CoordinateType: 坐标类型
        # @type CoordinateType: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer

        attr_accessor :ProductIdList, :CoordinateType, :Offset, :Limit

        def initialize(productidlist=nil, coordinatetype=nil, offset=nil, limit=nil)
          @ProductIdList = productidlist
          @CoordinateType = coordinatetype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductIdList = params['ProductIdList']
          @CoordinateType = params['CoordinateType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDevicePositionList返回参数结构体
      class DescribeDevicePositionListResponse < TencentCloud::Common::AbstractModel
        # @param Positions: 产品设备位置信息列表
        # @type Positions: Array
        # @param Total: 产品设备位置信息的数目
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Positions, :Total, :RequestId

        def initialize(positions=nil, total=nil, requestid=nil)
          @Positions = positions
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Positions'].nil?
            @Positions = []
            params['Positions'].each do |i|
              productdevicespositionitem_tmp = ProductDevicesPositionItem.new
              productdevicespositionitem_tmp.deserialize(i)
              @Positions << productdevicespositionitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevice请求参数结构体
      class DescribeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName
        # @type DeviceId: String

        attr_accessor :ProductId, :DeviceName, :DeviceId

        def initialize(productid=nil, devicename=nil, deviceid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDevice返回参数结构体
      class DescribeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Device: 设备信息
        # @type Device: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Device, :RequestId

        def initialize(device=nil, requestid=nil)
          @Device = device
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = DeviceInfo.new
            @Device.deserialize(params['Device'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFenceBindList请求参数结构体
      class DescribeFenceBindListRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :FenceId, :Offset, :Limit

        def initialize(fenceid=nil, offset=nil, limit=nil)
          @FenceId = fenceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFenceBindList返回参数结构体
      class DescribeFenceBindListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏绑定的产品设备列表
        # @type List: Array
        # @param Total: 围栏绑定的设备总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId

        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @List << fencebindproductitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFenceEventList请求参数结构体
      class DescribeFenceEventListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 围栏告警信息的查询起始时间，Unix时间，单位为毫秒
        # @type StartTime: Integer
        # @param EndTime: 围栏告警信息的查询结束时间，Unix时间，单位为毫秒
        # @type EndTime: Integer
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer
        # @param ProductId: 告警对应的产品Id
        # @type ProductId: String
        # @param DeviceName: 告警对应的设备名称
        # @type DeviceName: String

        attr_accessor :StartTime, :EndTime, :FenceId, :Offset, :Limit, :ProductId, :DeviceName

        def initialize(starttime=nil, endtime=nil, fenceid=nil, offset=nil, limit=nil, productid=nil, devicename=nil)
          @StartTime = starttime
          @EndTime = endtime
          @FenceId = fenceid
          @Offset = offset
          @Limit = limit
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @FenceId = params['FenceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeFenceEventList返回参数结构体
      class DescribeFenceEventListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏告警事件列表
        # @type List: Array
        # @param Total: 围栏告警事件总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId

        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              fenceeventitem_tmp = FenceEventItem.new
              fenceeventitem_tmp.deserialize(i)
              @List << fenceeventitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmware请求参数结构体
      class DescribeFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String

        attr_accessor :ProductID, :FirmwareVersion

        def initialize(productid=nil, firmwareversion=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
        end
      end

      # DescribeFirmware返回参数结构体
      class DescribeFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param Version: 固件版本号
        # @type Version: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Name: 固件名称
        # @type Name: String
        # @param Description: 固件描述
        # @type Description: String
        # @param Md5sum: 固件Md5值
        # @type Md5sum: String
        # @param Createtime: 固件上传的秒级时间戳
        # @type Createtime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param FwType: 固件升级模块
        # @type FwType: String
        # @param UserDefined: 固件用户自定义配置信息
        # @type UserDefined: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :ProductId, :Name, :Description, :Md5sum, :Createtime, :ProductName, :FwType, :UserDefined, :RequestId

        def initialize(version=nil, productid=nil, name=nil, description=nil, md5sum=nil, createtime=nil, productname=nil, fwtype=nil, userdefined=nil, requestid=nil)
          @Version = version
          @ProductId = productid
          @Name = name
          @Description = description
          @Md5sum = md5sum
          @Createtime = createtime
          @ProductName = productname
          @FwType = fwtype
          @UserDefined = userdefined
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @ProductId = params['ProductId']
          @Name = params['Name']
          @Description = params['Description']
          @Md5sum = params['Md5sum']
          @Createtime = params['Createtime']
          @ProductName = params['ProductName']
          @FwType = params['FwType']
          @UserDefined = params['UserDefined']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTask请求参数结构体
      class DescribeFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :FirmwareVersion, :TaskId

        def initialize(productid=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # DescribeFirmwareTask返回参数结构体
      class DescribeFirmwareTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 固件任务ID
        # @type TaskId: Integer
        # @param Status: 固件任务状态
        # @type Status: Integer
        # @param CreateTime: 固件任务创建时间，单位：秒
        # @type CreateTime: Integer
        # @param Type: 固件任务升级类型
        # @type Type: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param UpgradeMode: 固件任务升级模式。originalVersion（按版本号升级）、filename（提交文件升级）、devicenames（按设备名称升级）
        # @type UpgradeMode: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param OriginalVersion: 原始固件版本号，在UpgradeMode是originalVersion升级模式下会返回
        # @type OriginalVersion: String
        # @param CreateUserId: 创建账号ID
        # @type CreateUserId: Integer
        # @param CreatorNickName: 创建账号ID昵称
        # @type CreatorNickName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :CreateTime, :Type, :ProductName, :UpgradeMode, :ProductId, :OriginalVersion, :CreateUserId, :CreatorNickName, :RequestId

        def initialize(taskid=nil, status=nil, createtime=nil, type=nil, productname=nil, upgrademode=nil, productid=nil, originalversion=nil, createuserid=nil, creatornickname=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @CreateTime = createtime
          @Type = type
          @ProductName = productname
          @UpgradeMode = upgrademode
          @ProductId = productid
          @OriginalVersion = originalversion
          @CreateUserId = createuserid
          @CreatorNickName = creatornickname
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @Type = params['Type']
          @ProductName = params['ProductName']
          @UpgradeMode = params['UpgradeMode']
          @ProductId = params['ProductId']
          @OriginalVersion = params['OriginalVersion']
          @CreateUserId = params['CreateUserId']
          @CreatorNickName = params['CreatorNickName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareUpdateStatus请求参数结构体
      class DescribeFirmwareUpdateStatusRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID。
        # @type ProductId: String
        # @param DeviceName: 设备名。
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeFirmwareUpdateStatus返回参数结构体
      class DescribeFirmwareUpdateStatusResponse < TencentCloud::Common::AbstractModel
        # @param OriVersion: 升级任务源版本。
        # @type OriVersion: String
        # @param DstVersion: 升级任务目标版本。
        # @type DstVersion: String
        # @param Status: 升级状态：- 0：设备离线。- 1：待处理。- 2：消息下发成功。- 3：下载中。- 4：烧录中。- 5：失败。- 6：升级完成。- 7：正在处理中。- 8：等待用户确认。- 10：升级超时。- 20：下载完成。
        # @type Status: Integer
        # @param Percent: 进度
        # @type Percent: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriVersion, :DstVersion, :Status, :Percent, :RequestId

        def initialize(oriversion=nil, dstversion=nil, status=nil, percent=nil, requestid=nil)
          @OriVersion = oriversion
          @DstVersion = dstversion
          @Status = status
          @Percent = percent
          @RequestId = requestid
        end

        def deserialize(params)
          @OriVersion = params['OriVersion']
          @DstVersion = params['DstVersion']
          @Status = params['Status']
          @Percent = params['Percent']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFreeCloudStorageNum请求参数结构体
      class DescribeFreeCloudStorageNumRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFreeCloudStorageNum返回参数结构体
      class DescribeFreeCloudStorageNumResponse < TencentCloud::Common::AbstractModel
        # @param PackageInfos: 套餐包信息
        # @type PackageInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackageInfos, :RequestId

        def initialize(packageinfos=nil, requestid=nil)
          @PackageInfos = packageinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PackageInfos'].nil?
            @PackageInfos = []
            params['PackageInfos'].each do |i|
              cloudstoragepackageinfo_tmp = CloudStoragePackageInfo.new
              cloudstoragepackageinfo_tmp.deserialize(i)
              @PackageInfos << cloudstoragepackageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayBindDevices请求参数结构体
      class DescribeGatewayBindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名
        # @type GatewayDeviceName: String
        # @param ProductId: 子产品的ID
        # @type ProductId: String
        # @param Offset: 分页的偏移
        # @type Offset: Integer
        # @param Limit: 分页的页大小
        # @type Limit: Integer

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :Offset, :Limit

        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, offset=nil, limit=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGatewayBindDevices返回参数结构体
      class DescribeGatewayBindDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 子设备信息。
        # @type Devices: Array
        # @param Total: 子设备总数。
        # @type Total: Integer
        # @param ProductName: 子设备所属的产品名。
        # @type ProductName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :Total, :ProductName, :RequestId

        def initialize(devices=nil, total=nil, productname=nil, requestid=nil)
          @Devices = devices
          @Total = total
          @ProductName = productname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              binddeviceinfo_tmp = BindDeviceInfo.new
              binddeviceinfo_tmp.deserialize(i)
              @Devices << binddeviceinfo_tmp
            end
          end
          @Total = params['Total']
          @ProductName = params['ProductName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewaySubDeviceList请求参数结构体
      class DescribeGatewaySubDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备名称
        # @type GatewayDeviceName: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer

        attr_accessor :GatewayProductId, :GatewayDeviceName, :Offset, :Limit

        def initialize(gatewayproductid=nil, gatewaydevicename=nil, offset=nil, limit=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGatewaySubDeviceList返回参数结构体
      class DescribeGatewaySubDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 设备的总数
        # @type Total: Integer
        # @param DeviceList: 设备列表
        # @type DeviceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :DeviceList, :RequestId

        def initialize(total=nil, devicelist=nil, requestid=nil)
          @Total = total
          @DeviceList = devicelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              familysubdevice_tmp = FamilySubDevice.new
              familysubdevice_tmp.deserialize(i)
              @DeviceList << familysubdevice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewaySubProducts请求参数结构体
      class DescribeGatewaySubProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param Offset: 分页的偏移量
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ProductSource: 是否跨账号产品
        # @type ProductSource: Integer

        attr_accessor :GatewayProductId, :Offset, :Limit, :ProjectId, :ProductSource

        def initialize(gatewayproductid=nil, offset=nil, limit=nil, projectid=nil, productsource=nil)
          @GatewayProductId = gatewayproductid
          @Offset = offset
          @Limit = limit
          @ProjectId = projectid
          @ProductSource = productsource
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectId = params['ProjectId']
          @ProductSource = params['ProductSource']
        end
      end

      # DescribeGatewaySubProducts返回参数结构体
      class DescribeGatewaySubProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 当前分页的可绑定或解绑的产品信息。
        # @type Products: Array
        # @param Total: 可绑定或解绑的产品总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId

        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              bindproductinfo_tmp = BindProductInfo.new
              bindproductinfo_tmp.deserialize(i)
              @Products << bindproductinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Include: 附加查询返回包含字段值，不传返回0，有效值 ProductNum、ProjectNum、UsedDeviceNum、TotalDevice、ActivateDevice
        # @type Include: Array
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProductId: 产品ID，-1 代表全部产品
        # @type ProductId: String

        attr_accessor :InstanceId, :Include, :ProjectId, :ProductId

        def initialize(instanceid=nil, include=nil, projectid=nil, productid=nil)
          @InstanceId = instanceid
          @Include = include
          @ProjectId = projectid
          @ProductId = productid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Include = params['Include']
          @ProjectId = params['ProjectId']
          @ProductId = params['ProductId']
        end
      end

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 实例信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.InstanceDetail`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = InstanceDetail.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoRaFrequency请求参数结构体
      class DescribeLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String

        attr_accessor :FreqId

        def initialize(freqid=nil)
          @FreqId = freqid
        end

        def deserialize(params)
          @FreqId = params['FreqId']
        end
      end

      # DescribeLoRaFrequency返回参数结构体
      class DescribeLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回详情项
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelDefinition请求参数结构体
      class DescribeModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeModelDefinition返回参数结构体
      class DescribeModelDefinitionResponse < TencentCloud::Common::AbstractModel
        # @param Model: 产品数据模板
        # @type Model: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductModelDefinition`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :RequestId

        def initialize(model=nil, requestid=nil)
          @Model = model
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ProductModelDefinition.new
            @Model.deserialize(params['Model'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeP2PRoute请求参数结构体
      class DescribeP2PRouteRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeP2PRoute返回参数结构体
      class DescribeP2PRouteResponse < TencentCloud::Common::AbstractModel
        # @param RouteId: 当前p2p线路
        # @type RouteId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RouteId, :RequestId

        def initialize(routeid=nil, requestid=nil)
          @RouteId = routeid
          @RequestId = requestid
        end

        def deserialize(params)
          @RouteId = params['RouteId']
          @RequestId = params['RequestId']
        end
      end

      # DescribePackageConsumeTask请求参数结构体
      class DescribePackageConsumeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribePackageConsumeTask返回参数结构体
      class DescribePackageConsumeTaskResponse < TencentCloud::Common::AbstractModel
        # @param URL: 文件下载的url，文件详情是套餐包消耗详情
        # @type URL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :URL, :RequestId

        def initialize(url=nil, requestid=nil)
          @URL = url
          @RequestId = requestid
        end

        def deserialize(params)
          @URL = params['URL']
          @RequestId = params['RequestId']
        end
      end

      # DescribePackageConsumeTasks请求参数结构体
      class DescribePackageConsumeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页单页量
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，第一页为0
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

      # DescribePackageConsumeTasks返回参数结构体
      class DescribePackageConsumeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param List: 任务列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              packageconsumetask_tmp = PackageConsumeTask.new
              packageconsumetask_tmp.deserialize(i)
              @List << packageconsumetask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePositionFenceList请求参数结构体
      class DescribePositionFenceListRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :SpaceId, :Offset, :Limit

        def initialize(spaceid=nil, offset=nil, limit=nil)
          @SpaceId = spaceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePositionFenceList返回参数结构体
      class DescribePositionFenceListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏列表
        # @type List: Array
        # @param Total: 围栏数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId

        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              positionfenceinfo_tmp = PositionFenceInfo.new
              positionfenceinfo_tmp.deserialize(i)
              @List << positionfenceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductCloudStorageAIService请求参数结构体
      class DescribeProductCloudStorageAIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeProductCloudStorageAIService返回参数结构体
      class DescribeProductCloudStorageAIServiceResponse < TencentCloud::Common::AbstractModel
        # @param Enabled: 开通状态
        # @type Enabled: Boolean
        # @param Available: 当前账号是否可开通
        # @type Available: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Enabled, :Available, :RequestId

        def initialize(enabled=nil, available=nil, requestid=nil)
          @Enabled = enabled
          @Available = available
          @RequestId = requestid
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Available = params['Available']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProject请求参数结构体
      class DescribeProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProject返回参数结构体
      class DescribeProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 返回信息
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntryEx`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId

        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntryEx.new
            @Project.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceFenceEventList请求参数结构体
      class DescribeSpaceFenceEventListRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param StartTime: 围栏告警信息的查询起始时间，Unix时间，单位为毫秒
        # @type StartTime: Integer
        # @param EndTime: 围栏告警信息的查询结束时间，Unix时间，单位为毫秒
        # @type EndTime: Integer
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :SpaceId, :StartTime, :EndTime, :Offset, :Limit

        def initialize(spaceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @SpaceId = spaceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSpaceFenceEventList返回参数结构体
      class DescribeSpaceFenceEventListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏告警事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 围栏告警事件总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId

        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              fenceeventitem_tmp = FenceEventItem.new
              fenceeventitem_tmp.deserialize(i)
              @List << fenceeventitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStudioProduct请求参数结构体
      class DescribeStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeStudioProduct返回参数结构体
      class DescribeStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品详情
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId

        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicPolicy请求参数结构体
      class DescribeTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名字
        # @type TopicName: String

        attr_accessor :ProductId, :TopicName

        def initialize(productid=nil, topicname=nil)
          @ProductId = productid
          @TopicName = topicname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
        end
      end

      # DescribeTopicPolicy返回参数结构体
      class DescribeTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限
        # @type Privilege: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductId, :TopicName, :Privilege, :RequestId

        def initialize(productid=nil, topicname=nil, privilege=nil, requestid=nil)
          @ProductId = productid
          @TopicName = topicname
          @Privilege = privilege
          @RequestId = requestid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
          @Privilege = params['Privilege']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicRule请求参数结构体
      class DescribeTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称。
        # @type RuleName: String

        attr_accessor :RuleName

        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DescribeTopicRule返回参数结构体
      class DescribeTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则描述。
        # @type Rule: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRule`
        # @param CamTag: 规则绑定的标签
        # @type CamTag: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :CamTag, :RequestId

        def initialize(rule=nil, camtag=nil, requestid=nil)
          @Rule = rule
          @CamTag = camtag
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = TopicRule.new
            @Rule.deserialize(params['Rule'])
          end
          unless params['CamTag'].nil?
            @CamTag = []
            params['CamTag'].each do |i|
              camtag_tmp = CamTag.new
              camtag_tmp.deserialize(i)
              @CamTag << camtag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnbindedDevices请求参数结构体
      class DescribeUnbindedDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页的页大小
        # @type Limit: Integer

        attr_accessor :ProductId, :Offset, :Limit

        def initialize(productid=nil, offset=nil, limit=nil)
          @ProductId = productid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeUnbindedDevices返回参数结构体
      class DescribeUnbindedDevicesResponse < TencentCloud::Common::AbstractModel
        # @param UnbindedDevices: 未绑定的设备列表
        # @type UnbindedDevices: Array
        # @param Total: 设备的总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UnbindedDevices, :Total, :RequestId

        def initialize(unbindeddevices=nil, total=nil, requestid=nil)
          @UnbindedDevices = unbindeddevices
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UnbindedDevices'].nil?
            @UnbindedDevices = []
            params['UnbindedDevices'].each do |i|
              binddeviceinfo_tmp = BindDeviceInfo.new
              binddeviceinfo_tmp.deserialize(i)
              @UnbindedDevices << binddeviceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoLicense请求参数结构体
      class DescribeVideoLicenseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeVideoLicense返回参数结构体
      class DescribeVideoLicenseResponse < TencentCloud::Common::AbstractModel
        # @param License: 视频激活码分类概览
        # @type License: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :License, :RequestId

        def initialize(license=nil, requestid=nil)
          @License = license
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['License'].nil?
            @License = []
            params['License'].each do |i|
              videolicenseentity_tmp = VideoLicenseEntity.new
              videolicenseentity_tmp.deserialize(i)
              @License << videolicenseentity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备激活详情信息
      class DeviceActivationDetail < TencentCloud::Common::AbstractModel
        # @param TotalDeviceNum: 可注册设备数
        # @type TotalDeviceNum: Integer
        # @param UsedDeviceNum: 已注册设备数
        # @type UsedDeviceNum: Integer
        # @param TotalNormalLicense: 设备授权数
        # @type TotalNormalLicense: Integer
        # @param UsedNormalLicense: 已使用设备授权数
        # @type UsedNormalLicense: Integer
        # @param TotalBluetoothLicense: 蓝牙授权数
        # @type TotalBluetoothLicense: Integer
        # @param UsedBluetoothLicense: 已使用蓝牙授权数
        # @type UsedBluetoothLicense: Integer
        # @param TotalFreeLicense: 可免费注册设备数
        # @type TotalFreeLicense: Integer
        # @param UsedFreeLicense: 已使用注册设备数
        # @type UsedFreeLicense: Integer

        attr_accessor :TotalDeviceNum, :UsedDeviceNum, :TotalNormalLicense, :UsedNormalLicense, :TotalBluetoothLicense, :UsedBluetoothLicense, :TotalFreeLicense, :UsedFreeLicense

        def initialize(totaldevicenum=nil, useddevicenum=nil, totalnormallicense=nil, usednormallicense=nil, totalbluetoothlicense=nil, usedbluetoothlicense=nil, totalfreelicense=nil, usedfreelicense=nil)
          @TotalDeviceNum = totaldevicenum
          @UsedDeviceNum = useddevicenum
          @TotalNormalLicense = totalnormallicense
          @UsedNormalLicense = usednormallicense
          @TotalBluetoothLicense = totalbluetoothlicense
          @UsedBluetoothLicense = usedbluetoothlicense
          @TotalFreeLicense = totalfreelicense
          @UsedFreeLicense = usedfreelicense
        end

        def deserialize(params)
          @TotalDeviceNum = params['TotalDeviceNum']
          @UsedDeviceNum = params['UsedDeviceNum']
          @TotalNormalLicense = params['TotalNormalLicense']
          @UsedNormalLicense = params['UsedNormalLicense']
          @TotalBluetoothLicense = params['TotalBluetoothLicense']
          @UsedBluetoothLicense = params['UsedBluetoothLicense']
          @TotalFreeLicense = params['TotalFreeLicense']
          @UsedFreeLicense = params['UsedFreeLicense']
        end
      end

      # 设备激活结果数据
      class DeviceActiveResult < TencentCloud::Common::AbstractModel
        # @param ModelId: 模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param Sn: SN信息
        # @type Sn: String
        # @param ErrCode: 设备激活状态，0：激活成功；50011：系统错误；50012：产品不存在；50013：设备不存在；50014：产品无权限；50015：不是音视频产品；50016：SN格式错误；50017：激活码类型错误；50018：激活次数限频；50019：激活码不足；50020：SN已暂停；
        # @type ErrCode: Integer
        # @param ExpireTime: 过期时间
        # @type ExpireTime: Integer

        attr_accessor :ModelId, :Sn, :ErrCode, :ExpireTime
        extend Gem::Deprecate
        deprecate :ModelId, :none, 2025, 4
        deprecate :ModelId=, :none, 2025, 4

        def initialize(modelid=nil, sn=nil, errcode=nil, expiretime=nil)
          @ModelId = modelid
          @Sn = sn
          @ErrCode = errcode
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @Sn = params['Sn']
          @ErrCode = params['ErrCode']
          @ExpireTime = params['ExpireTime']
        end
      end

      # DeviceData
      class DeviceData < TencentCloud::Common::AbstractModel
        # @param DeviceCert: 设备证书，用于 TLS 建立链接时校验客户端身份。采用非对称加密时返回该参数。
        # @type DeviceCert: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String
        # @param DevicePrivateKey: 设备私钥，用于 TLS 建立链接时校验客户端身份，腾讯云后台不保存，请妥善保管。采用非对称加密时返回该参数。
        # @type DevicePrivateKey: String
        # @param DevicePsk: 对称加密密钥，base64编码。采用对称加密时返回该参数。
        # @type DevicePsk: String

        attr_accessor :DeviceCert, :DeviceName, :DevicePrivateKey, :DevicePsk

        def initialize(devicecert=nil, devicename=nil, deviceprivatekey=nil, devicepsk=nil)
          @DeviceCert = devicecert
          @DeviceName = devicename
          @DevicePrivateKey = deviceprivatekey
          @DevicePsk = devicepsk
        end

        def deserialize(params)
          @DeviceCert = params['DeviceCert']
          @DeviceName = params['DeviceName']
          @DevicePrivateKey = params['DevicePrivateKey']
          @DevicePsk = params['DevicePsk']
        end
      end

      # 设备历史数据结构
      class DeviceDataHistoryItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间点，毫秒时间戳
        # @type Time: String
        # @param Value: 字段取值
        # @type Value: String

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

      # 设备固件信息
      class DeviceFirmwareInfo < TencentCloud::Common::AbstractModel
        # @param FwType: 固件类型
        # @type FwType: String
        # @param Version: 固件版本
        # @type Version: String
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: Integer

        attr_accessor :FwType, :Version, :UpdateTime

        def initialize(fwtype=nil, version=nil, updatetime=nil)
          @FwType = fwtype
          @Version = version
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @FwType = params['FwType']
          @Version = params['Version']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 设备详细信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Status: 0: 离线, 1: 在线, 2: 获取失败, 3 未激活
        # @type Status: Integer
        # @param DevicePsk: 设备密钥，密钥加密的设备返回
        # @type DevicePsk: String
        # @param FirstOnlineTime: 首次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstOnlineTime: Integer
        # @param LoginTime: 最后一次上线时间
        # @type LoginTime: Integer
        # @param CreateTime: 设备创建时间
        # @type CreateTime: Integer
        # @param Version: 设备固件版本
        # @type Version: String
        # @param DeviceCert: 设备证书
        # @type DeviceCert: String
        # @param LogLevel: 日志级别
        # @type LogLevel: Integer
        # @param DevAddr: LoRaWAN 设备地址
        # @type DevAddr: String
        # @param AppKey: LoRaWAN 应用密钥
        # @type AppKey: String
        # @param DevEUI: LoRaWAN 设备唯一标识
        # @type DevEUI: String
        # @param AppSKey: LoRaWAN 应用会话密钥
        # @type AppSKey: String
        # @param NwkSKey: LoRaWAN 网络会话密钥
        # @type NwkSKey: String
        # @param CreateUserId: 创建人Id
        # @type CreateUserId: Integer
        # @param CreatorNickName: 创建人昵称
        # @type CreatorNickName: String
        # @param EnableState: 启用/禁用状态
        # @type EnableState: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param DeviceType: 设备类型（设备、子设备、网关）
        # @type DeviceType: String
        # @param IsLora: 是否是 lora 设备
        # @type IsLora: Boolean

        attr_accessor :DeviceName, :Status, :DevicePsk, :FirstOnlineTime, :LoginTime, :CreateTime, :Version, :DeviceCert, :LogLevel, :DevAddr, :AppKey, :DevEUI, :AppSKey, :NwkSKey, :CreateUserId, :CreatorNickName, :EnableState, :ProductId, :ProductName, :DeviceType, :IsLora

        def initialize(devicename=nil, status=nil, devicepsk=nil, firstonlinetime=nil, logintime=nil, createtime=nil, version=nil, devicecert=nil, loglevel=nil, devaddr=nil, appkey=nil, deveui=nil, appskey=nil, nwkskey=nil, createuserid=nil, creatornickname=nil, enablestate=nil, productid=nil, productname=nil, devicetype=nil, islora=nil)
          @DeviceName = devicename
          @Status = status
          @DevicePsk = devicepsk
          @FirstOnlineTime = firstonlinetime
          @LoginTime = logintime
          @CreateTime = createtime
          @Version = version
          @DeviceCert = devicecert
          @LogLevel = loglevel
          @DevAddr = devaddr
          @AppKey = appkey
          @DevEUI = deveui
          @AppSKey = appskey
          @NwkSKey = nwkskey
          @CreateUserId = createuserid
          @CreatorNickName = creatornickname
          @EnableState = enablestate
          @ProductId = productid
          @ProductName = productname
          @DeviceType = devicetype
          @IsLora = islora
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Status = params['Status']
          @DevicePsk = params['DevicePsk']
          @FirstOnlineTime = params['FirstOnlineTime']
          @LoginTime = params['LoginTime']
          @CreateTime = params['CreateTime']
          @Version = params['Version']
          @DeviceCert = params['DeviceCert']
          @LogLevel = params['LogLevel']
          @DevAddr = params['DevAddr']
          @AppKey = params['AppKey']
          @DevEUI = params['DevEUI']
          @AppSKey = params['AppSKey']
          @NwkSKey = params['NwkSKey']
          @CreateUserId = params['CreateUserId']
          @CreatorNickName = params['CreatorNickName']
          @EnableState = params['EnableState']
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @DeviceType = params['DeviceType']
          @IsLora = params['IsLora']
        end
      end

      # 设备位置详情
      class DevicePositionItem < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param CreateTime: 位置信息时间
        # @type CreateTime: Integer
        # @param Longitude: 设备经度信息
        # @type Longitude: Float
        # @param Latitude: 设备纬度信息
        # @type Latitude: Float

        attr_accessor :DeviceName, :CreateTime, :Longitude, :Latitude

        def initialize(devicename=nil, createtime=nil, longitude=nil, latitude=nil)
          @DeviceName = devicename
          @CreateTime = createtime
          @Longitude = longitude
          @Latitude = latitude
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @CreateTime = params['CreateTime']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
        end
      end

      # 设备签名
      class DeviceSignatureInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param DeviceSignature: 设备签名
        # @type DeviceSignature: String

        attr_accessor :DeviceName, :DeviceSignature

        def initialize(devicename=nil, devicesignature=nil)
          @DeviceName = devicename
          @DeviceSignature = devicesignature
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @DeviceSignature = params['DeviceSignature']
        end
      end

      # 设备的用户
      class DeviceUser < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param Role: 用户角色 1所有者，0：其他分享者
        # @type Role: Integer
        # @param FamilyId: 家庭ID，所有者带该参数
        # @type FamilyId: String
        # @param FamilyName: 家庭名称，所有者带该参数
        # @type FamilyName: String

        attr_accessor :UserId, :Role, :FamilyId, :FamilyName

        def initialize(userid=nil, role=nil, familyid=nil, familyname=nil)
          @UserId = userid
          @Role = role
          @FamilyId = familyid
          @FamilyName = familyname
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Role = params['Role']
          @FamilyId = params['FamilyId']
          @FamilyName = params['FamilyName']
        end
      end

      # ProductId -> DeviceName
      class DevicesItem < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DirectBindDeviceInFamily请求参数结构体
      class DirectBindDeviceInFamilyRequest < TencentCloud::Common::AbstractModel
        # @param IotAppID: 小程序appid
        # @type IotAppID: String
        # @param UserID: 用户ID
        # @type UserID: String
        # @param FamilyId: 家庭ID
        # @type FamilyId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :IotAppID, :UserID, :FamilyId, :ProductId, :DeviceName, :RoomId

        def initialize(iotappid=nil, userid=nil, familyid=nil, productid=nil, devicename=nil, roomid=nil)
          @IotAppID = iotappid
          @UserID = userid
          @FamilyId = familyid
          @ProductId = productid
          @DeviceName = devicename
          @RoomId = roomid
        end

        def deserialize(params)
          @IotAppID = params['IotAppID']
          @UserID = params['UserID']
          @FamilyId = params['FamilyId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @RoomId = params['RoomId']
        end
      end

      # DirectBindDeviceInFamily返回参数结构体
      class DirectBindDeviceInFamilyResponse < TencentCloud::Common::AbstractModel
        # @param AppDeviceInfo: 返回设备信息
        # @type AppDeviceInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.AppDeviceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppDeviceInfo, :RequestId

        def initialize(appdeviceinfo=nil, requestid=nil)
          @AppDeviceInfo = appdeviceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppDeviceInfo'].nil?
            @AppDeviceInfo = AppDeviceInfo.new
            @AppDeviceInfo.deserialize(params['AppDeviceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableTopicRule请求参数结构体
      class DisableTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String

        attr_accessor :RuleName

        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DisableTopicRule返回参数结构体
      class DisableTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # DismissRoomByStrRoomIdFromTRTC请求参数结构体
      class DismissRoomByStrRoomIdFromTRTCRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间id
        # @type RoomId: String

        attr_accessor :RoomId

        def initialize(roomid=nil)
          @RoomId = roomid
        end

        def deserialize(params)
          @RoomId = params['RoomId']
        end
      end

      # DismissRoomByStrRoomIdFromTRTC返回参数结构体
      class DismissRoomByStrRoomIdFromTRTCResponse < TencentCloud::Common::AbstractModel
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

      # EnableTopicRule请求参数结构体
      class EnableTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String

        attr_accessor :RuleName

        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # EnableTopicRule返回参数结构体
      class EnableTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # 设备事件的搜索结果项
      class EventHistoryItem < TencentCloud::Common::AbstractModel
        # @param TimeStamp: 事件的时间戳
        # @type TimeStamp: Integer
        # @param ProductId: 事件的产品ID
        # @type ProductId: String
        # @param DeviceName: 事件的设备名称
        # @type DeviceName: String
        # @param EventId: 事件的标识符ID
        # @type EventId: String
        # @param Type: 事件的类型
        # @type Type: String
        # @param Data: 事件的数据
        # @type Data: String

        attr_accessor :TimeStamp, :ProductId, :DeviceName, :EventId, :Type, :Data

        def initialize(timestamp=nil, productid=nil, devicename=nil, eventid=nil, type=nil, data=nil)
          @TimeStamp = timestamp
          @ProductId = productid
          @DeviceName = devicename
          @EventId = eventid
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @TimeStamp = params['TimeStamp']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @EventId = params['EventId']
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # 子设备详情
      class FamilySubDevice < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param AliasName: 设备别名
        # @type AliasName: String
        # @param FamilyId: 设备绑定的家庭ID
        # @type FamilyId: String
        # @param RoomId: 设备所在的房间ID，默认"0"
        # @type RoomId: String
        # @param IconUrl: 图标
        # @type IconUrl: String
        # @param IconUrlGrid: grid图标
        # @type IconUrlGrid: String
        # @param CreateTime: 设备绑定时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 设备更新时间戳
        # @type UpdateTime: Integer

        attr_accessor :ProductId, :DeviceName, :DeviceId, :AliasName, :FamilyId, :RoomId, :IconUrl, :IconUrlGrid, :CreateTime, :UpdateTime

        def initialize(productid=nil, devicename=nil, deviceid=nil, aliasname=nil, familyid=nil, roomid=nil, iconurl=nil, iconurlgrid=nil, createtime=nil, updatetime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
          @AliasName = aliasname
          @FamilyId = familyid
          @RoomId = roomid
          @IconUrl = iconurl
          @IconUrlGrid = iconurlgrid
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
          @AliasName = params['AliasName']
          @FamilyId = params['FamilyId']
          @RoomId = params['RoomId']
          @IconUrl = params['IconUrl']
          @IconUrlGrid = params['IconUrlGrid']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 围栏告警位置点
      class FenceAlarmPoint < TencentCloud::Common::AbstractModel
        # @param AlarmTime: 围栏告警时间
        # @type AlarmTime: Integer
        # @param Longitude: 围栏告警位置的经度
        # @type Longitude: Float
        # @param Latitude: 围栏告警位置的纬度
        # @type Latitude: Float

        attr_accessor :AlarmTime, :Longitude, :Latitude

        def initialize(alarmtime=nil, longitude=nil, latitude=nil)
          @AlarmTime = alarmtime
          @Longitude = longitude
          @Latitude = latitude
        end

        def deserialize(params)
          @AlarmTime = params['AlarmTime']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
        end
      end

      # 围栏绑定的设备信息
      class FenceBindDeviceItem < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param AlertCondition: 告警条件(In，进围栏报警；Out，出围栏报警；InOrOut，进围栏或者出围栏均报警)
        # @type AlertCondition: String
        # @param FenceEnable: 是否使能围栏(true，使能；false，禁用)
        # @type FenceEnable: Boolean
        # @param Method: 告警处理方法
        # @type Method: String

        attr_accessor :DeviceName, :AlertCondition, :FenceEnable, :Method

        def initialize(devicename=nil, alertcondition=nil, fenceenable=nil, method=nil)
          @DeviceName = devicename
          @AlertCondition = alertcondition
          @FenceEnable = fenceenable
          @Method = method
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @AlertCondition = params['AlertCondition']
          @FenceEnable = params['FenceEnable']
          @Method = params['Method']
        end
      end

      # 围栏绑定的产品信息
      class FenceBindProductItem < TencentCloud::Common::AbstractModel
        # @param Devices: 围栏绑定的设备信息
        # @type Devices: Array
        # @param ProductId: 围栏绑定的产品Id
        # @type ProductId: String

        attr_accessor :Devices, :ProductId

        def initialize(devices=nil, productid=nil)
          @Devices = devices
          @ProductId = productid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              fencebinddeviceitem_tmp = FenceBindDeviceItem.new
              fencebinddeviceitem_tmp.deserialize(i)
              @Devices << fencebinddeviceitem_tmp
            end
          end
          @ProductId = params['ProductId']
        end
      end

      # 围栏事件详情
      class FenceEventItem < TencentCloud::Common::AbstractModel
        # @param ProductId: 围栏事件的产品Id
        # @type ProductId: String
        # @param DeviceName: 围栏事件的设备名称
        # @type DeviceName: String
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param AlertType: 围栏事件的告警类型（In，进围栏报警；Out，出围栏报警；InOrOut，进围栏或者出围栏均报警）
        # @type AlertType: String
        # @param Data: 围栏事件的设备位置信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.FenceAlarmPoint`

        attr_accessor :ProductId, :DeviceName, :FenceId, :AlertType, :Data

        def initialize(productid=nil, devicename=nil, fenceid=nil, alerttype=nil, data=nil)
          @ProductId = productid
          @DeviceName = devicename
          @FenceId = fenceid
          @AlertType = alerttype
          @Data = data
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FenceId = params['FenceId']
          @AlertType = params['AlertType']
          unless params['Data'].nil?
            @Data = FenceAlarmPoint.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # - 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。

      # - 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段
        # @type Name: String
        # @param Values: 字段的过滤的一个或多个值
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

      # 设备固件详细信息
      class FirmwareInfo < TencentCloud::Common::AbstractModel
        # @param Version: 固件版本
        # @type Version: String
        # @param Md5sum: 固件MD5值
        # @type Md5sum: String
        # @param CreateTime: 固件创建时间
        # @type CreateTime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Name: 固件名称
        # @type Name: String
        # @param Description: 固件描述
        # @type Description: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FwType: 固件升级模块
        # @type FwType: String
        # @param CreateUserId: 创建者子 uin
        # @type CreateUserId: Integer
        # @param CreatorNickName: 创建者昵称
        # @type CreatorNickName: String
        # @param UserDefined: 固件用户自定义配置信息
        # @type UserDefined: String

        attr_accessor :Version, :Md5sum, :CreateTime, :ProductName, :Name, :Description, :ProductId, :FwType, :CreateUserId, :CreatorNickName, :UserDefined

        def initialize(version=nil, md5sum=nil, createtime=nil, productname=nil, name=nil, description=nil, productid=nil, fwtype=nil, createuserid=nil, creatornickname=nil, userdefined=nil)
          @Version = version
          @Md5sum = md5sum
          @CreateTime = createtime
          @ProductName = productname
          @Name = name
          @Description = description
          @ProductId = productid
          @FwType = fwtype
          @CreateUserId = createuserid
          @CreatorNickName = creatornickname
          @UserDefined = userdefined
        end

        def deserialize(params)
          @Version = params['Version']
          @Md5sum = params['Md5sum']
          @CreateTime = params['CreateTime']
          @ProductName = params['ProductName']
          @Name = params['Name']
          @Description = params['Description']
          @ProductId = params['ProductId']
          @FwType = params['FwType']
          @CreateUserId = params['CreateUserId']
          @CreatorNickName = params['CreatorNickName']
          @UserDefined = params['UserDefined']
        end
      end

      # GenSingleDeviceSignatureOfPublic请求参数结构体
      class GenSingleDeviceSignatureOfPublicRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 设备所属的产品ID
        # @type ProductId: String
        # @param DeviceName: 需要绑定的设备
        # @type DeviceName: String
        # @param Expire: 设备绑定签名的有效时间,以秒为单位。取值范围：0 < Expire <= 86400，Expire == -1（十年）
        # @type Expire: Integer

        attr_accessor :ProductId, :DeviceName, :Expire

        def initialize(productid=nil, devicename=nil, expire=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Expire = expire
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Expire = params['Expire']
        end
      end

      # GenSingleDeviceSignatureOfPublic返回参数结构体
      class GenSingleDeviceSignatureOfPublicResponse < TencentCloud::Common::AbstractModel
        # @param DeviceSignature: 设备签名
        # @type DeviceSignature: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceSignatureInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceSignature, :RequestId

        def initialize(devicesignature=nil, requestid=nil)
          @DeviceSignature = devicesignature
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceSignature'].nil?
            @DeviceSignature = DeviceSignatureInfo.new
            @DeviceSignature.deserialize(params['DeviceSignature'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GenerateCloudStorageAIServiceTaskFileURL请求参数结构体
      class GenerateCloudStorageAIServiceTaskFileURLRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 产品 ID
        # @type TaskId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param ExpireTime: 过期时间 UNIX 时间戳（默认值为当前时间 1 小时后，最大不超过文件所属任务的过期时间）
        # @type ExpireTime: Integer

        attr_accessor :TaskId, :FileName, :ExpireTime

        def initialize(taskid=nil, filename=nil, expiretime=nil)
          @TaskId = taskid
          @FileName = filename
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileName = params['FileName']
          @ExpireTime = params['ExpireTime']
        end
      end

      # GenerateCloudStorageAIServiceTaskFileURL返回参数结构体
      class GenerateCloudStorageAIServiceTaskFileURLResponse < TencentCloud::Common::AbstractModel
        # @param FileURL: 文件下载 URL
        # @type FileURL: String
        # @param ExpireTime: 过期时间 UNIX 时间戳（最大不超过文件所属任务的过期时间）
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileURL, :ExpireTime, :RequestId

        def initialize(fileurl=nil, expiretime=nil, requestid=nil)
          @FileURL = fileurl
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @FileURL = params['FileURL']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # GenerateSignedVideoURL请求参数结构体
      class GenerateSignedVideoURLRequest < TencentCloud::Common::AbstractModel
        # @param VideoURL: 视频播放原始URL地址
        # @type VideoURL: String
        # @param ExpireTime: 播放链接过期时间
        # @type ExpireTime: Integer
        # @param ChannelId: 通道ID 非NVR设备不填 NVR设备必填 默认为无
        # @type ChannelId: Integer

        attr_accessor :VideoURL, :ExpireTime, :ChannelId

        def initialize(videourl=nil, expiretime=nil, channelid=nil)
          @VideoURL = videourl
          @ExpireTime = expiretime
          @ChannelId = channelid
        end

        def deserialize(params)
          @VideoURL = params['VideoURL']
          @ExpireTime = params['ExpireTime']
          @ChannelId = params['ChannelId']
        end
      end

      # GenerateSignedVideoURL返回参数结构体
      class GenerateSignedVideoURLResponse < TencentCloud::Common::AbstractModel
        # @param SignedVideoURL: 视频防盗链播放URL
        # @type SignedVideoURL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignedVideoURL, :RequestId

        def initialize(signedvideourl=nil, requestid=nil)
          @SignedVideoURL = signedvideourl
          @RequestId = requestid
        end

        def deserialize(params)
          @SignedVideoURL = params['SignedVideoURL']
          @RequestId = params['RequestId']
        end
      end

      # GetAuthMiniProgramAppList请求参数结构体
      class GetAuthMiniProgramAppListRequest < TencentCloud::Common::AbstractModel
        # @param MiniProgramAppId: appId
        # @type MiniProgramAppId: String
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 每页大小
        # @type Limit: Integer

        attr_accessor :MiniProgramAppId, :Offset, :Limit

        def initialize(miniprogramappid=nil, offset=nil, limit=nil)
          @MiniProgramAppId = miniprogramappid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @MiniProgramAppId = params['MiniProgramAppId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetAuthMiniProgramAppList返回参数结构体
      class GetAuthMiniProgramAppListResponse < TencentCloud::Common::AbstractModel
        # @param MiniProgramList: 小程序列表
        # @type MiniProgramList: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MiniProgramList, :Total, :RequestId

        def initialize(miniprogramlist=nil, total=nil, requestid=nil)
          @MiniProgramList = miniprogramlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MiniProgramList'].nil?
            @MiniProgramList = []
            params['MiniProgramList'].each do |i|
              authminiprogramappinfo_tmp = AuthMiniProgramAppInfo.new
              authminiprogramappinfo_tmp.deserialize(i)
              @MiniProgramList << authminiprogramappinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetBatchProductionsList请求参数结构体
      class GetBatchProductionsListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量限制
        # @type Limit: Integer

        attr_accessor :ProjectId, :Offset, :Limit

        def initialize(projectid=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetBatchProductionsList返回参数结构体
      class GetBatchProductionsListResponse < TencentCloud::Common::AbstractModel
        # @param BatchProductions: 返回详情信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchProductions: Array
        # @param TotalCnt: 返回数量。
        # @type TotalCnt: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchProductions, :TotalCnt, :RequestId

        def initialize(batchproductions=nil, totalcnt=nil, requestid=nil)
          @BatchProductions = batchproductions
          @TotalCnt = totalcnt
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BatchProductions'].nil?
            @BatchProductions = []
            params['BatchProductions'].each do |i|
              batchproductioninfo_tmp = BatchProductionInfo.new
              batchproductioninfo_tmp.deserialize(i)
              @BatchProductions << batchproductioninfo_tmp
            end
          end
          @TotalCnt = params['TotalCnt']
          @RequestId = params['RequestId']
        end
      end

      # GetCOSURL请求参数结构体
      class GetCOSURLRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String
        # @param FileSize: 文件大小
        # @type FileSize: Integer

        attr_accessor :ProductID, :FirmwareVersion, :FileSize

        def initialize(productid=nil, firmwareversion=nil, filesize=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FileSize = filesize
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FileSize = params['FileSize']
        end
      end

      # GetCOSURL返回参数结构体
      class GetCOSURLResponse < TencentCloud::Common::AbstractModel
        # @param Url: 固件URL
        # @type Url: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId

        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceList请求参数结构体
      class GetDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 需要查看设备列表的产品ID, -1代表ProjectId来筛选
        # @type ProductId: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小，数值范围 10-100
        # @type Limit: Integer
        # @param FirmwareVersion: 设备固件版本号，若不带此参数会返回所有固件版本的设备。传"None-FirmwareVersion"查询无版本号的设备
        # @type FirmwareVersion: String
        # @param DeviceName: 需要过滤的设备名称
        # @type DeviceName: String
        # @param ProjectId: 项目ID。产品 ID 为 -1 时，该参数必填
        # @type ProjectId: String
        # @param Filters: 每次请求的Filters的上限为10，Filter.Values的上限为1。
        # @type Filters: Array

        attr_accessor :ProductId, :Offset, :Limit, :FirmwareVersion, :DeviceName, :ProjectId, :Filters

        def initialize(productid=nil, offset=nil, limit=nil, firmwareversion=nil, devicename=nil, projectid=nil, filters=nil)
          @ProductId = productid
          @Offset = offset
          @Limit = limit
          @FirmwareVersion = firmwareversion
          @DeviceName = devicename
          @ProjectId = projectid
          @Filters = filters
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FirmwareVersion = params['FirmwareVersion']
          @DeviceName = params['DeviceName']
          @ProjectId = params['ProjectId']
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

      # GetDeviceList返回参数结构体
      class GetDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 返回的设备列表, 注意列表设备的 DevicePsk 为空, 要获取设备的 DevicePsk 请使用 DescribeDevice
        # @type Devices: Array
        # @param Total: 产品下的设备总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :Total, :RequestId

        def initialize(devices=nil, total=nil, requestid=nil)
          @Devices = devices
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @Devices << deviceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceLocationHistory请求参数结构体
      class GetDeviceLocationHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param StartTime: 查询起始时间，Unix时间，单位为毫秒
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，Unix时间，单位为毫秒
        # @type EndTime: Integer
        # @param CoordinateType: 坐标类型
        # @type CoordinateType: Integer

        attr_accessor :ProductId, :DeviceName, :StartTime, :EndTime, :CoordinateType

        def initialize(productid=nil, devicename=nil, starttime=nil, endtime=nil, coordinatetype=nil)
          @ProductId = productid
          @DeviceName = devicename
          @StartTime = starttime
          @EndTime = endtime
          @CoordinateType = coordinatetype
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CoordinateType = params['CoordinateType']
        end
      end

      # GetDeviceLocationHistory返回参数结构体
      class GetDeviceLocationHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Positions: 历史位置列表
        # @type Positions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Positions, :RequestId

        def initialize(positions=nil, requestid=nil)
          @Positions = positions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Positions'].nil?
            @Positions = []
            params['Positions'].each do |i|
              positionitem_tmp = PositionItem.new
              positionitem_tmp.deserialize(i)
              @Positions << positionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceSumStatistics请求参数结构体
      class GetDeviceSumStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param ProductIds: 产品id列表，长度为0则拉取项目内全部产品
        # @type ProductIds: Array

        attr_accessor :ProjectId, :ProductIds

        def initialize(projectid=nil, productids=nil)
          @ProjectId = projectid
          @ProductIds = productids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductIds = params['ProductIds']
        end
      end

      # GetDeviceSumStatistics返回参数结构体
      class GetDeviceSumStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param ActivationCount: 激活设备总数
        # @type ActivationCount: Integer
        # @param OnlineCount: 在线设备总数
        # @type OnlineCount: Integer
        # @param ActivationBeforeDay: 前一天激活设备数
        # @type ActivationBeforeDay: Integer
        # @param ActiveBeforeDay: 前一天活跃设备数
        # @type ActiveBeforeDay: Integer
        # @param ActivationWeekDayCount: 前一周激活设备数
        # @type ActivationWeekDayCount: Integer
        # @param ActiveWeekDayCount: 前一周活跃设备数
        # @type ActiveWeekDayCount: Integer
        # @param ActivationBeforeWeekDayCount: 上一周激活设备数
        # @type ActivationBeforeWeekDayCount: Integer
        # @param ActiveBeforeWeekDayCount: 上一周活跃设备数
        # @type ActiveBeforeWeekDayCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActivationCount, :OnlineCount, :ActivationBeforeDay, :ActiveBeforeDay, :ActivationWeekDayCount, :ActiveWeekDayCount, :ActivationBeforeWeekDayCount, :ActiveBeforeWeekDayCount, :RequestId

        def initialize(activationcount=nil, onlinecount=nil, activationbeforeday=nil, activebeforeday=nil, activationweekdaycount=nil, activeweekdaycount=nil, activationbeforeweekdaycount=nil, activebeforeweekdaycount=nil, requestid=nil)
          @ActivationCount = activationcount
          @OnlineCount = onlinecount
          @ActivationBeforeDay = activationbeforeday
          @ActiveBeforeDay = activebeforeday
          @ActivationWeekDayCount = activationweekdaycount
          @ActiveWeekDayCount = activeweekdaycount
          @ActivationBeforeWeekDayCount = activationbeforeweekdaycount
          @ActiveBeforeWeekDayCount = activebeforeweekdaycount
          @RequestId = requestid
        end

        def deserialize(params)
          @ActivationCount = params['ActivationCount']
          @OnlineCount = params['OnlineCount']
          @ActivationBeforeDay = params['ActivationBeforeDay']
          @ActiveBeforeDay = params['ActiveBeforeDay']
          @ActivationWeekDayCount = params['ActivationWeekDayCount']
          @ActiveWeekDayCount = params['ActiveWeekDayCount']
          @ActivationBeforeWeekDayCount = params['ActivationBeforeWeekDayCount']
          @ActiveBeforeWeekDayCount = params['ActiveBeforeWeekDayCount']
          @RequestId = params['RequestId']
        end
      end

      # GetFamilyDeviceUserList请求参数结构体
      class GetFamilyDeviceUserListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # GetFamilyDeviceUserList返回参数结构体
      class GetFamilyDeviceUserListResponse < TencentCloud::Common::AbstractModel
        # @param UserList: 设备的用户列表
        # @type UserList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              deviceuser_tmp = DeviceUser.new
              deviceuser_tmp.deserialize(i)
              @UserList << deviceuser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetGatewaySubDeviceList请求参数结构体
      class GetGatewaySubDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备名称
        # @type GatewayDeviceName: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer

        attr_accessor :GatewayProductId, :GatewayDeviceName, :Offset, :Limit

        def initialize(gatewayproductid=nil, gatewaydevicename=nil, offset=nil, limit=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetGatewaySubDeviceList返回参数结构体
      class GetGatewaySubDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 设备的总数
        # @type Total: Integer
        # @param DeviceList: 设备列表
        # @type DeviceList: :class:`Tencentcloud::Iotexplorer.v20190423.models.FamilySubDevice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :DeviceList, :RequestId

        def initialize(total=nil, devicelist=nil, requestid=nil)
          @Total = total
          @DeviceList = devicelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['DeviceList'].nil?
            @DeviceList = FamilySubDevice.new
            @DeviceList.deserialize(params['DeviceList'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLoRaGatewayList请求参数结构体
      class GetLoRaGatewayListRequest < TencentCloud::Common::AbstractModel
        # @param IsCommunity: 是否是社区网关
        # @type IsCommunity: Boolean
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制个数
        # @type Limit: Integer

        attr_accessor :IsCommunity, :Offset, :Limit

        def initialize(iscommunity=nil, offset=nil, limit=nil)
          @IsCommunity = iscommunity
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @IsCommunity = params['IsCommunity']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetLoRaGatewayList返回参数结构体
      class GetLoRaGatewayListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回总数
        # @type Total: Integer
        # @param Gateways: 返回详情项
        # @type Gateways: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Gateways, :RequestId

        def initialize(total=nil, gateways=nil, requestid=nil)
          @Total = total
          @Gateways = gateways
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Gateways'].nil?
            @Gateways = []
            params['Gateways'].each do |i|
              loragatewayitem_tmp = LoRaGatewayItem.new
              loragatewayitem_tmp.deserialize(i)
              @Gateways << loragatewayitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetPositionSpaceList请求参数结构体
      class GetPositionSpaceListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :ProjectId, :Offset, :Limit

        def initialize(projectid=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetPositionSpaceList返回参数结构体
      class GetPositionSpaceListResponse < TencentCloud::Common::AbstractModel
        # @param List: 位置空间列表
        # @type List: Array
        # @param Total: 位置空间数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId

        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              positionspaceinfo_tmp = PositionSpaceInfo.new
              positionspaceinfo_tmp.deserialize(i)
              @List << positionspaceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetProjectList请求参数结构体
      class GetProjectListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 个数限制
        # @type Limit: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProjectId: 按项目ID搜索
        # @type ProjectId: String
        # @param ProductId: 按产品ID搜索
        # @type ProductId: String
        # @param Includes: 加载 ProductCount、DeviceCount、ApplicationCount，可选值：ProductCount、DeviceCount、ApplicationCount，可多选
        # @type Includes: Array
        # @param ProjectName: 按项目名称搜索
        # @type ProjectName: String

        attr_accessor :Offset, :Limit, :InstanceId, :ProjectId, :ProductId, :Includes, :ProjectName

        def initialize(offset=nil, limit=nil, instanceid=nil, projectid=nil, productid=nil, includes=nil, projectname=nil)
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @ProjectId = projectid
          @ProductId = productid
          @Includes = includes
          @ProjectName = projectname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @ProjectId = params['ProjectId']
          @ProductId = params['ProductId']
          @Includes = params['Includes']
          @ProjectName = params['ProjectName']
        end
      end

      # GetProjectList返回参数结构体
      class GetProjectListResponse < TencentCloud::Common::AbstractModel
        # @param Projects: 项目列表
        # @type Projects: Array
        # @param Total: 列表项个数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Projects, :Total, :RequestId

        def initialize(projects=nil, total=nil, requestid=nil)
          @Projects = projects
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              projectentryex_tmp = ProjectEntryEx.new
              projectentryex_tmp.deserialize(i)
              @Projects << projectentryex_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetStudioProductList请求参数结构体
      class GetStudioProductListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DevStatus: 产品DevStatus
        # @type DevStatus: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 数量限制
        # @type Limit: Integer

        attr_accessor :ProjectId, :DevStatus, :Offset, :Limit

        def initialize(projectid=nil, devstatus=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @DevStatus = devstatus
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DevStatus = params['DevStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetStudioProductList返回参数结构体
      class GetStudioProductListResponse < TencentCloud::Common::AbstractModel
        # @param Products: 产品列表
        # @type Products: Array
        # @param Total: 产品数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId

        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              productentry_tmp = ProductEntry.new
              productentry_tmp.deserialize(i)
              @Products << productentry_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetTWeCallActiveStatus请求参数结构体
      class GetTWeCallActiveStatusRequest < TencentCloud::Common::AbstractModel
        # @param MiniProgramAppId: 参数已弃用，不用传参
        # @type MiniProgramAppId: String
        # @param DeviceList: 设备列表
        # @type DeviceList: Array

        attr_accessor :MiniProgramAppId, :DeviceList
        extend Gem::Deprecate
        deprecate :MiniProgramAppId, :none, 2025, 4
        deprecate :MiniProgramAppId=, :none, 2025, 4

        def initialize(miniprogramappid=nil, devicelist=nil)
          @MiniProgramAppId = miniprogramappid
          @DeviceList = devicelist
        end

        def deserialize(params)
          @MiniProgramAppId = params['MiniProgramAppId']
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              twecallinfo_tmp = TWeCallInfo.new
              twecallinfo_tmp.deserialize(i)
              @DeviceList << twecallinfo_tmp
            end
          end
        end
      end

      # GetTWeCallActiveStatus返回参数结构体
      class GetTWeCallActiveStatusResponse < TencentCloud::Common::AbstractModel
        # @param TWeCallActiveInfos: 激活状态
        # @type TWeCallActiveInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TWeCallActiveInfos, :RequestId

        def initialize(twecallactiveinfos=nil, requestid=nil)
          @TWeCallActiveInfos = twecallactiveinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TWeCallActiveInfos'].nil?
            @TWeCallActiveInfos = []
            params['TWeCallActiveInfos'].each do |i|
              twecallactiveinfo_tmp = TWeCallActiveInfo.new
              twecallactiveinfo_tmp.deserialize(i)
              @TWeCallActiveInfos << twecallactiveinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTopicRuleList请求参数结构体
      class GetTopicRuleListRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 请求的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer

        attr_accessor :PageNum, :PageSize

        def initialize(pagenum=nil, pagesize=nil)
          @PageNum = pagenum
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
        end
      end

      # GetTopicRuleList返回参数结构体
      class GetTopicRuleListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 规则总数量
        # @type TotalCnt: Integer
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :Rules, :RequestId

        def initialize(totalcnt=nil, rules=nil, requestid=nil)
          @TotalCnt = totalcnt
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              topicruleinfo_tmp = TopicRuleInfo.new
              topicruleinfo_tmp.deserialize(i)
              @Rules << topicruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWechatDeviceTicket请求参数结构体
      class GetWechatDeviceTicketRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 产品名称
        # @type DeviceName: String
        # @param IsThirdApp: 是否第三方小程序
        # @type IsThirdApp: Integer
        # @param ModelId: 模板ID
        # @type ModelId: String
        # @param MiniProgramAppId: 小程序APPID
        # @type MiniProgramAppId: String

        attr_accessor :ProductId, :DeviceName, :IsThirdApp, :ModelId, :MiniProgramAppId

        def initialize(productid=nil, devicename=nil, isthirdapp=nil, modelid=nil, miniprogramappid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @IsThirdApp = isthirdapp
          @ModelId = modelid
          @MiniProgramAppId = miniprogramappid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @IsThirdApp = params['IsThirdApp']
          @ModelId = params['ModelId']
          @MiniProgramAppId = params['MiniProgramAppId']
        end
      end

      # GetWechatDeviceTicket返回参数结构体
      class GetWechatDeviceTicketResponse < TencentCloud::Common::AbstractModel
        # @param WXDeviceInfo: 微信设备信息
        # @type WXDeviceInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.WXDeviceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WXDeviceInfo, :RequestId

        def initialize(wxdeviceinfo=nil, requestid=nil)
          @WXDeviceInfo = wxdeviceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WXDeviceInfo'].nil?
            @WXDeviceInfo = WXDeviceInfo.new
            @WXDeviceInfo.deserialize(params['WXDeviceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InheritCloudStorageUser请求参数结构体
      class InheritCloudStorageUserRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 原始用户ID
        # @type UserId: String
        # @param ToUserId: 目标用户ID
        # @type ToUserId: String

        attr_accessor :ProductId, :DeviceName, :UserId, :ToUserId

        def initialize(productid=nil, devicename=nil, userid=nil, touserid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
          @ToUserId = touserid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
          @ToUserId = params['ToUserId']
        end
      end

      # InheritCloudStorageUser返回参数结构体
      class InheritCloudStorageUserResponse < TencentCloud::Common::AbstractModel
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

      # 实例信息
      # 公共实例过期时间 0001-01-01T00:00:00Z，公共实例是永久有效
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceType: 实例类型（0 公共实例 1 标准企业实例 2新企业实例3新公共实例）
        # @type InstanceType: Integer
        # @param Region: 地域字母缩写
        # @type Region: String
        # @param ZoneId: 区域全拼
        # @type ZoneId: String
        # @param TotalDeviceNum: 支持设备总数
        # @type TotalDeviceNum: Integer
        # @param UsedDeviceNum: 已注册设备数
        # @type UsedDeviceNum: Integer
        # @param ProjectNum: 项目数
        # @type ProjectNum: Integer
        # @param ProductNum: 产品数
        # @type ProductNum: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ExpireTime: 过期时间，公共实例过期时间 0001-01-01T00:00:00Z，公共实例是永久有效
        # @type ExpireTime: String
        # @param TotalDevice: 总设备数
        # @type TotalDevice: Integer
        # @param ActivateDevice: 激活设备数
        # @type ActivateDevice: Integer
        # @param Description: 备注
        # @type Description: String
        # @param Status: 实例状态
        # @type Status: Integer
        # @param UpDownTPS: 消息上下行配置TPS
        # @type UpDownTPS: Integer
        # @param UpDownCurrentTPS: 当前消息上下行TPS
        # @type UpDownCurrentTPS: Integer
        # @param ForwardTPS: 消息转发配置TPS
        # @type ForwardTPS: Integer
        # @param ForwardCurrentTPS: 消息转发当前TPS
        # @type ForwardCurrentTPS: Integer
        # @param CellNum: 实例单元数
        # @type CellNum: Integer
        # @param BillingTag: 实例Tag，企业实例必传
        # @type BillingTag: String
        # @param EverydayFreeMessageCount: 每日消息数
        # @type EverydayFreeMessageCount: Integer
        # @param MaxDeviceOnlineCount: 最大在线设备数
        # @type MaxDeviceOnlineCount: Integer

        attr_accessor :InstanceId, :InstanceType, :Region, :ZoneId, :TotalDeviceNum, :UsedDeviceNum, :ProjectNum, :ProductNum, :CreateTime, :UpdateTime, :ExpireTime, :TotalDevice, :ActivateDevice, :Description, :Status, :UpDownTPS, :UpDownCurrentTPS, :ForwardTPS, :ForwardCurrentTPS, :CellNum, :BillingTag, :EverydayFreeMessageCount, :MaxDeviceOnlineCount

        def initialize(instanceid=nil, instancetype=nil, region=nil, zoneid=nil, totaldevicenum=nil, useddevicenum=nil, projectnum=nil, productnum=nil, createtime=nil, updatetime=nil, expiretime=nil, totaldevice=nil, activatedevice=nil, description=nil, status=nil, updowntps=nil, updowncurrenttps=nil, forwardtps=nil, forwardcurrenttps=nil, cellnum=nil, billingtag=nil, everydayfreemessagecount=nil, maxdeviceonlinecount=nil)
          @InstanceId = instanceid
          @InstanceType = instancetype
          @Region = region
          @ZoneId = zoneid
          @TotalDeviceNum = totaldevicenum
          @UsedDeviceNum = useddevicenum
          @ProjectNum = projectnum
          @ProductNum = productnum
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExpireTime = expiretime
          @TotalDevice = totaldevice
          @ActivateDevice = activatedevice
          @Description = description
          @Status = status
          @UpDownTPS = updowntps
          @UpDownCurrentTPS = updowncurrenttps
          @ForwardTPS = forwardtps
          @ForwardCurrentTPS = forwardcurrenttps
          @CellNum = cellnum
          @BillingTag = billingtag
          @EverydayFreeMessageCount = everydayfreemessagecount
          @MaxDeviceOnlineCount = maxdeviceonlinecount
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceType = params['InstanceType']
          @Region = params['Region']
          @ZoneId = params['ZoneId']
          @TotalDeviceNum = params['TotalDeviceNum']
          @UsedDeviceNum = params['UsedDeviceNum']
          @ProjectNum = params['ProjectNum']
          @ProductNum = params['ProductNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExpireTime = params['ExpireTime']
          @TotalDevice = params['TotalDevice']
          @ActivateDevice = params['ActivateDevice']
          @Description = params['Description']
          @Status = params['Status']
          @UpDownTPS = params['UpDownTPS']
          @UpDownCurrentTPS = params['UpDownCurrentTPS']
          @ForwardTPS = params['ForwardTPS']
          @ForwardCurrentTPS = params['ForwardCurrentTPS']
          @CellNum = params['CellNum']
          @BillingTag = params['BillingTag']
          @EverydayFreeMessageCount = params['EverydayFreeMessageCount']
          @MaxDeviceOnlineCount = params['MaxDeviceOnlineCount']
        end
      end

      # InvokeCloudStorageAIServiceTask请求参数结构体
      class InvokeCloudStorageAIServiceTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # - `VideoToText`：视频语义理解
        # @type ServiceType: String
        # @param StartTime: 待分析云存的起始时间
        # @type StartTime: Integer
        # @param EndTime: 待分析云存的结束时间
        # @type EndTime: Integer
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param Config: 视频分析配置参数
        # @type Config: String
        # @param ROI: 视频分析识别区域
        # @type ROI: String
        # @param VideoURLs: 分析外部传入的视频 URL 列表，支持 HLS 点播（m3u8）及常见视频格式（mp4 等）
        # @type VideoURLs: Array
        # @param CustomId: 自定义任务 ID
        # @type CustomId: String

        attr_accessor :ProductId, :DeviceName, :ServiceType, :StartTime, :EndTime, :ChannelId, :Config, :ROI, :VideoURLs, :CustomId

        def initialize(productid=nil, devicename=nil, servicetype=nil, starttime=nil, endtime=nil, channelid=nil, config=nil, roi=nil, videourls=nil, customid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @StartTime = starttime
          @EndTime = endtime
          @ChannelId = channelid
          @Config = config
          @ROI = roi
          @VideoURLs = videourls
          @CustomId = customid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ChannelId = params['ChannelId']
          @Config = params['Config']
          @ROI = params['ROI']
          @VideoURLs = params['VideoURLs']
          @CustomId = params['CustomId']
        end
      end

      # InvokeCloudStorageAIServiceTask返回参数结构体
      class InvokeCloudStorageAIServiceTaskResponse < TencentCloud::Common::AbstractModel
        # @param Completed: 任务是否执行完成
        # @type Completed: Boolean
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param TaskInfo: 任务信息
        # @type TaskInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.CloudStorageAIServiceTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Completed, :TaskId, :TaskInfo, :RequestId

        def initialize(completed=nil, taskid=nil, taskinfo=nil, requestid=nil)
          @Completed = completed
          @TaskId = taskid
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Completed = params['Completed']
          @TaskId = params['TaskId']
          unless params['TaskInfo'].nil?
            @TaskInfo = CloudStorageAIServiceTask.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InvokeExternalSourceAIServiceTask请求参数结构体
      class InvokeExternalSourceAIServiceTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # - `VideoToText`：视频语义理解
        # @type ServiceType: String
        # @param VideoURLs: 分析外部传入的视频 URL 列表，支持 HLS 点播（m3u8）及常见视频格式（mp4 等）
        # @type VideoURLs: Array
        # @param CustomId: 自定义任务 ID
        # @type CustomId: String
        # @param Config: 视频分析配置参数
        # @type Config: String
        # @param ROI: 视频分析识别区域
        # @type ROI: String

        attr_accessor :ProductId, :ServiceType, :VideoURLs, :CustomId, :Config, :ROI

        def initialize(productid=nil, servicetype=nil, videourls=nil, customid=nil, config=nil, roi=nil)
          @ProductId = productid
          @ServiceType = servicetype
          @VideoURLs = videourls
          @CustomId = customid
          @Config = config
          @ROI = roi
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ServiceType = params['ServiceType']
          @VideoURLs = params['VideoURLs']
          @CustomId = params['CustomId']
          @Config = params['Config']
          @ROI = params['ROI']
        end
      end

      # InvokeExternalSourceAIServiceTask返回参数结构体
      class InvokeExternalSourceAIServiceTaskResponse < TencentCloud::Common::AbstractModel
        # @param Completed: 任务是否执行完成
        # @type Completed: Boolean
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param TaskInfo: 任务信息
        # @type TaskInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.CloudStorageAIServiceTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Completed, :TaskId, :TaskInfo, :RequestId

        def initialize(completed=nil, taskid=nil, taskinfo=nil, requestid=nil)
          @Completed = completed
          @TaskId = taskid
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Completed = params['Completed']
          @TaskId = params['TaskId']
          unless params['TaskInfo'].nil?
            @TaskInfo = CloudStorageAIServiceTask.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 应用信息
      class IotApplication < TencentCloud::Common::AbstractModel
        # @param IotAppID: 应用 ID
        # @type IotAppID: String
        # @param AppName: 应用名称
        # @type AppName: String
        # @param Description: 应用说明
        # @type Description: String
        # @param DevMode: 开发模式
        # @type DevMode: Integer
        # @param IOSAppKey: iOS 平台 AppKey
        # @type IOSAppKey: String
        # @param IOSAppSecret: iOS 平台 AppSecret
        # @type IOSAppSecret: String
        # @param AndroidAppKey: Android 平台 AppKey
        # @type AndroidAppKey: String
        # @param AndroidAppSecret: Android 平台 AppSecret
        # @type AndroidAppSecret: String
        # @param Products: 绑定的产品列表，数据为：ProdcutID 数组 JSON 序列化后的字符串
        # @type Products: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param PushSecretID: 信鸽推送APP ID
        # @type PushSecretID: String
        # @param PushSecretKey: 信鸽推送SECRET KEY
        # @type PushSecretKey: String
        # @param PushEnvironment: iOS平台推送环境
        # @type PushEnvironment: String
        # @param MiniProgramAppKey: 小程序平台 AppKey
        # @type MiniProgramAppKey: String
        # @param MiniProgramAppSecret: 小程序平台 AppSecret
        # @type MiniProgramAppSecret: String
        # @param TPNSiOSAccessID: TPNS服务iOS应用AccessID，TPNS全称为腾讯移动推送（Tencent Push Notification Service），详见：https://cloud.tencent.com/document/product/548
        # @type TPNSiOSAccessID: String
        # @param TPNSiOSSecretKey: TPNS服务iOS应用SecretKey
        # @type TPNSiOSSecretKey: String
        # @param TPNSiOSPushEnvironment: TPNS服务iOS应用推送环境
        # @type TPNSiOSPushEnvironment: String
        # @param TPNSAndroidAccessID: TPNS服务Android应用AccessID
        # @type TPNSAndroidAccessID: String
        # @param TPNSAndroidSecretKey: TPNS服务Android应用SecretKey
        # @type TPNSAndroidSecretKey: String
        # @param TPNSiOSRegion: TPNS服务iOS应用所属地域，详细说明参见 ModifyApplication 同名入参。
        # @type TPNSiOSRegion: String
        # @param TPNSAndroidRegion: TPNS服务Android应用所属地域，详细说明参见 ModifyApplication 同名入参。
        # @type TPNSAndroidRegion: String
        # @param SelfSmsAppId: 自主短信配置APPID
        # @type SelfSmsAppId: String
        # @param SelfSmsAppKey: 自主短信配置APPKey
        # @type SelfSmsAppKey: String
        # @param SelfSmsSign: 自主短信配置签名
        # @type SelfSmsSign: String
        # @param SelfSmsTemplateId: 自主短信配置模板ID
        # @type SelfSmsTemplateId: Integer
        # @param WechatNotifyStatus: 第三方小程序强提醒开关 0：关闭；1：开启
        # @type WechatNotifyStatus: Integer
        # @param InterconnectionProducts: 互联互通产品ID列表
        # @type InterconnectionProducts: String

        attr_accessor :IotAppID, :AppName, :Description, :DevMode, :IOSAppKey, :IOSAppSecret, :AndroidAppKey, :AndroidAppSecret, :Products, :CreateTime, :ProjectId, :PushSecretID, :PushSecretKey, :PushEnvironment, :MiniProgramAppKey, :MiniProgramAppSecret, :TPNSiOSAccessID, :TPNSiOSSecretKey, :TPNSiOSPushEnvironment, :TPNSAndroidAccessID, :TPNSAndroidSecretKey, :TPNSiOSRegion, :TPNSAndroidRegion, :SelfSmsAppId, :SelfSmsAppKey, :SelfSmsSign, :SelfSmsTemplateId, :WechatNotifyStatus, :InterconnectionProducts

        def initialize(iotappid=nil, appname=nil, description=nil, devmode=nil, iosappkey=nil, iosappsecret=nil, androidappkey=nil, androidappsecret=nil, products=nil, createtime=nil, projectid=nil, pushsecretid=nil, pushsecretkey=nil, pushenvironment=nil, miniprogramappkey=nil, miniprogramappsecret=nil, tpnsiosaccessid=nil, tpnsiossecretkey=nil, tpnsiospushenvironment=nil, tpnsandroidaccessid=nil, tpnsandroidsecretkey=nil, tpnsiosregion=nil, tpnsandroidregion=nil, selfsmsappid=nil, selfsmsappkey=nil, selfsmssign=nil, selfsmstemplateid=nil, wechatnotifystatus=nil, interconnectionproducts=nil)
          @IotAppID = iotappid
          @AppName = appname
          @Description = description
          @DevMode = devmode
          @IOSAppKey = iosappkey
          @IOSAppSecret = iosappsecret
          @AndroidAppKey = androidappkey
          @AndroidAppSecret = androidappsecret
          @Products = products
          @CreateTime = createtime
          @ProjectId = projectid
          @PushSecretID = pushsecretid
          @PushSecretKey = pushsecretkey
          @PushEnvironment = pushenvironment
          @MiniProgramAppKey = miniprogramappkey
          @MiniProgramAppSecret = miniprogramappsecret
          @TPNSiOSAccessID = tpnsiosaccessid
          @TPNSiOSSecretKey = tpnsiossecretkey
          @TPNSiOSPushEnvironment = tpnsiospushenvironment
          @TPNSAndroidAccessID = tpnsandroidaccessid
          @TPNSAndroidSecretKey = tpnsandroidsecretkey
          @TPNSiOSRegion = tpnsiosregion
          @TPNSAndroidRegion = tpnsandroidregion
          @SelfSmsAppId = selfsmsappid
          @SelfSmsAppKey = selfsmsappkey
          @SelfSmsSign = selfsmssign
          @SelfSmsTemplateId = selfsmstemplateid
          @WechatNotifyStatus = wechatnotifystatus
          @InterconnectionProducts = interconnectionproducts
        end

        def deserialize(params)
          @IotAppID = params['IotAppID']
          @AppName = params['AppName']
          @Description = params['Description']
          @DevMode = params['DevMode']
          @IOSAppKey = params['IOSAppKey']
          @IOSAppSecret = params['IOSAppSecret']
          @AndroidAppKey = params['AndroidAppKey']
          @AndroidAppSecret = params['AndroidAppSecret']
          @Products = params['Products']
          @CreateTime = params['CreateTime']
          @ProjectId = params['ProjectId']
          @PushSecretID = params['PushSecretID']
          @PushSecretKey = params['PushSecretKey']
          @PushEnvironment = params['PushEnvironment']
          @MiniProgramAppKey = params['MiniProgramAppKey']
          @MiniProgramAppSecret = params['MiniProgramAppSecret']
          @TPNSiOSAccessID = params['TPNSiOSAccessID']
          @TPNSiOSSecretKey = params['TPNSiOSSecretKey']
          @TPNSiOSPushEnvironment = params['TPNSiOSPushEnvironment']
          @TPNSAndroidAccessID = params['TPNSAndroidAccessID']
          @TPNSAndroidSecretKey = params['TPNSAndroidSecretKey']
          @TPNSiOSRegion = params['TPNSiOSRegion']
          @TPNSAndroidRegion = params['TPNSAndroidRegion']
          @SelfSmsAppId = params['SelfSmsAppId']
          @SelfSmsAppKey = params['SelfSmsAppKey']
          @SelfSmsSign = params['SelfSmsSign']
          @SelfSmsTemplateId = params['SelfSmsTemplateId']
          @WechatNotifyStatus = params['WechatNotifyStatus']
          @InterconnectionProducts = params['InterconnectionProducts']
        end
      end

      # 增值服务数量统计
      class LicenseServiceNumInfo < TencentCloud::Common::AbstractModel
        # @param LicenseType: 服务类型
        # @type LicenseType: String
        # @param TotalNum: 授权总数
        # @type TotalNum: Integer
        # @param UsedNum: 已使用授权数
        # @type UsedNum: Integer
        # @param TWeCallLicense: TWeCall激活码
        # @type TWeCallLicense: Array

        attr_accessor :LicenseType, :TotalNum, :UsedNum, :TWeCallLicense

        def initialize(licensetype=nil, totalnum=nil, usednum=nil, twecalllicense=nil)
          @LicenseType = licensetype
          @TotalNum = totalnum
          @UsedNum = usednum
          @TWeCallLicense = twecalllicense
        end

        def deserialize(params)
          @LicenseType = params['LicenseType']
          @TotalNum = params['TotalNum']
          @UsedNum = params['UsedNum']
          unless params['TWeCallLicense'].nil?
            @TWeCallLicense = []
            params['TWeCallLicense'].each do |i|
              twecalllicenseinfo_tmp = TWeCallLicenseInfo.new
              twecalllicenseinfo_tmp.deserialize(i)
              @TWeCallLicense << twecalllicenseinfo_tmp
            end
          end
        end
      end

      # ListEventHistory请求参数结构体
      class ListEventHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Type: 搜索的事件类型：alert 表示告警，fault 表示故障，info 表示信息，为空则表示查询上述所有类型事件
        # @type Type: String
        # @param StartTime: 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        # @type StartTime: Integer
        # @param EndTime: 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        # @type EndTime: Integer
        # @param Context: 搜索上下文, 用作查询游标
        # @type Context: String
        # @param Size: 单次获取的历史数据项目的最大数量, 缺省10
        # @type Size: Integer
        # @param EventId: 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        # @type EventId: String

        attr_accessor :ProductId, :DeviceName, :Type, :StartTime, :EndTime, :Context, :Size, :EventId

        def initialize(productid=nil, devicename=nil, type=nil, starttime=nil, endtime=nil, context=nil, size=nil, eventid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @Size = size
          @EventId = eventid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @Size = params['Size']
          @EventId = params['EventId']
        end
      end

      # ListEventHistory返回参数结构体
      class ListEventHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Context: 搜索上下文, 用作查询游标
        # @type Context: String
        # @param Total: 搜索结果数量
        # @type Total: Integer
        # @param Listover: 搜索结果是否已经结束
        # @type Listover: Boolean
        # @param EventHistory: 搜集结果集
        # @type EventHistory: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Total, :Listover, :EventHistory, :RequestId

        def initialize(context=nil, total=nil, listover=nil, eventhistory=nil, requestid=nil)
          @Context = context
          @Total = total
          @Listover = listover
          @EventHistory = eventhistory
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Total = params['Total']
          @Listover = params['Listover']
          unless params['EventHistory'].nil?
            @EventHistory = []
            params['EventHistory'].each do |i|
              eventhistoryitem_tmp = EventHistoryItem.new
              eventhistoryitem_tmp.deserialize(i)
              @EventHistory << eventhistoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListFirmwares请求参数结构体
      class ListFirmwaresRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 获取的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :PageNum, :PageSize, :ProductID, :Filters

        def initialize(pagenum=nil, pagesize=nil, productid=nil, filters=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @ProductID = productid
          @Filters = filters
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @ProductID = params['ProductID']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              searchkeyword_tmp = SearchKeyword.new
              searchkeyword_tmp.deserialize(i)
              @Filters << searchkeyword_tmp
            end
          end
        end
      end

      # ListFirmwares返回参数结构体
      class ListFirmwaresResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 固件总数
        # @type TotalCount: Integer
        # @param Firmwares: 固件列表
        # @type Firmwares: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Firmwares, :RequestId

        def initialize(totalcount=nil, firmwares=nil, requestid=nil)
          @TotalCount = totalcount
          @Firmwares = firmwares
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Firmwares'].nil?
            @Firmwares = []
            params['Firmwares'].each do |i|
              firmwareinfo_tmp = FirmwareInfo.new
              firmwareinfo_tmp.deserialize(i)
              @Firmwares << firmwareinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTopicPolicy请求参数结构体
      class ListTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # ListTopicPolicy返回参数结构体
      class ListTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Topics: Topic列表
        # @type Topics: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Topics, :RequestId

        def initialize(topics=nil, requestid=nil)
          @Topics = topics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              topicitem_tmp = TopicItem.new
              topicitem_tmp.deserialize(i)
              @Topics << topicitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # LoRa自定义频点信息
      class LoRaFrequencyEntry < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String
        # @param FreqName: 频点名称
        # @type FreqName: String
        # @param Description: 频点描述
        # @type Description: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行信道RX1
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行信道RX2
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行RX1信道
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行RX2信道
        # @type ChannelsJoinRX2: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer

        attr_accessor :FreqId, :FreqName, :Description, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2, :CreateTime

        def initialize(freqid=nil, freqname=nil, description=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil, createtime=nil)
          @FreqId = freqid
          @FreqName = freqname
          @Description = description
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
          @CreateTime = createtime
        end

        def deserialize(params)
          @FreqId = params['FreqId']
          @FreqName = params['FreqName']
          @Description = params['Description']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
          @CreateTime = params['CreateTime']
        end
      end

      # LoRa 网关信息
      class LoRaGatewayItem < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关Id
        # @type GatewayId: String
        # @param IsPublic: 是否是公开网关
        # @type IsPublic: Boolean
        # @param Description: 网关描述
        # @type Description: String
        # @param Name: 网关名称
        # @type Name: String
        # @param Position: 网关位置信息
        # @type Position: String
        # @param PositionDetails: 网关位置详情
        # @type PositionDetails: String
        # @param Location: LoRa 网关位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param UpdatedAt: 最后更新时间
        # @type UpdatedAt: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param LastSeenAt: 最后上报时间
        # @type LastSeenAt: String
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :GatewayId, :IsPublic, :Description, :Name, :Position, :PositionDetails, :Location, :UpdatedAt, :CreatedAt, :LastSeenAt, :FrequencyId

        def initialize(gatewayid=nil, ispublic=nil, description=nil, name=nil, position=nil, positiondetails=nil, location=nil, updatedat=nil, createdat=nil, lastseenat=nil, frequencyid=nil)
          @GatewayId = gatewayid
          @IsPublic = ispublic
          @Description = description
          @Name = name
          @Position = position
          @PositionDetails = positiondetails
          @Location = location
          @UpdatedAt = updatedat
          @CreatedAt = createdat
          @LastSeenAt = lastseenat
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @IsPublic = params['IsPublic']
          @Description = params['Description']
          @Name = params['Name']
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new
            @Location.deserialize(params['Location'])
          end
          @UpdatedAt = params['UpdatedAt']
          @CreatedAt = params['CreatedAt']
          @LastSeenAt = params['LastSeenAt']
          @FrequencyId = params['FrequencyId']
        end
      end

      # 网关坐标
      class LoRaGatewayLocation < TencentCloud::Common::AbstractModel
        # @param Latitude: 纬度
        # @type Latitude: Float
        # @param Longitude: 精度
        # @type Longitude: Float
        # @param Accuracy: 准确度
        # @type Accuracy: Float
        # @param Altitude: 海拔
        # @type Altitude: Float

        attr_accessor :Latitude, :Longitude, :Accuracy, :Altitude

        def initialize(latitude=nil, longitude=nil, accuracy=nil, altitude=nil)
          @Latitude = latitude
          @Longitude = longitude
          @Accuracy = accuracy
          @Altitude = altitude
        end

        def deserialize(params)
          @Latitude = params['Latitude']
          @Longitude = params['Longitude']
          @Accuracy = params['Accuracy']
          @Altitude = params['Altitude']
        end
      end

      # ModifyApplication请求参数结构体
      class ModifyApplicationRequest < TencentCloud::Common::AbstractModel
        # @param IotAppID: 应用ID
        # @type IotAppID: String
        # @param AppName: 应用名称
        # @type AppName: String
        # @param Description: 应用说明
        # @type Description: String
        # @param Products: 关联的产品
        # @type Products: String
        # @param PushSecretID: 信鸽推送APP ID
        # @type PushSecretID: String
        # @param PushSecretKey: 信鸽推送SECRET KEY
        # @type PushSecretKey: String
        # @param PushEnvironment: iOS平台推送环境
        # @type PushEnvironment: String
        # @param TPNSiOSAccessID: TPNS服务iOS应用AccessID，TPNS全称为腾讯移动推送（Tencent Push Notification Service），详见：https://cloud.tencent.com/document/product/548
        # @type TPNSiOSAccessID: String
        # @param TPNSiOSSecretKey: TPNS服务iOS应用SecretKey
        # @type TPNSiOSSecretKey: String
        # @param TPNSiOSPushEnvironment: TPNS服务iOS应用推送环境
        # @type TPNSiOSPushEnvironment: String
        # @param TPNSAndroidAccessID: TPNS服务Android应用AccessID
        # @type TPNSAndroidAccessID: String
        # @param TPNSAndroidSecretKey: TPNS服务Android应用SecretKey
        # @type TPNSAndroidSecretKey: String
        # @param TPNSiOSRegion: TPNS服务iOS应用所属地域，广州：ap-guangzhou，上海：ap-shanghai，中国香港：ap-hongkong，新加坡：ap-singapore。
        # @type TPNSiOSRegion: String
        # @param TPNSAndroidRegion: TPNS服务Android应用所属地域，广州：ap-guangzhou，上海：ap-shanghai，中国香港：ap-hongkong，新加坡：ap-singapore。
        # @type TPNSAndroidRegion: String
        # @param TurnKeySwitch: TurnKey小程序托管
        # @type TurnKeySwitch: Integer

        attr_accessor :IotAppID, :AppName, :Description, :Products, :PushSecretID, :PushSecretKey, :PushEnvironment, :TPNSiOSAccessID, :TPNSiOSSecretKey, :TPNSiOSPushEnvironment, :TPNSAndroidAccessID, :TPNSAndroidSecretKey, :TPNSiOSRegion, :TPNSAndroidRegion, :TurnKeySwitch

        def initialize(iotappid=nil, appname=nil, description=nil, products=nil, pushsecretid=nil, pushsecretkey=nil, pushenvironment=nil, tpnsiosaccessid=nil, tpnsiossecretkey=nil, tpnsiospushenvironment=nil, tpnsandroidaccessid=nil, tpnsandroidsecretkey=nil, tpnsiosregion=nil, tpnsandroidregion=nil, turnkeyswitch=nil)
          @IotAppID = iotappid
          @AppName = appname
          @Description = description
          @Products = products
          @PushSecretID = pushsecretid
          @PushSecretKey = pushsecretkey
          @PushEnvironment = pushenvironment
          @TPNSiOSAccessID = tpnsiosaccessid
          @TPNSiOSSecretKey = tpnsiossecretkey
          @TPNSiOSPushEnvironment = tpnsiospushenvironment
          @TPNSAndroidAccessID = tpnsandroidaccessid
          @TPNSAndroidSecretKey = tpnsandroidsecretkey
          @TPNSiOSRegion = tpnsiosregion
          @TPNSAndroidRegion = tpnsandroidregion
          @TurnKeySwitch = turnkeyswitch
        end

        def deserialize(params)
          @IotAppID = params['IotAppID']
          @AppName = params['AppName']
          @Description = params['Description']
          @Products = params['Products']
          @PushSecretID = params['PushSecretID']
          @PushSecretKey = params['PushSecretKey']
          @PushEnvironment = params['PushEnvironment']
          @TPNSiOSAccessID = params['TPNSiOSAccessID']
          @TPNSiOSSecretKey = params['TPNSiOSSecretKey']
          @TPNSiOSPushEnvironment = params['TPNSiOSPushEnvironment']
          @TPNSAndroidAccessID = params['TPNSAndroidAccessID']
          @TPNSAndroidSecretKey = params['TPNSAndroidSecretKey']
          @TPNSiOSRegion = params['TPNSiOSRegion']
          @TPNSAndroidRegion = params['TPNSAndroidRegion']
          @TurnKeySwitch = params['TurnKeySwitch']
        end
      end

      # ModifyApplication返回参数结构体
      class ModifyApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Application: 应用信息
        # @type Application: :class:`Tencentcloud::Iotexplorer.v20190423.models.IotApplication`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Application, :RequestId

        def initialize(application=nil, requestid=nil)
          @Application = application
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Application'].nil?
            @Application = IotApplication.new
            @Application.deserialize(params['Application'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCloudStorageAIServiceCallback请求参数结构体
      class ModifyCloudStorageAIServiceCallbackRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param Type: 推送类型。可选值：
        # - `http`：HTTP 回调
        # @type Type: String
        # @param CallbackUrl: HTTP 回调 URL
        # @type CallbackUrl: String
        # @param CallbackToken: HTTP 回调鉴权 Token
        # @type CallbackToken: String

        attr_accessor :ProductId, :Type, :CallbackUrl, :CallbackToken

        def initialize(productid=nil, type=nil, callbackurl=nil, callbacktoken=nil)
          @ProductId = productid
          @Type = type
          @CallbackUrl = callbackurl
          @CallbackToken = callbacktoken
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Type = params['Type']
          @CallbackUrl = params['CallbackUrl']
          @CallbackToken = params['CallbackToken']
        end
      end

      # ModifyCloudStorageAIServiceCallback返回参数结构体
      class ModifyCloudStorageAIServiceCallbackResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCloudStorageAIService请求参数结构体
      class ModifyCloudStorageAIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # @type ServiceType: String
        # @param Enabled: 视频分析启用状态
        # @type Enabled: Boolean
        # @param ROI: 视频分析识别区域
        # @type ROI: String
        # @param Config: 视频分析配置参数
        # @type Config: String

        attr_accessor :ProductId, :DeviceName, :ServiceType, :Enabled, :ROI, :Config

        def initialize(productid=nil, devicename=nil, servicetype=nil, enabled=nil, roi=nil, config=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @Enabled = enabled
          @ROI = roi
          @Config = config
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @Enabled = params['Enabled']
          @ROI = params['ROI']
          @Config = params['Config']
        end
      end

      # ModifyCloudStorageAIService返回参数结构体
      class ModifyCloudStorageAIServiceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFenceBind请求参数结构体
      class ModifyFenceBindRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Items: 围栏绑定的产品列表
        # @type Items: Array

        attr_accessor :FenceId, :Items

        def initialize(fenceid=nil, items=nil)
          @FenceId = fenceid
          @Items = items
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @Items << fencebindproductitem_tmp
            end
          end
        end
      end

      # ModifyFenceBind返回参数结构体
      class ModifyFenceBindResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoRaFrequency请求参数结构体
      class ModifyLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String
        # @param FreqName: 频点名称
        # @type FreqName: String
        # @param Description: 频点描述
        # @type Description: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行信道RX1
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行信道RX2
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行信道RX1
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行信道RX2
        # @type ChannelsJoinRX2: Array

        attr_accessor :FreqId, :FreqName, :Description, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2

        def initialize(freqid=nil, freqname=nil, description=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil)
          @FreqId = freqid
          @FreqName = freqname
          @Description = description
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
        end

        def deserialize(params)
          @FreqId = params['FreqId']
          @FreqName = params['FreqName']
          @Description = params['Description']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
        end
      end

      # ModifyLoRaFrequency返回参数结构体
      class ModifyLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 频点信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoRaGateway请求参数结构体
      class ModifyLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param Description: 描述信息
        # @type Description: String
        # @param GatewayId: LoRa网关Id
        # @type GatewayId: String
        # @param Location: LoRa网关位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param Name: LoRa网关名称
        # @type Name: String
        # @param IsPublic: 是否公开可见
        # @type IsPublic: Boolean
        # @param Position: 位置信息
        # @type Position: String
        # @param PositionDetails: 位置详情
        # @type PositionDetails: String
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :Description, :GatewayId, :Location, :Name, :IsPublic, :Position, :PositionDetails, :FrequencyId

        def initialize(description=nil, gatewayid=nil, location=nil, name=nil, ispublic=nil, position=nil, positiondetails=nil, frequencyid=nil)
          @Description = description
          @GatewayId = gatewayid
          @Location = location
          @Name = name
          @IsPublic = ispublic
          @Position = position
          @PositionDetails = positiondetails
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @Description = params['Description']
          @GatewayId = params['GatewayId']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new
            @Location.deserialize(params['Location'])
          end
          @Name = params['Name']
          @IsPublic = params['IsPublic']
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          @FrequencyId = params['FrequencyId']
        end
      end

      # ModifyLoRaGateway返回参数结构体
      class ModifyLoRaGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Gateway: 返回网关数据
        # @type Gateway: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayItem`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Gateway, :RequestId

        def initialize(gateway=nil, requestid=nil)
          @Gateway = gateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Gateway'].nil?
            @Gateway = LoRaGatewayItem.new
            @Gateway.deserialize(params['Gateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyModelDefinition请求参数结构体
      class ModifyModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelSchema: 数据模板定义
        # @type ModelSchema: String

        attr_accessor :ProductId, :ModelSchema

        def initialize(productid=nil, modelschema=nil)
          @ProductId = productid
          @ModelSchema = modelschema
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelSchema = params['ModelSchema']
        end
      end

      # ModifyModelDefinition返回参数结构体
      class ModifyModelDefinitionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPositionFence请求参数结构体
      class ModifyPositionFenceRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyPositionFence返回参数结构体
      class ModifyPositionFenceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPositionSpace请求参数结构体
      class ModifyPositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param SpaceName: 位置空间名称
        # @type SpaceName: String
        # @param AuthorizeType: 授权类型
        # @type AuthorizeType: Integer
        # @param ProductIdList: 产品列表
        # @type ProductIdList: Array
        # @param Description: 位置空间描述
        # @type Description: String
        # @param Icon: 缩略图
        # @type Icon: String

        attr_accessor :SpaceId, :SpaceName, :AuthorizeType, :ProductIdList, :Description, :Icon

        def initialize(spaceid=nil, spacename=nil, authorizetype=nil, productidlist=nil, description=nil, icon=nil)
          @SpaceId = spaceid
          @SpaceName = spacename
          @AuthorizeType = authorizetype
          @ProductIdList = productidlist
          @Description = description
          @Icon = icon
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @SpaceName = params['SpaceName']
          @AuthorizeType = params['AuthorizeType']
          @ProductIdList = params['ProductIdList']
          @Description = params['Description']
          @Icon = params['Icon']
        end
      end

      # ModifyPositionSpace返回参数结构体
      class ModifyPositionSpaceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProductCloudStorageAIService请求参数结构体
      class ModifyProductCloudStorageAIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param Enabled: 开通状态
        # @type Enabled: Boolean

        attr_accessor :ProductId, :Enabled

        def initialize(productid=nil, enabled=nil)
          @ProductId = productid
          @Enabled = enabled
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Enabled = params['Enabled']
        end
      end

      # ModifyProductCloudStorageAIService返回参数结构体
      class ModifyProductCloudStorageAIServiceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc

        def initialize(projectid=nil, projectname=nil, projectdesc=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 项目详情
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId

        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntry.new
            @Project.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifySpaceProperty请求参数结构体
      class ModifySpacePropertyRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param Data: 产品属性
        # @type Data: String

        attr_accessor :SpaceId, :ProductId, :Data

        def initialize(spaceid=nil, productid=nil, data=nil)
          @SpaceId = spaceid
          @ProductId = productid
          @Data = data
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @ProductId = params['ProductId']
          @Data = params['Data']
        end
      end

      # ModifySpaceProperty返回参数结构体
      class ModifySpacePropertyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyStudioProduct请求参数结构体
      class ModifyStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param ModuleId: 模型ID
        # @type ModuleId: Integer
        # @param EnableProductScript: 是否打开二进制转Json功能, 取值为字符串 true/false
        # @type EnableProductScript: String
        # @param BindStrategy: 传1或者2；1代表强踢，2代表非强踢。传其它值不做任何处理
        # @type BindStrategy: Integer

        attr_accessor :ProductId, :ProductName, :ProductDesc, :ModuleId, :EnableProductScript, :BindStrategy

        def initialize(productid=nil, productname=nil, productdesc=nil, moduleid=nil, enableproductscript=nil, bindstrategy=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductDesc = productdesc
          @ModuleId = moduleid
          @EnableProductScript = enableproductscript
          @BindStrategy = bindstrategy
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductDesc = params['ProductDesc']
          @ModuleId = params['ModuleId']
          @EnableProductScript = params['EnableProductScript']
          @BindStrategy = params['BindStrategy']
        end
      end

      # ModifyStudioProduct返回参数结构体
      class ModifyStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品描述
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId

        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopicPolicy请求参数结构体
      class ModifyTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: 更新前Topic名
        # @type TopicName: String
        # @param NewTopicName: 更新后Topic名
        # @type NewTopicName: String
        # @param Privilege: Topic权限
        # @type Privilege: Integer

        attr_accessor :ProductId, :TopicName, :NewTopicName, :Privilege

        def initialize(productid=nil, topicname=nil, newtopicname=nil, privilege=nil)
          @ProductId = productid
          @TopicName = topicname
          @NewTopicName = newtopicname
          @Privilege = privilege
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
          @NewTopicName = params['NewTopicName']
          @Privilege = params['Privilege']
        end
      end

      # ModifyTopicPolicy返回参数结构体
      class ModifyTopicPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTopicRule请求参数结构体
      class ModifyTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 替换的规则包体
        # @type TopicRulePayload: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRulePayload`

        attr_accessor :RuleName, :TopicRulePayload

        def initialize(rulename=nil, topicrulepayload=nil)
          @RuleName = rulename
          @TopicRulePayload = topicrulepayload
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['TopicRulePayload'].nil?
            @TopicRulePayload = TopicRulePayload.new
            @TopicRulePayload.deserialize(params['TopicRulePayload'])
          end
        end
      end

      # ModifyTopicRule返回参数结构体
      class ModifyTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # 云存套餐包消耗统计
      class PackageConsumeStat < TencentCloud::Common::AbstractModel
        # @param PackageId: 云存套餐包id
        # @type PackageId: String
        # @param PackageName: 云存套餐包名称
        # @type PackageName: String
        # @param Cnt: 消耗个数
        # @type Cnt: Integer
        # @param Price: 套餐包单价，单位分
        # @type Price: Integer
        # @param Source: 消耗来源，1预付费
        # @type Source: Integer

        attr_accessor :PackageId, :PackageName, :Cnt, :Price, :Source

        def initialize(packageid=nil, packagename=nil, cnt=nil, price=nil, source=nil)
          @PackageId = packageid
          @PackageName = packagename
          @Cnt = cnt
          @Price = price
          @Source = source
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @Cnt = params['Cnt']
          @Price = params['Price']
          @Source = params['Source']
        end
      end

      # 套餐包消耗任务列表
      class PackageConsumeTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: Integer
        # @param CreateTime: 任务创始时间
        # @type CreateTime: String
        # @param State: 任务状态，1待处理，2处理中，3已完成
        # @type State: Integer

        attr_accessor :TaskId, :CreateTime, :State

        def initialize(taskid=nil, createtime=nil, state=nil)
          @TaskId = taskid
          @CreateTime = createtime
          @State = state
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CreateTime = params['CreateTime']
          @State = params['State']
        end
      end

      # 结构体（PackageInfo）记录了设备拥有的有效套餐信息，包括云存开启状态、云存类型、云存回看时长、云存套餐过期时间
      class PackageInfo < TencentCloud::Common::AbstractModel
        # @param Status: 云存开启状态，0为未开启，2为正在生效，1为已过期
        # 注：这里只返回状态为0的数据
        # @type Status: Integer
        # @param CSType: 云存类型，1为全时云存，2为事件云存
        # @type CSType: Integer
        # @param CSShiftDuration: 云存回看时长
        # @type CSShiftDuration: Integer
        # @param CSExpiredTime: 云存套餐过期时间
        # @type CSExpiredTime: Integer
        # @param CreatedAt: 云存套餐创建时间
        # @type CreatedAt: Integer
        # @param UpdatedAt: 云存套餐更新时间
        # @type UpdatedAt: Integer
        # @param PackageId: 套餐id
        # @type PackageId: String
        # @param OrderId: 订单id
        # @type OrderId: String
        # @param ChannelId: 通道id
        # @type ChannelId: Integer
        # @param CSUserId: 用户id
        # @type CSUserId: String

        attr_accessor :Status, :CSType, :CSShiftDuration, :CSExpiredTime, :CreatedAt, :UpdatedAt, :PackageId, :OrderId, :ChannelId, :CSUserId

        def initialize(status=nil, cstype=nil, csshiftduration=nil, csexpiredtime=nil, createdat=nil, updatedat=nil, packageid=nil, orderid=nil, channelid=nil, csuserid=nil)
          @Status = status
          @CSType = cstype
          @CSShiftDuration = csshiftduration
          @CSExpiredTime = csexpiredtime
          @CreatedAt = createdat
          @UpdatedAt = updatedat
          @PackageId = packageid
          @OrderId = orderid
          @ChannelId = channelid
          @CSUserId = csuserid
        end

        def deserialize(params)
          @Status = params['Status']
          @CSType = params['CSType']
          @CSShiftDuration = params['CSShiftDuration']
          @CSExpiredTime = params['CSExpiredTime']
          @CreatedAt = params['CreatedAt']
          @UpdatedAt = params['UpdatedAt']
          @PackageId = params['PackageId']
          @OrderId = params['OrderId']
          @ChannelId = params['ChannelId']
          @CSUserId = params['CSUserId']
        end
      end

      # PauseTWeCallDevice请求参数结构体
      class PauseTWeCallDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceList: 设备列表
        # @type DeviceList: Array

        attr_accessor :DeviceList

        def initialize(devicelist=nil)
          @DeviceList = devicelist
        end

        def deserialize(params)
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              twecallinfo_tmp = TWeCallInfo.new
              twecallinfo_tmp.deserialize(i)
              @DeviceList << twecallinfo_tmp
            end
          end
        end
      end

      # PauseTWeCallDevice返回参数结构体
      class PauseTWeCallDeviceResponse < TencentCloud::Common::AbstractModel
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

      # 围栏详细信息(包含创建时间及更新时间)
      class PositionFenceInfo < TencentCloud::Common::AbstractModel
        # @param GeoFence: 围栏信息
        # @type GeoFence: :class:`Tencentcloud::Iotexplorer.v20190423.models.PositionFenceItem`
        # @param CreateTime: 围栏创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 围栏更新时间
        # @type UpdateTime: Integer

        attr_accessor :GeoFence, :CreateTime, :UpdateTime

        def initialize(geofence=nil, createtime=nil, updatetime=nil)
          @GeoFence = geofence
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          unless params['GeoFence'].nil?
            @GeoFence = PositionFenceItem.new
            @GeoFence.deserialize(params['GeoFence'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 围栏信息
      class PositionFenceItem < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param FenceName: 围栏名称
        # @type FenceName: String
        # @param FenceDesc: 围栏描述
        # @type FenceDesc: String
        # @param FenceArea: 围栏区域信息，采用 GeoJSON 格式
        # @type FenceArea: String

        attr_accessor :FenceId, :SpaceId, :FenceName, :FenceDesc, :FenceArea

        def initialize(fenceid=nil, spaceid=nil, fencename=nil, fencedesc=nil, fencearea=nil)
          @FenceId = fenceid
          @SpaceId = spaceid
          @FenceName = fencename
          @FenceDesc = fencedesc
          @FenceArea = fencearea
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          @SpaceId = params['SpaceId']
          @FenceName = params['FenceName']
          @FenceDesc = params['FenceDesc']
          @FenceArea = params['FenceArea']
        end
      end

      # 位置点
      class PositionItem < TencentCloud::Common::AbstractModel
        # @param CreateTime: 位置点的时间
        # @type CreateTime: Integer
        # @param Longitude: 位置点的经度
        # @type Longitude: Float
        # @param Latitude: 位置点的纬度
        # @type Latitude: Float
        # @param LocationType: 位置点的定位类型
        # @type LocationType: String
        # @param Accuracy: 位置点的精度预估，单位为米
        # @type Accuracy: Float

        attr_accessor :CreateTime, :Longitude, :Latitude, :LocationType, :Accuracy

        def initialize(createtime=nil, longitude=nil, latitude=nil, locationtype=nil, accuracy=nil)
          @CreateTime = createtime
          @Longitude = longitude
          @Latitude = latitude
          @LocationType = locationtype
          @Accuracy = accuracy
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
          @LocationType = params['LocationType']
          @Accuracy = params['Accuracy']
        end
      end

      # 位置空间详情
      class PositionSpaceInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param SpaceName: 位置空间名称
        # @type SpaceName: String
        # @param AuthorizeType: 授权类型
        # @type AuthorizeType: Integer
        # @param Description: 描述备注
        # @type Description: String
        # @param ProductIdList: 产品列表
        # @type ProductIdList: Array
        # @param Icon: 缩略图
        # @type Icon: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Zoom: 用户自定义地图缩放
        # @type Zoom: Integer

        attr_accessor :ProjectId, :SpaceId, :SpaceName, :AuthorizeType, :Description, :ProductIdList, :Icon, :CreateTime, :UpdateTime, :Zoom

        def initialize(projectid=nil, spaceid=nil, spacename=nil, authorizetype=nil, description=nil, productidlist=nil, icon=nil, createtime=nil, updatetime=nil, zoom=nil)
          @ProjectId = projectid
          @SpaceId = spaceid
          @SpaceName = spacename
          @AuthorizeType = authorizetype
          @Description = description
          @ProductIdList = productidlist
          @Icon = icon
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Zoom = zoom
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SpaceId = params['SpaceId']
          @SpaceName = params['SpaceName']
          @AuthorizeType = params['AuthorizeType']
          @Description = params['Description']
          @ProductIdList = params['ProductIdList']
          @Icon = params['Icon']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Zoom = params['Zoom']
        end
      end

      # 产品设备位置信息
      class ProductDevicesPositionItem < TencentCloud::Common::AbstractModel
        # @param Items: 设备位置列表
        # @type Items: Array
        # @param ProductId: 产品标识
        # @type ProductId: String
        # @param Total: 设备位置数量
        # @type Total: Integer

        attr_accessor :Items, :ProductId, :Total

        def initialize(items=nil, productid=nil, total=nil)
          @Items = items
          @ProductId = productid
          @Total = total
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              devicepositionitem_tmp = DevicePositionItem.new
              devicepositionitem_tmp.deserialize(i)
              @Items << devicepositionitem_tmp
            end
          end
          @ProductId = params['ProductId']
          @Total = params['Total']
        end
      end

      # 产品详情
      class ProductEntry < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param CategoryId: 产品分组模板ID
        # @type CategoryId: Integer
        # @param EncryptionType: 加密类型。1表示证书认证，2表示密钥认证，21表示TID认证-SE方式，22表示TID认证-软加固方式
        # @type EncryptionType: String
        # @param NetType: 连接类型。如：
        # wifi、wifi-ble、cellular、5g、lorawan、ble、ethernet、wifi-ethernet、else、sub_zigbee、sub_ble、sub_433mhz、sub_else、sub_blemesh
        # @type NetType: String
        # @param DataProtocol: 数据协议 (1 使用物模型 2 为自定义类型)
        # @type DataProtocol: Integer
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param DevStatus: 状态 如：all 全部, dev 开发中, audit 审核中 released 已发布
        # @type DevStatus: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Region: 区域
        # @type Region: String
        # @param ProductType: 产品类型。如： 0 普通产品 ， 5 网关产品
        # @type ProductType: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ModuleId: 产品ModuleId
        # @type ModuleId: Integer
        # @param EnableProductScript: 是否使用脚本进行二进制转json功能 可以取值 true / false
        # @type EnableProductScript: String
        # @param CreateUserId: 创建人 UinId
        # @type CreateUserId: Integer
        # @param CreatorNickName: 创建者昵称
        # @type CreatorNickName: String
        # @param BindStrategy: 绑定策略（1：强踢；2：非强踢；0：表示无意义）
        # @type BindStrategy: Integer
        # @param DeviceCount: 设备数量
        # @type DeviceCount: Integer
        # @param Rate: 平均传输速率
        # @type Rate: String
        # @param Period: 有效期
        # @type Period: String
        # @param IsInterconnection: 互联互通标识
        # @type IsInterconnection: Integer

        attr_accessor :ProductId, :ProductName, :CategoryId, :EncryptionType, :NetType, :DataProtocol, :ProductDesc, :DevStatus, :CreateTime, :UpdateTime, :Region, :ProductType, :ProjectId, :ModuleId, :EnableProductScript, :CreateUserId, :CreatorNickName, :BindStrategy, :DeviceCount, :Rate, :Period, :IsInterconnection

        def initialize(productid=nil, productname=nil, categoryid=nil, encryptiontype=nil, nettype=nil, dataprotocol=nil, productdesc=nil, devstatus=nil, createtime=nil, updatetime=nil, region=nil, producttype=nil, projectid=nil, moduleid=nil, enableproductscript=nil, createuserid=nil, creatornickname=nil, bindstrategy=nil, devicecount=nil, rate=nil, period=nil, isinterconnection=nil)
          @ProductId = productid
          @ProductName = productname
          @CategoryId = categoryid
          @EncryptionType = encryptiontype
          @NetType = nettype
          @DataProtocol = dataprotocol
          @ProductDesc = productdesc
          @DevStatus = devstatus
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Region = region
          @ProductType = producttype
          @ProjectId = projectid
          @ModuleId = moduleid
          @EnableProductScript = enableproductscript
          @CreateUserId = createuserid
          @CreatorNickName = creatornickname
          @BindStrategy = bindstrategy
          @DeviceCount = devicecount
          @Rate = rate
          @Period = period
          @IsInterconnection = isinterconnection
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @CategoryId = params['CategoryId']
          @EncryptionType = params['EncryptionType']
          @NetType = params['NetType']
          @DataProtocol = params['DataProtocol']
          @ProductDesc = params['ProductDesc']
          @DevStatus = params['DevStatus']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Region = params['Region']
          @ProductType = params['ProductType']
          @ProjectId = params['ProjectId']
          @ModuleId = params['ModuleId']
          @EnableProductScript = params['EnableProductScript']
          @CreateUserId = params['CreateUserId']
          @CreatorNickName = params['CreatorNickName']
          @BindStrategy = params['BindStrategy']
          @DeviceCount = params['DeviceCount']
          @Rate = params['Rate']
          @Period = params['Period']
          @IsInterconnection = params['IsInterconnection']
        end
      end

      # 产品模型定义
      class ProductModelDefinition < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelDefine: 模型定义
        # @type ModelDefine: String
        # @param UpdateTime: 更新时间，秒级时间戳
        # @type UpdateTime: Integer
        # @param CreateTime: 创建时间，秒级时间戳
        # @type CreateTime: Integer
        # @param CategoryModel: 产品所属分类的模型快照（产品创建时刻的）
        # @type CategoryModel: String
        # @param NetTypeModel: 产品的连接类型的模型
        # @type NetTypeModel: String

        attr_accessor :ProductId, :ModelDefine, :UpdateTime, :CreateTime, :CategoryModel, :NetTypeModel

        def initialize(productid=nil, modeldefine=nil, updatetime=nil, createtime=nil, categorymodel=nil, nettypemodel=nil)
          @ProductId = productid
          @ModelDefine = modeldefine
          @UpdateTime = updatetime
          @CreateTime = createtime
          @CategoryModel = categorymodel
          @NetTypeModel = nettypemodel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelDefine = params['ModelDefine']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @CategoryModel = params['CategoryModel']
          @NetTypeModel = params['NetTypeModel']
        end
      end

      # 项目详情
      class ProjectEntry < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param CreateTime: 创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，unix时间戳
        # @type UpdateTime: Integer

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc, :CreateTime, :UpdateTime

        def initialize(projectid=nil, projectname=nil, projectdesc=nil, createtime=nil, updatetime=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 项目详情
      class ProjectEntryEx < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param CreateTime: 项目创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 项目更新时间，unix时间戳
        # @type UpdateTime: Integer
        # @param ProductCount: 产品数量
        # @type ProductCount: Integer
        # @param NativeAppCount: NativeApp数量
        # @type NativeAppCount: Integer
        # @param WebAppCount: WebApp数量
        # @type WebAppCount: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ApplicationCount: 应用数量
        # @type ApplicationCount: Integer
        # @param DeviceCount: 设备注册总数
        # @type DeviceCount: Integer
        # @param EnableOpenState: 是否开通物联使能
        # @type EnableOpenState: Integer

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc, :CreateTime, :UpdateTime, :ProductCount, :NativeAppCount, :WebAppCount, :InstanceId, :ApplicationCount, :DeviceCount, :EnableOpenState

        def initialize(projectid=nil, projectname=nil, projectdesc=nil, createtime=nil, updatetime=nil, productcount=nil, nativeappcount=nil, webappcount=nil, instanceid=nil, applicationcount=nil, devicecount=nil, enableopenstate=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ProductCount = productcount
          @NativeAppCount = nativeappcount
          @WebAppCount = webappcount
          @InstanceId = instanceid
          @ApplicationCount = applicationcount
          @DeviceCount = devicecount
          @EnableOpenState = enableopenstate
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ProductCount = params['ProductCount']
          @NativeAppCount = params['NativeAppCount']
          @WebAppCount = params['WebAppCount']
          @InstanceId = params['InstanceId']
          @ApplicationCount = params['ApplicationCount']
          @DeviceCount = params['DeviceCount']
          @EnableOpenState = params['EnableOpenState']
        end
      end

      # PublishBroadcastMessage请求参数结构体
      class PublishBroadcastMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Payload: 消息内容
        # @type Payload: String
        # @param Qos: 消息质量等级
        # @type Qos: Integer
        # @param PayloadEncoding: ayload内容的编码格式，取值为base64或空。base64表示云端将收到的请求数据进行base64解码后下发到设备，空则直接将原始内容下发到设备
        # @type PayloadEncoding: String

        attr_accessor :ProductId, :Payload, :Qos, :PayloadEncoding

        def initialize(productid=nil, payload=nil, qos=nil, payloadencoding=nil)
          @ProductId = productid
          @Payload = payload
          @Qos = qos
          @PayloadEncoding = payloadencoding
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Payload = params['Payload']
          @Qos = params['Qos']
          @PayloadEncoding = params['PayloadEncoding']
        end
      end

      # PublishBroadcastMessage返回参数结构体
      class PublishBroadcastMessageResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 广播消息任务Id
        # @type TaskId: Integer
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

      # PublishFirmwareUpdateMessage请求参数结构体
      class PublishFirmwareUpdateMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品 ID。
        # @type ProductID: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String

        attr_accessor :ProductID, :DeviceName

        def initialize(productid=nil, devicename=nil)
          @ProductID = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
        end
      end

      # PublishFirmwareUpdateMessage返回参数结构体
      class PublishFirmwareUpdateMessageResponse < TencentCloud::Common::AbstractModel
        # @param Status: 请求状态
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

      # PublishMessage请求参数结构体
      class PublishMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Topic: 消息发往的主题
        # @type Topic: String
        # @param Payload: 云端下发到设备的控制报文
        # @type Payload: String
        # @param Qos: 消息服务质量等级，取值为0或1
        # @type Qos: Integer
        # @param PayloadEncoding: Payload的内容编码格式，取值为base64或空。base64表示云端将接收到的base64编码后的报文再转换成二进制报文下发至设备，为空表示不作转换，透传下发至设备
        # @type PayloadEncoding: String

        attr_accessor :ProductId, :DeviceName, :Topic, :Payload, :Qos, :PayloadEncoding

        def initialize(productid=nil, devicename=nil, topic=nil, payload=nil, qos=nil, payloadencoding=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Topic = topic
          @Payload = payload
          @Qos = qos
          @PayloadEncoding = payloadencoding
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Topic = params['Topic']
          @Payload = params['Payload']
          @Qos = params['Qos']
          @PayloadEncoding = params['PayloadEncoding']
        end
      end

      # PublishMessage返回参数结构体
      class PublishMessageResponse < TencentCloud::Common::AbstractModel
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

      # PublishRRPCMessage请求参数结构体
      class PublishRRPCMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Payload: 消息内容，utf8编码
        # @type Payload: String

        attr_accessor :ProductId, :DeviceName, :Payload

        def initialize(productid=nil, devicename=nil, payload=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Payload = payload
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Payload = params['Payload']
        end
      end

      # PublishRRPCMessage返回参数结构体
      class PublishRRPCMessageResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: RRPC消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageId: Integer
        # @param PayloadBase64: 设备回复的消息内容，采用base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayloadBase64: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageId, :PayloadBase64, :RequestId

        def initialize(messageid=nil, payloadbase64=nil, requestid=nil)
          @MessageId = messageid
          @PayloadBase64 = payloadbase64
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @PayloadBase64 = params['PayloadBase64']
          @RequestId = params['RequestId']
        end
      end

      # 已注册通信类型信息
      class RegisteredDeviceNetTypeInfo < TencentCloud::Common::AbstractModel
        # @param NormalDeviceNum: 普通设备数
        # @type NormalDeviceNum: Integer
        # @param BluetoothDeviceNum: 蓝牙设备数
        # @type BluetoothDeviceNum: Integer

        attr_accessor :NormalDeviceNum, :BluetoothDeviceNum

        def initialize(normaldevicenum=nil, bluetoothdevicenum=nil)
          @NormalDeviceNum = normaldevicenum
          @BluetoothDeviceNum = bluetoothdevicenum
        end

        def deserialize(params)
          @NormalDeviceNum = params['NormalDeviceNum']
          @BluetoothDeviceNum = params['BluetoothDeviceNum']
        end
      end

      # 已注册设备类型信息
      class RegisteredDeviceTypeInfo < TencentCloud::Common::AbstractModel
        # @param NormalDeviceNum: 已注册设备数
        # @type NormalDeviceNum: Integer
        # @param GatewayDeviceNum: 已注册网关数
        # @type GatewayDeviceNum: Integer
        # @param SubDeviceNum: 已注册子设备数
        # @type SubDeviceNum: Integer
        # @param VideoDeviceNum: 已注册视频设备数
        # @type VideoDeviceNum: Integer

        attr_accessor :NormalDeviceNum, :GatewayDeviceNum, :SubDeviceNum, :VideoDeviceNum

        def initialize(normaldevicenum=nil, gatewaydevicenum=nil, subdevicenum=nil, videodevicenum=nil)
          @NormalDeviceNum = normaldevicenum
          @GatewayDeviceNum = gatewaydevicenum
          @SubDeviceNum = subdevicenum
          @VideoDeviceNum = videodevicenum
        end

        def deserialize(params)
          @NormalDeviceNum = params['NormalDeviceNum']
          @GatewayDeviceNum = params['GatewayDeviceNum']
          @SubDeviceNum = params['SubDeviceNum']
          @VideoDeviceNum = params['VideoDeviceNum']
        end
      end

      # ReleaseStudioProduct请求参数结构体
      class ReleaseStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DevStatus: 产品DevStatus
        # @type DevStatus: String

        attr_accessor :ProductId, :DevStatus

        def initialize(productid=nil, devstatus=nil)
          @ProductId = productid
          @DevStatus = devstatus
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DevStatus = params['DevStatus']
        end
      end

      # ReleaseStudioProduct返回参数结构体
      class ReleaseStudioProductResponse < TencentCloud::Common::AbstractModel
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

      # RemoveUserByRoomIdFromTRTC请求参数结构体
      class RemoveUserByRoomIdFromTRTCRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间id
        # @type RoomId: String
        # @param TRTCUserIds: 用户名称数组，数组元素不可重复，最长不超过 10 个。
        # @type TRTCUserIds: Array

        attr_accessor :RoomId, :TRTCUserIds

        def initialize(roomid=nil, trtcuserids=nil)
          @RoomId = roomid
          @TRTCUserIds = trtcuserids
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @TRTCUserIds = params['TRTCUserIds']
        end
      end

      # RemoveUserByRoomIdFromTRTC返回参数结构体
      class RemoveUserByRoomIdFromTRTCResponse < TencentCloud::Common::AbstractModel
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

      # ResetCloudStorageAIService请求参数结构体
      class ResetCloudStorageAIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 云存 AI 服务类型。可选值：
        # - `RealtimeObjectDetect`：目标检测
        # - `Highlight`：视频浓缩
        # @type ServiceType: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param UserId: 用户 ID
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :ServiceType, :ChannelId, :UserId

        def initialize(productid=nil, devicename=nil, servicetype=nil, channelid=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @ChannelId = channelid
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @ChannelId = params['ChannelId']
          @UserId = params['UserId']
        end
      end

      # ResetCloudStorageAIService返回参数结构体
      class ResetCloudStorageAIServiceResponse < TencentCloud::Common::AbstractModel
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

      # ResetCloudStorageEvent请求参数结构体
      class ResetCloudStorageEventRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :UserId, :ChannelId

        def initialize(productid=nil, devicename=nil, userid=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
        end
      end

      # ResetCloudStorageEvent返回参数结构体
      class ResetCloudStorageEventResponse < TencentCloud::Common::AbstractModel
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

      # ResetCloudStorage请求参数结构体
      class ResetCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ChannelId: 通道ID 非NVR设备则不填 NVR设备则必填 默认为无
        # @type ChannelId: Integer
        # @param UserId: 云存用户Id，为空则为默认云存空间。
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :ChannelId, :UserId

        def initialize(productid=nil, devicename=nil, channelid=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ChannelId = channelid
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @UserId = params['UserId']
        end
      end

      # ResetCloudStorage返回参数结构体
      class ResetCloudStorageResponse < TencentCloud::Common::AbstractModel
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

      # ResetTWeCallDevice请求参数结构体
      class ResetTWeCallDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceList: 设备列表
        # @type DeviceList: Array

        attr_accessor :DeviceList

        def initialize(devicelist=nil)
          @DeviceList = devicelist
        end

        def deserialize(params)
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              twecallinfo_tmp = TWeCallInfo.new
              twecallinfo_tmp.deserialize(i)
              @DeviceList << twecallinfo_tmp
            end
          end
        end
      end

      # ResetTWeCallDevice返回参数结构体
      class ResetTWeCallDeviceResponse < TencentCloud::Common::AbstractModel
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

      # ResumeWeCallDevice请求参数结构体
      class ResumeWeCallDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceList: 设备列表
        # @type DeviceList: Array

        attr_accessor :DeviceList

        def initialize(devicelist=nil)
          @DeviceList = devicelist
        end

        def deserialize(params)
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              twecallinfo_tmp = TWeCallInfo.new
              twecallinfo_tmp.deserialize(i)
              @DeviceList << twecallinfo_tmp
            end
          end
        end
      end

      # ResumeWeCallDevice返回参数结构体
      class ResumeWeCallDeviceResponse < TencentCloud::Common::AbstractModel
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

      # 搜索关键词
      class SearchKeyword < TencentCloud::Common::AbstractModel
        # @param Key: 搜索条件的Key
        # @type Key: String
        # @param Value: 搜索条件的值
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # SearchPositionSpace请求参数结构体
      class SearchPositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param SpaceName: 位置空间名字
        # @type SpaceName: String
        # @param Offset: 偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 最大获取数量
        # @type Limit: Integer

        attr_accessor :ProjectId, :SpaceName, :Offset, :Limit

        def initialize(projectid=nil, spacename=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @SpaceName = spacename
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SpaceName = params['SpaceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # SearchPositionSpace返回参数结构体
      class SearchPositionSpaceResponse < TencentCloud::Common::AbstractModel
        # @param List: 位置空间列表
        # @type List: Array
        # @param Total: 符合条件的位置空间个数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId

        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              positionspaceinfo_tmp = PositionSpaceInfo.new
              positionspaceinfo_tmp.deserialize(i)
              @List << positionspaceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # SearchStudioProduct请求参数结构体
      class SearchStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Limit: 列表Limit
        # @type Limit: Integer
        # @param Offset: 列表Offset
        # @type Offset: Integer
        # @param DevStatus: 产品Status
        # @type DevStatus: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Filters: 每次请求的Filters的上限为10，Filter.Values的上限为1。
        # @type Filters: Array

        attr_accessor :ProjectId, :ProductName, :Limit, :Offset, :DevStatus, :ProductId, :Filters

        def initialize(projectid=nil, productname=nil, limit=nil, offset=nil, devstatus=nil, productid=nil, filters=nil)
          @ProjectId = projectid
          @ProductName = productname
          @Limit = limit
          @Offset = offset
          @DevStatus = devstatus
          @ProductId = productid
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductName = params['ProductName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DevStatus = params['DevStatus']
          @ProductId = params['ProductId']
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

      # SearchStudioProduct返回参数结构体
      class SearchStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Products: 产品列表
        # @type Products: Array
        # @param Total: 产品数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId

        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              productentry_tmp = ProductEntry.new
              productentry_tmp.deserialize(i)
              @Products << productentry_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # SearchTopicRule请求参数结构体
      class SearchTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名
        # @type RuleName: String

        attr_accessor :RuleName

        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # SearchTopicRule返回参数结构体
      class SearchTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 搜索到的规则总数
        # @type TotalCnt: Integer
        # @param Rules: 规则信息列表
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :Rules, :RequestId

        def initialize(totalcnt=nil, rules=nil, requestid=nil)
          @TotalCnt = totalcnt
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              topicruleinfo_tmp = TopicRuleInfo.new
              topicruleinfo_tmp.deserialize(i)
              @Rules << topicruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TRTC 的参数 可以用来加入房间
      class TRTCParams < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC入参: TRTC的实例ID
        # @type SdkAppId: Integer
        # @param UserId: TRTC入参: 用户加入房间的ID
        # @type UserId: String
        # @param UserSig: TRTC入参: 用户的签名用来鉴权
        # @type UserSig: String
        # @param StrRoomId: TRTC入参: 加入的TRTC房间名称
        # @type StrRoomId: String
        # @param PrivateKey: TRTC入参: 校验TRTC的KEY
        # @type PrivateKey: String

        attr_accessor :SdkAppId, :UserId, :UserSig, :StrRoomId, :PrivateKey

        def initialize(sdkappid=nil, userid=nil, usersig=nil, strroomid=nil, privatekey=nil)
          @SdkAppId = sdkappid
          @UserId = userid
          @UserSig = usersig
          @StrRoomId = strroomid
          @PrivateKey = privatekey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          @StrRoomId = params['StrRoomId']
          @PrivateKey = params['PrivateKey']
        end
      end

      # TWeCall设备激活信息
      class TWeCallActiveInfo < TencentCloud::Common::AbstractModel
        # @param ModelId: 小程序ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param Sn: Sn信息
        # @type Sn: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: Integer
        # @param PkgType: 类型
        # @type PkgType: Integer

        attr_accessor :ModelId, :Sn, :ExpireTime, :PkgType
        extend Gem::Deprecate
        deprecate :ModelId, :none, 2025, 4
        deprecate :ModelId=, :none, 2025, 4

        def initialize(modelid=nil, sn=nil, expiretime=nil, pkgtype=nil)
          @ModelId = modelid
          @Sn = sn
          @ExpireTime = expiretime
          @PkgType = pkgtype
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @Sn = params['Sn']
          @ExpireTime = params['ExpireTime']
          @PkgType = params['PkgType']
        end
      end

      # TWeCall信息
      class TWeCallInfo < TencentCloud::Common::AbstractModel
        # @param Sn: Sn信息，SN格式：产品ID_设备名
        # @type Sn: String
        # @param ModelId: 小程序ID，参数已弃用，不用传参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ActiveNum: 激活数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveNum: Integer

        attr_accessor :Sn, :ModelId, :ActiveNum
        extend Gem::Deprecate
        deprecate :ModelId, :none, 2025, 4
        deprecate :ModelId=, :none, 2025, 4
        deprecate :ActiveNum, :none, 2025, 4
        deprecate :ActiveNum=, :none, 2025, 4

        def initialize(sn=nil, modelid=nil, activenum=nil)
          @Sn = sn
          @ModelId = modelid
          @ActiveNum = activenum
        end

        def deserialize(params)
          @Sn = params['Sn']
          @ModelId = params['ModelId']
          @ActiveNum = params['ActiveNum']
        end
      end

      # TWeCall信息
      class TWeCallLicenseInfo < TencentCloud::Common::AbstractModel
        # @param TWeCallType: voip类型
        # @type TWeCallType: String
        # @param TotalNum: 总数
        # @type TotalNum: Integer
        # @param UsedNum: 已使用
        # @type UsedNum: Integer

        attr_accessor :TWeCallType, :TotalNum, :UsedNum

        def initialize(twecalltype=nil, totalnum=nil, usednum=nil)
          @TWeCallType = twecalltype
          @TotalNum = totalnum
          @UsedNum = usednum
        end

        def deserialize(params)
          @TWeCallType = params['TWeCallType']
          @TotalNum = params['TotalNum']
          @UsedNum = params['UsedNum']
        end
      end

      # 缩略图信息
      class ThumbnailURLInfoList < TencentCloud::Common::AbstractModel
        # @param ThumbnailURL: 缩略图访问地址
        # @type ThumbnailURL: String
        # @param ExpireTime: 缩略图访问地址的过期时间
        # @type ExpireTime: Integer

        attr_accessor :ThumbnailURL, :ExpireTime

        def initialize(thumbnailurl=nil, expiretime=nil)
          @ThumbnailURL = thumbnailurl
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @ThumbnailURL = params['ThumbnailURL']
          @ExpireTime = params['ExpireTime']
        end
      end

      # Topic信息, 包括Topic名字和权限
      class TopicItem < TencentCloud::Common::AbstractModel
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限 , 1上报  2下发
        # @type Privilege: Integer

        attr_accessor :TopicName, :Privilege

        def initialize(topicname=nil, privilege=nil)
          @TopicName = topicname
          @Privilege = privilege
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @Privilege = params['Privilege']
        end
      end

      # TopicRule结构
      class TopicRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称。
        # @type RuleName: String
        # @param Sql: 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        # @type Sql: String
        # @param Description: 规则描述。
        # @type Description: String
        # @param Actions: 行为的JSON字符串。
        # @type Actions: String
        # @param RuleDisabled: 是否禁用规则
        # @type RuleDisabled: Boolean

        attr_accessor :RuleName, :Sql, :Description, :Actions, :RuleDisabled

        def initialize(rulename=nil, sql=nil, description=nil, actions=nil, ruledisabled=nil)
          @RuleName = rulename
          @Sql = sql
          @Description = description
          @Actions = actions
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Sql = params['Sql']
          @Description = params['Description']
          @Actions = params['Actions']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # 规则信息
      class TopicRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Description: 规则描述
        # @type Description: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: Integer
        # @param RuleDisabled: 规则是否禁用
        # @type RuleDisabled: Boolean

        attr_accessor :RuleName, :Description, :CreatedAt, :RuleDisabled

        def initialize(rulename=nil, description=nil, createdat=nil, ruledisabled=nil)
          @RuleName = rulename
          @Description = description
          @CreatedAt = createdat
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Description = params['Description']
          @CreatedAt = params['CreatedAt']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # TopicRulePayload结构
      class TopicRulePayload < TencentCloud::Common::AbstractModel
        # @param Sql: 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        # @type Sql: String
        # @param Actions: 行为的JSON字符串，大部分种类举例如下：
        # [
        # {
        # "republish": {
        # "topic": "TEST/test"
        # }
        # },
        # {
        # "forward": {
        # "api": "http://test.com:8080"
        # }
        # },
        # {
        # "ckafka": {
        # "instance": {
        # "id": "ckafka-test",
        # "name": ""
        # },
        # "topic": {
        # "id": "topic-test",
        # "name": "test"
        # },
        # "region": "gz"
        # }
        # },
        # {
        # "cmqqueue": {
        # "queuename": "queue-test-TEST",
        # "region": "gz"
        # }
        # },
        # {
        # "mysql": {
        # "instanceid": "cdb-test",
        # "region": "gz",
        # "username": "test",
        # "userpwd": "*****",
        # "dbname": "d_mqtt",
        # "tablename": "t_test",
        # "fieldpairs": [
        # {
        # "field": "test",
        # "value": "test"
        # }
        # ],
        # "devicetype": "CUSTOM"
        # }
        # }
        # ]
        # @type Actions: String
        # @param Description: 规则描述
        # @type Description: String
        # @param RuleDisabled: 是否禁用规则
        # @type RuleDisabled: Boolean

        attr_accessor :Sql, :Actions, :Description, :RuleDisabled

        def initialize(sql=nil, actions=nil, description=nil, ruledisabled=nil)
          @Sql = sql
          @Actions = actions
          @Description = description
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @Sql = params['Sql']
          @Actions = params['Actions']
          @Description = params['Description']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # TransferCloudStorage请求参数结构体
      class TransferCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 已开通云存的设备名称
        # @type DeviceName: String
        # @param ToDeviceName: 未开通云存的设备名称
        # @type ToDeviceName: String
        # @param ToProductId: 未开通云存的设备产品ID
        # @type ToProductId: String

        attr_accessor :ProductId, :DeviceName, :ToDeviceName, :ToProductId

        def initialize(productid=nil, devicename=nil, todevicename=nil, toproductid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ToDeviceName = todevicename
          @ToProductId = toproductid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ToDeviceName = params['ToDeviceName']
          @ToProductId = params['ToProductId']
        end
      end

      # TransferCloudStorage返回参数结构体
      class TransferCloudStorageResponse < TencentCloud::Common::AbstractModel
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

      # TransferTWeCallDevice请求参数结构体
      class TransferTWeCallDeviceRequest < TencentCloud::Common::AbstractModel
        # @param TransferInDevice: sn信息，product_deviceName
        # @type TransferInDevice: String
        # @param TransferOutDevice: sn信息，product_deviceName
        # @type TransferOutDevice: String

        attr_accessor :TransferInDevice, :TransferOutDevice

        def initialize(transferindevice=nil, transferoutdevice=nil)
          @TransferInDevice = transferindevice
          @TransferOutDevice = transferoutdevice
        end

        def deserialize(params)
          @TransferInDevice = params['TransferInDevice']
          @TransferOutDevice = params['TransferOutDevice']
        end
      end

      # TransferTWeCallDevice返回参数结构体
      class TransferTWeCallDeviceResponse < TencentCloud::Common::AbstractModel
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

      # UnbindDevices请求参数结构体
      class UnbindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名
        # @type GatewayDeviceName: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceNames: 设备名列表
        # @type DeviceNames: Array

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :DeviceNames

        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, devicenames=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
        end
      end

      # UnbindDevices返回参数结构体
      class UnbindDevicesResponse < TencentCloud::Common::AbstractModel
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

      # UnbindProducts请求参数结构体
      class UnbindProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param ProductIds: 待解绑的子产品ID数组
        # @type ProductIds: Array

        attr_accessor :GatewayProductId, :ProductIds

        def initialize(gatewayproductid=nil, productids=nil)
          @GatewayProductId = gatewayproductid
          @ProductIds = productids
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @ProductIds = params['ProductIds']
        end
      end

      # UnbindProducts返回参数结构体
      class UnbindProductsResponse < TencentCloud::Common::AbstractModel
        # @param GatewayDeviceNames: 绑定了待解绑的LoRa产品下的设备的网关设备列表
        # @type GatewayDeviceNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayDeviceNames, :RequestId

        def initialize(gatewaydevicenames=nil, requestid=nil)
          @GatewayDeviceNames = gatewaydevicenames
          @RequestId = requestid
        end

        def deserialize(params)
          @GatewayDeviceNames = params['GatewayDeviceNames']
          @RequestId = params['RequestId']
        end
      end

      # UpdateDeviceTWeCallAuthorizeStatus请求参数结构体
      class UpdateDeviceTWeCallAuthorizeStatusRequest < TencentCloud::Common::AbstractModel
        # @param Status: TweCall授权状态：0未授权，1已授权
        # @type Status: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param WechatOpenId: 微信用户的openId
        # @type WechatOpenId: String

        attr_accessor :Status, :ProductId, :DeviceName, :WechatOpenId

        def initialize(status=nil, productid=nil, devicename=nil, wechatopenid=nil)
          @Status = status
          @ProductId = productid
          @DeviceName = devicename
          @WechatOpenId = wechatopenid
        end

        def deserialize(params)
          @Status = params['Status']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @WechatOpenId = params['WechatOpenId']
        end
      end

      # UpdateDeviceTWeCallAuthorizeStatus返回参数结构体
      class UpdateDeviceTWeCallAuthorizeStatusResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDevicesEnableState请求参数结构体
      class UpdateDevicesEnableStateRequest < TencentCloud::Common::AbstractModel
        # @param DevicesItems: 多个设备标识
        # @type DevicesItems: Array
        # @param Status: 1：启用；0：禁用
        # @type Status: Integer

        attr_accessor :DevicesItems, :Status

        def initialize(devicesitems=nil, status=nil)
          @DevicesItems = devicesitems
          @Status = status
        end

        def deserialize(params)
          unless params['DevicesItems'].nil?
            @DevicesItems = []
            params['DevicesItems'].each do |i|
              devicesitem_tmp = DevicesItem.new
              devicesitem_tmp.deserialize(i)
              @DevicesItems << devicesitem_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # UpdateDevicesEnableState返回参数结构体
      class UpdateDevicesEnableStateResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 删除的结果代码
        # @type ResultCode: String
        # @param ResultMessage: 删除的结果信息
        # @type ResultMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ResultMessage, :RequestId

        def initialize(resultcode=nil, resultmessage=nil, requestid=nil)
          @ResultCode = resultcode
          @ResultMessage = resultmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMessage = params['ResultMessage']
          @RequestId = params['RequestId']
        end
      end

      # UpdateFirmware请求参数结构体
      class UpdateFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param FirmwareVersion: 固件新的版本号
        # @type FirmwareVersion: String
        # @param FirmwareOriVersion: 固件原版本号
        # @type FirmwareOriVersion: String
        # @param UpgradeMethod: 固件升级方式；0 静默升级 1 用户确认升级   不填默认静默升级
        # @type UpgradeMethod: Integer

        attr_accessor :ProductID, :DeviceName, :FirmwareVersion, :FirmwareOriVersion, :UpgradeMethod

        def initialize(productid=nil, devicename=nil, firmwareversion=nil, firmwareoriversion=nil, upgrademethod=nil)
          @ProductID = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @FirmwareOriVersion = firmwareoriversion
          @UpgradeMethod = upgrademethod
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareOriVersion = params['FirmwareOriVersion']
          @UpgradeMethod = params['UpgradeMethod']
        end
      end

      # UpdateFirmware返回参数结构体
      class UpdateFirmwareResponse < TencentCloud::Common::AbstractModel
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

      # UploadFirmware请求参数结构体
      class UploadFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param Md5sum: 固件的MD5值
        # @type Md5sum: String
        # @param FileSize: 固件的大小
        # @type FileSize: Integer
        # @param FirmwareName: 固件名称
        # @type FirmwareName: String
        # @param FirmwareDescription: 固件描述
        # @type FirmwareDescription: String
        # @param FwType: 固件升级模块；可选值 mcu|moudule
        # @type FwType: String
        # @param FirmwareUserDefined: 固件用户自定义配置信息
        # @type FirmwareUserDefined: String

        attr_accessor :ProductID, :FirmwareVersion, :Md5sum, :FileSize, :FirmwareName, :FirmwareDescription, :FwType, :FirmwareUserDefined

        def initialize(productid=nil, firmwareversion=nil, md5sum=nil, filesize=nil, firmwarename=nil, firmwaredescription=nil, fwtype=nil, firmwareuserdefined=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Md5sum = md5sum
          @FileSize = filesize
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
          @FwType = fwtype
          @FirmwareUserDefined = firmwareuserdefined
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @Md5sum = params['Md5sum']
          @FileSize = params['FileSize']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
          @FwType = params['FwType']
          @FirmwareUserDefined = params['FirmwareUserDefined']
        end
      end

      # UploadFirmware返回参数结构体
      class UploadFirmwareResponse < TencentCloud::Common::AbstractModel
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

      # 视频设备激活码统计
      class VideoLicenseEntity < TencentCloud::Common::AbstractModel
        # @param Type: 激活码类型，取值范围如下：0_5_mbps、1_mbps、1_5_mbps、2_mbps
        # @type Type: String
        # @param TotalCount: 有效激活码总数
        # @type TotalCount: Integer
        # @param UsedCount: 待使用的激活码数量
        # @type UsedCount: Integer
        # @param ExpiresSoonCount: 即将过期的激活码数量
        # @type ExpiresSoonCount: Integer

        attr_accessor :Type, :TotalCount, :UsedCount, :ExpiresSoonCount

        def initialize(type=nil, totalcount=nil, usedcount=nil, expiressooncount=nil)
          @Type = type
          @TotalCount = totalcount
          @UsedCount = usedcount
          @ExpiresSoonCount = expiressooncount
        end

        def deserialize(params)
          @Type = params['Type']
          @TotalCount = params['TotalCount']
          @UsedCount = params['UsedCount']
          @ExpiresSoonCount = params['ExpiresSoonCount']
        end
      end

      # 微信硬件设备信息
      class WXDeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param WXIoTDeviceInfo: 设备信息
        # @type WXIoTDeviceInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.WXIoTDeviceInfo`

        attr_accessor :DeviceId, :WXIoTDeviceInfo

        def initialize(deviceid=nil, wxiotdeviceinfo=nil)
          @DeviceId = deviceid
          @WXIoTDeviceInfo = wxiotdeviceinfo
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          unless params['WXIoTDeviceInfo'].nil?
            @WXIoTDeviceInfo = WXIoTDeviceInfo.new
            @WXIoTDeviceInfo.deserialize(params['WXIoTDeviceInfo'])
          end
        end
      end

      # 微信物联网硬件信息
      class WXIoTDeviceInfo < TencentCloud::Common::AbstractModel
        # @param SN: sn信息
        # @type SN: String
        # @param SNTicket: 票据
        # @type SNTicket: String
        # @param ModelId: 模板ID
        # @type ModelId: String

        attr_accessor :SN, :SNTicket, :ModelId

        def initialize(sn=nil, snticket=nil, modelid=nil)
          @SN = sn
          @SNTicket = snticket
          @ModelId = modelid
        end

        def deserialize(params)
          @SN = params['SN']
          @SNTicket = params['SNTicket']
          @ModelId = params['ModelId']
        end
      end

      # wifi定位信息
      class WifiInfo < TencentCloud::Common::AbstractModel
        # @param MAC: mac地址
        # @type MAC: String
        # @param RSSI: 信号强度
        # @type RSSI: Integer

        attr_accessor :MAC, :RSSI

        def initialize(mac=nil, rssi=nil)
          @MAC = mac
          @RSSI = rssi
        end

        def deserialize(params)
          @MAC = params['MAC']
          @RSSI = params['RSSI']
        end
      end

    end
  end
end

