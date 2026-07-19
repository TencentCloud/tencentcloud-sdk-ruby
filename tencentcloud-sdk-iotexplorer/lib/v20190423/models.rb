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
  module Iotexplorer
    module V20190423
      # AI视频搜索结果结构体。
      class AISearchInfo < TencentCloud::Common::AbstractModel
        # @param Summary: 基于搜索结果的总结
        # @type Summary: String
        # @param Targets: 视频结果集
        # @type Targets: Array
        # @param VideoURL: 视频回放URL
        # @type VideoURL: String

        attr_accessor :Summary, :Targets, :VideoURL

        def initialize(summary=nil, targets=nil, videourl=nil)
          @Summary = summary
          @Targets = targets
          @VideoURL = videourl
        end

        def deserialize(params)
          @Summary = params['Summary']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targetinfo_tmp = TargetInfo.new
              targetinfo_tmp.deserialize(i)
              @Targets << targetinfo_tmp
            end
          end
          @VideoURL = params['VideoURL']
        end
      end

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
        # @param PkgType: TWecall类型：0-体验套餐；1-基础版；3-高级版；
        # @type PkgType: Integer
        # @param MiniProgramAppId: 参数已弃用，不用传参
        # @type MiniProgramAppId: String
        # @param DeviceList: 设备列表
        # @type DeviceList: Array

        attr_accessor :PkgType, :MiniProgramAppId, :DeviceList
        extend Gem::Deprecate
        deprecate :MiniProgramAppId, :none, 2026, 7
        deprecate :MiniProgramAppId=, :none, 2026, 7

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
        deprecate :DeviceList, :none, 2026, 7
        deprecate :DeviceList=, :none, 2026, 7

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

      # ActivateTWeTalk请求参数结构体
      class ActivateTWeTalkRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: TWeTalk类型：1-基础版；2-高级版；3-多模态；
        # @type ServiceType: Integer
        # @param DeviceIds: 设备列表, 产品ID_设备名；
        # @type DeviceIds: Array

        attr_accessor :ServiceType, :DeviceIds

        def initialize(servicetype=nil, deviceids=nil)
          @ServiceType = servicetype
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @DeviceIds = params['DeviceIds']
        end
      end

      # ActivateTWeTalk返回参数结构体
      class ActivateTWeTalkResponse < TencentCloud::Common::AbstractModel
        # @param FailureRecords: 设备激活失败返回数据
        # @type FailureRecords: Array
        # @param SuccessRecords: 设备激活成功返回数据
        # @type SuccessRecords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailureRecords, :SuccessRecords, :RequestId

        def initialize(failurerecords=nil, successrecords=nil, requestid=nil)
          @FailureRecords = failurerecords
          @SuccessRecords = successrecords
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FailureRecords'].nil?
            @FailureRecords = []
            params['FailureRecords'].each do |i|
              talkactivationinfo_tmp = TalkActivationInfo.new
              talkactivationinfo_tmp.deserialize(i)
              @FailureRecords << talkactivationinfo_tmp
            end
          end
          unless params['SuccessRecords'].nil?
            @SuccessRecords = []
            params['SuccessRecords'].each do |i|
              talkactivationinfo_tmp = TalkActivationInfo.new
              talkactivationinfo_tmp.deserialize(i)
              @SuccessRecords << talkactivationinfo_tmp
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

      # BatchCreateTWeSeeRecognitionTask请求参数结构体
      class BatchCreateTWeSeeRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param Inputs: 待创建的 TWeSee 语义理解任务列表
        # @type Inputs: Array

        attr_accessor :Inputs

        def initialize(inputs=nil)
          @Inputs = inputs
        end

        def deserialize(params)
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              createvisionrecognitiontaskinput_tmp = CreateVisionRecognitionTaskInput.new
              createvisionrecognitiontaskinput_tmp.deserialize(i)
              @Inputs << createvisionrecognitiontaskinput_tmp
            end
          end
        end
      end

      # BatchCreateTWeSeeRecognitionTask返回参数结构体
      class BatchCreateTWeSeeRecognitionTaskResponse < TencentCloud::Common::AbstractModel
        # @param Outputs: TWeSee 语义理解任务的创建结果。与入参 Inputs 一一对应。
        # @type Outputs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Outputs, :RequestId

        def initialize(outputs=nil, requestid=nil)
          @Outputs = outputs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              createvisionrecognitiontaskoutput_tmp = CreateVisionRecognitionTaskOutput.new
              createvisionrecognitiontaskoutput_tmp.deserialize(i)
              @Outputs << createvisionrecognitiontaskoutput_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # BatchInvokeTWeSeeRecognitionTask请求参数结构体
      class BatchInvokeTWeSeeRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param Inputs: 待执行的 TWeSee 语义理解任务列表
        # @type Inputs: Array

        attr_accessor :Inputs

        def initialize(inputs=nil)
          @Inputs = inputs
        end

        def deserialize(params)
          unless params['Inputs'].nil?
            @Inputs = []
            params['Inputs'].each do |i|
              createvisionrecognitiontaskinput_tmp = CreateVisionRecognitionTaskInput.new
              createvisionrecognitiontaskinput_tmp.deserialize(i)
              @Inputs << createvisionrecognitiontaskinput_tmp
            end
          end
        end
      end

      # BatchInvokeTWeSeeRecognitionTask返回参数结构体
      class BatchInvokeTWeSeeRecognitionTaskResponse < TencentCloud::Common::AbstractModel
        # @param Outputs: TWeSee 语义理解任务的执行结果。与入参 Inputs 一一对应。
        # @type Outputs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Outputs, :RequestId

        def initialize(outputs=nil, requestid=nil)
          @Outputs = outputs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              invokevisionrecognitiontaskoutput_tmp = InvokeVisionRecognitionTaskOutput.new
              invokevisionrecognitiontaskoutput_tmp.deserialize(i)
              @Outputs << invokevisionrecognitiontaskoutput_tmp
            end
          end
          @RequestId = params['RequestId']
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

      # BatchUpdateFirmware请求参数结构体
      class BatchUpdateFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件新版本号
        # @type FirmwareVersion: String
        # @param FirmwareOriVersion: 固件原版本号
        # @type FirmwareOriVersion: String
        # @param UpgradeMethod: 升级方式，0 静默升级  1 用户确认升级。 不填默认为静默升级方式
        # @type UpgradeMethod: Integer
        # @param FileName: 设备列表文件名称，根据文件列表升级固件需要填写此参数
        # @type FileName: String
        # @param FileMd5: 设备列表的文件md5值
        # @type FileMd5: String
        # @param FileSize: 设备列表的文件大小值
        # @type FileSize: Integer
        # @param DeviceNames: 需要升级的设备名称列表
        # @type DeviceNames: Array
        # @param TimeoutInterval: 固件升级任务，默认超时时间。 最小取值120秒，最大为900秒
        # @type TimeoutInterval: Integer
        # @param Type: 固件升级任务类型，默认静态升级值为空或1，动态升级值为7
        # @type Type: Integer
        # @param DelayTime: 任务延迟时间
        # @type DelayTime: Integer
        # @param OverrideMode: 是否覆盖，0不覆盖，1覆盖
        # @type OverrideMode: Integer
        # @param MaxRetryNum: 失败重试次数
        # @type MaxRetryNum: Integer
        # @param RetryInterval: 重试间隔min
        # @type RetryInterval: Integer
        # @param FwType: 固件模块
        # @type FwType: String
        # @param TaskUserDefine: 用户自定义信息
        # @type TaskUserDefine: String
        # @param RateLimit: 每分钟下发设备量
        # @type RateLimit: Integer

        attr_accessor :ProductID, :FirmwareVersion, :FirmwareOriVersion, :UpgradeMethod, :FileName, :FileMd5, :FileSize, :DeviceNames, :TimeoutInterval, :Type, :DelayTime, :OverrideMode, :MaxRetryNum, :RetryInterval, :FwType, :TaskUserDefine, :RateLimit

        def initialize(productid=nil, firmwareversion=nil, firmwareoriversion=nil, upgrademethod=nil, filename=nil, filemd5=nil, filesize=nil, devicenames=nil, timeoutinterval=nil, type=nil, delaytime=nil, overridemode=nil, maxretrynum=nil, retryinterval=nil, fwtype=nil, taskuserdefine=nil, ratelimit=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FirmwareOriVersion = firmwareoriversion
          @UpgradeMethod = upgrademethod
          @FileName = filename
          @FileMd5 = filemd5
          @FileSize = filesize
          @DeviceNames = devicenames
          @TimeoutInterval = timeoutinterval
          @Type = type
          @DelayTime = delaytime
          @OverrideMode = overridemode
          @MaxRetryNum = maxretrynum
          @RetryInterval = retryinterval
          @FwType = fwtype
          @TaskUserDefine = taskuserdefine
          @RateLimit = ratelimit
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareOriVersion = params['FirmwareOriVersion']
          @UpgradeMethod = params['UpgradeMethod']
          @FileName = params['FileName']
          @FileMd5 = params['FileMd5']
          @FileSize = params['FileSize']
          @DeviceNames = params['DeviceNames']
          @TimeoutInterval = params['TimeoutInterval']
          @Type = params['Type']
          @DelayTime = params['DelayTime']
          @OverrideMode = params['OverrideMode']
          @MaxRetryNum = params['MaxRetryNum']
          @RetryInterval = params['RetryInterval']
          @FwType = params['FwType']
          @TaskUserDefine = params['TaskUserDefine']
          @RateLimit = params['RateLimit']
        end
      end

      # BatchUpdateFirmware返回参数结构体
      class BatchUpdateFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id
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

      # BindTWeTalkAIBot请求参数结构体
      class BindTWeTalkAIBotRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 智能体ID
        # @type BotId: String
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :BotId, :ProductId

        def initialize(botid=nil, productid=nil)
          @BotId = botid
          @ProductId = productid
        end

        def deserialize(params)
          @BotId = params['BotId']
          @ProductId = params['ProductId']
        end
      end

      # BindTWeTalkAIBot返回参数结构体
      class BindTWeTalkAIBotResponse < TencentCloud::Common::AbstractModel
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

      # BindTWeTalkAgent请求参数结构体
      class BindTWeTalkAgentRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param AgentId: <p>智能体 ID</p>
        # @type AgentId: String
        # @param BindingScope: <p>绑定维度：product 或 device</p>
        # @type BindingScope: String
        # @param DeviceName: <p>设备名称；<code>BindingScope=device</code> 时必填</p>
        # @type DeviceName: String
        # @param Priority: <p>绑定优先级，数值越小优先级越高</p>
        # @type Priority: Integer

        attr_accessor :ProductId, :AgentId, :BindingScope, :DeviceName, :Priority

        def initialize(productid=nil, agentid=nil, bindingscope=nil, devicename=nil, priority=nil)
          @ProductId = productid
          @AgentId = agentid
          @BindingScope = bindingscope
          @DeviceName = devicename
          @Priority = priority
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @AgentId = params['AgentId']
          @BindingScope = params['BindingScope']
          @DeviceName = params['DeviceName']
          @Priority = params['Priority']
        end
      end

      # BindTWeTalkAgent返回参数结构体
      class BindTWeTalkAgentResponse < TencentCloud::Common::AbstractModel
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

      # BindUserDevice请求参数结构体
      class BindUserDeviceRequest < TencentCloud::Common::AbstractModel
        # @param AppKey: <p>应用 AppKey，用于解析 IotAppID 并完成签名校验</p>
        # @type AppKey: String
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名（禁止使用虚拟设备名 ~virtualDev）</p>
        # @type DeviceName: String
        # @param OpenID: <p>用户 OpenID，用于定位 / 兜底创建 App 用户</p>
        # @type OpenID: String
        # @param FamilyName: <p>家庭名，默认 default</p>
        # @type FamilyName: String
        # @param RoomId: <p>房间 ID，默认 &quot;0&quot;</p>
        # @type RoomId: String
        # @param NickName: <p>用户昵称（仅首次创建用户时使用）</p>
        # @type NickName: String

        attr_accessor :AppKey, :ProductId, :DeviceName, :OpenID, :FamilyName, :RoomId, :NickName

        def initialize(appkey=nil, productid=nil, devicename=nil, openid=nil, familyname=nil, roomid=nil, nickname=nil)
          @AppKey = appkey
          @ProductId = productid
          @DeviceName = devicename
          @OpenID = openid
          @FamilyName = familyname
          @RoomId = roomid
          @NickName = nickname
        end

        def deserialize(params)
          @AppKey = params['AppKey']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @OpenID = params['OpenID']
          @FamilyName = params['FamilyName']
          @RoomId = params['RoomId']
          @NickName = params['NickName']
        end
      end

      # BindUserDevice返回参数结构体
      class BindUserDeviceResponse < TencentCloud::Common::AbstractModel
        # @param UserID: <p>用户 UserID（已存在则复用）</p>
        # @type UserID: String
        # @param FamilyId: <p>家庭 ID（已存在则复用）</p>
        # @type FamilyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserID, :FamilyId, :RequestId

        def initialize(userid=nil, familyid=nil, requestid=nil)
          @UserID = userid
          @FamilyId = familyid
          @RequestId = requestid
        end

        def deserialize(params)
          @UserID = params['UserID']
          @FamilyId = params['FamilyId']
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

      # CallDeviceRRPCSync请求参数结构体
      class CallDeviceRRPCSyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名</p>
        # @type DeviceName: String
        # @param Payload: <p>业务原始 payload，透传给设备</p>
        # @type Payload: String
        # @param Encoding: <p>下行传输层编码标识；base64 时下发到 broker 的 payload 会做一次 base64 编码</p>
        # @type Encoding: String
        # @param Topic: <p>自定义下行 topic；为空则用 <code>$iotrrpc/down/{ProductId}/{DeviceName}/{mid}</code></p>
        # @type Topic: String
        # @param ReplyTopic: <p>自定义上行 topic 模板（支持通配符）；可留空，留空时仅依赖 clientToken 关联 ack</p>
        # @type ReplyTopic: String

        attr_accessor :ProductId, :DeviceName, :Payload, :Encoding, :Topic, :ReplyTopic

        def initialize(productid=nil, devicename=nil, payload=nil, encoding=nil, topic=nil, replytopic=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Payload = payload
          @Encoding = encoding
          @Topic = topic
          @ReplyTopic = replytopic
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Payload = params['Payload']
          @Encoding = params['Encoding']
          @Topic = params['Topic']
          @ReplyTopic = params['ReplyTopic']
        end
      end

      # CallDeviceRRPCSync返回参数结构体
      class CallDeviceRRPCSyncResponse < TencentCloud::Common::AbstractModel
        # @param ClientToken: <p>平台为本次调用分配的关联 token（v2{instanceId}::{reqId} 形式）</p>
        # @type ClientToken: String
        # @param Status: <p>调用状态</p>
        # @type Status: String
        # @param MessageId: <p>平台分配的 messageID</p>
        # @type MessageId: Integer
        # @param PayloadBase64: <p>设备回包原始字节的 base64 编码（仅 Status=Replied 有值）</p>
        # @type PayloadBase64: String
        # @param ReplyTopic: <p>实际生效的 reply topic 模板（默认模式由平台生成，自定义模式为入参原值）</p>
        # @type ReplyTopic: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientToken, :Status, :MessageId, :PayloadBase64, :ReplyTopic, :RequestId

        def initialize(clienttoken=nil, status=nil, messageid=nil, payloadbase64=nil, replytopic=nil, requestid=nil)
          @ClientToken = clienttoken
          @Status = status
          @MessageId = messageid
          @PayloadBase64 = payloadbase64
          @ReplyTopic = replytopic
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientToken = params['ClientToken']
          @Status = params['Status']
          @MessageId = params['MessageId']
          @PayloadBase64 = params['PayloadBase64']
          @ReplyTopic = params['ReplyTopic']
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
        # @param StartTime: 对应云存视频的起始时间（秒级 UNIX 时间戳）
        # @type StartTime: Integer
        # @param StartTimeMs: 对应云存视频的起始时间（毫秒级 UNIX 时间戳）
        # @type StartTimeMs: Integer
        # @param EndTime: 对应云存视频的结束时间（秒级 UNIX 时间戳）
        # @type EndTime: Integer
        # @param EndTimeMs: 对应云存视频的结束时间（毫秒级 UNIX 时间戳）
        # @type EndTimeMs: Integer
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

        attr_accessor :TaskId, :ProductId, :DeviceName, :ChannelId, :ServiceType, :StartTime, :StartTimeMs, :EndTime, :EndTimeMs, :Status, :Result, :Files, :FilesInfo, :CreateTime, :UpdateTime, :CustomId

        def initialize(taskid=nil, productid=nil, devicename=nil, channelid=nil, servicetype=nil, starttime=nil, starttimems=nil, endtime=nil, endtimems=nil, status=nil, result=nil, files=nil, filesinfo=nil, createtime=nil, updatetime=nil, customid=nil)
          @TaskId = taskid
          @ProductId = productid
          @DeviceName = devicename
          @ChannelId = channelid
          @ServiceType = servicetype
          @StartTime = starttime
          @StartTimeMs = starttimems
          @EndTime = endtime
          @EndTimeMs = endtimems
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
          @StartTimeMs = params['StartTimeMs']
          @EndTime = params['EndTime']
          @EndTimeMs = params['EndTimeMs']
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

      # 云存上报统计信息
      class CountDataInfo < TencentCloud::Common::AbstractModel
        # @param VideoExceptionNum: 视频上报异常次数
        # @type VideoExceptionNum: Integer
        # @param VideoSuccessNum: 视频上报成功次数
        # @type VideoSuccessNum: Integer
        # @param VideoSuccessRate: 视频上报成功率
        # @type VideoSuccessRate: String
        # @param EventExceptionNum: 事件上报异常次数
        # @type EventExceptionNum: Integer
        # @param EventSuccessNum: 事件上报成功次数
        # @type EventSuccessNum: Integer
        # @param EventSuccessRate: 事件上报成功率
        # @type EventSuccessRate: String

        attr_accessor :VideoExceptionNum, :VideoSuccessNum, :VideoSuccessRate, :EventExceptionNum, :EventSuccessNum, :EventSuccessRate

        def initialize(videoexceptionnum=nil, videosuccessnum=nil, videosuccessrate=nil, eventexceptionnum=nil, eventsuccessnum=nil, eventsuccessrate=nil)
          @VideoExceptionNum = videoexceptionnum
          @VideoSuccessNum = videosuccessnum
          @VideoSuccessRate = videosuccessrate
          @EventExceptionNum = eventexceptionnum
          @EventSuccessNum = eventsuccessnum
          @EventSuccessRate = eventsuccessrate
        end

        def deserialize(params)
          @VideoExceptionNum = params['VideoExceptionNum']
          @VideoSuccessNum = params['VideoSuccessNum']
          @VideoSuccessRate = params['VideoSuccessRate']
          @EventExceptionNum = params['EventExceptionNum']
          @EventSuccessNum = params['EventSuccessNum']
          @EventSuccessRate = params['EventSuccessRate']
        end
      end

      # CreateAISearchTaskAsync请求参数结构体
      class CreateAISearchTaskAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Query: 自然语言查询
        # @type Query: String
        # @param SummaryLang: 搜索结果总结的语言类型，支持的类型有：en-US、zh-CN、id-ID、th-TH
        # @type SummaryLang: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :Query, :SummaryLang, :ChannelId

        def initialize(productid=nil, devicename=nil, query=nil, summarylang=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Query = query
          @SummaryLang = summarylang
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Query = params['Query']
          @SummaryLang = params['SummaryLang']
          @ChannelId = params['ChannelId']
        end
      end

      # CreateAISearchTaskAsync返回参数结构体
      class CreateAISearchTaskAsyncResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateDevicePublishSDPAnswer请求参数结构体
      class CreateDevicePublishSDPAnswerRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param SDPOffer: SDP提议
        # @type SDPOffer: String

        attr_accessor :ProductId, :DeviceName, :SDPOffer

        def initialize(productid=nil, devicename=nil, sdpoffer=nil)
          @ProductId = productid
          @DeviceName = devicename
          @SDPOffer = sdpoffer
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @SDPOffer = params['SDPOffer']
        end
      end

      # CreateDevicePublishSDPAnswer返回参数结构体
      class CreateDevicePublishSDPAnswerResponse < TencentCloud::Common::AbstractModel
        # @param SDPAnswer: SDP应答
        # @type SDPAnswer: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SDPAnswer, :RequestId

        def initialize(sdpanswer=nil, requestid=nil)
          @SDPAnswer = sdpanswer
          @RequestId = requestid
        end

        def deserialize(params)
          @SDPAnswer = params['SDPAnswer']
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

      # CreateDeviceSDPAnswer请求参数结构体
      class CreateDeviceSDPAnswerRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param SDPOffer: SDP提议
        # @type SDPOffer: String
        # @param RequesterTag: 客户自定义拉流标识
        # @type RequesterTag: String

        attr_accessor :ProductId, :DeviceName, :SDPOffer, :RequesterTag

        def initialize(productid=nil, devicename=nil, sdpoffer=nil, requestertag=nil)
          @ProductId = productid
          @DeviceName = devicename
          @SDPOffer = sdpoffer
          @RequesterTag = requestertag
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @SDPOffer = params['SDPOffer']
          @RequesterTag = params['RequesterTag']
        end
      end

      # CreateDeviceSDPAnswer返回参数结构体
      class CreateDeviceSDPAnswerResponse < TencentCloud::Common::AbstractModel
        # @param SDPAnswer: SDP应答
        # @type SDPAnswer: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SDPAnswer, :RequestId

        def initialize(sdpanswer=nil, requestid=nil)
          @SDPAnswer = sdpanswer
          @RequestId = requestid
        end

        def deserialize(params)
          @SDPAnswer = params['SDPAnswer']
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

      # CreateOtaModule请求参数结构体
      class CreateOtaModuleRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FwType: 模块类型
        # @type FwType: String
        # @param Name: 模块类型名称
        # @type Name: String
        # @param Remark: 类型描述
        # @type Remark: String

        attr_accessor :ProductID, :FwType, :Name, :Remark

        def initialize(productid=nil, fwtype=nil, name=nil, remark=nil)
          @ProductID = productid
          @FwType = fwtype
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FwType = params['FwType']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # CreateOtaModule返回参数结构体
      class CreateOtaModuleResponse < TencentCloud::Common::AbstractModel
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
        # @param EncryptionType: 加密类型 ，1表示证书认证，2表示密钥认证，21表示TID认证-SE方式，22表示TID认证-软加固方式
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

      # CreateTWeSeeCallback请求参数结构体
      class CreateTWeSeeCallbackRequest < TencentCloud::Common::AbstractModel
        # @param Type: 回调类型。可选值：\n- `http` HTTP 回调
        # @type Type: String
        # @param CallbackUrl: 回调 URL。要求 http 或 https 协议，仅支持 80 或 443 端口
        # @type CallbackUrl: String
        # @param CallbackToken: 回调签名 Token。最大长度 128
        # @type CallbackToken: String

        attr_accessor :Type, :CallbackUrl, :CallbackToken

        def initialize(type=nil, callbackurl=nil, callbacktoken=nil)
          @Type = type
          @CallbackUrl = callbackurl
          @CallbackToken = callbacktoken
        end

        def deserialize(params)
          @Type = params['Type']
          @CallbackUrl = params['CallbackUrl']
          @CallbackToken = params['CallbackToken']
        end
      end

      # CreateTWeSeeCallback返回参数结构体
      class CreateTWeSeeCallbackResponse < TencentCloud::Common::AbstractModel
        # @param CallbackId: 回调目标 ID
        # @type CallbackId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallbackId, :RequestId

        def initialize(callbackid=nil, requestid=nil)
          @CallbackId = callbackid
          @RequestId = requestid
        end

        def deserialize(params)
          @CallbackId = params['CallbackId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTWeSeeDirectUploadCredential请求参数结构体
      class CreateTWeSeeDirectUploadCredentialRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品 ID</p><p>非 IoT 设备可传 <code>default</code></p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名称</p>
        # @type DeviceName: String
        # @param ServiceType: <p>算法类型</p><p>枚举值：</p><ul><li>VID_COMP： 视频理解（支持视频文件或多帧图片）</li><li>IMG_COMP： 图片理解（单帧图片）</li></ul>
        # @type ServiceType: String
        # @param ChannelId: <p>通道 ID</p><p>默认值：0</p>
        # @type ChannelId: Integer
        # @param CallbackId: <p>回调目标 ID</p>
        # @type CallbackId: String
        # @param ComprehensionConfig: <p>视觉理解配置项</p>
        # @type ComprehensionConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeComprehensionConfig`
        # @param CustomId: <p>自定义事件 ID，会透传到任务元数据与回调中</p>
        # @type CustomId: String
        # @param DurationSeconds: <p>临时密钥有效期，单位：秒。默认 300 秒，取值范围 5 到 86400。</p>
        # @type DurationSeconds: Integer
        # @param MaxInvokeCount: <p>该直传凭据最多可触发的分析次数</p><p>取值范围：[1, 10000]</p><p>默认值：1</p>
        # @type MaxInvokeCount: Integer
        # @param StorageRegion: <p>上传 COS 存储桶所在地域。不填时使用默认地域。</p>
        # @type StorageRegion: String
        # @param UploadMethod: <p>上传方式</p><p>枚举值：</p><ul><li>single： 单文件上传</li><li>manifest： 上传源文件与 Manifest（先上传多个源文件，然后上传 Manifest JSON 触发分析）</li></ul><p>默认值：single</p>
        # @type UploadMethod: String

        attr_accessor :ProductId, :DeviceName, :ServiceType, :ChannelId, :CallbackId, :ComprehensionConfig, :CustomId, :DurationSeconds, :MaxInvokeCount, :StorageRegion, :UploadMethod

        def initialize(productid=nil, devicename=nil, servicetype=nil, channelid=nil, callbackid=nil, comprehensionconfig=nil, customid=nil, durationseconds=nil, maxinvokecount=nil, storageregion=nil, uploadmethod=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @ChannelId = channelid
          @CallbackId = callbackid
          @ComprehensionConfig = comprehensionconfig
          @CustomId = customid
          @DurationSeconds = durationseconds
          @MaxInvokeCount = maxinvokecount
          @StorageRegion = storageregion
          @UploadMethod = uploadmethod
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @ChannelId = params['ChannelId']
          @CallbackId = params['CallbackId']
          unless params['ComprehensionConfig'].nil?
            @ComprehensionConfig = SeeComprehensionConfig.new
            @ComprehensionConfig.deserialize(params['ComprehensionConfig'])
          end
          @CustomId = params['CustomId']
          @DurationSeconds = params['DurationSeconds']
          @MaxInvokeCount = params['MaxInvokeCount']
          @StorageRegion = params['StorageRegion']
          @UploadMethod = params['UploadMethod']
        end
      end

      # CreateTWeSeeDirectUploadCredential返回参数结构体
      class CreateTWeSeeDirectUploadCredentialResponse < TencentCloud::Common::AbstractModel
        # @param ExpiredTime: <p>访问 COS 的临时密钥过期时间（秒级 UNIX 时间戳）</p>
        # @type ExpiredTime: Integer
        # @param SecretId: <p>访问 COS 的临时密钥 SecretId</p>
        # @type SecretId: String
        # @param SecretKey: <p>访问 COS 的临时密钥 SecretKey</p>
        # @type SecretKey: String
        # @param StorageBucket: <p>COS 存储桶名称</p>
        # @type StorageBucket: String
        # @param StoragePath: <p>COS 对象 Key 前缀。返回的临时凭据仅允许上传到此前缀下，格式为 Direct/{Uin}/{SessionId}/。</p>
        # @type StoragePath: String
        # @param StorageRegion: <p>COS 存储桶所在地域</p>
        # @type StorageRegion: String
        # @param Token: <p>访问 COS 的临时密钥 Token</p>
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExpiredTime, :SecretId, :SecretKey, :StorageBucket, :StoragePath, :StorageRegion, :Token, :RequestId

        def initialize(expiredtime=nil, secretid=nil, secretkey=nil, storagebucket=nil, storagepath=nil, storageregion=nil, token=nil, requestid=nil)
          @ExpiredTime = expiredtime
          @SecretId = secretid
          @SecretKey = secretkey
          @StorageBucket = storagebucket
          @StoragePath = storagepath
          @StorageRegion = storageregion
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @ExpiredTime = params['ExpiredTime']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @StorageBucket = params['StorageBucket']
          @StoragePath = params['StoragePath']
          @StorageRegion = params['StorageRegion']
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # CreateTWeSeePostPaidService请求参数结构体
      class CreateTWeSeePostPaidServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # - `IMG_COMP`：图片理解
        # @type ServiceType: String

        attr_accessor :ServiceType

        def initialize(servicetype=nil)
          @ServiceType = servicetype
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
        end
      end

      # CreateTWeSeePostPaidService返回参数结构体
      class CreateTWeSeePostPaidServiceResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单 ID
        # @type OrderId: String
        # @param ResourceId: 资源 ID
        # @type ResourceId: String
        # @param Status: 订单状态
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :ResourceId, :Status, :RequestId

        def initialize(orderid=nil, resourceid=nil, status=nil, requestid=nil)
          @OrderId = orderid
          @ResourceId = resourceid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @ResourceId = params['ResourceId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CreateTWeSeeRecognitionTask请求参数结构体
      class CreateTWeSeeRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param InputURL: 输入视频 / 图片的 URL
        # @type InputURL: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param CustomId: 自定义事件 ID
        # @type CustomId: String
        # @param EnableSearch: 是否保存该事件使其可被搜索
        # @type EnableSearch: Boolean
        # @param StartTimeMs: 事件起始时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 事件结束时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type EndTimeMs: Integer
        # @param Config: 算法配置
        # @type Config: String
        # @param IsCustomDevice: 是否自定义设备，为 true 时不检查设备存在性，默认为 false
        # @type IsCustomDevice: Boolean
        # @param InputType: 输入类型。可选值：

        # - `video`：视频（默认值）
        # - `image`：图片
        # @type InputType: String
        # @param SummaryQOS: 摘要服务质量。可选值：

        # - `minutely`：分钟级（默认值）
        # - `immediate`：立即
        # @type SummaryQOS: String
        # @param SummaryConfig: 摘要输出配置
        # @type SummaryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionSummaryConfig`
        # @param ServiceType: 算法类型，可能取值：
        # - `Summary`：视频/图片摘要
        # - `ObjectDetect`：目标检测
        # @type ServiceType: String
        # @param ObjectDetectConfig: 目标检测配置
        # @type ObjectDetectConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionObjectDetectConfig`

        attr_accessor :ProductId, :DeviceName, :InputURL, :ChannelId, :CustomId, :EnableSearch, :StartTimeMs, :EndTimeMs, :Config, :IsCustomDevice, :InputType, :SummaryQOS, :SummaryConfig, :ServiceType, :ObjectDetectConfig

        def initialize(productid=nil, devicename=nil, inputurl=nil, channelid=nil, customid=nil, enablesearch=nil, starttimems=nil, endtimems=nil, config=nil, iscustomdevice=nil, inputtype=nil, summaryqos=nil, summaryconfig=nil, servicetype=nil, objectdetectconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @InputURL = inputurl
          @ChannelId = channelid
          @CustomId = customid
          @EnableSearch = enablesearch
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @Config = config
          @IsCustomDevice = iscustomdevice
          @InputType = inputtype
          @SummaryQOS = summaryqos
          @SummaryConfig = summaryconfig
          @ServiceType = servicetype
          @ObjectDetectConfig = objectdetectconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @InputURL = params['InputURL']
          @ChannelId = params['ChannelId']
          @CustomId = params['CustomId']
          @EnableSearch = params['EnableSearch']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @Config = params['Config']
          @IsCustomDevice = params['IsCustomDevice']
          @InputType = params['InputType']
          @SummaryQOS = params['SummaryQOS']
          unless params['SummaryConfig'].nil?
            @SummaryConfig = VisionSummaryConfig.new
            @SummaryConfig.deserialize(params['SummaryConfig'])
          end
          @ServiceType = params['ServiceType']
          unless params['ObjectDetectConfig'].nil?
            @ObjectDetectConfig = VisionObjectDetectConfig.new
            @ObjectDetectConfig.deserialize(params['ObjectDetectConfig'])
          end
        end
      end

      # CreateTWeSeeRecognitionTask返回参数结构体
      class CreateTWeSeeRecognitionTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateTWeSeeRecognitionTaskWithFile请求参数结构体
      class CreateTWeSeeRecognitionTaskWithFileRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param InputBase64: 视频 / 图片文件的 Base64 编码字符串
        # @type InputBase64: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param CustomId: 自定义事件 ID
        # @type CustomId: String
        # @param EnableSearch: 是否保存该事件使其可被搜索
        # @type EnableSearch: Boolean
        # @param StartTimeMs: 事件起始时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 事件结束时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type EndTimeMs: Integer
        # @param Config: 算法配置
        # @type Config: String
        # @param IsCustomDevice: 是否自定义设备，为 true 时不检查设备存在性，默认为 false
        # @type IsCustomDevice: Boolean
        # @param InputType: 输入类型。可选值：

        # - `video`：视频（默认值）
        # - `image`：图片
        # @type InputType: String
        # @param SummaryQOS: 摘要服务质量。可选值：

        # - `minutely`：分钟级（默认值）
        # - `immediate`：立即
        # @type SummaryQOS: String
        # @param SummaryConfig: 摘要输出配置
        # @type SummaryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionSummaryConfig`
        # @param ServiceType: 算法类型，可能取值：
        # - `Summary`：视频/图片摘要
        # - `ObjectDetect`：目标检测
        # @type ServiceType: String
        # @param ObjectDetectConfig: 目标检测配置
        # @type ObjectDetectConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionObjectDetectConfig`

        attr_accessor :ProductId, :DeviceName, :InputBase64, :ChannelId, :CustomId, :EnableSearch, :StartTimeMs, :EndTimeMs, :Config, :IsCustomDevice, :InputType, :SummaryQOS, :SummaryConfig, :ServiceType, :ObjectDetectConfig

        def initialize(productid=nil, devicename=nil, inputbase64=nil, channelid=nil, customid=nil, enablesearch=nil, starttimems=nil, endtimems=nil, config=nil, iscustomdevice=nil, inputtype=nil, summaryqos=nil, summaryconfig=nil, servicetype=nil, objectdetectconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @InputBase64 = inputbase64
          @ChannelId = channelid
          @CustomId = customid
          @EnableSearch = enablesearch
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @Config = config
          @IsCustomDevice = iscustomdevice
          @InputType = inputtype
          @SummaryQOS = summaryqos
          @SummaryConfig = summaryconfig
          @ServiceType = servicetype
          @ObjectDetectConfig = objectdetectconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @InputBase64 = params['InputBase64']
          @ChannelId = params['ChannelId']
          @CustomId = params['CustomId']
          @EnableSearch = params['EnableSearch']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @Config = params['Config']
          @IsCustomDevice = params['IsCustomDevice']
          @InputType = params['InputType']
          @SummaryQOS = params['SummaryQOS']
          unless params['SummaryConfig'].nil?
            @SummaryConfig = VisionSummaryConfig.new
            @SummaryConfig.deserialize(params['SummaryConfig'])
          end
          @ServiceType = params['ServiceType']
          unless params['ObjectDetectConfig'].nil?
            @ObjectDetectConfig = VisionObjectDetectConfig.new
            @ObjectDetectConfig.deserialize(params['ObjectDetectConfig'])
          end
        end
      end

      # CreateTWeSeeRecognitionTaskWithFile返回参数结构体
      class CreateTWeSeeRecognitionTaskWithFileResponse < TencentCloud::Common::AbstractModel
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

      # CreateTWeSeeService请求参数结构体
      class CreateTWeSeeServiceRequest < TencentCloud::Common::AbstractModel
        # @param Service: 服务类型
        # 1.VideoSummary
        # 2.ImageSummary
        # @type Service: String

        attr_accessor :Service

        def initialize(service=nil)
          @Service = service
        end

        def deserialize(params)
          @Service = params['Service']
        end
      end

      # CreateTWeSeeService返回参数结构体
      class CreateTWeSeeServiceResponse < TencentCloud::Common::AbstractModel
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

      # CreateTWeSeeSubscription请求参数结构体
      class CreateTWeSeeSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param ServiceTier: 套餐规格。可选值：

        # - `BASIC`：包年包月基础版（适用于视频理解）
        # @type ServiceTier: String
        # @param Period: 订阅购买时长，单位：月，支持 1-60
        # @type Period: Integer
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param CustomOrderId: 自定义订单 ID
        # @type CustomOrderId: String
        # @param RenewFlag: 续费标识。可选值：
        # - `NOTIFY_AND_MANUAL_RENEW`：到期前通知并手动续费（默认）
        # - `NOTIFY_AND_AUTO_RENEW`：到期前通知并自动续费
        # - `DISABLE_NOTIFY_AND_MANUAL_RENEW`：不通知且手动续费
        # @type RenewFlag: String

        attr_accessor :ProductId, :DeviceName, :ServiceType, :ServiceTier, :Period, :ChannelId, :CustomOrderId, :RenewFlag

        def initialize(productid=nil, devicename=nil, servicetype=nil, servicetier=nil, period=nil, channelid=nil, customorderid=nil, renewflag=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @ServiceTier = servicetier
          @Period = period
          @ChannelId = channelid
          @CustomOrderId = customorderid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @ServiceTier = params['ServiceTier']
          @Period = params['Period']
          @ChannelId = params['ChannelId']
          @CustomOrderId = params['CustomOrderId']
          @RenewFlag = params['RenewFlag']
        end
      end

      # CreateTWeSeeSubscription返回参数结构体
      class CreateTWeSeeSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单 ID
        # @type OrderId: String
        # @param Status: 订单状态
        # @type Status: String
        # @param ResourceId: 资源 ID
        # @type ResourceId: String
        # @param OriginalPrice: 原价
        # @type OriginalPrice: String
        # @param DiscountPrice: 折后价
        # @type DiscountPrice: String
        # @param Currency: 币种
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :Status, :ResourceId, :OriginalPrice, :DiscountPrice, :Currency, :RequestId

        def initialize(orderid=nil, status=nil, resourceid=nil, originalprice=nil, discountprice=nil, currency=nil, requestid=nil)
          @OrderId = orderid
          @Status = status
          @ResourceId = resourceid
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @ResourceId = params['ResourceId']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
        end
      end

      # CreateTWeTalkAIBot请求参数结构体
      class CreateTWeTalkAIBotRequest < TencentCloud::Common::AbstractModel
        # @param Name: 产品ID
        # @type Name: String
        # @param Description: 名称
        # @type Description: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param STTConfig: 自定义语音识别配置
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfigInfo`
        # @param LLMConfig: 自定义大模型配置
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfigInfo`
        # @param TTSConfig: 语音合成配置
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfigInfo`
        # @param AgentConfig: 智能体配置
        # @type AgentConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkAgentConfigInfo`
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param CustomTools: 自定义工具配置，最多可创建10个
        # @type CustomTools: String
        # @param WebhookTools: WebHook工具配置(JSON字符串格式)
        # @type WebhookTools: String
        # @param BotType: 智能体模板类型
        # @type BotType: String
        # @param RAGConfig: 知识库相关配置(JSON字符串格式)
        # @type RAGConfig: String

        attr_accessor :Name, :Description, :TargetLanguage, :STTConfig, :LLMConfig, :TTSConfig, :AgentConfig, :InstanceId, :CustomTools, :WebhookTools, :BotType, :RAGConfig

        def initialize(name=nil, description=nil, targetlanguage=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, agentconfig=nil, instanceid=nil, customtools=nil, webhooktools=nil, bottype=nil, ragconfig=nil)
          @Name = name
          @Description = description
          @TargetLanguage = targetlanguage
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @AgentConfig = agentconfig
          @InstanceId = instanceid
          @CustomTools = customtools
          @WebhookTools = webhooktools
          @BotType = bottype
          @RAGConfig = ragconfig
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @TargetLanguage = params['TargetLanguage']
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfigInfo.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfigInfo.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfigInfo.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['AgentConfig'].nil?
            @AgentConfig = TalkAgentConfigInfo.new
            @AgentConfig.deserialize(params['AgentConfig'])
          end
          @InstanceId = params['InstanceId']
          @CustomTools = params['CustomTools']
          @WebhookTools = params['WebhookTools']
          @BotType = params['BotType']
          @RAGConfig = params['RAGConfig']
        end
      end

      # CreateTWeTalkAIBot返回参数结构体
      class CreateTWeTalkAIBotResponse < TencentCloud::Common::AbstractModel
        # @param BotId: 智能体ID
        # @type BotId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BotId, :RequestId

        def initialize(botid=nil, requestid=nil)
          @BotId = botid
          @RequestId = requestid
        end

        def deserialize(params)
          @BotId = params['BotId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTWeTalkAgent请求参数结构体
      class CreateTWeTalkAgentRequest < TencentCloud::Common::AbstractModel
        # @param STTConfig: <p>语音识别配置</p>
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfig`
        # @param LLMConfig: <p>大模型配置</p>
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfig`
        # @param TTSConfig: <p>语音合成配置</p>
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfig`
        # @param Name: <p>智能体名称；为空时使用默认智能体名称</p>
        # @type Name: String
        # @param InstanceId: <p>实例ID</p>
        # @type InstanceId: String
        # @param Description: <p>智能体描述，最长1024字符</p>
        # @type Description: String
        # @param ConversationConfig: <p>对话行为配置</p>
        # @type ConversationConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkConversationConfig`
        # @param MemoryConfig: <p>长期记忆配置</p>
        # @type MemoryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkMemoryConfig`
        # @param IOTTools: <p>IoT工具配置列表</p>
        # @type IOTTools: Array
        # @param WebhookTools: <p>Webhook工具配置列表</p>
        # @type WebhookTools: Array
        # @param Metadata: <p>元信息扩展JSON对象字符串</p>
        # @type Metadata: String

        attr_accessor :STTConfig, :LLMConfig, :TTSConfig, :Name, :InstanceId, :Description, :ConversationConfig, :MemoryConfig, :IOTTools, :WebhookTools, :Metadata

        def initialize(sttconfig=nil, llmconfig=nil, ttsconfig=nil, name=nil, instanceid=nil, description=nil, conversationconfig=nil, memoryconfig=nil, iottools=nil, webhooktools=nil, metadata=nil)
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @Name = name
          @InstanceId = instanceid
          @Description = description
          @ConversationConfig = conversationconfig
          @MemoryConfig = memoryconfig
          @IOTTools = iottools
          @WebhookTools = webhooktools
          @Metadata = metadata
        end

        def deserialize(params)
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfig.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfig.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfig.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          @Name = params['Name']
          @InstanceId = params['InstanceId']
          @Description = params['Description']
          unless params['ConversationConfig'].nil?
            @ConversationConfig = TalkConversationConfig.new
            @ConversationConfig.deserialize(params['ConversationConfig'])
          end
          unless params['MemoryConfig'].nil?
            @MemoryConfig = TalkMemoryConfig.new
            @MemoryConfig.deserialize(params['MemoryConfig'])
          end
          unless params['IOTTools'].nil?
            @IOTTools = []
            params['IOTTools'].each do |i|
              talkiottool_tmp = TalkIOTTool.new
              talkiottool_tmp.deserialize(i)
              @IOTTools << talkiottool_tmp
            end
          end
          unless params['WebhookTools'].nil?
            @WebhookTools = []
            params['WebhookTools'].each do |i|
              talkwebhooktool_tmp = TalkWebhookTool.new
              talkwebhooktool_tmp.deserialize(i)
              @WebhookTools << talkwebhooktool_tmp
            end
          end
          @Metadata = params['Metadata']
        end
      end

      # CreateTWeTalkAgent返回参数结构体
      class CreateTWeTalkAgentResponse < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>智能体ID</p>
        # @type AgentId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentId, :RequestId

        def initialize(agentid=nil, requestid=nil)
          @AgentId = agentid
          @RequestId = requestid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTWeTalkProductConfig请求参数结构体
      class CreateTWeTalkProductConfigRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param SystemPrompt: 系统提示词
        # @type SystemPrompt: String
        # @param GreetingMessage: 欢迎语
        # @type GreetingMessage: String
        # @param VoiceType: 音色，支持的音色列表：100510000-阅读男声智逍遥；101001-情感女声智瑜；101002-通用女声智聆；101003-客服女声智美；101004-通用男声智云；101005-通用女声智莉；101006-助手女声智言；101008-客服女声智琪；101009-知性女声智芸；101010-通用男声智华；101011-新闻女声智燕；101012-新闻女声智丹；101013-新闻男声智辉；101014 -新闻男声智宁；101015-男童声智萌；101016-女童声智甜；101017-情感女声智蓉；101018-情感男声智靖；101019-粤语女声智彤。
        # @type VoiceType: Integer
        # @param FastVoiceType: 复刻音色
        # @type FastVoiceType: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String

        attr_accessor :ProductId, :SystemPrompt, :GreetingMessage, :VoiceType, :FastVoiceType, :TargetLanguage

        def initialize(productid=nil, systemprompt=nil, greetingmessage=nil, voicetype=nil, fastvoicetype=nil, targetlanguage=nil)
          @ProductId = productid
          @SystemPrompt = systemprompt
          @GreetingMessage = greetingmessage
          @VoiceType = voicetype
          @FastVoiceType = fastvoicetype
          @TargetLanguage = targetlanguage
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @SystemPrompt = params['SystemPrompt']
          @GreetingMessage = params['GreetingMessage']
          @VoiceType = params['VoiceType']
          @FastVoiceType = params['FastVoiceType']
          @TargetLanguage = params['TargetLanguage']
        end
      end

      # CreateTWeTalkProductConfig返回参数结构体
      class CreateTWeTalkProductConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateTWeTalkProductConfigV2请求参数结构体
      class CreateTWeTalkProductConfigV2Request < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param ConfigName: 名称
        # @type ConfigName: String
        # @param BasicConfig: 系统基础配置，当需要使用系统三段式配置时配置。
        # @type BasicConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkBasicConfigInfo`
        # @param STTConfig: 自定义语音识别配置
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfigInfo`
        # @param LLMConfig: 自定义大模型配置
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfigInfo`
        # @param TTSConfig: 语音合成配置
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfigInfo`
        # @param ConversationConfig: 会话配置
        # @type ConversationConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkConversationConfigInfo`

        attr_accessor :ProductId, :DeviceName, :TargetLanguage, :ConfigName, :BasicConfig, :STTConfig, :LLMConfig, :TTSConfig, :ConversationConfig

        def initialize(productid=nil, devicename=nil, targetlanguage=nil, configname=nil, basicconfig=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, conversationconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @TargetLanguage = targetlanguage
          @ConfigName = configname
          @BasicConfig = basicconfig
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @ConversationConfig = conversationconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @TargetLanguage = params['TargetLanguage']
          @ConfigName = params['ConfigName']
          unless params['BasicConfig'].nil?
            @BasicConfig = TalkBasicConfigInfo.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfigInfo.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfigInfo.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfigInfo.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['ConversationConfig'].nil?
            @ConversationConfig = TalkConversationConfigInfo.new
            @ConversationConfig.deserialize(params['ConversationConfig'])
          end
        end
      end

      # CreateTWeTalkProductConfigV2返回参数结构体
      class CreateTWeTalkProductConfigV2Response < TencentCloud::Common::AbstractModel
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

      # 批量创建的 TWeSee 语义理解任务
      class CreateVisionRecognitionTaskInput < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param InputURL: 输入视频 / 图片的 URL
        # @type InputURL: String
        # @param InputBase64: 视频 / 图片文件的 Base64 编码字符串
        # @type InputBase64: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param CustomId: 自定义事件 ID
        # @type CustomId: String
        # @param EnableSearch: 是否保存该事件使其可被搜索
        # @type EnableSearch: Boolean
        # @param StartTimeMs: 事件起始时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 事件结束时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type EndTimeMs: Integer
        # @param Config: 算法配置
        # @type Config: String
        # @param IsCustomDevice: 是否自定义设备，为 true 时不检查设备存在性，默认为 false
        # @type IsCustomDevice: Boolean
        # @param InputType: 输入类型。可选值：

        # - `video`：视频（默认值）
        # - `image`：图片
        # @type InputType: String
        # @param SummaryQOS: 摘要服务质量。可选值：

        # - `minutely`：分钟级（默认值）
        # - `immediate`：立即
        # @type SummaryQOS: String
        # @param SummaryConfig: 摘要输出配置
        # @type SummaryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionSummaryConfig`
        # @param ServiceType: 算法类型，可能取值：
        # - `Summary`：视频/图片摘要
        # - `ObjectDetect`：目标检测
        # @type ServiceType: String
        # @param ObjectDetectConfig: 目标检测配置
        # @type ObjectDetectConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionObjectDetectConfig`

        attr_accessor :ProductId, :DeviceName, :InputURL, :InputBase64, :ChannelId, :CustomId, :EnableSearch, :StartTimeMs, :EndTimeMs, :Config, :IsCustomDevice, :InputType, :SummaryQOS, :SummaryConfig, :ServiceType, :ObjectDetectConfig

        def initialize(productid=nil, devicename=nil, inputurl=nil, inputbase64=nil, channelid=nil, customid=nil, enablesearch=nil, starttimems=nil, endtimems=nil, config=nil, iscustomdevice=nil, inputtype=nil, summaryqos=nil, summaryconfig=nil, servicetype=nil, objectdetectconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @InputURL = inputurl
          @InputBase64 = inputbase64
          @ChannelId = channelid
          @CustomId = customid
          @EnableSearch = enablesearch
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @Config = config
          @IsCustomDevice = iscustomdevice
          @InputType = inputtype
          @SummaryQOS = summaryqos
          @SummaryConfig = summaryconfig
          @ServiceType = servicetype
          @ObjectDetectConfig = objectdetectconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @InputURL = params['InputURL']
          @InputBase64 = params['InputBase64']
          @ChannelId = params['ChannelId']
          @CustomId = params['CustomId']
          @EnableSearch = params['EnableSearch']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @Config = params['Config']
          @IsCustomDevice = params['IsCustomDevice']
          @InputType = params['InputType']
          @SummaryQOS = params['SummaryQOS']
          unless params['SummaryConfig'].nil?
            @SummaryConfig = VisionSummaryConfig.new
            @SummaryConfig.deserialize(params['SummaryConfig'])
          end
          @ServiceType = params['ServiceType']
          unless params['ObjectDetectConfig'].nil?
            @ObjectDetectConfig = VisionObjectDetectConfig.new
            @ObjectDetectConfig.deserialize(params['ObjectDetectConfig'])
          end
        end
      end

      # 批量创建 TWeSee 语义理解任务的响应
      class CreateVisionRecognitionTaskOutput < TencentCloud::Common::AbstractModel
        # @param Created: 创建任务成功
        # @type Created: Boolean
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param ErrorMessage: 错误消息
        # @type ErrorMessage: String

        attr_accessor :Created, :TaskId, :ErrorCode, :ErrorMessage

        def initialize(created=nil, taskid=nil, errorcode=nil, errormessage=nil)
          @Created = created
          @TaskId = taskid
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @Created = params['Created']
          @TaskId = params['TaskId']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
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

      # DeleteDeviceSDP请求参数结构体
      class DeleteDeviceSDPRequest < TencentCloud::Common::AbstractModel
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

      # DeleteDeviceSDP返回参数结构体
      class DeleteDeviceSDPResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOtaModule请求参数结构体
      class DeleteOtaModuleRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FwType: 模块类型
        # @type FwType: String

        attr_accessor :ProductID, :FwType

        def initialize(productid=nil, fwtype=nil)
          @ProductID = productid
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FwType = params['FwType']
        end
      end

      # DeleteOtaModule返回参数结构体
      class DeleteOtaModuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTWeSeeCallback请求参数结构体
      class DeleteTWeSeeCallbackRequest < TencentCloud::Common::AbstractModel
        # @param CallbackId: 回调目标 ID，格式为 `callback-` + 8 位小写字母数字
        # @type CallbackId: String

        attr_accessor :CallbackId

        def initialize(callbackid=nil)
          @CallbackId = callbackid
        end

        def deserialize(params)
          @CallbackId = params['CallbackId']
        end
      end

      # DeleteTWeSeeCallback返回参数结构体
      class DeleteTWeSeeCallbackResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTWeTalkAIBot请求参数结构体
      class DeleteTWeTalkAIBotRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 智能体ID
        # @type BotId: String

        attr_accessor :BotId

        def initialize(botid=nil)
          @BotId = botid
        end

        def deserialize(params)
          @BotId = params['BotId']
        end
      end

      # DeleteTWeTalkAIBot返回参数结构体
      class DeleteTWeTalkAIBotResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTWeTalkAgent请求参数结构体
      class DeleteTWeTalkAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>智能体ID</p>
        # @type AgentId: String

        attr_accessor :AgentId

        def initialize(agentid=nil)
          @AgentId = agentid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
        end
      end

      # DeleteTWeTalkAgent返回参数结构体
      class DeleteTWeTalkAgentResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTWeTalkProductConfigV2请求参数结构体
      class DeleteTWeTalkProductConfigV2Request < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String

        attr_accessor :ProductId, :DeviceName, :TargetLanguage

        def initialize(productid=nil, devicename=nil, targetlanguage=nil)
          @ProductId = productid
          @DeviceName = devicename
          @TargetLanguage = targetlanguage
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @TargetLanguage = params['TargetLanguage']
        end
      end

      # DeleteTWeTalkProductConfigV2返回参数结构体
      class DeleteTWeTalkProductConfigV2Response < TencentCloud::Common::AbstractModel
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

      # DescribeAISearchTaskAsync请求参数结构体
      class DescribeAISearchTaskAsyncRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeAISearchTaskAsync返回参数结构体
      class DescribeAISearchTaskAsyncResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态。0-初始状态；1-正在处理；2-处理失败；3-成功
        # @type Status: Integer
        # @param Data: 任务处理结果数据
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.AISearchInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Data, :RequestId

        def initialize(status=nil, data=nil, requestid=nil)
          @Status = status
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['Data'].nil?
            @Data = AISearchInfo.new
            @Data.deserialize(params['Data'])
          end
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
        # @param PackageId: 云存 AI 套餐 ID
        # @type PackageId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :Status, :ExpireTime, :UserId, :Enabled, :Config, :ROI, :PackageId, :RequestId

        def initialize(type=nil, status=nil, expiretime=nil, userid=nil, enabled=nil, config=nil, roi=nil, packageid=nil, requestid=nil)
          @Type = type
          @Status = status
          @ExpireTime = expiretime
          @UserId = userid
          @Enabled = enabled
          @Config = config
          @ROI = roi
          @PackageId = packageid
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
          @PackageId = params['PackageId']
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

      # DescribeCsReportCountDataInfo请求参数结构体
      class DescribeCsReportCountDataInfoRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param StartTime: 统计开始时间戳
        # @type StartTime: Integer
        # @param EndTime: 统计结束时间戳
        # @type EndTime: Integer
        # @param ChannelId: 设备通道
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :StartTime, :EndTime, :ChannelId

        def initialize(productid=nil, devicename=nil, starttime=nil, endtime=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @StartTime = starttime
          @EndTime = endtime
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeCsReportCountDataInfo返回参数结构体
      class DescribeCsReportCountDataInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 云存上报统计信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.CountDataInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CountDataInfo.new
            @Data.deserialize(params['Data'])
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
        # @param FwType: 固件模块
        # @type FwType: String

        attr_accessor :ProductID, :FirmwareVersion, :FwType

        def initialize(productid=nil, firmwareversion=nil, fwtype=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FwType = params['FwType']
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

      # DescribeFirmwareTaskDevices请求参数结构体
      class DescribeFirmwareTaskDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询的数量
        # @type Limit: Integer
        # @param FwType: 固件类型
        # @type FwType: String

        attr_accessor :ProductID, :FirmwareVersion, :Filters, :Offset, :Limit, :FwType

        def initialize(productid=nil, firmwareversion=nil, filters=nil, offset=nil, limit=nil, fwtype=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              searchkeyword_tmp = SearchKeyword.new
              searchkeyword_tmp.deserialize(i)
              @Filters << searchkeyword_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FwType = params['FwType']
        end
      end

      # DescribeFirmwareTaskDevices返回参数结构体
      class DescribeFirmwareTaskDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 固件升级任务的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Devices: 固件升级任务的设备列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Devices: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Devices, :RequestId

        def initialize(total=nil, devices=nil, requestid=nil)
          @Total = total
          @Devices = devices
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceupdatestatus_tmp = DeviceUpdateStatus.new
              deviceupdatestatus_tmp.deserialize(i)
              @Devices << deviceupdatestatus_tmp
            end
          end
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
        # @param DelayTime: 延迟时间
        # @type DelayTime: Integer
        # @param TimeoutInterval: 超时时间
        # @type TimeoutInterval: Integer
        # @param UpgradeMethod: 静默升级or用户确认升级
        # @type UpgradeMethod: Integer
        # @param MaxRetryNum: 最大重试次数
        # @type MaxRetryNum: Integer
        # @param FwType: 固件类型
        # @type FwType: String
        # @param RetryInterval: 重试间隔时间单位min
        # @type RetryInterval: Integer
        # @param OverrideMode: 是否覆盖任务
        # @type OverrideMode: Integer
        # @param TaskUserDefine: 用户自定义消息
        # @type TaskUserDefine: String
        # @param RateLimit: 每分钟发送设备量
        # @type RateLimit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :CreateTime, :Type, :ProductName, :UpgradeMode, :ProductId, :OriginalVersion, :CreateUserId, :CreatorNickName, :DelayTime, :TimeoutInterval, :UpgradeMethod, :MaxRetryNum, :FwType, :RetryInterval, :OverrideMode, :TaskUserDefine, :RateLimit, :RequestId

        def initialize(taskid=nil, status=nil, createtime=nil, type=nil, productname=nil, upgrademode=nil, productid=nil, originalversion=nil, createuserid=nil, creatornickname=nil, delaytime=nil, timeoutinterval=nil, upgrademethod=nil, maxretrynum=nil, fwtype=nil, retryinterval=nil, overridemode=nil, taskuserdefine=nil, ratelimit=nil, requestid=nil)
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
          @DelayTime = delaytime
          @TimeoutInterval = timeoutinterval
          @UpgradeMethod = upgrademethod
          @MaxRetryNum = maxretrynum
          @FwType = fwtype
          @RetryInterval = retryinterval
          @OverrideMode = overridemode
          @TaskUserDefine = taskuserdefine
          @RateLimit = ratelimit
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
          @DelayTime = params['DelayTime']
          @TimeoutInterval = params['TimeoutInterval']
          @UpgradeMethod = params['UpgradeMethod']
          @MaxRetryNum = params['MaxRetryNum']
          @FwType = params['FwType']
          @RetryInterval = params['RetryInterval']
          @OverrideMode = params['OverrideMode']
          @TaskUserDefine = params['TaskUserDefine']
          @RateLimit = params['RateLimit']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTasks请求参数结构体
      class DescribeFirmwareTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 返回查询结果条数
        # @type Limit: Integer
        # @param Filters: 搜索过滤条件
        # @type Filters: Array
        # @param FwType: 固件类型
        # @type FwType: String

        attr_accessor :ProductID, :FirmwareVersion, :Offset, :Limit, :Filters, :FwType

        def initialize(productid=nil, firmwareversion=nil, offset=nil, limit=nil, filters=nil, fwtype=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              searchkeyword_tmp = SearchKeyword.new
              searchkeyword_tmp.deserialize(i)
              @Filters << searchkeyword_tmp
            end
          end
          @FwType = params['FwType']
        end
      end

      # DescribeFirmwareTasks返回参数结构体
      class DescribeFirmwareTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfos: 固件升级任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfos: Array
        # @param Total: 固件升级任务总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfos, :Total, :RequestId

        def initialize(taskinfos=nil, total=nil, requestid=nil)
          @TaskInfos = taskinfos
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              firmwaretaskinfo_tmp = FirmwareTaskInfo.new
              firmwaretaskinfo_tmp.deserialize(i)
              @TaskInfos << firmwaretaskinfo_tmp
            end
          end
          @Total = params['Total']
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

      # DescribeLicenseOverview请求参数结构体
      class DescribeLicenseOverviewRequest < TencentCloud::Common::AbstractModel
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

      # DescribeLicenseOverview返回参数结构体
      class DescribeLicenseOverviewResponse < TencentCloud::Common::AbstractModel
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

      # DescribeProductDynamicRegister请求参数结构体
      class DescribeProductDynamicRegisterRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String

        attr_accessor :ProductId

        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeProductDynamicRegister返回参数结构体
      class DescribeProductDynamicRegisterResponse < TencentCloud::Common::AbstractModel
        # @param RegisterType: 动态注册类型，0-关闭 1-预创建设备 2-自动创建设备
        # @type RegisterType: Integer
        # @param ProductSecret: 动态注册产品密钥
        # @type ProductSecret: String
        # @param RegisterLimit: 动态注册设备上限
        # @type RegisterLimit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegisterType, :ProductSecret, :RegisterLimit, :RequestId

        def initialize(registertype=nil, productsecret=nil, registerlimit=nil, requestid=nil)
          @RegisterType = registertype
          @ProductSecret = productsecret
          @RegisterLimit = registerlimit
          @RequestId = requestid
        end

        def deserialize(params)
          @RegisterType = params['RegisterType']
          @ProductSecret = params['ProductSecret']
          @RegisterLimit = params['RegisterLimit']
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

      # DescribeSubscribedTopicPolicy请求参数结构体
      class DescribeSubscribedTopicPolicyRequest < TencentCloud::Common::AbstractModel
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

      # DescribeSubscribedTopicPolicy返回参数结构体
      class DescribeSubscribedTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Topics: 已订阅Topic信息
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
              subscribedtopicitem_tmp = SubscribedTopicItem.new
              subscribedtopicitem_tmp.deserialize(i)
              @Topics << subscribedtopicitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeSeeCallback请求参数结构体
      class DescribeTWeSeeCallbackRequest < TencentCloud::Common::AbstractModel
        # @param CallbackId: 回调目标 ID
        # @type CallbackId: String

        attr_accessor :CallbackId

        def initialize(callbackid=nil)
          @CallbackId = callbackid
        end

        def deserialize(params)
          @CallbackId = params['CallbackId']
        end
      end

      # DescribeTWeSeeCallback返回参数结构体
      class DescribeTWeSeeCallbackResponse < TencentCloud::Common::AbstractModel
        # @param CallbackInfo: 回调目标详情
        # @type CallbackInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeCallbackInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallbackInfo, :RequestId

        def initialize(callbackinfo=nil, requestid=nil)
          @CallbackInfo = callbackinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CallbackInfo'].nil?
            @CallbackInfo = SeeCallbackInfo.new
            @CallbackInfo.deserialize(params['CallbackInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeSeeConfig请求参数结构体
      class DescribeTWeSeeConfigRequest < TencentCloud::Common::AbstractModel
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

      # DescribeTWeSeeConfig返回参数结构体
      class DescribeTWeSeeConfigResponse < TencentCloud::Common::AbstractModel
        # @param EnableSummary: 是否开启视频摘要
        # @type EnableSummary: Boolean
        # @param EnableSearch: 是否开启视频搜索
        # @type EnableSearch: Boolean
        # @param Config: 配置参数
        # @type Config: String
        # @param SummaryConfig: 摘要配置参数
        # @type SummaryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionSummaryConfig`
        # @param EventIdFilterConfig: 云存事件 ID 过滤规则配置项
        # @type EventIdFilterConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeEventIdFilterConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnableSummary, :EnableSearch, :Config, :SummaryConfig, :EventIdFilterConfig, :RequestId

        def initialize(enablesummary=nil, enablesearch=nil, config=nil, summaryconfig=nil, eventidfilterconfig=nil, requestid=nil)
          @EnableSummary = enablesummary
          @EnableSearch = enablesearch
          @Config = config
          @SummaryConfig = summaryconfig
          @EventIdFilterConfig = eventidfilterconfig
          @RequestId = requestid
        end

        def deserialize(params)
          @EnableSummary = params['EnableSummary']
          @EnableSearch = params['EnableSearch']
          @Config = params['Config']
          unless params['SummaryConfig'].nil?
            @SummaryConfig = VisionSummaryConfig.new
            @SummaryConfig.deserialize(params['SummaryConfig'])
          end
          unless params['EventIdFilterConfig'].nil?
            @EventIdFilterConfig = SeeEventIdFilterConfig.new
            @EventIdFilterConfig.deserialize(params['EventIdFilterConfig'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeSeePostPaidService请求参数结构体
      class DescribeTWeSeePostPaidServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # - `IMG_COMP`：图片理解
        # @type ServiceType: String

        attr_accessor :ServiceType

        def initialize(servicetype=nil)
          @ServiceType = servicetype
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
        end
      end

      # DescribeTWeSeePostPaidService返回参数结构体
      class DescribeTWeSeePostPaidServiceResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 后付费资源 ID
        # @type ResourceId: String
        # @param Status: 资源状态。可选值：
        # - `NORMAL`：正常
        # - `ISOLATED`：已隔离
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :Status, :RequestId

        def initialize(resourceid=nil, status=nil, requestid=nil)
          @ResourceId = resourceid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeSeeRecognitionTask请求参数结构体
      class DescribeTWeSeeRecognitionTaskRequest < TencentCloud::Common::AbstractModel
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

      # DescribeTWeSeeRecognitionTask返回参数结构体
      class DescribeTWeSeeRecognitionTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息
        # @type TaskInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionRecognitionTask`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId

        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = VisionRecognitionTask.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeSeeSubscription请求参数结构体
      class DescribeTWeSeeSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceType, :ChannelId

        def initialize(productid=nil, devicename=nil, servicetype=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @ChannelId = params['ChannelId']
        end
      end

      # DescribeTWeSeeSubscription返回参数结构体
      class DescribeTWeSeeSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源 ID
        # @type ResourceId: String
        # @param ServiceTier: 套餐规格。可能取值：

        # - `BASIC`：包年包月基础版（适用于视频理解）
        # @type ServiceTier: String
        # @param ExpireTime: 到期时间，秒级时间戳
        # @type ExpireTime: Integer
        # @param Enabled: 启用状态，`true` 为开启，`false` 为关闭
        # @type Enabled: Boolean
        # @param Status: 订阅状态。可能取值：

        # - `NORMAL`：正常
        # - `ISOLATED`：隔离
        # @type Status: String
        # @param ComprehensionConfig: 视觉理解配置（适用于视频理解、图片理解）
        # @type ComprehensionConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeComprehensionConfig`
        # @param CompHighlightConfig: 视频语义浓缩配置（适用于视频语义浓缩）
        # @type CompHighlightConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeCompHighlightConfig`
        # @param EventIdFilterConfig: 云存事件 ID 过滤规则配置项
        # @type EventIdFilterConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeEventIdFilterConfig`
        # @param QuotaBasic: 当前周期基础能力总额度
        # @type QuotaBasic: Integer
        # @param QuotaUsedBasic: 当前周期基础能力已用额度
        # @type QuotaUsedBasic: Integer
        # @param QuotaAdvanced: 当前周期高级能力总额度
        # @type QuotaAdvanced: Integer
        # @param QuotaUsedAdvanced: 当前周期高级能力已用额度
        # @type QuotaUsedAdvanced: Integer
        # @param QuotaRefreshTime: 额度刷新时间
        # @type QuotaRefreshTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :ServiceTier, :ExpireTime, :Enabled, :Status, :ComprehensionConfig, :CompHighlightConfig, :EventIdFilterConfig, :QuotaBasic, :QuotaUsedBasic, :QuotaAdvanced, :QuotaUsedAdvanced, :QuotaRefreshTime, :RequestId

        def initialize(resourceid=nil, servicetier=nil, expiretime=nil, enabled=nil, status=nil, comprehensionconfig=nil, comphighlightconfig=nil, eventidfilterconfig=nil, quotabasic=nil, quotausedbasic=nil, quotaadvanced=nil, quotausedadvanced=nil, quotarefreshtime=nil, requestid=nil)
          @ResourceId = resourceid
          @ServiceTier = servicetier
          @ExpireTime = expiretime
          @Enabled = enabled
          @Status = status
          @ComprehensionConfig = comprehensionconfig
          @CompHighlightConfig = comphighlightconfig
          @EventIdFilterConfig = eventidfilterconfig
          @QuotaBasic = quotabasic
          @QuotaUsedBasic = quotausedbasic
          @QuotaAdvanced = quotaadvanced
          @QuotaUsedAdvanced = quotausedadvanced
          @QuotaRefreshTime = quotarefreshtime
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @ServiceTier = params['ServiceTier']
          @ExpireTime = params['ExpireTime']
          @Enabled = params['Enabled']
          @Status = params['Status']
          unless params['ComprehensionConfig'].nil?
            @ComprehensionConfig = SeeComprehensionConfig.new
            @ComprehensionConfig.deserialize(params['ComprehensionConfig'])
          end
          unless params['CompHighlightConfig'].nil?
            @CompHighlightConfig = SeeCompHighlightConfig.new
            @CompHighlightConfig.deserialize(params['CompHighlightConfig'])
          end
          unless params['EventIdFilterConfig'].nil?
            @EventIdFilterConfig = SeeEventIdFilterConfig.new
            @EventIdFilterConfig.deserialize(params['EventIdFilterConfig'])
          end
          @QuotaBasic = params['QuotaBasic']
          @QuotaUsedBasic = params['QuotaUsedBasic']
          @QuotaAdvanced = params['QuotaAdvanced']
          @QuotaUsedAdvanced = params['QuotaUsedAdvanced']
          @QuotaRefreshTime = params['QuotaRefreshTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeSeeTask请求参数结构体
      class DescribeTWeSeeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTWeSeeTask返回参数结构体
      class DescribeTWeSeeTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 任务信息
        # @type TaskInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeTaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId

        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = SeeTaskInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeSeeTaskStatistics请求参数结构体
      class DescribeTWeSeeTaskStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # - `IMG_COMP`：图片理解
        # @type ServiceType: String
        # @param ServiceTier: 套餐规格。可选值：

        # - `POSTPAID`：后付费（适用于视频理解、图片理解）
        # - `BASIC`：包年包月基础版（适用于视频理解）
        # @type ServiceTier: String
        # @param StartTime: 起始时间 UNIX 时间戳，单位：秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间 UNIX 时间戳，单位：秒
        # @type EndTime: Integer
        # @param Interval: 数据点间隔，单位：秒；-1 表示汇总，只返回 1 个数据点
        # @type Interval: Integer

        attr_accessor :ServiceType, :ServiceTier, :StartTime, :EndTime, :Interval

        def initialize(servicetype=nil, servicetier=nil, starttime=nil, endtime=nil, interval=nil)
          @ServiceType = servicetype
          @ServiceTier = servicetier
          @StartTime = starttime
          @EndTime = endtime
          @Interval = interval
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ServiceTier = params['ServiceTier']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Interval = params['Interval']
        end
      end

      # DescribeTWeSeeTaskStatistics返回参数结构体
      class DescribeTWeSeeTaskStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param StatData: 统计数据
        # @type StatData: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatData, :RequestId

        def initialize(statdata=nil, requestid=nil)
          @StatData = statdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StatData'].nil?
            @StatData = []
            params['StatData'].each do |i|
              seestatitem_tmp = SeeStatItem.new
              seestatitem_tmp.deserialize(i)
              @StatData << seestatitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeTalkAIBot请求参数结构体
      class DescribeTWeTalkAIBotRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 智能体ID
        # @type BotId: String

        attr_accessor :BotId

        def initialize(botid=nil)
          @BotId = botid
        end

        def deserialize(params)
          @BotId = params['BotId']
        end
      end

      # DescribeTWeTalkAIBot返回参数结构体
      class DescribeTWeTalkAIBotResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkAIBotInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TalkAIBotInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeTalkAgentBinding请求参数结构体
      class DescribeTWeTalkAgentBindingRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名称</p>
        # @type DeviceName: String
        # @param BindingScope: <p>绑定维度：product 或 device</p>
        # @type BindingScope: String
        # @param AgentId: <p>智能体 ID</p>
        # @type AgentId: String
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，最大 100</p>
        # @type Limit: Integer

        attr_accessor :ProductId, :DeviceName, :BindingScope, :AgentId, :Offset, :Limit

        def initialize(productid=nil, devicename=nil, bindingscope=nil, agentid=nil, offset=nil, limit=nil)
          @ProductId = productid
          @DeviceName = devicename
          @BindingScope = bindingscope
          @AgentId = agentid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @BindingScope = params['BindingScope']
          @AgentId = params['AgentId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTWeTalkAgentBinding返回参数结构体
      class DescribeTWeTalkAgentBindingResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param Bindings: <p>绑定关系列表</p>
        # @type Bindings: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Bindings, :RequestId

        def initialize(totalcount=nil, bindings=nil, requestid=nil)
          @TotalCount = totalcount
          @Bindings = bindings
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Bindings'].nil?
            @Bindings = []
            params['Bindings'].each do |i|
              talkagentbinding_tmp = TalkAgentBinding.new
              talkagentbinding_tmp.deserialize(i)
              @Bindings << talkagentbinding_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeTalkAgentList请求参数结构体
      class DescribeTWeTalkAgentListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名称，设备级绑定查询时使用</p>
        # @type DeviceName: String
        # @param BindingScope: <p>绑定维度：product 或 device</p>
        # @type BindingScope: String
        # @param AgentId: <p>智能体 ID</p>
        # @type AgentId: String
        # @param InstanceId: <p>实例 ID</p>
        # @type InstanceId: String
        # @param Name: <p>智能体名称筛选</p>
        # @type Name: String
        # @param Offset: <p>偏移量</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，最大 100</p>
        # @type Limit: Integer

        attr_accessor :ProductId, :DeviceName, :BindingScope, :AgentId, :InstanceId, :Name, :Offset, :Limit

        def initialize(productid=nil, devicename=nil, bindingscope=nil, agentid=nil, instanceid=nil, name=nil, offset=nil, limit=nil)
          @ProductId = productid
          @DeviceName = devicename
          @BindingScope = bindingscope
          @AgentId = agentid
          @InstanceId = instanceid
          @Name = name
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @BindingScope = params['BindingScope']
          @AgentId = params['AgentId']
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTWeTalkAgentList返回参数结构体
      class DescribeTWeTalkAgentListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>总数</p>
        # @type TotalCount: Integer
        # @param Data: <p>智能体列</p>
        # @type Data: Array
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
            @Data = []
            params['Data'].each do |i|
              talkagentinfo_tmp = TalkAgentInfo.new
              talkagentinfo_tmp.deserialize(i)
              @Data << talkagentinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeTalkAgent请求参数结构体
      class DescribeTWeTalkAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>智能体ID</p>
        # @type AgentId: String

        attr_accessor :AgentId

        def initialize(agentid=nil)
          @AgentId = agentid
        end

        def deserialize(params)
          @AgentId = params['AgentId']
        end
      end

      # DescribeTWeTalkAgent返回参数结构体
      class DescribeTWeTalkAgentResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>智能体详情</p>
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkAgentInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TalkAgentInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeTalkProductConfig请求参数结构体
      class DescribeTWeTalkProductConfigRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String

        attr_accessor :ProductId, :TargetLanguage

        def initialize(productid=nil, targetlanguage=nil)
          @ProductId = productid
          @TargetLanguage = targetlanguage
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TargetLanguage = params['TargetLanguage']
        end
      end

      # DescribeTWeTalkProductConfig返回参数结构体
      class DescribeTWeTalkProductConfigResponse < TencentCloud::Common::AbstractModel
        # @param Data: 配置信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkProductConfigInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TalkProductConfigInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTWeTalkProductConfigV2请求参数结构体
      class DescribeTWeTalkProductConfigV2Request < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param IncludeCredentials: 是否脱敏
        # @type IncludeCredentials: Boolean

        attr_accessor :ProductId, :DeviceName, :TargetLanguage, :IncludeCredentials

        def initialize(productid=nil, devicename=nil, targetlanguage=nil, includecredentials=nil)
          @ProductId = productid
          @DeviceName = devicename
          @TargetLanguage = targetlanguage
          @IncludeCredentials = includecredentials
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @TargetLanguage = params['TargetLanguage']
          @IncludeCredentials = params['IncludeCredentials']
        end
      end

      # DescribeTWeTalkProductConfigV2返回参数结构体
      class DescribeTWeTalkProductConfigV2Response < TencentCloud::Common::AbstractModel
        # @param Data: 配置信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkProductConfigV2Info`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TalkProductConfigV2Info.new
            @Data.deserialize(params['Data'])
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

      # DestroyTWeSeeSubscription请求参数结构体
      class DestroyTWeSeeSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceType, :ChannelId

        def initialize(productid=nil, devicename=nil, servicetype=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @ChannelId = params['ChannelId']
        end
      end

      # DestroyTWeSeeSubscription返回参数结构体
      class DestroyTWeSeeSubscriptionResponse < TencentCloud::Common::AbstractModel
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
        # @param ErrMessage: 错误信息
        # @type ErrMessage: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: Integer

        attr_accessor :ModelId, :Sn, :ErrCode, :ErrMessage, :ExpireTime
        extend Gem::Deprecate
        deprecate :ModelId, :none, 2026, 7
        deprecate :ModelId=, :none, 2026, 7

        def initialize(modelid=nil, sn=nil, errcode=nil, errmessage=nil, expiretime=nil)
          @ModelId = modelid
          @Sn = sn
          @ErrCode = errcode
          @ErrMessage = errmessage
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @Sn = params['Sn']
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
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

      # 设备固件更新状态
      class DeviceUpdateStatus < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param LastProcessTime: 最后处理时间
        # @type LastProcessTime: Integer
        # @param Status: 状态
        # @type Status: Integer
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param Retcode: 返回码
        # @type Retcode: Integer
        # @param DstVersion: 目标更新版本
        # @type DstVersion: String
        # @param Percent: 下载中状态时的下载进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param OriVersion: 原版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriVersion: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param FwType: 固件类型
        # @type FwType: String
        # @param RetryNum: 重试次数
        # @type RetryNum: Integer

        attr_accessor :DeviceName, :LastProcessTime, :Status, :ErrMsg, :Retcode, :DstVersion, :Percent, :OriVersion, :TaskId, :FwType, :RetryNum

        def initialize(devicename=nil, lastprocesstime=nil, status=nil, errmsg=nil, retcode=nil, dstversion=nil, percent=nil, oriversion=nil, taskid=nil, fwtype=nil, retrynum=nil)
          @DeviceName = devicename
          @LastProcessTime = lastprocesstime
          @Status = status
          @ErrMsg = errmsg
          @Retcode = retcode
          @DstVersion = dstversion
          @Percent = percent
          @OriVersion = oriversion
          @TaskId = taskid
          @FwType = fwtype
          @RetryNum = retrynum
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @LastProcessTime = params['LastProcessTime']
          @Status = params['Status']
          @ErrMsg = params['ErrMsg']
          @Retcode = params['Retcode']
          @DstVersion = params['DstVersion']
          @Percent = params['Percent']
          @OriVersion = params['OriVersion']
          @TaskId = params['TaskId']
          @FwType = params['FwType']
          @RetryNum = params['RetryNum']
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

      # Diary Simple Highlight 配置
      class DiarySHLConfig < TencentCloud::Common::AbstractModel
        # @param StartOffset: 每个视频偏移时长，单位秒
        # @type StartOffset: Integer
        # @param PlaySpeed: 视频浓缩倍数，支持1,2,4之间
        # @type PlaySpeed: Integer
        # @param MiniExtract: 单个视频最小提取时长，单位秒
        # @type MiniExtract: Integer
        # @param OutDuration: 每天最终输出视频时长，单位秒
        # 注：免费版固定10s
        # @type OutDuration: Integer

        attr_accessor :StartOffset, :PlaySpeed, :MiniExtract, :OutDuration

        def initialize(startoffset=nil, playspeed=nil, miniextract=nil, outduration=nil)
          @StartOffset = startoffset
          @PlaySpeed = playspeed
          @MiniExtract = miniextract
          @OutDuration = outduration
        end

        def deserialize(params)
          @StartOffset = params['StartOffset']
          @PlaySpeed = params['PlaySpeed']
          @MiniExtract = params['MiniExtract']
          @OutDuration = params['OutDuration']
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

      # 固件升级任务信息
      class FirmwareTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Type: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param CreatorNickName: 创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorNickName: String
        # @param CreateUserId: 创建者ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param CronTime: 任务启动时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CronTime: Integer
        # @param FwType: 固件类型
        # @type FwType: String

        attr_accessor :TaskId, :Status, :Type, :CreateTime, :CreatorNickName, :CreateUserId, :CronTime, :FwType

        def initialize(taskid=nil, status=nil, type=nil, createtime=nil, creatornickname=nil, createuserid=nil, crontime=nil, fwtype=nil)
          @TaskId = taskid
          @Status = status
          @Type = type
          @CreateTime = createtime
          @CreatorNickName = creatornickname
          @CreateUserId = createuserid
          @CronTime = crontime
          @FwType = fwtype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @CreatorNickName = params['CreatorNickName']
          @CreateUserId = params['CreateUserId']
          @CronTime = params['CronTime']
          @FwType = params['FwType']
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
        # @param ExpireTime: 播放链接过期时间（时间戳，单位秒）
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
        # @param FwType: 模块类型or固件类型
        # @type FwType: String

        attr_accessor :ProductID, :FirmwareVersion, :FileSize, :FwType

        def initialize(productid=nil, firmwareversion=nil, filesize=nil, fwtype=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FileSize = filesize
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FileSize = params['FileSize']
          @FwType = params['FwType']
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
        # @param FwType: 固件类型
        # @type FwType: String
        # @param DeviceName: 需要过滤的设备名称
        # @type DeviceName: String
        # @param ProjectId: 项目ID。产品 ID 为 -1 时，该参数必填
        # @type ProjectId: String
        # @param Filters: 每次请求的Filters的上限为10，Filter.Values的上限为1。
        # @type Filters: Array

        attr_accessor :ProductId, :Offset, :Limit, :FirmwareVersion, :FwType, :DeviceName, :ProjectId, :Filters

        def initialize(productid=nil, offset=nil, limit=nil, firmwareversion=nil, fwtype=nil, devicename=nil, projectid=nil, filters=nil)
          @ProductId = productid
          @Offset = offset
          @Limit = limit
          @FirmwareVersion = firmwareversion
          @FwType = fwtype
          @DeviceName = devicename
          @ProjectId = projectid
          @Filters = filters
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FirmwareVersion = params['FirmwareVersion']
          @FwType = params['FwType']
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
        deprecate :MiniProgramAppId, :none, 2026, 7
        deprecate :MiniProgramAppId=, :none, 2026, 7

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

      # GetTWeTalkAIBotList请求参数结构体
      class GetTWeTalkAIBotListRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 智能体ID
        # @type BotId: String
        # @param Name: 智能体名称
        # @type Name: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param IncludeCredentials: 是否脱敏
        # @type IncludeCredentials: Boolean
        # @param Offset: 1
        # @type Offset: Integer
        # @param Limit: 10
        # @type Limit: Integer

        attr_accessor :BotId, :Name, :ProductId, :InstanceId, :IncludeCredentials, :Offset, :Limit

        def initialize(botid=nil, name=nil, productid=nil, instanceid=nil, includecredentials=nil, offset=nil, limit=nil)
          @BotId = botid
          @Name = name
          @ProductId = productid
          @InstanceId = instanceid
          @IncludeCredentials = includecredentials
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @BotId = params['BotId']
          @Name = params['Name']
          @ProductId = params['ProductId']
          @InstanceId = params['InstanceId']
          @IncludeCredentials = params['IncludeCredentials']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetTWeTalkAIBotList返回参数结构体
      class GetTWeTalkAIBotListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 无
        # @type Data: Array
        # @param TotalCount: 1
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
              talkaibotinfo_tmp = TalkAIBotInfo.new
              talkaibotinfo_tmp.deserialize(i)
              @Data << talkaibotinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # GetTWeTalkActiveRecordList请求参数结构体
      class GetTWeTalkActiveRecordListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 最早的时间。
        # @type StartTime: Integer
        # @param EndTime: 查询的最晚时间。
        # 跟StartTime形成时间段，用于查询时间段中的记录。
        # @type EndTime: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 分页的大小。
        # 默认为10，最大不超过500。
        # @type Limit: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: TWeTalk类型：1-基础版；2-高级版；3-多模态；
        # @type ServiceType: Array

        attr_accessor :StartTime, :EndTime, :Offset, :Limit, :ProductId, :DeviceName, :ServiceType

        def initialize(starttime=nil, endtime=nil, offset=nil, limit=nil, productid=nil, devicename=nil, servicetype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
        end
      end

      # GetTWeTalkActiveRecordList返回参数结构体
      class GetTWeTalkActiveRecordListResponse < TencentCloud::Common::AbstractModel
        # @param ActiveRecords: 设备激活记录列表。
        # @type ActiveRecords: Array
        # @param Total: 数据总数量。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActiveRecords, :Total, :RequestId

        def initialize(activerecords=nil, total=nil, requestid=nil)
          @ActiveRecords = activerecords
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ActiveRecords'].nil?
            @ActiveRecords = []
            params['ActiveRecords'].each do |i|
              talkactivaterecordloginfo_tmp = TalkActivateRecordLogInfo.new
              talkactivaterecordloginfo_tmp.deserialize(i)
              @ActiveRecords << talkactivaterecordloginfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetTWeTalkActiveStatus请求参数结构体
      class GetTWeTalkActiveStatusRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIds: 设备列表， 产品ID_设备名称
        # @type DeviceIds: Array

        attr_accessor :DeviceIds

        def initialize(deviceids=nil)
          @DeviceIds = deviceids
        end

        def deserialize(params)
          @DeviceIds = params['DeviceIds']
        end
      end

      # GetTWeTalkActiveStatus返回参数结构体
      class GetTWeTalkActiveStatusResponse < TencentCloud::Common::AbstractModel
        # @param TalkActivationRecords: 激活状态
        # @type TalkActivationRecords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TalkActivationRecords, :RequestId

        def initialize(talkactivationrecords=nil, requestid=nil)
          @TalkActivationRecords = talkactivationrecords
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TalkActivationRecords'].nil?
            @TalkActivationRecords = []
            params['TalkActivationRecords'].each do |i|
              talkactivationstatusinfo_tmp = TalkActivationStatusInfo.new
              talkactivationstatusinfo_tmp.deserialize(i)
              @TalkActivationRecords << talkactivationstatusinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTWeTalkProductConfigList请求参数结构体
      class GetTWeTalkProductConfigListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TargetLanguage: 	支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 偏移量，10-100
        # @type Limit: Integer

        attr_accessor :ProductId, :TargetLanguage, :Offset, :Limit

        def initialize(productid=nil, targetlanguage=nil, offset=nil, limit=nil)
          @ProductId = productid
          @TargetLanguage = targetlanguage
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TargetLanguage = params['TargetLanguage']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetTWeTalkProductConfigList返回参数结构体
      class GetTWeTalkProductConfigListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 配置信息列表
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              talkproductconfiginfo_tmp = TalkProductConfigInfo.new
              talkproductconfiginfo_tmp.deserialize(i)
              @Data << talkproductconfiginfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetTWeTalkProductConfigListV2请求参数结构体
      class GetTWeTalkProductConfigListV2Request < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param IncludeCredentials: 是否脱敏
        # @type IncludeCredentials: Boolean
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 每页数据大小， 10-100
        # @type Limit: Integer

        attr_accessor :ProductId, :DeviceName, :TargetLanguage, :IncludeCredentials, :Offset, :Limit

        def initialize(productid=nil, devicename=nil, targetlanguage=nil, includecredentials=nil, offset=nil, limit=nil)
          @ProductId = productid
          @DeviceName = devicename
          @TargetLanguage = targetlanguage
          @IncludeCredentials = includecredentials
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @TargetLanguage = params['TargetLanguage']
          @IncludeCredentials = params['IncludeCredentials']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetTWeTalkProductConfigListV2返回参数结构体
      class GetTWeTalkProductConfigListV2Response < TencentCloud::Common::AbstractModel
        # @param Data: 配置信息
        # @type Data: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Total, :RequestId

        def initialize(data=nil, total=nil, requestid=nil)
          @Data = data
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              talkproductconfigv2info_tmp = TalkProductConfigV2Info.new
              talkproductconfigv2info_tmp.deserialize(i)
              @Data << talkproductconfigv2info_tmp
            end
          end
          @Total = params['Total']
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

      # 空闲检测配置信息。
      class IdleResponseInfo < TencentCloud::Common::AbstractModel
        # @param RetryCount: 重试次数（1-3）
        # @type RetryCount: Integer
        # @param Message: 响应信息
        # @type Message: String

        attr_accessor :RetryCount, :Message

        def initialize(retrycount=nil, message=nil)
          @RetryCount = retrycount
          @Message = message
        end

        def deserialize(params)
          @RetryCount = params['RetryCount']
          @Message = params['Message']
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

      # InquireTWeSeeSubscriptionCreatePrice请求参数结构体
      class InquireTWeSeeSubscriptionCreatePriceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param ServiceTier: 套餐规格。可选值：

        # - `BASIC`：包年包月基础版（适用于视频理解）
        # @type ServiceTier: String
        # @param Period: 订阅购买时长，单位：月，支持 1-60
        # @type Period: Integer

        attr_accessor :ServiceType, :ServiceTier, :Period

        def initialize(servicetype=nil, servicetier=nil, period=nil)
          @ServiceType = servicetype
          @ServiceTier = servicetier
          @Period = period
        end

        def deserialize(params)
          @ServiceType = params['ServiceType']
          @ServiceTier = params['ServiceTier']
          @Period = params['Period']
        end
      end

      # InquireTWeSeeSubscriptionCreatePrice返回参数结构体
      class InquireTWeSeeSubscriptionCreatePriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价
        # @type OriginalPrice: String
        # @param DiscountPrice: 折后价
        # @type DiscountPrice: String
        # @param Currency: 币种
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :DiscountPrice, :Currency, :RequestId

        def initialize(originalprice=nil, discountprice=nil, currency=nil, requestid=nil)
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
        end
      end

      # InquireTWeSeeSubscriptionRenewPrice请求参数结构体
      class InquireTWeSeeSubscriptionRenewPriceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param Period: 续费时长，单位：月，支持 1-60
        # @type Period: Integer
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceType, :Period, :ChannelId

        def initialize(productid=nil, devicename=nil, servicetype=nil, period=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @Period = period
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @Period = params['Period']
          @ChannelId = params['ChannelId']
        end
      end

      # InquireTWeSeeSubscriptionRenewPrice返回参数结构体
      class InquireTWeSeeSubscriptionRenewPriceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原价
        # @type OriginalPrice: String
        # @param DiscountPrice: 折后价
        # @type DiscountPrice: String
        # @param Currency: 币种
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :DiscountPrice, :Currency, :RequestId

        def initialize(originalprice=nil, discountprice=nil, currency=nil, requestid=nil)
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Currency = params['Currency']
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

      # InvokeAISearchService请求参数结构体
      class InvokeAISearchServiceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名称</p>
        # @type DeviceName: String
        # @param Query: <p>自然语言查询</p>
        # @type Query: String
        # @param SummaryLang: <p>搜索结果总结的语言类型，支持的类型有：en-US、zh-CN、id-ID、th-TH</p>
        # @type SummaryLang: String
        # @param ChannelId: <p>通道ID</p>
        # @type ChannelId: Integer
        # @param EnableSummary: <p>是否需要返回总结，默认为True；  开启后会加大接口响应时长</p>
        # @type EnableSummary: Boolean
        # @param StartTimeMs: <p>开始时间。</p><p>注：</p><ol><li>单位为毫秒（ms）</li><li>如果同时指定了StartTimeMs与EndTimeMs，时间区间不能大于7天；如果只指定其中一个（例如只指定StartTimeMs，则查询自StartTimeMs后1天内的数据， 反之EndTimeMs也一样）</li><li>只要指定了其中一个参数，接口则会忽略Query参数中关于时间的描述；（例如Query为&quot;过去三天关于猫咪的视频&quot;， 则会将&quot;过去三天忽略&quot;）</li></ol>
        # @type StartTimeMs: Integer
        # @param EndTimeMs: <p>结束时间。</p><p>注：</p><ol><li>单位为毫秒（ms）</li><li>如果同时指定了StartTimeMs与EndTimeMs，时间区间不能大于7天；如果只指定其中一个（例如只指定StartTimeMs，则查询自StartTimeMs后1天内的数据， 反之EndTimeMs也一样）</li><li>只要指定了其中一个参数，接口则会忽略Query参数中关于时间的描述；（例如Query为&quot;过去三天关于猫咪的视频&quot;， 则会将&quot;过去三天忽略&quot;）</li></ol>
        # @type EndTimeMs: Integer
        # @param TimeZone: <p>时区。默认值：Asia/Shanghai</p><p>注：<br>符合iana标准 https://www.iana.org/time-zones，例如Asia/Shanghai、Asia/Bangkok</p>
        # @type TimeZone: String
        # @param SearchMode: <p>取值为1表示高级搜索，取值为2表示简单搜索，默认为1</p>
        # @type SearchMode: Integer
        # @param Limit: <p>最终输出的条数；仅当SearchMode为2时支持自定义设置，默认为50</p>
        # @type Limit: Integer
        # @param VectorSearchRadius: <p>向量搜索的相似度搜索半径，取值范围[-1, 1]；仅当SearchMode为2时支持自定义设置，默认为0.5</p>
        # @type VectorSearchRadius: Float
        # @param VectorSearchTopK: <p>指定向量搜索最相似的 Top K；仅当SearchMode为2时支持自定义设置，默认为100</p>
        # @type VectorSearchTopK: Integer
        # @param Order: <p>搜索结果的排序方式，可选值：</p><ul><li><code>CORRELATION</code>：按相关性（默认）</li><li><code>TIME_ASC</code>：按时间升序</li><li><code>TIME_DESC</code>：按时间降序</li></ul>
        # @type Order: String
        # @param WithTaskInfo: <p>是否输出原始任务信息</p>
        # @type WithTaskInfo: Boolean

        attr_accessor :ProductId, :DeviceName, :Query, :SummaryLang, :ChannelId, :EnableSummary, :StartTimeMs, :EndTimeMs, :TimeZone, :SearchMode, :Limit, :VectorSearchRadius, :VectorSearchTopK, :Order, :WithTaskInfo

        def initialize(productid=nil, devicename=nil, query=nil, summarylang=nil, channelid=nil, enablesummary=nil, starttimems=nil, endtimems=nil, timezone=nil, searchmode=nil, limit=nil, vectorsearchradius=nil, vectorsearchtopk=nil, order=nil, withtaskinfo=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Query = query
          @SummaryLang = summarylang
          @ChannelId = channelid
          @EnableSummary = enablesummary
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @TimeZone = timezone
          @SearchMode = searchmode
          @Limit = limit
          @VectorSearchRadius = vectorsearchradius
          @VectorSearchTopK = vectorsearchtopk
          @Order = order
          @WithTaskInfo = withtaskinfo
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Query = params['Query']
          @SummaryLang = params['SummaryLang']
          @ChannelId = params['ChannelId']
          @EnableSummary = params['EnableSummary']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @TimeZone = params['TimeZone']
          @SearchMode = params['SearchMode']
          @Limit = params['Limit']
          @VectorSearchRadius = params['VectorSearchRadius']
          @VectorSearchTopK = params['VectorSearchTopK']
          @Order = params['Order']
          @WithTaskInfo = params['WithTaskInfo']
        end
      end

      # InvokeAISearchService返回参数结构体
      class InvokeAISearchServiceResponse < TencentCloud::Common::AbstractModel
        # @param Summary: <p>基于搜索结果的总结</p>
        # @type Summary: String
        # @param Targets: <p>视频结果集</p>
        # @type Targets: Array
        # @param VideoURL: <p>视频回放URL</p>
        # @type VideoURL: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Summary, :Targets, :VideoURL, :RequestId

        def initialize(summary=nil, targets=nil, videourl=nil, requestid=nil)
          @Summary = summary
          @Targets = targets
          @VideoURL = videourl
          @RequestId = requestid
        end

        def deserialize(params)
          @Summary = params['Summary']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targetinfo_tmp = TargetInfo.new
              targetinfo_tmp.deserialize(i)
              @Targets << targetinfo_tmp
            end
          end
          @VideoURL = params['VideoURL']
          @RequestId = params['RequestId']
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

      # InvokeTWeSeeComprehension请求参数结构体
      class InvokeTWeSeeComprehensionRequest < TencentCloud::Common::AbstractModel
        # @param InputURL: 输入视频 / 图片的 URL
        # @type InputURL: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # - `IMG_COMP`：图片理解
        # @type ServiceType: String
        # @param Metadata: 任务元数据
        # @type Metadata: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeTaskMetadata`
        # @param ComprehensionConfig: 视觉理解配置项
        # @type ComprehensionConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeComprehensionConfig`
        # @param WaitResultTimeout: 等待结果的超时时间（单位：秒）。填 0 表示无需等待结果。最大超时时长 25 秒，默认超时时长 20 秒。
        # @type WaitResultTimeout: Integer
        # @param CallbackId: 回调目标 ID
        # @type CallbackId: String

        attr_accessor :InputURL, :ServiceType, :Metadata, :ComprehensionConfig, :WaitResultTimeout, :CallbackId

        def initialize(inputurl=nil, servicetype=nil, metadata=nil, comprehensionconfig=nil, waitresulttimeout=nil, callbackid=nil)
          @InputURL = inputurl
          @ServiceType = servicetype
          @Metadata = metadata
          @ComprehensionConfig = comprehensionconfig
          @WaitResultTimeout = waitresulttimeout
          @CallbackId = callbackid
        end

        def deserialize(params)
          @InputURL = params['InputURL']
          @ServiceType = params['ServiceType']
          unless params['Metadata'].nil?
            @Metadata = SeeTaskMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          unless params['ComprehensionConfig'].nil?
            @ComprehensionConfig = SeeComprehensionConfig.new
            @ComprehensionConfig.deserialize(params['ComprehensionConfig'])
          end
          @WaitResultTimeout = params['WaitResultTimeout']
          @CallbackId = params['CallbackId']
        end
      end

      # InvokeTWeSeeComprehension返回参数结构体
      class InvokeTWeSeeComprehensionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param Status: 任务状态。可能取值：

        # - `1`：失败
        # - `2`：空结果
        # - `3`：有效结果
        # - `4`：处理中
        # @type Status: Integer
        # @param ComprehensionResult: 视觉理解结果
        # @type ComprehensionResult: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeComprehensionResult`
        # @param CostBasic: 完成该任务所消耗的基础能力额度
        # @type CostBasic: Integer
        # @param CostAdvanced: 完成该任务所消耗的高级能力额度
        # @type CostAdvanced: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :ComprehensionResult, :CostBasic, :CostAdvanced, :RequestId

        def initialize(taskid=nil, status=nil, comprehensionresult=nil, costbasic=nil, costadvanced=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @ComprehensionResult = comprehensionresult
          @CostBasic = costbasic
          @CostAdvanced = costadvanced
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['ComprehensionResult'].nil?
            @ComprehensionResult = SeeComprehensionResult.new
            @ComprehensionResult.deserialize(params['ComprehensionResult'])
          end
          @CostBasic = params['CostBasic']
          @CostAdvanced = params['CostAdvanced']
          @RequestId = params['RequestId']
        end
      end

      # InvokeTWeSeeRecognitionTask请求参数结构体
      class InvokeTWeSeeRecognitionTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param InputURL: 输入视频 / 图片的 URL
        # @type InputURL: String
        # @param CustomId: 自定义事件 ID
        # @type CustomId: String
        # @param EnableSearch: 是否保存该事件使其可被搜索
        # @type EnableSearch: Boolean
        # @param StartTimeMs: 事件起始时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 事件结束时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type EndTimeMs: Integer
        # @param Config: 算法配置
        # @type Config: String
        # @param IsCustomDevice: 是否自定义设备，为 true 时不检查设备存在性，默认为 false
        # @type IsCustomDevice: Boolean
        # @param InputType: 输入类型。可选值：

        # - `video`：视频（默认值）
        # - `image`：图片
        # @type InputType: String
        # @param SummaryQOS: 摘要服务质量。可选值：

        # - `minutely`：分钟级（默认值）
        # - `immediate`：立即
        # @type SummaryQOS: String
        # @param SummaryConfig: 摘要输出配置
        # @type SummaryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionSummaryConfig`
        # @param ServiceType: 算法类型，可能取值：
        # - `Summary`：视频/图片摘要
        # - `ObjectDetect`：目标检测
        # @type ServiceType: String
        # @param ObjectDetectConfig: 目标检测配置
        # @type ObjectDetectConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionObjectDetectConfig`

        attr_accessor :ProductId, :DeviceName, :InputURL, :CustomId, :EnableSearch, :StartTimeMs, :EndTimeMs, :Config, :IsCustomDevice, :InputType, :SummaryQOS, :SummaryConfig, :ServiceType, :ObjectDetectConfig

        def initialize(productid=nil, devicename=nil, inputurl=nil, customid=nil, enablesearch=nil, starttimems=nil, endtimems=nil, config=nil, iscustomdevice=nil, inputtype=nil, summaryqos=nil, summaryconfig=nil, servicetype=nil, objectdetectconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @InputURL = inputurl
          @CustomId = customid
          @EnableSearch = enablesearch
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @Config = config
          @IsCustomDevice = iscustomdevice
          @InputType = inputtype
          @SummaryQOS = summaryqos
          @SummaryConfig = summaryconfig
          @ServiceType = servicetype
          @ObjectDetectConfig = objectdetectconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @InputURL = params['InputURL']
          @CustomId = params['CustomId']
          @EnableSearch = params['EnableSearch']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @Config = params['Config']
          @IsCustomDevice = params['IsCustomDevice']
          @InputType = params['InputType']
          @SummaryQOS = params['SummaryQOS']
          unless params['SummaryConfig'].nil?
            @SummaryConfig = VisionSummaryConfig.new
            @SummaryConfig.deserialize(params['SummaryConfig'])
          end
          @ServiceType = params['ServiceType']
          unless params['ObjectDetectConfig'].nil?
            @ObjectDetectConfig = VisionObjectDetectConfig.new
            @ObjectDetectConfig.deserialize(params['ObjectDetectConfig'])
          end
        end
      end

      # InvokeTWeSeeRecognitionTask返回参数结构体
      class InvokeTWeSeeRecognitionTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param Completed: 任务是否执行完成
        # @type Completed: Boolean
        # @param Result: 语义理解任务结果（仅当 Completed 为 true 时包含该出参）
        # @type Result: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionRecognitionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Completed, :Result, :RequestId

        def initialize(taskid=nil, completed=nil, result=nil, requestid=nil)
          @TaskId = taskid
          @Completed = completed
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Completed = params['Completed']
          unless params['Result'].nil?
            @Result = VisionRecognitionResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InvokeTWeSeeRecognitionTaskWithFile请求参数结构体
      class InvokeTWeSeeRecognitionTaskWithFileRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param InputBase64: 视频 / 图片文件的 Base64 编码字符串
        # @type InputBase64: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param CustomId: 自定义事件 ID
        # @type CustomId: String
        # @param EnableSearch: 是否保存该事件使其可被搜索
        # @type EnableSearch: Boolean
        # @param StartTimeMs: 事件起始时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 事件结束时间事件起始时间（毫秒级 UNIX 时间戳，若不传则默认为接口调用时间）
        # @type EndTimeMs: Integer
        # @param Config: 算法配置
        # @type Config: String
        # @param IsCustomDevice: 是否自定义设备，为 true 时不检查设备存在性，默认为 false
        # @type IsCustomDevice: Boolean
        # @param InputType: 输入类型。可选值：

        # - `video`：视频（默认值）
        # - `image`：图片
        # @type InputType: String
        # @param SummaryQOS: 摘要服务质量。可选值：

        # - `minutely`：分钟级（默认值）
        # - `immediate`：立即
        # @type SummaryQOS: String
        # @param SummaryConfig: 摘要输出配置
        # @type SummaryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionSummaryConfig`
        # @param ServiceType: 算法类型，可能取值：
        # - `Summary`：视频/图片摘要
        # - `ObjectDetect`：目标检测
        # @type ServiceType: String
        # @param ObjectDetectConfig: 目标检测配置
        # @type ObjectDetectConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionObjectDetectConfig`

        attr_accessor :ProductId, :DeviceName, :InputBase64, :ChannelId, :CustomId, :EnableSearch, :StartTimeMs, :EndTimeMs, :Config, :IsCustomDevice, :InputType, :SummaryQOS, :SummaryConfig, :ServiceType, :ObjectDetectConfig

        def initialize(productid=nil, devicename=nil, inputbase64=nil, channelid=nil, customid=nil, enablesearch=nil, starttimems=nil, endtimems=nil, config=nil, iscustomdevice=nil, inputtype=nil, summaryqos=nil, summaryconfig=nil, servicetype=nil, objectdetectconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @InputBase64 = inputbase64
          @ChannelId = channelid
          @CustomId = customid
          @EnableSearch = enablesearch
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @Config = config
          @IsCustomDevice = iscustomdevice
          @InputType = inputtype
          @SummaryQOS = summaryqos
          @SummaryConfig = summaryconfig
          @ServiceType = servicetype
          @ObjectDetectConfig = objectdetectconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @InputBase64 = params['InputBase64']
          @ChannelId = params['ChannelId']
          @CustomId = params['CustomId']
          @EnableSearch = params['EnableSearch']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @Config = params['Config']
          @IsCustomDevice = params['IsCustomDevice']
          @InputType = params['InputType']
          @SummaryQOS = params['SummaryQOS']
          unless params['SummaryConfig'].nil?
            @SummaryConfig = VisionSummaryConfig.new
            @SummaryConfig.deserialize(params['SummaryConfig'])
          end
          @ServiceType = params['ServiceType']
          unless params['ObjectDetectConfig'].nil?
            @ObjectDetectConfig = VisionObjectDetectConfig.new
            @ObjectDetectConfig.deserialize(params['ObjectDetectConfig'])
          end
        end
      end

      # InvokeTWeSeeRecognitionTaskWithFile返回参数结构体
      class InvokeTWeSeeRecognitionTaskWithFileResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param Completed: 任务是否执行完成
        # @type Completed: Boolean
        # @param Result: 语义理解任务结果（仅当 Completed 为 true 时包含该出参）
        # @type Result: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionRecognitionResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Completed, :Result, :RequestId

        def initialize(taskid=nil, completed=nil, result=nil, requestid=nil)
          @TaskId = taskid
          @Completed = completed
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Completed = params['Completed']
          unless params['Result'].nil?
            @Result = VisionRecognitionResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InvokeVideosKeywordsAnalyzer请求参数结构体
      class InvokeVideosKeywordsAnalyzerRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param StartTimeMs: 开始时间。

        # 注：
        # 1. 单位为毫秒（ms）
        # 2. 时间区间必须控制在某一个自然天内，不支持跨天
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 结束时间。

        # 注：
        # 1. 单位为毫秒（ms）
        # 2. 时间区间必须控制在某一个自然天内，不支持跨天
        # @type EndTimeMs: Integer
        # @param KeywordsMaxNum: 返回的关键词的最大数量，默认为5；最大不能超过10
        # @type KeywordsMaxNum: Integer
        # @param KeywordsLang: 返回的关键词的语言类型，支持的类型有：en-US、zh-CN
        # @type KeywordsLang: String

        attr_accessor :ProductId, :DeviceName, :StartTimeMs, :EndTimeMs, :KeywordsMaxNum, :KeywordsLang

        def initialize(productid=nil, devicename=nil, starttimems=nil, endtimems=nil, keywordsmaxnum=nil, keywordslang=nil)
          @ProductId = productid
          @DeviceName = devicename
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @KeywordsMaxNum = keywordsmaxnum
          @KeywordsLang = keywordslang
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @KeywordsMaxNum = params['KeywordsMaxNum']
          @KeywordsLang = params['KeywordsLang']
        end
      end

      # InvokeVideosKeywordsAnalyzer返回参数结构体
      class InvokeVideosKeywordsAnalyzerResponse < TencentCloud::Common::AbstractModel
        # @param Keywords: 根据视频内容生成的关键词
        # @type Keywords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keywords, :RequestId

        def initialize(keywords=nil, requestid=nil)
          @Keywords = keywords
          @RequestId = requestid
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @RequestId = params['RequestId']
        end
      end

      # 批量同步执行 TWeSee 语义理解任务的响应
      class InvokeVisionRecognitionTaskOutput < TencentCloud::Common::AbstractModel
        # @param Completed: 任务是否已完成
        # @type Completed: Boolean
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param ErrorMessage: 错误消息
        # @type ErrorMessage: String
        # @param Result: 任务结果
        # @type Result: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionRecognitionResult`

        attr_accessor :Completed, :TaskId, :ErrorCode, :ErrorMessage, :Result

        def initialize(completed=nil, taskid=nil, errorcode=nil, errormessage=nil, result=nil)
          @Completed = completed
          @TaskId = taskid
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @Result = result
        end

        def deserialize(params)
          @Completed = params['Completed']
          @TaskId = params['TaskId']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          unless params['Result'].nil?
            @Result = VisionRecognitionResult.new
            @Result.deserialize(params['Result'])
          end
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

      # ListOtaModules请求参数结构体
      class ListOtaModulesRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 获取的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :PageNum, :PageSize, :Filters

        def initialize(pagenum=nil, pagesize=nil, filters=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @Filters = filters
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
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

      # ListOtaModules返回参数结构体
      class ListOtaModulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 固件总数
        # @type TotalCount: Integer
        # @param Modules: 固件列表
        # @type Modules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Modules, :RequestId

        def initialize(totalcount=nil, modules=nil, requestid=nil)
          @TotalCount = totalcount
          @Modules = modules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Modules'].nil?
            @Modules = []
            params['Modules'].each do |i|
              otamoduleinfo_tmp = OtaModuleInfo.new
              otamoduleinfo_tmp.deserialize(i)
              @Modules << otamoduleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListProductOtaModules请求参数结构体
      class ListProductOtaModulesRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String

        attr_accessor :ProductID

        def initialize(productid=nil)
          @ProductID = productid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
        end
      end

      # ListProductOtaModules返回参数结构体
      class ListProductOtaModulesResponse < TencentCloud::Common::AbstractModel
        # @param Modules: 固件列表
        # @type Modules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Modules, :RequestId

        def initialize(modules=nil, requestid=nil)
          @Modules = modules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Modules'].nil?
            @Modules = []
            params['Modules'].each do |i|
              otamoduleinfo_tmp = OtaModuleInfo.new
              otamoduleinfo_tmp.deserialize(i)
              @Modules << otamoduleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTWeSeeCallback请求参数结构体
      class ListTWeSeeCallbackRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小，范围 1-100
        # @type Limit: Integer
        # @param Offset: 分页偏移量，范围 0-10000
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

      # ListTWeSeeCallback返回参数结构体
      class ListTWeSeeCallbackResponse < TencentCloud::Common::AbstractModel
        # @param List: 回调目标列表
        # @type List: Array
        # @param Total: 已创建的回调目标总数
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
              seecallbackinfo_tmp = SeeCallbackInfo.new
              seecallbackinfo_tmp.deserialize(i)
              @List << seecallbackinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # ListTWeSeeTasks请求参数结构体
      class ListTWeSeeTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceCategory: 算法类目。可选值：
        # - `COMPREHENSION`：视觉理解
        # - `HIGHLIGHT`：视频浓缩
        # @type ServiceCategory: String
        # @param Limit: 分页拉取数量
        # @type Limit: Integer
        # @param Offset: 分页拉取偏移
        # @type Offset: Integer
        # @param ServiceTypes: 算法类型。

        # 当 ServiceCategory 为 `COMPREHENSION` 时，可选值包括：
        # - `VID_COMP`：视频理解
        # - `IMG_COMP`：图片理解
        # - `CONT_PERSON_MOTIONLESS`：静姿检测

        # 当 ServiceCategory 为 `HIGHLIGHT` 时，可选值包括：
        # - `COMP_HIGHLIGHT`：视频浓缩
        # @type ServiceTypes: Array
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param StartTimeMs: 查询任务时间范围的起始时间（毫秒级 UNIX 时间戳）。不传则不生效时间范围条件。
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 查询任务时间范围的结束时间（毫秒级 UNIX 时间戳）。不传则不生效时间范围条件。
        # @type EndTimeMs: Integer
        # @param Status: 要查询的任务的状态条件。不传则不按照状态过滤，可选值：

        # - `1`：失败
        # - `2`：空结果
        # - `3`：有效结果
        # @type Status: Integer
        # @param FileURLExpireTime: 下载 URL 的过期时间（秒级 UNIX 时间戳）。若传入该参数，则响应中将包含所有文件的下载 URL
        # @type FileURLExpireTime: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceCategory, :Limit, :Offset, :ServiceTypes, :ChannelId, :StartTimeMs, :EndTimeMs, :Status, :FileURLExpireTime

        def initialize(productid=nil, devicename=nil, servicecategory=nil, limit=nil, offset=nil, servicetypes=nil, channelid=nil, starttimems=nil, endtimems=nil, status=nil, fileurlexpiretime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceCategory = servicecategory
          @Limit = limit
          @Offset = offset
          @ServiceTypes = servicetypes
          @ChannelId = channelid
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @Status = status
          @FileURLExpireTime = fileurlexpiretime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceCategory = params['ServiceCategory']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ServiceTypes = params['ServiceTypes']
          @ChannelId = params['ChannelId']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @Status = params['Status']
          @FileURLExpireTime = params['FileURLExpireTime']
        end
      end

      # ListTWeSeeTasks返回参数结构体
      class ListTWeSeeTasksResponse < TencentCloud::Common::AbstractModel
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
              seetaskinfo_tmp = SeeTaskInfo.new
              seetaskinfo_tmp.deserialize(i)
              @Tasks << seetaskinfo_tmp
            end
          end
          @Total = params['Total']
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
        # - `SimpleHighlight`：TrueX SimpleHighlight
        # @type ServiceType: String
        # @param Enabled: 视频分析启用状态
        # @type Enabled: Boolean
        # @param ROI: 视频分析识别区域
        # @type ROI: String
        # @param Config: 视频分析配置参数
        # @type Config: String
        # @param SHLConfig: SimpleHighlight 算法配置参数
        # @type SHLConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.DiarySHLConfig`

        attr_accessor :ProductId, :DeviceName, :ServiceType, :Enabled, :ROI, :Config, :SHLConfig

        def initialize(productid=nil, devicename=nil, servicetype=nil, enabled=nil, roi=nil, config=nil, shlconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @Enabled = enabled
          @ROI = roi
          @Config = config
          @SHLConfig = shlconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @Enabled = params['Enabled']
          @ROI = params['ROI']
          @Config = params['Config']
          unless params['SHLConfig'].nil?
            @SHLConfig = DiarySHLConfig.new
            @SHLConfig.deserialize(params['SHLConfig'])
          end
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

      # ModifyProductDynamicRegister请求参数结构体
      class ModifyProductDynamicRegisterRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param RegisterType: 动态注册类型，0-关闭 1-预创建设备 2-自动创建设备
        # @type RegisterType: Integer
        # @param RegisterLimit: 动态注册设备上限
        # @type RegisterLimit: Integer

        attr_accessor :ProductId, :RegisterType, :RegisterLimit

        def initialize(productid=nil, registertype=nil, registerlimit=nil)
          @ProductId = productid
          @RegisterType = registertype
          @RegisterLimit = registerlimit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @RegisterType = params['RegisterType']
          @RegisterLimit = params['RegisterLimit']
        end
      end

      # ModifyProductDynamicRegister返回参数结构体
      class ModifyProductDynamicRegisterResponse < TencentCloud::Common::AbstractModel
        # @param RegisterType: 动态注册类型，0-关闭 1-预创建设备 2-自动创建设备
        # @type RegisterType: Integer
        # @param ProductSecret: 动态注册产品密钥
        # @type ProductSecret: String
        # @param RegisterLimit: 动态注册设备上限
        # @type RegisterLimit: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegisterType, :ProductSecret, :RegisterLimit, :RequestId

        def initialize(registertype=nil, productsecret=nil, registerlimit=nil, requestid=nil)
          @RegisterType = registertype
          @ProductSecret = productsecret
          @RegisterLimit = registerlimit
          @RequestId = requestid
        end

        def deserialize(params)
          @RegisterType = params['RegisterType']
          @ProductSecret = params['ProductSecret']
          @RegisterLimit = params['RegisterLimit']
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

      # ModifyTWeSeeCallback请求参数结构体
      class ModifyTWeSeeCallbackRequest < TencentCloud::Common::AbstractModel
        # @param CallbackId: 回调目标 ID，格式为 `callback-` + 8 位小写字母数字
        # @type CallbackId: String
        # @param CallbackUrl: 回调 URL，需要可访问并通过 Echo 校验
        # @type CallbackUrl: String
        # @param Type: 回调类型。当前仅支持：`http`
        # @type Type: String
        # @param CallbackToken: 回调签名 token，最大长度 128
        # @type CallbackToken: String

        attr_accessor :CallbackId, :CallbackUrl, :Type, :CallbackToken

        def initialize(callbackid=nil, callbackurl=nil, type=nil, callbacktoken=nil)
          @CallbackId = callbackid
          @CallbackUrl = callbackurl
          @Type = type
          @CallbackToken = callbacktoken
        end

        def deserialize(params)
          @CallbackId = params['CallbackId']
          @CallbackUrl = params['CallbackUrl']
          @Type = params['Type']
          @CallbackToken = params['CallbackToken']
        end
      end

      # ModifyTWeSeeCallback返回参数结构体
      class ModifyTWeSeeCallbackResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTWeSeeConfig请求参数结构体
      class ModifyTWeSeeConfigRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ChannelId: 通道ID
        # @type ChannelId: Integer
        # @param EnableSummary: 是否开启视频摘要，不传则不修改
        # @type EnableSummary: Boolean
        # @param EnableSearch: 是否开启视频搜索，不传则不修改
        # @type EnableSearch: Boolean
        # @param Config: 配置参数，不传则不修改
        # @type Config: String
        # @param SummaryConfig: 视频摘要配置参数，不传则不修改
        # @type SummaryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionSummaryConfig`
        # @param EventIdFilterConfig: 云存事件 ID 过滤规则配置，不传则不修改
        # @type EventIdFilterConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeEventIdFilterConfig`

        attr_accessor :ProductId, :DeviceName, :UserId, :ChannelId, :EnableSummary, :EnableSearch, :Config, :SummaryConfig, :EventIdFilterConfig

        def initialize(productid=nil, devicename=nil, userid=nil, channelid=nil, enablesummary=nil, enablesearch=nil, config=nil, summaryconfig=nil, eventidfilterconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
          @ChannelId = channelid
          @EnableSummary = enablesummary
          @EnableSearch = enablesearch
          @Config = config
          @SummaryConfig = summaryconfig
          @EventIdFilterConfig = eventidfilterconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
          @ChannelId = params['ChannelId']
          @EnableSummary = params['EnableSummary']
          @EnableSearch = params['EnableSearch']
          @Config = params['Config']
          unless params['SummaryConfig'].nil?
            @SummaryConfig = VisionSummaryConfig.new
            @SummaryConfig.deserialize(params['SummaryConfig'])
          end
          unless params['EventIdFilterConfig'].nil?
            @EventIdFilterConfig = SeeEventIdFilterConfig.new
            @EventIdFilterConfig.deserialize(params['EventIdFilterConfig'])
          end
        end
      end

      # ModifyTWeSeeConfig返回参数结构体
      class ModifyTWeSeeConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTWeSeeSubscriptionRenewFlag请求参数结构体
      class ModifyTWeSeeSubscriptionRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param RenewFlag: 续费标识。可选值：
        # - `NOTIFY_AND_MANUAL_RENEW`：到期前通知并手动续费
        # - `NOTIFY_AND_AUTO_RENEW`：到期前通知并自动续费
        # - `DISABLE_NOTIFY_AND_MANUAL_RENEW`：不通知且手动续费
        # @type RenewFlag: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceType, :RenewFlag, :ChannelId

        def initialize(productid=nil, devicename=nil, servicetype=nil, renewflag=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @RenewFlag = renewflag
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @RenewFlag = params['RenewFlag']
          @ChannelId = params['ChannelId']
        end
      end

      # ModifyTWeSeeSubscriptionRenewFlag返回参数结构体
      class ModifyTWeSeeSubscriptionRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTWeSeeSubscription请求参数结构体
      class ModifyTWeSeeSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param Enabled: 功能开关。`true` 为开启，`false` 为关闭；不传表示不修改
        # @type Enabled: Boolean
        # @param ComprehensionConfig: 视觉理解配置（适用于视频理解、图片理解），不传则不修改
        # @type ComprehensionConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeComprehensionConfig`
        # @param CompHighlightConfig: 视频语义浓缩配置（适用于视频语义浓缩），不传则不修改
        # @type CompHighlightConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeCompHighlightConfig`
        # @param EventIdFilterConfig: 云存事件 ID 过滤规则配置，不传则不修改
        # @type EventIdFilterConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeEventIdFilterConfig`

        attr_accessor :ProductId, :DeviceName, :ServiceType, :ChannelId, :Enabled, :ComprehensionConfig, :CompHighlightConfig, :EventIdFilterConfig

        def initialize(productid=nil, devicename=nil, servicetype=nil, channelid=nil, enabled=nil, comprehensionconfig=nil, comphighlightconfig=nil, eventidfilterconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @ChannelId = channelid
          @Enabled = enabled
          @ComprehensionConfig = comprehensionconfig
          @CompHighlightConfig = comphighlightconfig
          @EventIdFilterConfig = eventidfilterconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @ChannelId = params['ChannelId']
          @Enabled = params['Enabled']
          unless params['ComprehensionConfig'].nil?
            @ComprehensionConfig = SeeComprehensionConfig.new
            @ComprehensionConfig.deserialize(params['ComprehensionConfig'])
          end
          unless params['CompHighlightConfig'].nil?
            @CompHighlightConfig = SeeCompHighlightConfig.new
            @CompHighlightConfig.deserialize(params['CompHighlightConfig'])
          end
          unless params['EventIdFilterConfig'].nil?
            @EventIdFilterConfig = SeeEventIdFilterConfig.new
            @EventIdFilterConfig.deserialize(params['EventIdFilterConfig'])
          end
        end
      end

      # ModifyTWeSeeSubscription返回参数结构体
      class ModifyTWeSeeSubscriptionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTWeTalkAIBot请求参数结构体
      class ModifyTWeTalkAIBotRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 智能体ID
        # @type BotId: String
        # @param Name: 产品ID
        # @type Name: String
        # @param Description: 名称
        # @type Description: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param STTConfig: 自定义语音识别配置
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfigInfo`
        # @param LLMConfig: 自定义大模型配置
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfigInfo`
        # @param TTSConfig: 语音合成配置
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfigInfo`
        # @param AgentConfig: 智能体配置
        # @type AgentConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkAgentConfigInfo`
        # @param CustomTools: 自定义工具配置，最多可创建10个
        # @type CustomTools: String
        # @param WebhookTools: WebHook工具配置(JSON字符串格式)
        # @type WebhookTools: String
        # @param BotType: 智能体模板类型
        # @type BotType: String
        # @param RAGConfig: 知识库相关配置(JSON字符串格式)
        # @type RAGConfig: String

        attr_accessor :BotId, :Name, :Description, :TargetLanguage, :STTConfig, :LLMConfig, :TTSConfig, :AgentConfig, :CustomTools, :WebhookTools, :BotType, :RAGConfig

        def initialize(botid=nil, name=nil, description=nil, targetlanguage=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, agentconfig=nil, customtools=nil, webhooktools=nil, bottype=nil, ragconfig=nil)
          @BotId = botid
          @Name = name
          @Description = description
          @TargetLanguage = targetlanguage
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @AgentConfig = agentconfig
          @CustomTools = customtools
          @WebhookTools = webhooktools
          @BotType = bottype
          @RAGConfig = ragconfig
        end

        def deserialize(params)
          @BotId = params['BotId']
          @Name = params['Name']
          @Description = params['Description']
          @TargetLanguage = params['TargetLanguage']
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfigInfo.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfigInfo.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfigInfo.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['AgentConfig'].nil?
            @AgentConfig = TalkAgentConfigInfo.new
            @AgentConfig.deserialize(params['AgentConfig'])
          end
          @CustomTools = params['CustomTools']
          @WebhookTools = params['WebhookTools']
          @BotType = params['BotType']
          @RAGConfig = params['RAGConfig']
        end
      end

      # ModifyTWeTalkAIBot返回参数结构体
      class ModifyTWeTalkAIBotResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTWeTalkAgent请求参数结构体
      class ModifyTWeTalkAgentRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: <p>智能体ID</p>
        # @type AgentId: String
        # @param Name: <p>智能体名称</p>
        # @type Name: String
        # @param Description: <p>智能体描述</p>
        # @type Description: String
        # @param STTConfig: <p>语音识别配置</p>
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfig`
        # @param LLMConfig: <p>大模型配置</p>
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfig`
        # @param TTSConfig: <p>语音合成配置</p>
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfig`
        # @param ConversationConfig: <p>对话行为配置</p>
        # @type ConversationConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkConversationConfig`
        # @param MemoryConfig: <p>长期记忆配置</p>
        # @type MemoryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkMemoryConfig`
        # @param IOTTools: <p>IoT工具配置列表</p>
        # @type IOTTools: Array
        # @param WebhookTools: <p>Webhook工具配置列表</p>
        # @type WebhookTools: Array
        # @param Metadata: <p>元信息扩展JSON对象字符串</p>
        # @type Metadata: String

        attr_accessor :AgentId, :Name, :Description, :STTConfig, :LLMConfig, :TTSConfig, :ConversationConfig, :MemoryConfig, :IOTTools, :WebhookTools, :Metadata

        def initialize(agentid=nil, name=nil, description=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, conversationconfig=nil, memoryconfig=nil, iottools=nil, webhooktools=nil, metadata=nil)
          @AgentId = agentid
          @Name = name
          @Description = description
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @ConversationConfig = conversationconfig
          @MemoryConfig = memoryconfig
          @IOTTools = iottools
          @WebhookTools = webhooktools
          @Metadata = metadata
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfig.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfig.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfig.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['ConversationConfig'].nil?
            @ConversationConfig = TalkConversationConfig.new
            @ConversationConfig.deserialize(params['ConversationConfig'])
          end
          unless params['MemoryConfig'].nil?
            @MemoryConfig = TalkMemoryConfig.new
            @MemoryConfig.deserialize(params['MemoryConfig'])
          end
          unless params['IOTTools'].nil?
            @IOTTools = []
            params['IOTTools'].each do |i|
              talkiottool_tmp = TalkIOTTool.new
              talkiottool_tmp.deserialize(i)
              @IOTTools << talkiottool_tmp
            end
          end
          unless params['WebhookTools'].nil?
            @WebhookTools = []
            params['WebhookTools'].each do |i|
              talkwebhooktool_tmp = TalkWebhookTool.new
              talkwebhooktool_tmp.deserialize(i)
              @WebhookTools << talkwebhooktool_tmp
            end
          end
          @Metadata = params['Metadata']
        end
      end

      # ModifyTWeTalkAgent返回参数结构体
      class ModifyTWeTalkAgentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTWeTalkProductConfig请求参数结构体
      class ModifyTWeTalkProductConfigRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param SystemPrompt: 系统提示词
        # @type SystemPrompt: String
        # @param GreetingMessage: 欢迎语
        # @type GreetingMessage: String
        # @param VoiceType: 音色，支持的音色列表：100510000-阅读男声智逍遥；101001-情感女声智瑜；101002-通用女声智聆；101003-客服女声智美；101004-通用男声智云；101005-通用女声智莉；101006-助手女声智言；101008-客服女声智琪；101009-知性女声智芸；101010-通用男声智华；101011-新闻女声智燕；101012-新闻女声智丹；101013-新闻男声智辉；101014 -新闻男声智宁；101015-男童声智萌；101016-女童声智甜；101017-情感女声智蓉；101018-情感男声智靖；101019-粤语女声智彤。
        # @type VoiceType: Integer
        # @param FastVoiceType: 复刻音色
        # @type FastVoiceType: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String

        attr_accessor :ProductId, :SystemPrompt, :GreetingMessage, :VoiceType, :FastVoiceType, :TargetLanguage

        def initialize(productid=nil, systemprompt=nil, greetingmessage=nil, voicetype=nil, fastvoicetype=nil, targetlanguage=nil)
          @ProductId = productid
          @SystemPrompt = systemprompt
          @GreetingMessage = greetingmessage
          @VoiceType = voicetype
          @FastVoiceType = fastvoicetype
          @TargetLanguage = targetlanguage
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @SystemPrompt = params['SystemPrompt']
          @GreetingMessage = params['GreetingMessage']
          @VoiceType = params['VoiceType']
          @FastVoiceType = params['FastVoiceType']
          @TargetLanguage = params['TargetLanguage']
        end
      end

      # ModifyTWeTalkProductConfig返回参数结构体
      class ModifyTWeTalkProductConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTWeTalkProductConfigV2请求参数结构体
      class ModifyTWeTalkProductConfigV2Request < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param ConfigName: 名称
        # @type ConfigName: String
        # @param BasicConfig: 系统基础配置，当需要使用系统三段式配置时配置。
        # @type BasicConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkBasicConfigInfo`
        # @param STTConfig: 自定义语音识别配置
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfigInfo`
        # @param LLMConfig: 自定义大模型配置
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfigInfo`
        # @param TTSConfig: 语音合成配置
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfigInfo`
        # @param ConversationConfig: 会话配置
        # @type ConversationConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkConversationConfigInfo`

        attr_accessor :ProductId, :DeviceName, :TargetLanguage, :ConfigName, :BasicConfig, :STTConfig, :LLMConfig, :TTSConfig, :ConversationConfig

        def initialize(productid=nil, devicename=nil, targetlanguage=nil, configname=nil, basicconfig=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, conversationconfig=nil)
          @ProductId = productid
          @DeviceName = devicename
          @TargetLanguage = targetlanguage
          @ConfigName = configname
          @BasicConfig = basicconfig
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @ConversationConfig = conversationconfig
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @TargetLanguage = params['TargetLanguage']
          @ConfigName = params['ConfigName']
          unless params['BasicConfig'].nil?
            @BasicConfig = TalkBasicConfigInfo.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfigInfo.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfigInfo.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfigInfo.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['ConversationConfig'].nil?
            @ConversationConfig = TalkConversationConfigInfo.new
            @ConversationConfig.deserialize(params['ConversationConfig'])
          end
        end
      end

      # ModifyTWeTalkProductConfigV2返回参数结构体
      class ModifyTWeTalkProductConfigV2Response < TencentCloud::Common::AbstractModel
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

      # 升级包类型详细信息
      class OtaModuleInfo < TencentCloud::Common::AbstractModel
        # @param CreateTime: 模块创建时间
        # @type CreateTime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Name: 模块名称
        # @type Name: String
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FwType: 模块类型
        # @type FwType: String
        # @param IsBuildIn: 是否系统内置升级包类型
        # @type IsBuildIn: Boolean
        # @param Remark: 模块描述
        # @type Remark: String

        attr_accessor :CreateTime, :ProductName, :Name, :ProductID, :FwType, :IsBuildIn, :Remark

        def initialize(createtime=nil, productname=nil, name=nil, productid=nil, fwtype=nil, isbuildin=nil, remark=nil)
          @CreateTime = createtime
          @ProductName = productname
          @Name = name
          @ProductID = productid
          @FwType = fwtype
          @IsBuildIn = isbuildin
          @Remark = remark
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @ProductName = params['ProductName']
          @Name = params['Name']
          @ProductID = params['ProductID']
          @FwType = params['FwType']
          @IsBuildIn = params['IsBuildIn']
          @Remark = params['Remark']
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
        # @param FwType: 固件类型
        # @type FwType: String

        attr_accessor :ProductID, :DeviceName, :FwType

        def initialize(productid=nil, devicename=nil, fwtype=nil)
          @ProductID = productid
          @DeviceName = devicename
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @FwType = params['FwType']
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

      # RenewTWeSeeSubscription请求参数结构体
      class RenewTWeSeeSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param Period: 续费时长，单位：月，支持 1-60
        # @type Period: Integer
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param CustomOrderId: 自定义订单 ID
        # @type CustomOrderId: String

        attr_accessor :ProductId, :DeviceName, :ServiceType, :Period, :ChannelId, :CustomOrderId

        def initialize(productid=nil, devicename=nil, servicetype=nil, period=nil, channelid=nil, customorderid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @Period = period
          @ChannelId = channelid
          @CustomOrderId = customorderid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @Period = params['Period']
          @ChannelId = params['ChannelId']
          @CustomOrderId = params['CustomOrderId']
        end
      end

      # RenewTWeSeeSubscription返回参数结构体
      class RenewTWeSeeSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单 ID
        # @type OrderId: String
        # @param Status: 订单状态
        # @type Status: String
        # @param ResourceId: 资源 ID
        # @type ResourceId: String
        # @param OriginalPrice: 原价
        # @type OriginalPrice: String
        # @param DiscountPrice: 折后价
        # @type DiscountPrice: String
        # @param Currency: 币种
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :Status, :ResourceId, :OriginalPrice, :DiscountPrice, :Currency, :RequestId

        def initialize(orderid=nil, status=nil, resourceid=nil, originalprice=nil, discountprice=nil, currency=nil, requestid=nil)
          @OrderId = orderid
          @Status = status
          @ResourceId = resourceid
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @ResourceId = params['ResourceId']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Currency = params['Currency']
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

      # RevokeBindUserDevice请求参数结构体
      class RevokeBindUserDeviceRequest < TencentCloud::Common::AbstractModel
        # @param AppKey: <p>应用 AppKey，用于解析 IotAppID 并完成签名校验</p>
        # @type AppKey: String
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名</p>
        # @type DeviceName: String
        # @param OpenID: <p>用户 OpenID（仅只读定位，不会创建）</p>
        # @type OpenID: String
        # @param FamilyName: <p>家庭名，默认 default</p>
        # @type FamilyName: String

        attr_accessor :AppKey, :ProductId, :DeviceName, :OpenID, :FamilyName

        def initialize(appkey=nil, productid=nil, devicename=nil, openid=nil, familyname=nil)
          @AppKey = appkey
          @ProductId = productid
          @DeviceName = devicename
          @OpenID = openid
          @FamilyName = familyname
        end

        def deserialize(params)
          @AppKey = params['AppKey']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @OpenID = params['OpenID']
          @FamilyName = params['FamilyName']
        end
      end

      # RevokeBindUserDevice返回参数结构体
      class RevokeBindUserDeviceResponse < TencentCloud::Common::AbstractModel
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

      # RevokeShareDeviceFromUser请求参数结构体
      class RevokeShareDeviceFromUserRequest < TencentCloud::Common::AbstractModel
        # @param AppKey: <p>应用 AppKey，用于解析 IotAppID 并完成签名校验</p>
        # @type AppKey: String
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名</p>
        # @type DeviceName: String
        # @param OwnerOpenID: <p>设备所有者 OpenID（必须已存在）</p>
        # @type OwnerOpenID: String
        # @param ToOpenID: <p>被取消分享用户 OpenID（不存在视为已取消，幂等成功）</p>
        # @type ToOpenID: String

        attr_accessor :AppKey, :ProductId, :DeviceName, :OwnerOpenID, :ToOpenID

        def initialize(appkey=nil, productid=nil, devicename=nil, owneropenid=nil, toopenid=nil)
          @AppKey = appkey
          @ProductId = productid
          @DeviceName = devicename
          @OwnerOpenID = owneropenid
          @ToOpenID = toopenid
        end

        def deserialize(params)
          @AppKey = params['AppKey']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @OwnerOpenID = params['OwnerOpenID']
          @ToOpenID = params['ToOpenID']
        end
      end

      # RevokeShareDeviceFromUser返回参数结构体
      class RevokeShareDeviceFromUserResponse < TencentCloud::Common::AbstractModel
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

      # TWeSee 回调目标信息
      class SeeCallbackInfo < TencentCloud::Common::AbstractModel
        # @param CallbackId: 回调目标 ID
        # @type CallbackId: String
        # @param CallbackToken: 回调签名 token
        # @type CallbackToken: String
        # @param CallbackUrl: 回调 URL
        # @type CallbackUrl: String
        # @param CreateTime: 创建时间（秒级时间戳）
        # @type CreateTime: Integer
        # @param Type: 回调类型
        # @type Type: String
        # @param UpdateTime: 更新时间（秒级时间戳）
        # @type UpdateTime: Integer

        attr_accessor :CallbackId, :CallbackToken, :CallbackUrl, :CreateTime, :Type, :UpdateTime

        def initialize(callbackid=nil, callbacktoken=nil, callbackurl=nil, createtime=nil, type=nil, updatetime=nil)
          @CallbackId = callbackid
          @CallbackToken = callbacktoken
          @CallbackUrl = callbackurl
          @CreateTime = createtime
          @Type = type
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @CallbackId = params['CallbackId']
          @CallbackToken = params['CallbackToken']
          @CallbackUrl = params['CallbackUrl']
          @CreateTime = params['CreateTime']
          @Type = params['Type']
          @UpdateTime = params['UpdateTime']
        end
      end

      # TWeSee 视频语义浓缩配置
      class SeeCompHighlightConfig < TencentCloud::Common::AbstractModel
        # @param DisableHighlight: 是否禁用视频浓缩
        # @type DisableHighlight: Boolean
        # @param DetectTypes: 包含在浓缩结果中的目标类别。可选值：

        # - `person`：人
        # - `pet`：宠物
        # - `vehicle`：车辆
        # @type DetectTypes: Array
        # @param EnableSummary: 指定是否返回浓缩视频的摘要文本
        # @type EnableSummary: Boolean
        # @param KeyFramesNum: 指定返回的关键帧图像数量
        # @type KeyFramesNum: Integer

        attr_accessor :DisableHighlight, :DetectTypes, :EnableSummary, :KeyFramesNum

        def initialize(disablehighlight=nil, detecttypes=nil, enablesummary=nil, keyframesnum=nil)
          @DisableHighlight = disablehighlight
          @DetectTypes = detecttypes
          @EnableSummary = enablesummary
          @KeyFramesNum = keyframesnum
        end

        def deserialize(params)
          @DisableHighlight = params['DisableHighlight']
          @DetectTypes = params['DetectTypes']
          @EnableSummary = params['EnableSummary']
          @KeyFramesNum = params['KeyFramesNum']
        end
      end

      # TWeSee 视频语义浓缩结果
      class SeeCompHighlightResult < TencentCloud::Common::AbstractModel
        # @param Summary: 摘要文本
        # @type Summary: String

        attr_accessor :Summary

        def initialize(summary=nil)
          @Summary = summary
        end

        def deserialize(params)
          @Summary = params['Summary']
        end
      end

      # TWeSee 视觉理解配置
      class SeeComprehensionConfig < TencentCloud::Common::AbstractModel
        # @param DetectTypes: <p>拓展的目标及事件检测类别<br>枚举值：</p><ul><li>person：人</li><li>vehicle：车辆</li><li>cat：猫</li><li>dog：狗</li><li>package：快递包裹</li><li>license_plate：车牌</li><li>fire：火焰</li><li>smoke：烟雾</li><li>delivery_man：快递员/外卖员</li><li>pet：有宠物</li><li>pet_scratching_door：宠物挠门</li><li>pet_barking：宠物吠叫</li><li>pet_damaging：宠物损坏家具</li><li>pet_eating：宠物进食</li><li>person_playing_with_pet：人与宠物玩耍</li><li>pet_close_to_camera：宠物靠近摄像头</li><li>animal_lying：有动物躺/趴在地上</li><li>child：有小孩</li><li>child_near_water：小孩靠近水域</li><li>child_falling：小孩摔倒</li><li>child_climbing_window：小孩攀爬室内窗户</li><li>child_entering_kitchen：小孩进入厨房</li><li>child_playing_danger_item：小孩玩危险物品</li><li>child_writing：小孩写作业</li><li>baby：有婴儿</li><li>baby_crying：婴儿哭闹</li><li>baby_dropping：婴儿跌落床铺</li><li>person_holding_baby：有人抱起婴儿</li><li>baby_rolling：婴儿翻滚</li><li>elderly：有老人</li><li>elderly_falling：老人摔倒</li><li>elderly_eating：老人用餐</li><li>elderly_using_stove：老人使用灶具</li><li>vehicle_parking：车辆停靠</li><li>vehicle_entering：车辆进入</li><li>vehicle_exiting：车辆离开</li><li>person_feeding_animal：有人投喂牲畜</li><li>animal_wild_intrusion：野生动物入侵</li><li>throwing_into_water：有人投掷物品</li><li>loitering_near_water：有人岸边逗留</li><li>fishing：有人钓鱼</li><li>net_fishing：有人撒网</li><li>person_carrying_fishing_gear：有人携带渔具</li><li>person_carrying_object：有人搬运物品</li><li>person_taking_goods：有人拿商品</li><li>person_night_moving：夜间有人移动</li><li>crowd：多人聚集</li><li>person_picking_fruit：有人采摘果实</li><li>person_at_cashier：有人在收银台</li><li>person_climbing_fence：有人翻围墙</li><li>person_carrying_bag：有人携带包裹</li><li>person_entering_farm：人员进入农场</li><li>person_entering_store：人员进入店铺</li><li>person_falling：有人跌倒</li><li>staff_absent：员工离岗</li><li>uniform_abnormal：未穿工服</li><li>using_mobile_phone：使用手机</li><li>smoking：有人吸烟</li><li>knife：有人持刀</li><li>gun：有人持枪</li><li>hurt：有人受伤流血</li><li>fight：有人打架</li><li>door_window_open：门窗被开启</li><li>fireworks：有人燃放烟花爆竹</li><li>no_signal：视频画面异常（无信号等）</li><li>camera_angle_abnormal：摄像头角度异常</li><li>person_motionless：有人且其姿势保持静止</li></ul>
        # @type DetectTypes: Array
        # @param EnableSearch: <p>使该视频 / 图片录入搜索库，后续可进行搜索</p>
        # @type EnableSearch: Boolean
        # @param OutputLang: <p>主输出语言，可选值包括：</p><ul><li><code>zh</code> 中文（默认值）</li><li><code>en</code> 英语</li><li><code>ja</code> 日语</li><li><code>ko</code> 韩文</li><li><code>pt-BR</code> 葡萄牙语（巴西）</li><li><code>th</code> 泰语</li><li><code>ms</code> 马来语</li></ul>
        # @type OutputLang: String
        # @param AlternativeOutputLang: <p>次选输出语言，可选值包括：</p><ul><li><code>zh</code> 中文</li><li><code>en</code> 英语</li><li><code>ja</code> 日语</li><li><code>ko</code> 韩文</li><li><code>pt-BR</code> 葡萄牙语（巴西）</li><li><code>th</code> 泰语</li><li><code>ms</code> 马来语</li></ul>
        # @type AlternativeOutputLang: String
        # @param MultiCameraLayout: <p>多摄像头布局定义。可选值包括：</p><ul><li><p>单摄（默认值）：<code>Single</code></p></li><li><p>双摄（纵向排列）- 全部画面：<code>Vertical,Num=2,Index=0;1</code></p></li><li><p>双摄（纵向排列）- 画面1：<code>Vertical,Num=2,Index=0</code></p></li><li><p>双摄（纵向排列）- 画面2：<code>Vertical,Num=2,Index=1</code></p></li><li><p>三摄（纵向排列）- 全部画面：<code>Vertical,Num=3,Index=0;1;2</code></p></li><li><p>三摄（纵向排列）- 画面1：<code>Vertical,Num=3,Index=0</code></p></li><li><p>三摄（纵向排列）- 画面2：<code>Vertical,Num=3,Index=1</code></p></li><li><p>三摄（纵向排列）- 画面3：<code>Vertical,Num=3,Index=2</code></p></li><li><p>三摄（纵向排列）- 画面1+2：<code>Vertical,Num=3,Index=0;1</code></p></li><li><p>三摄（纵向排列）- 画面1+3：<code>Vertical,Num=3,Index=0;2</code></p></li><li><p>三摄（纵向排列）- 画面2+3：<code>Vertical,Num=3,Index=1;2</code></p></li></ul>
        # @type MultiCameraLayout: String
        # @param CustomDetectQueries: <p>自定义检测标签</p>
        # @type CustomDetectQueries: Array
        # @param MaxDuration: <p>最大处理的输入视频时长，单位：秒（仅对视频输入生效）</p>
        # @type MaxDuration: Integer
        # @param EnableKeywords: <p>是否生成关键词</p><p>默认值：false</p>
        # @type EnableKeywords: Boolean
        # @param SummaryPrompt: <p>自定义摘要提示词</p>
        # @type SummaryPrompt: String

        attr_accessor :DetectTypes, :EnableSearch, :OutputLang, :AlternativeOutputLang, :MultiCameraLayout, :CustomDetectQueries, :MaxDuration, :EnableKeywords, :SummaryPrompt

        def initialize(detecttypes=nil, enablesearch=nil, outputlang=nil, alternativeoutputlang=nil, multicameralayout=nil, customdetectqueries=nil, maxduration=nil, enablekeywords=nil, summaryprompt=nil)
          @DetectTypes = detecttypes
          @EnableSearch = enablesearch
          @OutputLang = outputlang
          @AlternativeOutputLang = alternativeoutputlang
          @MultiCameraLayout = multicameralayout
          @CustomDetectQueries = customdetectqueries
          @MaxDuration = maxduration
          @EnableKeywords = enablekeywords
          @SummaryPrompt = summaryprompt
        end

        def deserialize(params)
          @DetectTypes = params['DetectTypes']
          @EnableSearch = params['EnableSearch']
          @OutputLang = params['OutputLang']
          @AlternativeOutputLang = params['AlternativeOutputLang']
          @MultiCameraLayout = params['MultiCameraLayout']
          unless params['CustomDetectQueries'].nil?
            @CustomDetectQueries = []
            params['CustomDetectQueries'].each do |i|
              visioncustomdetectquery_tmp = VisionCustomDetectQuery.new
              visioncustomdetectquery_tmp.deserialize(i)
              @CustomDetectQueries << visioncustomdetectquery_tmp
            end
          end
          @MaxDuration = params['MaxDuration']
          @EnableKeywords = params['EnableKeywords']
          @SummaryPrompt = params['SummaryPrompt']
        end
      end

      # TWeSee 视觉理解结果
      class SeeComprehensionResult < TencentCloud::Common::AbstractModel
        # @param DetectedClassifications: <p>识别到的目标类型与事件标签。<br>枚举值：</p><ul><li>person：人</li><li>vehicle：车辆</li><li>cat：猫</li><li>dog：狗</li><li>package：快递包裹</li><li>license_plate：车牌</li><li>fire：火焰</li><li>smoke：烟雾</li><li>delivery_man：快递员/外卖员</li><li>pet：有宠物</li><li>pet_scratching_door：宠物挠门</li><li>pet_barking：宠物吠叫</li><li>pet_damaging：宠物损坏家具</li><li>pet_eating：宠物进食</li><li>person_playing_with_pet：人与宠物玩耍</li><li>pet_close_to_camera：宠物靠近摄像头</li><li>animal_lying：有动物躺/趴在地上</li><li>child：有小孩</li><li>child_near_water：小孩靠近水域</li><li>child_falling：小孩摔倒</li><li>child_climbing_window：小孩攀爬室内窗户</li><li>child_entering_kitchen：小孩进入厨房</li><li>child_playing_danger_item：小孩玩危险物品</li><li>child_writing：小孩写作业</li><li>baby：有婴儿</li><li>baby_crying：婴儿哭闹</li><li>baby_dropping：婴儿跌落床铺</li><li>person_holding_baby：有人抱起婴儿</li><li>baby_rolling：婴儿翻滚</li><li>elderly：有老人</li><li>elderly_falling：老人摔倒</li><li>elderly_eating：老人用餐</li><li>elderly_using_stove：老人使用灶具</li><li>vehicle_parking：车辆停靠</li><li>vehicle_entering：车辆进入</li><li>vehicle_exiting：车辆离开</li><li>person_feeding_animal：有人投喂牲畜</li><li>animal_wild_intrusion：野生动物入侵</li><li>throwing_into_water：有人投掷物品</li><li>loitering_near_water：有人岸边逗留</li><li>fishing：有人钓鱼</li><li>net_fishing：有人撒网</li><li>person_carrying_fishing_gear：有人携带渔具</li><li>person_carrying_object：有人搬运物品</li><li>person_taking_goods：有人拿商品</li><li>person_night_moving：夜间有人移动</li><li>crowd：多人聚集</li><li>person_picking_fruit：有人采摘果实</li><li>person_at_cashier：有人在收银台</li><li>person_climbing_fence：有人翻围墙</li><li>person_carrying_bag：有人携带包裹</li><li>person_entering_farm：人员进入农场</li><li>person_entering_store：人员进入店铺</li><li>person_falling：有人跌倒</li><li>staff_absent：员工离岗</li><li>uniform_abnormal：未穿工服</li><li>using_mobile_phone：使用手机</li><li>smoking：有人吸烟</li><li>knife：有人持刀</li><li>gun：有人持枪</li><li>hurt：有人受伤流血</li><li>fight：有人打架</li><li>door_window_open：门窗被开启</li><li>fireworks：有人燃放烟花爆竹</li><li>no_signal：视频画面异常（无信号等）</li><li>camera_angle_abnormal：摄像头角度异常</li><li>person_motionless：有人且其姿势保持静止</li></ul>
        # @type DetectedClassifications: Array
        # @param Summary: <p>摘要文本</p>
        # @type Summary: String
        # @param AlternativeSummary: <p>摘要文本（次选语言）</p>
        # @type AlternativeSummary: String
        # @param ErrorCode: <p>错误码，可能取值：</p><ul><li><code>DownloadFailed</code>：下载视频/图片文件失败</li><li><code>ReadFailed</code>：读取视频/图片文件失败</li></ul>
        # @type ErrorCode: String
        # @param ErrorMsg: <p>错误消息</p>
        # @type ErrorMsg: String
        # @param Keywords: <p>生成的关键词列表</p><p>当配置 <code>EnableKeywords</code> 为 true 时返回</p>
        # @type Keywords: Array

        attr_accessor :DetectedClassifications, :Summary, :AlternativeSummary, :ErrorCode, :ErrorMsg, :Keywords

        def initialize(detectedclassifications=nil, summary=nil, alternativesummary=nil, errorcode=nil, errormsg=nil, keywords=nil)
          @DetectedClassifications = detectedclassifications
          @Summary = summary
          @AlternativeSummary = alternativesummary
          @ErrorCode = errorcode
          @ErrorMsg = errormsg
          @Keywords = keywords
        end

        def deserialize(params)
          @DetectedClassifications = params['DetectedClassifications']
          @Summary = params['Summary']
          @AlternativeSummary = params['AlternativeSummary']
          @ErrorCode = params['ErrorCode']
          @ErrorMsg = params['ErrorMsg']
          @Keywords = params['Keywords']
        end
      end

      # TWeSee 标签持续检测配置
      class SeeDetectContinuousConfig < TencentCloud::Common::AbstractModel
        # @param DetectType: 检测标签。可选值：
        # - `person_motionless`：人物静止
        # @type DetectType: String
        # @param DailyStartTime: 启用检测的按日周期起始时间分钟数。取值范围：0 ~ 1440
        # @type DailyStartTime: Integer
        # @param DailyEndTime: 启用检测的按日周期结束时间分钟数。取值范围：0 ~ 1440
        # @type DailyEndTime: Integer
        # @param Interval: 检测间隔分钟数。取值范围：5 ~ 60。
        # @type Interval: Integer

        attr_accessor :DetectType, :DailyStartTime, :DailyEndTime, :Interval

        def initialize(detecttype=nil, dailystarttime=nil, dailyendtime=nil, interval=nil)
          @DetectType = detecttype
          @DailyStartTime = dailystarttime
          @DailyEndTime = dailyendtime
          @Interval = interval
        end

        def deserialize(params)
          @DetectType = params['DetectType']
          @DailyStartTime = params['DailyStartTime']
          @DailyEndTime = params['DailyEndTime']
          @Interval = params['Interval']
        end
      end

      # TWeSee 标签持续检测结果
      class SeeDetectContinuousResult < TencentCloud::Common::AbstractModel
        # @param IsContinuousInRange: 检测标签是否在当前区间内持续
        # @type IsContinuousInRange: Boolean

        attr_accessor :IsContinuousInRange

        def initialize(iscontinuousinrange=nil)
          @IsContinuousInRange = iscontinuousinrange
        end

        def deserialize(params)
          @IsContinuousInRange = params['IsContinuousInRange']
        end
      end

      # TWeSee 处理云存事件 EventId 的过滤规则配置
      class SeeEventIdFilterConfig < TencentCloud::Common::AbstractModel
        # @param IncludeOnly: 包含的云存事件 ID 集合
        # @type IncludeOnly: Array
        # @param Exclude: 排除的云存事件 ID 集合
        # @type Exclude: Array

        attr_accessor :IncludeOnly, :Exclude

        def initialize(includeonly=nil, exclude=nil)
          @IncludeOnly = includeonly
          @Exclude = exclude
        end

        def deserialize(params)
          @IncludeOnly = params['IncludeOnly']
          @Exclude = params['Exclude']
        end
      end

      # TWeSee 统计数据点
      class SeeStatItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # @type Time: String
        # @param Count: 任务数量
        # @type Count: Integer
        # @param CostBasic: 基础能力用量
        # @type CostBasic: Integer
        # @param CostAdvanced: 高级能力用量
        # @type CostAdvanced: Integer

        attr_accessor :Time, :Count, :CostBasic, :CostAdvanced

        def initialize(time=nil, count=nil, costbasic=nil, costadvanced=nil)
          @Time = time
          @Count = count
          @CostBasic = costbasic
          @CostAdvanced = costadvanced
        end

        def deserialize(params)
          @Time = params['Time']
          @Count = params['Count']
          @CostBasic = params['CostBasic']
          @CostAdvanced = params['CostAdvanced']
        end
      end

      # TWeSee 任务详情
      class SeeTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param Status: 任务状态。可能取值：

        # - `1`：失败
        # - `2`：空结果
        # - `3`：有效结果
        # - `4`：处理中
        # @type Status: Integer
        # @param Metadata: 任务元数据
        # @type Metadata: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeTaskMetadata`
        # @param ServiceCategory: 算法类目。可能取值：

        # - `COMPREHENSION`：视觉理解
        # - `HIGHLIGHT`：视频浓缩
        # @type ServiceCategory: String
        # @param ServiceType: 算法类型。可能取值：

        # - `VID_COMP`：视频理解
        # - `IMG_COMP`：图片理解
        # - `COMP_HIGHLIGHT`：视频浓缩
        # @type ServiceType: String
        # @param ServiceTier: 套餐规格。可能取值：

        # - `POSTPAID`：后付费（适用于视频理解、图片理解）
        # - `BASIC`：包年包月基础版（适用于视频理解）
        # @type ServiceTier: String
        # @param ComprehensionResult: 视觉理解结果（适用于视频理解、图片理解）
        # @type ComprehensionResult: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeComprehensionResult`
        # @param CompHighlightResult: 视频语义浓缩结果（适用于视频语义浓缩）
        # @type CompHighlightResult: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeCompHighlightResult`
        # @param DetectContinuousResult: 标签持续检测结果
        # @type DetectContinuousResult: :class:`Tencentcloud::Iotexplorer.v20190423.models.SeeDetectContinuousResult`
        # @param CostBasic: 完成该任务所消耗的基础能力额度
        # @type CostBasic: Integer
        # @param CostAdvanced: 完成该任务所消耗的高级能力额度
        # @type CostAdvanced: Integer
        # @param Files: 输出文件名列表
        # @type Files: Array
        # @param FilesInfo: 输出文件详情列表
        # @type FilesInfo: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: Integer

        attr_accessor :TaskId, :Status, :Metadata, :ServiceCategory, :ServiceType, :ServiceTier, :ComprehensionResult, :CompHighlightResult, :DetectContinuousResult, :CostBasic, :CostAdvanced, :Files, :FilesInfo, :CreateTime, :UpdateTime

        def initialize(taskid=nil, status=nil, metadata=nil, servicecategory=nil, servicetype=nil, servicetier=nil, comprehensionresult=nil, comphighlightresult=nil, detectcontinuousresult=nil, costbasic=nil, costadvanced=nil, files=nil, filesinfo=nil, createtime=nil, updatetime=nil)
          @TaskId = taskid
          @Status = status
          @Metadata = metadata
          @ServiceCategory = servicecategory
          @ServiceType = servicetype
          @ServiceTier = servicetier
          @ComprehensionResult = comprehensionresult
          @CompHighlightResult = comphighlightresult
          @DetectContinuousResult = detectcontinuousresult
          @CostBasic = costbasic
          @CostAdvanced = costadvanced
          @Files = files
          @FilesInfo = filesinfo
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['Metadata'].nil?
            @Metadata = SeeTaskMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @ServiceCategory = params['ServiceCategory']
          @ServiceType = params['ServiceType']
          @ServiceTier = params['ServiceTier']
          unless params['ComprehensionResult'].nil?
            @ComprehensionResult = SeeComprehensionResult.new
            @ComprehensionResult.deserialize(params['ComprehensionResult'])
          end
          unless params['CompHighlightResult'].nil?
            @CompHighlightResult = SeeCompHighlightResult.new
            @CompHighlightResult.deserialize(params['CompHighlightResult'])
          end
          unless params['DetectContinuousResult'].nil?
            @DetectContinuousResult = SeeDetectContinuousResult.new
            @DetectContinuousResult.deserialize(params['DetectContinuousResult'])
          end
          @CostBasic = params['CostBasic']
          @CostAdvanced = params['CostAdvanced']
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
        end
      end

      # TWeSee 任务元数据
      class SeeTaskMetadata < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param StartTimeMs: 事件起始时间（毫秒级时间戳）
        # @type StartTimeMs: Integer
        # @param EndTimeMs: 事件结束时间（毫秒级时间戳）
        # @type EndTimeMs: Integer
        # @param CustomId: 自定义事件 ID
        # @type CustomId: String

        attr_accessor :ProductId, :DeviceName, :ChannelId, :StartTimeMs, :EndTimeMs, :CustomId

        def initialize(productid=nil, devicename=nil, channelid=nil, starttimems=nil, endtimems=nil, customid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ChannelId = channelid
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @CustomId = customid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @CustomId = params['CustomId']
        end
      end

      # ShareDeviceToUser请求参数结构体
      class ShareDeviceToUserRequest < TencentCloud::Common::AbstractModel
        # @param AppKey: <p>应用 AppKey，用于解析 IotAppID 并完成签名校验</p>
        # @type AppKey: String
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名</p>
        # @type DeviceName: String
        # @param OwnerOpenID: <p>设备所有者 OpenID（必须已存在）</p>
        # @type OwnerOpenID: String
        # @param ToOpenID: <p>被分享用户 OpenID（不存在则自动创建）</p>
        # @type ToOpenID: String
        # @param ToNickName: <p>被分享用户昵称（仅自动创建时使用）</p>
        # @type ToNickName: String

        attr_accessor :AppKey, :ProductId, :DeviceName, :OwnerOpenID, :ToOpenID, :ToNickName

        def initialize(appkey=nil, productid=nil, devicename=nil, owneropenid=nil, toopenid=nil, tonickname=nil)
          @AppKey = appkey
          @ProductId = productid
          @DeviceName = devicename
          @OwnerOpenID = owneropenid
          @ToOpenID = toopenid
          @ToNickName = tonickname
        end

        def deserialize(params)
          @AppKey = params['AppKey']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @OwnerOpenID = params['OwnerOpenID']
          @ToOpenID = params['ToOpenID']
          @ToNickName = params['ToNickName']
        end
      end

      # ShareDeviceToUser返回参数结构体
      class ShareDeviceToUserResponse < TencentCloud::Common::AbstractModel
        # @param OwnerUserID: <p>Owner 的 UserID</p>
        # @type OwnerUserID: String
        # @param ToUserID: <p>被分享用户的 UserID</p>
        # @type ToUserID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUserID, :ToUserID, :RequestId

        def initialize(owneruserid=nil, touserid=nil, requestid=nil)
          @OwnerUserID = owneruserid
          @ToUserID = touserid
          @RequestId = requestid
        end

        def deserialize(params)
          @OwnerUserID = params['OwnerUserID']
          @ToUserID = params['ToUserID']
          @RequestId = params['RequestId']
        end
      end

      # 已订阅Topic信息
      class SubscribedTopicItem < TencentCloud::Common::AbstractModel
        # @param TopicName: Topic名称
        # @type TopicName: String

        attr_accessor :TopicName

        def initialize(topicname=nil)
          @TopicName = topicname
        end

        def deserialize(params)
          @TopicName = params['TopicName']
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
        deprecate :ModelId, :none, 2026, 7
        deprecate :ModelId=, :none, 2026, 7

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
        deprecate :ModelId, :none, 2026, 7
        deprecate :ModelId=, :none, 2026, 7
        deprecate :ActiveNum, :none, 2026, 7
        deprecate :ActiveNum=, :none, 2026, 7

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

      # Talk配置信息描述。
      class TalkAIBotInfo < TencentCloud::Common::AbstractModel
        # @param Uin: UIN
        # @type Uin: Integer
        # @param AppId: APPID
        # @type AppId: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param BotId: 智能体ID
        # @type BotId: String
        # @param Name: 名称
        # @type Name: String
        # @param Description: 描述
        # @type Description: String
        # @param TargetLanguage: 语言
        # @type TargetLanguage: String
        # @param STTConfig: 语音识别
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfigInfo`
        # @param LLMConfig: 大模型
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfigInfo`
        # @param TTSConfig: 语音合成
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfigInfo`
        # @param AgentConfig: 智能体配置
        # @type AgentConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkAgentConfigInfo`
        # @param ProductList: 产品信息列表
        # @type ProductList: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkProductInfo`
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param BoundProducts: 已关联产品信息列表
        # @type BoundProducts: Array
        # @param CustomTools: 自定义工具列表，最多可创建10个
        # @type CustomTools: String
        # @param WebhookTools: WebHook工具配置(JSON字符串格式)
        # @type WebhookTools: String
        # @param BotType: 智能体模板类型
        # @type BotType: String
        # @param RAGConfig: 知识库相关配置(JSON字符串格式)
        # @type RAGConfig: String

        attr_accessor :Uin, :AppId, :InstanceId, :BotId, :Name, :Description, :TargetLanguage, :STTConfig, :LLMConfig, :TTSConfig, :AgentConfig, :ProductList, :CreateTime, :UpdateTime, :BoundProducts, :CustomTools, :WebhookTools, :BotType, :RAGConfig
        extend Gem::Deprecate
        deprecate :ProductList, :none, 2026, 7
        deprecate :ProductList=, :none, 2026, 7

        def initialize(uin=nil, appid=nil, instanceid=nil, botid=nil, name=nil, description=nil, targetlanguage=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, agentconfig=nil, productlist=nil, createtime=nil, updatetime=nil, boundproducts=nil, customtools=nil, webhooktools=nil, bottype=nil, ragconfig=nil)
          @Uin = uin
          @AppId = appid
          @InstanceId = instanceid
          @BotId = botid
          @Name = name
          @Description = description
          @TargetLanguage = targetlanguage
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @AgentConfig = agentconfig
          @ProductList = productlist
          @CreateTime = createtime
          @UpdateTime = updatetime
          @BoundProducts = boundproducts
          @CustomTools = customtools
          @WebhookTools = webhooktools
          @BotType = bottype
          @RAGConfig = ragconfig
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @InstanceId = params['InstanceId']
          @BotId = params['BotId']
          @Name = params['Name']
          @Description = params['Description']
          @TargetLanguage = params['TargetLanguage']
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfigInfo.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfigInfo.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfigInfo.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['AgentConfig'].nil?
            @AgentConfig = TalkAgentConfigInfo.new
            @AgentConfig.deserialize(params['AgentConfig'])
          end
          unless params['ProductList'].nil?
            @ProductList = TalkProductInfo.new
            @ProductList.deserialize(params['ProductList'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['BoundProducts'].nil?
            @BoundProducts = []
            params['BoundProducts'].each do |i|
              talkproductinfo_tmp = TalkProductInfo.new
              talkproductinfo_tmp.deserialize(i)
              @BoundProducts << talkproductinfo_tmp
            end
          end
          @CustomTools = params['CustomTools']
          @WebhookTools = params['WebhookTools']
          @BotType = params['BotType']
          @RAGConfig = params['RAGConfig']
        end
      end

      # Talk激活审计信息。
      class TalkActivateRecordLogInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActiveTime: 激活时间，秒级时间戳
        # @type ActiveTime: Integer
        # @param ExpireTime: 过期时间，秒级时间戳
        # @type ExpireTime: Integer
        # @param ServiceType: TWeTalk类型：1-基础版；2-高级版；3-多模态；
        # @type ServiceType: Integer
        # @param Status: 状态: 0-未激活, 1-已激活, 2-已过期, 3-已作废
        # @type Status: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String

        attr_accessor :ProductId, :DeviceName, :ActiveTime, :ExpireTime, :ServiceType, :Status, :ErrorMsg

        def initialize(productid=nil, devicename=nil, activetime=nil, expiretime=nil, servicetype=nil, status=nil, errormsg=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ActiveTime = activetime
          @ExpireTime = expiretime
          @ServiceType = servicetype
          @Status = status
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ActiveTime = params['ActiveTime']
          @ExpireTime = params['ExpireTime']
          @ServiceType = params['ServiceType']
          @Status = params['Status']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # Talk设备激活信息。
      class TalkActivationInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID，产品ID_设备名称
        # @type DeviceId: String
        # @param ErrCode: 设备激活状态，0：激活成功；60001：激活码类型不匹配；60002：激活码数量不足；60003：设备不存在；60004：产品不存在；60005：权限不足；60006：设备已激活；60007：无效的参数；60008：系统错误；60009：产品不是码音视频类型
        # @type ErrCode: Integer
        # @param ErrMessage: 激活错误信息
        # @type ErrMessage: String
        # @param ExpireTime: 过期时间，秒级时间戳
        # @type ExpireTime: Integer

        attr_accessor :DeviceId, :ErrCode, :ErrMessage, :ExpireTime

        def initialize(deviceid=nil, errcode=nil, errmessage=nil, expiretime=nil)
          @DeviceId = deviceid
          @ErrCode = errcode
          @ErrMessage = errmessage
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @ExpireTime = params['ExpireTime']
        end
      end

      # Talk激活状态响应定义。
      class TalkActivationStatusInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID，产品ID_设备名称
        # @type DeviceId: String
        # @param ExpireTime: 过期时间，秒级时间戳
        # @type ExpireTime: Integer
        # @param ServiceType: TWeTalk类型：1-基础版；2-高级版；3-多模态；
        # @type ServiceType: Integer

        attr_accessor :DeviceId, :ExpireTime, :ServiceType

        def initialize(deviceid=nil, expiretime=nil, servicetype=nil)
          @DeviceId = deviceid
          @ExpireTime = expiretime
          @ServiceType = servicetype
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ExpireTime = params['ExpireTime']
          @ServiceType = params['ServiceType']
        end
      end

      # 智能体绑定配置
      class TalkAgentBinding < TencentCloud::Common::AbstractModel
        # @param BindingScope: product 或 device
        # @type BindingScope: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param AgentId: 智能体ID
        # @type AgentId: String
        # @param Priority: 绑定优先级
        # @type Priority: Integer
        # @param CreateTime: 创建时间，Unix 秒
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，Unix 秒
        # @type UpdateTime: Integer

        attr_accessor :BindingScope, :ProductId, :DeviceName, :AgentId, :Priority, :CreateTime, :UpdateTime

        def initialize(bindingscope=nil, productid=nil, devicename=nil, agentid=nil, priority=nil, createtime=nil, updatetime=nil)
          @BindingScope = bindingscope
          @ProductId = productid
          @DeviceName = devicename
          @AgentId = agentid
          @Priority = priority
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @BindingScope = params['BindingScope']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @AgentId = params['AgentId']
          @Priority = params['Priority']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 智能体配置信息。
      class TalkAgentConfigInfo < TencentCloud::Common::AbstractModel
        # @param SessionTimeout: 会话超时（秒），指连接会话的时间，例如30秒是指会话在30秒后断开
        # @type SessionTimeout: Integer
        # @param InterruptionEnabled: 允许打断
        # @type InterruptionEnabled: Boolean
        # @param MaxContextTokens: 最大上下文
        # @type MaxContextTokens: Integer
        # @param IdleDetection: 空闲检测配置
        # @type IdleDetection: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkIdleDetectionConfigInfo`
        # @param EmotionEnabled: 是否启用情绪识别
        # @type EmotionEnabled: Boolean
        # @param SemanticVADEnabled: 是否启用语义vad
        # @type SemanticVADEnabled: Boolean
        # @param SemanticVADSensitivity: 语义vad灵敏度， 1-慢 2-适中 3-快
        # @type SemanticVADSensitivity: Integer
        # @param SilenceTime: VAD 静默检测时间， 当开启语义vad此配置失效
        # @type SilenceTime: Integer
        # @param NoiseFilterEnabled: 是否启用噪声过滤
        # @type NoiseFilterEnabled: Boolean
        # @param LongTermMemoryEnabled: 是否开启长记忆，默认关闭
        # @type LongTermMemoryEnabled: Boolean
        # @param SystemPrompt: 系统提示词，仅当未配置LLMConfig时使用
        # @type SystemPrompt: String
        # @param GreetingMessage: 开机问候语，如果未配置默认不开启
        # @type GreetingMessage: String
        # @param DefaultVoiceType: 系统默认音色，当配置复刻音色时，默认值为200000000
        # @type DefaultVoiceType: Integer
        # @param FastVoiceType: 复刻音色
        # @type FastVoiceType: String
        # @param SubtitleCallbackUrl: 实时字幕回调地址，支持HTTP/HTTPS
        # @type SubtitleCallbackUrl: String
        # @param SubtitleCallbackSignKey: 回调签名密钥，最大32字符，用于HMAC SHA256签名
        # @type SubtitleCallbackSignKey: String
        # @param SubtitleCallbackTimeout: 字幕推送超时时间（秒），参考TRTC规范
        # @type SubtitleCallbackTimeout: Integer

        attr_accessor :SessionTimeout, :InterruptionEnabled, :MaxContextTokens, :IdleDetection, :EmotionEnabled, :SemanticVADEnabled, :SemanticVADSensitivity, :SilenceTime, :NoiseFilterEnabled, :LongTermMemoryEnabled, :SystemPrompt, :GreetingMessage, :DefaultVoiceType, :FastVoiceType, :SubtitleCallbackUrl, :SubtitleCallbackSignKey, :SubtitleCallbackTimeout

        def initialize(sessiontimeout=nil, interruptionenabled=nil, maxcontexttokens=nil, idledetection=nil, emotionenabled=nil, semanticvadenabled=nil, semanticvadsensitivity=nil, silencetime=nil, noisefilterenabled=nil, longtermmemoryenabled=nil, systemprompt=nil, greetingmessage=nil, defaultvoicetype=nil, fastvoicetype=nil, subtitlecallbackurl=nil, subtitlecallbacksignkey=nil, subtitlecallbacktimeout=nil)
          @SessionTimeout = sessiontimeout
          @InterruptionEnabled = interruptionenabled
          @MaxContextTokens = maxcontexttokens
          @IdleDetection = idledetection
          @EmotionEnabled = emotionenabled
          @SemanticVADEnabled = semanticvadenabled
          @SemanticVADSensitivity = semanticvadsensitivity
          @SilenceTime = silencetime
          @NoiseFilterEnabled = noisefilterenabled
          @LongTermMemoryEnabled = longtermmemoryenabled
          @SystemPrompt = systemprompt
          @GreetingMessage = greetingmessage
          @DefaultVoiceType = defaultvoicetype
          @FastVoiceType = fastvoicetype
          @SubtitleCallbackUrl = subtitlecallbackurl
          @SubtitleCallbackSignKey = subtitlecallbacksignkey
          @SubtitleCallbackTimeout = subtitlecallbacktimeout
        end

        def deserialize(params)
          @SessionTimeout = params['SessionTimeout']
          @InterruptionEnabled = params['InterruptionEnabled']
          @MaxContextTokens = params['MaxContextTokens']
          unless params['IdleDetection'].nil?
            @IdleDetection = TalkIdleDetectionConfigInfo.new
            @IdleDetection.deserialize(params['IdleDetection'])
          end
          @EmotionEnabled = params['EmotionEnabled']
          @SemanticVADEnabled = params['SemanticVADEnabled']
          @SemanticVADSensitivity = params['SemanticVADSensitivity']
          @SilenceTime = params['SilenceTime']
          @NoiseFilterEnabled = params['NoiseFilterEnabled']
          @LongTermMemoryEnabled = params['LongTermMemoryEnabled']
          @SystemPrompt = params['SystemPrompt']
          @GreetingMessage = params['GreetingMessage']
          @DefaultVoiceType = params['DefaultVoiceType']
          @FastVoiceType = params['FastVoiceType']
          @SubtitleCallbackUrl = params['SubtitleCallbackUrl']
          @SubtitleCallbackSignKey = params['SubtitleCallbackSignKey']
          @SubtitleCallbackTimeout = params['SubtitleCallbackTimeout']
        end
      end

      # TWeTalk智能体配置信息描述
      class TalkAgentInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 主账号UIN
        # @type Uin: Integer
        # @param AppId: 账号AppId
        # @type AppId: Integer
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param AgentId: 智能体ID
        # @type AgentId: String
        # @param Name: 智能体名称
        # @type Name: String
        # @param Description: 智能体描述
        # @type Description: String
        # @param STTConfig: 语音识别配置
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfig`
        # @param LLMConfig: 大模型配置
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfig`
        # @param TTSConfig: 语音合成配置
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfig`
        # @param ConversationConfig: 对话行为配置
        # @type ConversationConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkConversationConfig`
        # @param MemoryConfig: 长期记忆配置
        # @type MemoryConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkMemoryConfig`
        # @param IOTTools: IoT 工具列表
        # @type IOTTools: Array
        # @param WebhookTools: Webhook 工具列表
        # @type WebhookTools: Array
        # @param Metadata: 元信息JSON object 字符串
        # @type Metadata: String
        # @param Bindings: 绑定关系列表
        # @type Bindings: Array
        # @param CreateTime: 创建时间，Unix 秒
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，Unix 秒
        # @type UpdateTime: Integer

        attr_accessor :Uin, :AppId, :InstanceId, :AgentId, :Name, :Description, :STTConfig, :LLMConfig, :TTSConfig, :ConversationConfig, :MemoryConfig, :IOTTools, :WebhookTools, :Metadata, :Bindings, :CreateTime, :UpdateTime

        def initialize(uin=nil, appid=nil, instanceid=nil, agentid=nil, name=nil, description=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, conversationconfig=nil, memoryconfig=nil, iottools=nil, webhooktools=nil, metadata=nil, bindings=nil, createtime=nil, updatetime=nil)
          @Uin = uin
          @AppId = appid
          @InstanceId = instanceid
          @AgentId = agentid
          @Name = name
          @Description = description
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @ConversationConfig = conversationconfig
          @MemoryConfig = memoryconfig
          @IOTTools = iottools
          @WebhookTools = webhooktools
          @Metadata = metadata
          @Bindings = bindings
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @InstanceId = params['InstanceId']
          @AgentId = params['AgentId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfig.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfig.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfig.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['ConversationConfig'].nil?
            @ConversationConfig = TalkConversationConfig.new
            @ConversationConfig.deserialize(params['ConversationConfig'])
          end
          unless params['MemoryConfig'].nil?
            @MemoryConfig = TalkMemoryConfig.new
            @MemoryConfig.deserialize(params['MemoryConfig'])
          end
          unless params['IOTTools'].nil?
            @IOTTools = []
            params['IOTTools'].each do |i|
              talkiottool_tmp = TalkIOTTool.new
              talkiottool_tmp.deserialize(i)
              @IOTTools << talkiottool_tmp
            end
          end
          unless params['WebhookTools'].nil?
            @WebhookTools = []
            params['WebhookTools'].each do |i|
              talkwebhooktool_tmp = TalkWebhookTool.new
              talkwebhooktool_tmp.deserialize(i)
              @WebhookTools << talkwebhooktool_tmp
            end
          end
          @Metadata = params['Metadata']
          unless params['Bindings'].nil?
            @Bindings = []
            params['Bindings'].each do |i|
              talkagentbinding_tmp = TalkAgentBinding.new
              talkagentbinding_tmp.deserialize(i)
              @Bindings << talkagentbinding_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 基础配置信息。
      class TalkBasicConfigInfo < TencentCloud::Common::AbstractModel
        # @param SystemPrompt: 系统提示词
        # @type SystemPrompt: String
        # @param GreetingMessage: 欢迎语，支持多个欢迎语随机切换，格式：字符串数组，JSON字符串。
        # @type GreetingMessage: String
        # @param DefaultVoiceType: 音色，支持的音色列表：100510000-阅读男声智逍遥；101001-情感女声智瑜；101002-通用女声智聆；101003-客服女声智美；101004-通用男声智云；101005-通用女声智莉；101006-助手女声智言；101008-客服女声智琪；101009-知性女声智芸；101010-通用男声智华；101011-新闻女声智燕；101012-新闻女声智丹；101013-新闻男声智辉；101014 -新闻男声智宁；101015-男童声智萌；101016-女童声智甜；101017-情感女声智蓉；101018-情感男声智靖；101019-粤语女声智彤。
        # @type DefaultVoiceType: Integer
        # @param FastVoiceType: 复刻音色ID，当不为空时，DefaultVoiceType为200000000
        # @type FastVoiceType: String

        attr_accessor :SystemPrompt, :GreetingMessage, :DefaultVoiceType, :FastVoiceType

        def initialize(systemprompt=nil, greetingmessage=nil, defaultvoicetype=nil, fastvoicetype=nil)
          @SystemPrompt = systemprompt
          @GreetingMessage = greetingmessage
          @DefaultVoiceType = defaultvoicetype
          @FastVoiceType = fastvoicetype
        end

        def deserialize(params)
          @SystemPrompt = params['SystemPrompt']
          @GreetingMessage = params['GreetingMessage']
          @DefaultVoiceType = params['DefaultVoiceType']
          @FastVoiceType = params['FastVoiceType']
        end
      end

      # 对话行为配置
      class TalkConversationConfig < TencentCloud::Common::AbstractModel
        # @param WelcomeMessage: 欢迎语
        # @type WelcomeMessage: String
        # @param WelcomeMessagePriority: 欢迎语优先级。`0`=默认，`1`=高优不可打断
        # @type WelcomeMessagePriority: Integer
        # @param InterruptMode: 智能打断模式。`0`=服务端自动打断，`1`=端上发送打断信令
        # @type InterruptMode: Integer
        # @param InterruptWordList: 打断词列表。AI 说话期间，仅当用户说出列表中的词才打断 AI；不会触发新的回复
        # @type InterruptWordList: Array

        attr_accessor :WelcomeMessage, :WelcomeMessagePriority, :InterruptMode, :InterruptWordList

        def initialize(welcomemessage=nil, welcomemessagepriority=nil, interruptmode=nil, interruptwordlist=nil)
          @WelcomeMessage = welcomemessage
          @WelcomeMessagePriority = welcomemessagepriority
          @InterruptMode = interruptmode
          @InterruptWordList = interruptwordlist
        end

        def deserialize(params)
          @WelcomeMessage = params['WelcomeMessage']
          @WelcomeMessagePriority = params['WelcomeMessagePriority']
          @InterruptMode = params['InterruptMode']
          @InterruptWordList = params['InterruptWordList']
        end
      end

      # 会话配置信息。
      class TalkConversationConfigInfo < TencentCloud::Common::AbstractModel
        # @param SessionTimeout: 会话超时（秒）
        # @type SessionTimeout: Integer
        # @param InterruptionEnabled: 允许打断
        # @type InterruptionEnabled: Boolean
        # @param MaxContextTokens: 最大上下文
        # @type MaxContextTokens: Integer
        # @param IdleDetection: 空闲检测配置
        # @type IdleDetection: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkIdleDetectionConfigInfo`
        # @param EmotionEnabled: 是否启用情绪识别
        # @type EmotionEnabled: Boolean
        # @param SemanticVADEnabled: 是否启用语义vad
        # @type SemanticVADEnabled: Boolean
        # @param NoiseFilterEnabled: 是否启用噪声过滤
        # @type NoiseFilterEnabled: Boolean

        attr_accessor :SessionTimeout, :InterruptionEnabled, :MaxContextTokens, :IdleDetection, :EmotionEnabled, :SemanticVADEnabled, :NoiseFilterEnabled

        def initialize(sessiontimeout=nil, interruptionenabled=nil, maxcontexttokens=nil, idledetection=nil, emotionenabled=nil, semanticvadenabled=nil, noisefilterenabled=nil)
          @SessionTimeout = sessiontimeout
          @InterruptionEnabled = interruptionenabled
          @MaxContextTokens = maxcontexttokens
          @IdleDetection = idledetection
          @EmotionEnabled = emotionenabled
          @SemanticVADEnabled = semanticvadenabled
          @NoiseFilterEnabled = noisefilterenabled
        end

        def deserialize(params)
          @SessionTimeout = params['SessionTimeout']
          @InterruptionEnabled = params['InterruptionEnabled']
          @MaxContextTokens = params['MaxContextTokens']
          unless params['IdleDetection'].nil?
            @IdleDetection = TalkIdleDetectionConfigInfo.new
            @IdleDetection.deserialize(params['IdleDetection'])
          end
          @EmotionEnabled = params['EmotionEnabled']
          @SemanticVADEnabled = params['SemanticVADEnabled']
          @NoiseFilterEnabled = params['NoiseFilterEnabled']
        end
      end

      # IoT工具配置列表
      class TalkIOTTool < TencentCloud::Common::AbstractModel
        # @param Name: 工具名称，同时作为IoT ActionId
        # @type Name: String
        # @param Description: 工具描述，用于模型判断何时调用
        # @type Description: String
        # @param Parameters: 工具参数JSON Schema，JSON对象字符串，必须为type=object
        # @type Parameters: String
        # @param Required: 必填参数名列表，必须存在于Parameters.properties中
        # @type Required: Array

        attr_accessor :Name, :Description, :Parameters, :Required

        def initialize(name=nil, description=nil, parameters=nil, required=nil)
          @Name = name
          @Description = description
          @Parameters = parameters
          @Required = required
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Parameters = params['Parameters']
          @Required = params['Required']
        end
      end

      # 空闲检测信息。
      class TalkIdleDetectionConfigInfo < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param TimeoutSeconds: 用户沉默多少秒后触发空闲回调
        # @type TimeoutSeconds: Float
        # @param MaxRetries: 最大重试次数（1-3）
        # @type MaxRetries: Integer
        # @param IdleResponses: 空闲响应
        # @type IdleResponses: Array

        attr_accessor :Enabled, :TimeoutSeconds, :MaxRetries, :IdleResponses

        def initialize(enabled=nil, timeoutseconds=nil, maxretries=nil, idleresponses=nil)
          @Enabled = enabled
          @TimeoutSeconds = timeoutseconds
          @MaxRetries = maxretries
          @IdleResponses = idleresponses
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @TimeoutSeconds = params['TimeoutSeconds']
          @MaxRetries = params['MaxRetries']
          unless params['IdleResponses'].nil?
            @IdleResponses = []
            params['IdleResponses'].each do |i|
              idleresponseinfo_tmp = IdleResponseInfo.new
              idleresponseinfo_tmp.deserialize(i)
              @IdleResponses << idleresponseinfo_tmp
            end
          end
        end
      end

      # 大模型配置。基础对话必填；如使用平台默认能力，请显式设置 Type=default。
      class TalkLLMConfig < TencentCloud::Common::AbstractModel
        # @param Type: <p>LLM类型：default-平台默认；openai-OpenAI兼容模型</p>
        # @type Type: String
        # @param SystemPrompt: <p>系统提示词</p>
        # @type SystemPrompt: String
        # @param Temperature: <p>采样温度，建议范围0-2</p>
        # @type Temperature: Float
        # @param History: <p>上下文历史轮数，建议范围0-50</p>
        # @type History: Integer
        # @param Timeout: <p>超时时间，秒</p>
        # @type Timeout: Integer
        # @param BaseUrl: <p>OpenAI兼容模型Base URL，仅支持 80 和 443 端口，Type=openai时必填</p>
        # @type BaseUrl: String
        # @param Model: <p>模型名称，Type=openai时必填</p>
        # @type Model: String
        # @param ApiKey: <p>模型API Key，Type=openai时必填</p>
        # @type ApiKey: String
        # @param ExtraBody: <p>额外模型请求体参数，JSON对象字符串，只允许JSON object，不允许普通字符串</p>
        # @type ExtraBody: String

        attr_accessor :Type, :SystemPrompt, :Temperature, :History, :Timeout, :BaseUrl, :Model, :ApiKey, :ExtraBody

        def initialize(type=nil, systemprompt=nil, temperature=nil, history=nil, timeout=nil, baseurl=nil, model=nil, apikey=nil, extrabody=nil)
          @Type = type
          @SystemPrompt = systemprompt
          @Temperature = temperature
          @History = history
          @Timeout = timeout
          @BaseUrl = baseurl
          @Model = model
          @ApiKey = apikey
          @ExtraBody = extrabody
        end

        def deserialize(params)
          @Type = params['Type']
          @SystemPrompt = params['SystemPrompt']
          @Temperature = params['Temperature']
          @History = params['History']
          @Timeout = params['Timeout']
          @BaseUrl = params['BaseUrl']
          @Model = params['Model']
          @ApiKey = params['ApiKey']
          @ExtraBody = params['ExtraBody']
        end
      end

      # LLM配置信息。
      class TalkLLMConfigInfo < TencentCloud::Common::AbstractModel
        # @param LLMType: 支持的LLM类型，openai-OPENAI格式。
        # @type LLMType: String
        # @param Enabled: 是否开启
        # @type Enabled: Boolean
        # @param Model: 模型
        # @type Model: String
        # @param Streaming: 是否开启
        # @type Streaming: Boolean
        # @param Config: 配置信息JSON字符串，根据`LLMType`进行不同的值匹配。例如`LLMType`是`openai`，`Config`值是`{\"ApiKey\":\"sk-09***\",\"ApiUrl\":\"base_url\",\"SystemPrompt\":\"你是一个语音助手\",\"Timeout\":30,\"History\":0,\"MetaInfo\":{\"productID\":\"test\"}}`

        # ## openai
        # ```
        # {
        #    "ApiKey": "sk-XXXXXXXXXXXX",
        #    "ApiUrl": "https://api.openai.com/v1",
        #    "SystemPrompt": "一个小小助手",
        #   "Timeout":20,
        #   "History":10,
        #   "MetaInfo":{}
        # }
        # ```
        # @type Config: String
        # @param Temperature: 温度
        # @type Temperature: Float
        # @param MaxTokens: 最大token数
        # @type MaxTokens: Integer
        # @param TopP: topP
        # @type TopP: Float
        # @param Tools: 工具ID列表
        # @type Tools: Array

        attr_accessor :LLMType, :Enabled, :Model, :Streaming, :Config, :Temperature, :MaxTokens, :TopP, :Tools

        def initialize(llmtype=nil, enabled=nil, model=nil, streaming=nil, config=nil, temperature=nil, maxtokens=nil, topp=nil, tools=nil)
          @LLMType = llmtype
          @Enabled = enabled
          @Model = model
          @Streaming = streaming
          @Config = config
          @Temperature = temperature
          @MaxTokens = maxtokens
          @TopP = topp
          @Tools = tools
        end

        def deserialize(params)
          @LLMType = params['LLMType']
          @Enabled = params['Enabled']
          @Model = params['Model']
          @Streaming = params['Streaming']
          @Config = params['Config']
          @Temperature = params['Temperature']
          @MaxTokens = params['MaxTokens']
          @TopP = params['TopP']
          @Tools = params['Tools']
        end
      end

      # 长期记忆配置。
      class TalkMemoryConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否启用长期记忆；启用时需满足产品和运行时能力要求
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # Talk配置信息描述。
      class TalkProductConfigInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TargetLanguage: 支持的语言，zh-中文；en-英文；默认zh
        # @type TargetLanguage: String
        # @param SystemPrompt:  系统提示词
        # @type SystemPrompt: String
        # @param GreetingMessage: 欢迎语
        # @type GreetingMessage: String
        # @param VoiceType: 音色，支持的音色列表：100510000-阅读男声智逍遥；101001-情感女声智瑜；101002-通用女声智聆；101003-客服女声智美；101004-通用男声智云；101005-通用女声智莉；101006-助手女声智言；101008-客服女声智琪；101009-知性女声智芸；101010-通用男声智华；101011-新闻女声智燕；101012-新闻女声智丹；101013-新闻男声智辉；101014 -新闻男声智宁；101015-男童声智萌；101016-女童声智甜；101017-情感女声智蓉；101018-情感男声智靖；101019-粤语女声智彤。
        # @type VoiceType: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer

        attr_accessor :ProductId, :TargetLanguage, :SystemPrompt, :GreetingMessage, :VoiceType, :CreateTime, :UpdateTime

        def initialize(productid=nil, targetlanguage=nil, systemprompt=nil, greetingmessage=nil, voicetype=nil, createtime=nil, updatetime=nil)
          @ProductId = productid
          @TargetLanguage = targetlanguage
          @SystemPrompt = systemprompt
          @GreetingMessage = greetingmessage
          @VoiceType = voicetype
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TargetLanguage = params['TargetLanguage']
          @SystemPrompt = params['SystemPrompt']
          @GreetingMessage = params['GreetingMessage']
          @VoiceType = params['VoiceType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # twetalk连接配置信息。
      class TalkProductConfigV2Info < TencentCloud::Common::AbstractModel
        # @param Uin: UIN
        # @type Uin: Integer
        # @param AppId: APPID
        # @type AppId: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ConfigName: 配置名称
        # @type ConfigName: String
        # @param TargetLanguage: 语言，默认zh；zh-中文；en-英文
        # @type TargetLanguage: String
        # @param BasicConfig: 基础配置
        # @type BasicConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkBasicConfigInfo`
        # @param STTConfig: 语音识别配置
        # @type STTConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTConfigInfo`
        # @param LLMConfig: 大模型配置
        # @type LLMConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkLLMConfigInfo`
        # @param TTSConfig: 语音合成配置
        # @type TTSConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSConfigInfo`
        # @param ConversationConfig: 会话配置
        # @type ConversationConfig: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkConversationConfigInfo`
        # @param Version: 版本号
        # @type Version: Integer
        # @param CreateTime: 创建时间，秒级时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，秒级时间戳
        # @type UpdateTime: Integer

        attr_accessor :Uin, :AppId, :ProductId, :DeviceName, :ConfigName, :TargetLanguage, :BasicConfig, :STTConfig, :LLMConfig, :TTSConfig, :ConversationConfig, :Version, :CreateTime, :UpdateTime

        def initialize(uin=nil, appid=nil, productid=nil, devicename=nil, configname=nil, targetlanguage=nil, basicconfig=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, conversationconfig=nil, version=nil, createtime=nil, updatetime=nil)
          @Uin = uin
          @AppId = appid
          @ProductId = productid
          @DeviceName = devicename
          @ConfigName = configname
          @TargetLanguage = targetlanguage
          @BasicConfig = basicconfig
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @ConversationConfig = conversationconfig
          @Version = version
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ConfigName = params['ConfigName']
          @TargetLanguage = params['TargetLanguage']
          unless params['BasicConfig'].nil?
            @BasicConfig = TalkBasicConfigInfo.new
            @BasicConfig.deserialize(params['BasicConfig'])
          end
          unless params['STTConfig'].nil?
            @STTConfig = TalkSTTConfigInfo.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          unless params['LLMConfig'].nil?
            @LLMConfig = TalkLLMConfigInfo.new
            @LLMConfig.deserialize(params['LLMConfig'])
          end
          unless params['TTSConfig'].nil?
            @TTSConfig = TalkTTSConfigInfo.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['ConversationConfig'].nil?
            @ConversationConfig = TalkConversationConfigInfo.new
            @ConversationConfig.deserialize(params['ConversationConfig'])
          end
          @Version = params['Version']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 智能体产品信息。
      class TalkProductInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String

        attr_accessor :ProductId, :ProductName

        def initialize(productid=nil, productname=nil)
          @ProductId = productid
          @ProductName = productname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
        end
      end

      # 语音识别配置
      class TalkSTTConfig < TencentCloud::Common::AbstractModel
        # @param Type: 当前仅支持 `trtc`（使用 TRTC 内置语音识别）。
        # @type Type: String
        # @param TRTC: `Type=trtc` 时生效。整体省略表示全部使用 TRTC 默认值。
        # @type TRTC: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkSTTTRTC`

        attr_accessor :Type, :TRTC

        def initialize(type=nil, trtc=nil)
          @Type = type
          @TRTC = trtc
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TRTC'].nil?
            @TRTC = TalkSTTTRTC.new
            @TRTC.deserialize(params['TRTC'])
          end
        end
      end

      # STT配置信息。
      class TalkSTTConfigInfo < TencentCloud::Common::AbstractModel
        # @param STTType: 支持的STT类型，tencent-腾讯；azure-亚马逊；deepgram-Deepgram;系统默认-tencent。
        # @type STTType: String
        # @param Enabled: 是否开启
        # @type Enabled: Boolean
        # @param Config: 配置信息JSON字符串，根据STTType进行不同的值匹配。例如`STTType`是`tencent`，`Config`值是`{\"AppId\":123456,\"SecretId\":\"secretId*****\",\"SecretKey\":\"SecretKey****\",\"EngineType\":\"16k_zh\"}`

        # ## tencent
        # ```
        # {
        #   "AppId": 123456,
        #   "SecretId": "secretId*****",
        #   "SecretKey": "SecretKey****",
        #   "EngineType": "16k_zh"
        # }
        # ```

        # ## azure
        # ```
        # {
        #   "Region": "",
        #   "EndpointId": "id",
        #   "Language": "zh-CN",
        #   "SubscriptionKey": "*****"
        # }
        # ```

        # ## deepgram
        # ```
        # {
        #   "Model": "nova-2",
        #   "Language": "zh",
        #    "BaseUrl":"http://www.deepgram.com",
        #   "ApiKey": "SecretKey****"
        # }
        # ```
        # @type Config: String

        attr_accessor :STTType, :Enabled, :Config

        def initialize(stttype=nil, enabled=nil, config=nil)
          @STTType = stttype
          @Enabled = enabled
          @Config = config
        end

        def deserialize(params)
          @STTType = params['STTType']
          @Enabled = params['Enabled']
          @Config = params['Config']
        end
      end

      # TRTC STT配置
      class TalkSTTTRTC < TencentCloud::Common::AbstractModel
        # @param Language: <p>识别语言，只支持 <code>zh</code>、<code>16k_zh_large</code></p>
        # @type Language: String
        # @param VADSilenceTime: <p>VAD 静默检测时间，单位 ms，范围 240–2000</p>
        # @type VADSilenceTime: Integer
        # @param VADLevel: <p>远场人声抑制等级，范围 0–5</p>
        # @type VADLevel: Integer

        attr_accessor :Language, :VADSilenceTime, :VADLevel

        def initialize(language=nil, vadsilencetime=nil, vadlevel=nil)
          @Language = language
          @VADSilenceTime = vadsilencetime
          @VADLevel = vadlevel
        end

        def deserialize(params)
          @Language = params['Language']
          @VADSilenceTime = params['VADSilenceTime']
          @VADLevel = params['VADLevel']
        end
      end

      # 当前仅支持 `flow`（TRTC Flow TTS）
      class TalkTTSConfig < TencentCloud::Common::AbstractModel
        # @param Type: TTS的类型
        # @type Type: String
        # @param Flow: Flow TTS 的具体配置
        # @type Flow: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkTTSFlow`

        attr_accessor :Type, :Flow

        def initialize(type=nil, flow=nil)
          @Type = type
          @Flow = flow
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Flow'].nil?
            @Flow = TalkTTSFlow.new
            @Flow.deserialize(params['Flow'])
          end
        end
      end

      # TTS配置信息。
      class TalkTTSConfigInfo < TencentCloud::Common::AbstractModel
        # @param TTSType: 支持的LLM类型，支持tencent-腾讯；azure-亚马逊；volcengine-火山引擎；elevenlabs-ELEVENLABS；minimax-MINIMAX；cartesia-CARTESIA；aliyun-阿里；系统默认-tencent。
        # @type TTSType: String
        # @param Enabled: 是否开启
        # @type Enabled: Boolean
        # @param Config: 配置信息JSON字符串，根据`TTSType`进行不同的值匹配。例如`TTSType`是`tencent`，`Config`值是`{\"AppId\":123456,\"SecretId\":\"secretId*****\",\"SecretKey\":\"SecretKey****\",\"VoiceType\":10001}`

        # ## tencent
        # ```
        # {
        #    "AppId": 100203,
        #    "SecretId": "XXXX",
        #    "SecretKey": "XXXXX",
        #   "VoiceType":123456
        # }
        # ```

        # ## azure
        # ```
        # {
        #    "SubscriptionKey": 100203,
        #    "Region": "ch-zn",
        #    "VoiceName": "XXXXX",
        #   "Language":"zh"
        # }
        # ```
        # ## elevenlabs
        # ```
        # {
        #    "ModelId": 100203,
        #    "VoiceId": "ch-zn",
        #    "ApiKey": "XXXXX"
        # }
        # ```
        # ## minimax
        # ```
        # {
        #   "Model":"xxxx",
        #    "ApiUrl": "346w34",
        #    "ApiKey": "xxx",
        #    "GroupId": "ion",
        #   "VoiceType":"xioawei"
        # }
        # ```
        # ## cartesia
        # ```
        # {
        #   "Model":"xxxx",
        #    "ApiKey": "xxx",
        #   "VoiceId":"xioawei"
        # }
        # ```
        # ## aliyun
        # ```
        # {
        #    "VoiceType": 100203,
        #    "RegionId": "XXXX",
        #    "ApiKey": "XXXXX"
        # }
        # ```
        # ## volcengine
        # ```
        # {
        #    "AppId": "346w34",
        #    "AccessToken": "xxx",
        #    "ResourceId": "volc.bigasr.sauc.duration",
        #   "VoiceType":"xioawei"
        # }
        # ```
        # @type Config: String
        # @param Speed: 温度
        # @type Speed: Float
        # @param Volume: 最大token数
        # @type Volume: Float
        # @param Pitch: PITCH
        # @type Pitch: Float

        attr_accessor :TTSType, :Enabled, :Config, :Speed, :Volume, :Pitch

        def initialize(ttstype=nil, enabled=nil, config=nil, speed=nil, volume=nil, pitch=nil)
          @TTSType = ttstype
          @Enabled = enabled
          @Config = config
          @Speed = speed
          @Volume = volume
          @Pitch = pitch
        end

        def deserialize(params)
          @TTSType = params['TTSType']
          @Enabled = params['Enabled']
          @Config = params['Config']
          @Speed = params['Speed']
          @Volume = params['Volume']
          @Pitch = params['Pitch']
        end
      end

      # Flow TTS 的具体配置
      class TalkTTSFlow < TencentCloud::Common::AbstractModel
        # @param VoiceId: <p>精品音色 ID 或克隆音色 ID：具体可参考https://cloud.tencent.com/document/product/647/115414</p>
        # @type VoiceId: String
        # @param Speed: <p>语速，范围 0.5–2.0；为 0 表示采用默认值</p>
        # @type Speed: Float

        attr_accessor :VoiceId, :Speed

        def initialize(voiceid=nil, speed=nil)
          @VoiceId = voiceid
          @Speed = speed
        end

        def deserialize(params)
          @VoiceId = params['VoiceId']
          @Speed = params['Speed']
        end
      end

      # Webhook鉴权配置
      class TalkWebhookAuth < TencentCloud::Common::AbstractModel
        # @param Type: 鉴权类型：none、hmac、static_headers、bearer
        # @type Type: String
        # @param SignKey: HMAC签名密钥，Type=hmac时必填
        # @type SignKey: String
        # @param Headers: 静态鉴权请求头，JSON对象字符串，仅允许白名单header名
        # @type Headers: String
        # @param BearerToken: Bearer Token，Type=bearer时用于生成Authorization请求头
        # @type BearerToken: String

        attr_accessor :Type, :SignKey, :Headers, :BearerToken

        def initialize(type=nil, signkey=nil, headers=nil, bearertoken=nil)
          @Type = type
          @SignKey = signkey
          @Headers = headers
          @BearerToken = bearertoken
        end

        def deserialize(params)
          @Type = params['Type']
          @SignKey = params['SignKey']
          @Headers = params['Headers']
          @BearerToken = params['BearerToken']
        end
      end

      # Webhook工具配置列表
      class TalkWebhookEndpoint < TencentCloud::Common::AbstractModel
        # @param Url: <p>Webhook地址，仅支持 80 和 443 端口</p>
        # @type Url: String
        # @param Timeout: <p>超时时间，0~30 秒</p><p>取值范围：[0, 30]</p>
        # @type Timeout: Integer

        attr_accessor :Url, :Timeout

        def initialize(url=nil, timeout=nil)
          @Url = url
          @Timeout = timeout
        end

        def deserialize(params)
          @Url = params['Url']
          @Timeout = params['Timeout']
        end
      end

      # Webhook工具配置列表
      class TalkWebhookTool < TencentCloud::Common::AbstractModel
        # @param Name: Webhook工具名称
        # @type Name: String
        # @param Description: Webhook工具描述
        # @type Description: String
        # @param Parameters: 工具参数JSON Schema，JSON对象字符串，必须为type=object
        # @type Parameters: String
        # @param Endpoint: Webhook HTTP端点配置
        # @type Endpoint: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkWebhookEndpoint`
        # @param Required: 必填参数名列表，必须存在于Parameters.properties中
        # @type Required: Array
        # @param Auth: Webhook鉴权配置
        # @type Auth: :class:`Tencentcloud::Iotexplorer.v20190423.models.TalkWebhookAuth`

        attr_accessor :Name, :Description, :Parameters, :Endpoint, :Required, :Auth

        def initialize(name=nil, description=nil, parameters=nil, endpoint=nil, required=nil, auth=nil)
          @Name = name
          @Description = description
          @Parameters = parameters
          @Endpoint = endpoint
          @Required = required
          @Auth = auth
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Parameters = params['Parameters']
          unless params['Endpoint'].nil?
            @Endpoint = TalkWebhookEndpoint.new
            @Endpoint.deserialize(params['Endpoint'])
          end
          @Required = params['Required']
          unless params['Auth'].nil?
            @Auth = TalkWebhookAuth.new
            @Auth.deserialize(params['Auth'])
          end
        end
      end

      # 视频语义搜索结果
      class TargetInfo < TencentCloud::Common::AbstractModel
        # @param Id: <p>视频唯一ID</p>
        # @type Id: String
        # @param ProductId: <p>产品ID</p>
        # @type ProductId: String
        # @param DeviceName: <p>设备名称</p>
        # @type DeviceName: String
        # @param StartTimeMs: <p>视频起始时间（毫秒级Unix时间戳）</p>
        # @type StartTimeMs: Integer
        # @param EndTimeMs: <p>视频结束时间（毫秒级Unix时间戳）</p>
        # @type EndTimeMs: Integer
        # @param EventId: <p>用户自定义事件ID，后续扩展使用</p>
        # @type EventId: String
        # @param Summary: <p>视频内容摘要</p>
        # @type Summary: String
        # @param ChannelId: <p>通道ID</p>
        # @type ChannelId: Integer
        # @param Thumbnail: <p>缩略图路径</p>
        # @type Thumbnail: String

        attr_accessor :Id, :ProductId, :DeviceName, :StartTimeMs, :EndTimeMs, :EventId, :Summary, :ChannelId, :Thumbnail

        def initialize(id=nil, productid=nil, devicename=nil, starttimems=nil, endtimems=nil, eventid=nil, summary=nil, channelid=nil, thumbnail=nil)
          @Id = id
          @ProductId = productid
          @DeviceName = devicename
          @StartTimeMs = starttimems
          @EndTimeMs = endtimems
          @EventId = eventid
          @Summary = summary
          @ChannelId = channelid
          @Thumbnail = thumbnail
        end

        def deserialize(params)
          @Id = params['Id']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTimeMs = params['StartTimeMs']
          @EndTimeMs = params['EndTimeMs']
          @EventId = params['EventId']
          @Summary = params['Summary']
          @ChannelId = params['ChannelId']
          @Thumbnail = params['Thumbnail']
        end
      end

      # TerminateTWeSeeSubscription请求参数结构体
      class TerminateTWeSeeSubscriptionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ServiceType: 算法类型。可选值：

        # - `VID_COMP`：视频理解
        # @type ServiceType: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer

        attr_accessor :ProductId, :DeviceName, :ServiceType, :ChannelId

        def initialize(productid=nil, devicename=nil, servicetype=nil, channelid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ServiceType = servicetype
          @ChannelId = channelid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ServiceType = params['ServiceType']
          @ChannelId = params['ChannelId']
        end
      end

      # TerminateTWeSeeSubscription返回参数结构体
      class TerminateTWeSeeSubscriptionResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 退订订单 ID
        # @type OrderId: String
        # @param Status: 退订订单状态
        # @type Status: String
        # @param Price: 退款金额（退款为负数）
        # @type Price: String
        # @param Currency: 币种
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :Status, :Price, :Currency, :RequestId

        def initialize(orderid=nil, status=nil, price=nil, currency=nil, requestid=nil)
          @OrderId = orderid
          @Status = status
          @Price = price
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @Price = params['Price']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
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

      # UnbindTWeTalkAIBot请求参数结构体
      class UnbindTWeTalkAIBotRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 智能体ID
        # @type BotId: String
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :BotId, :ProductId

        def initialize(botid=nil, productid=nil)
          @BotId = botid
          @ProductId = productid
        end

        def deserialize(params)
          @BotId = params['BotId']
          @ProductId = params['ProductId']
        end
      end

      # UnbindTWeTalkAIBot返回参数结构体
      class UnbindTWeTalkAIBotResponse < TencentCloud::Common::AbstractModel
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

      # UnbindTWeTalkAgent请求参数结构体
      class UnbindTWeTalkAgentRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: <p>产品 ID</p>
        # @type ProductId: String
        # @param AgentId: <p>智能体 ID</p>
        # @type AgentId: String
        # @param DeviceName: <p>设备名称；BindingScope=device 时必填</p>
        # @type DeviceName: String
        # @param BindingScope: <p>绑定维度：product 或 device</p>
        # @type BindingScope: String

        attr_accessor :ProductId, :AgentId, :DeviceName, :BindingScope

        def initialize(productid=nil, agentid=nil, devicename=nil, bindingscope=nil)
          @ProductId = productid
          @AgentId = agentid
          @DeviceName = devicename
          @BindingScope = bindingscope
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @AgentId = params['AgentId']
          @DeviceName = params['DeviceName']
          @BindingScope = params['BindingScope']
        end
      end

      # UnbindTWeTalkAgent返回参数结构体
      class UnbindTWeTalkAgentResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOtaModule请求参数结构体
      class UpdateOtaModuleRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FwType: 模块类型
        # @type FwType: String
        # @param Name: 模块类型名称
        # @type Name: String
        # @param Remark: 模块类型描述
        # @type Remark: String

        attr_accessor :ProductID, :FwType, :Name, :Remark

        def initialize(productid=nil, fwtype=nil, name=nil, remark=nil)
          @ProductID = productid
          @FwType = fwtype
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FwType = params['FwType']
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # UpdateOtaModule返回参数结构体
      class UpdateOtaModuleResponse < TencentCloud::Common::AbstractModel
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

      # UpdateOtaTaskStatus请求参数结构体
      class UpdateOtaTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer
        # @param Status: 固件任务取消状态
        # @type Status: Integer

        attr_accessor :ProductId, :TaskId, :Status

        def initialize(productid=nil, taskid=nil, status=nil)
          @ProductId = productid
          @TaskId = taskid
          @Status = status
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TaskId = params['TaskId']
          @Status = params['Status']
        end
      end

      # UpdateOtaTaskStatus返回参数结构体
      class UpdateOtaTaskStatusResponse < TencentCloud::Common::AbstractModel
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

      # TWeSee 语义理解自定义标签请求
      class VisionCustomDetectQuery < TencentCloud::Common::AbstractModel
        # @param Key: 自定义标签的标识符
        # @type Key: String
        # @param Query: 自定义标签的描述文本
        # @type Query: String

        attr_accessor :Key, :Query

        def initialize(key=nil, query=nil)
          @Key = key
          @Query = query
        end

        def deserialize(params)
          @Key = params['Key']
          @Query = params['Query']
        end
      end

      # 目标检测算法检测到的目标详情
      class VisionDetectedObject < TencentCloud::Common::AbstractModel
        # @param Time: 目标出现的媒体时间戳（以图片为输入时始终取值 0）
        # @type Time: Float
        # @param ClassName: 目标类别名
        # @type ClassName: String
        # @param BoundingBox: 目标边界框（坐标顺序为 x1, y1, x2, y2）
        # @type BoundingBox: Array
        # @param Confidence: 置信度（取值范围 0.0 至 1.0）
        # @type Confidence: Float

        attr_accessor :Time, :ClassName, :BoundingBox, :Confidence

        def initialize(time=nil, classname=nil, boundingbox=nil, confidence=nil)
          @Time = time
          @ClassName = classname
          @BoundingBox = boundingbox
          @Confidence = confidence
        end

        def deserialize(params)
          @Time = params['Time']
          @ClassName = params['ClassName']
          @BoundingBox = params['BoundingBox']
          @Confidence = params['Confidence']
        end
      end

      # 目标检测配置
      class VisionObjectDetectConfig < TencentCloud::Common::AbstractModel
        # @param DetectTypes: 检测类别，可选值：
        # - `adult`：成年人
        # - `child`：儿童
        # @type DetectTypes: Array

        attr_accessor :DetectTypes

        def initialize(detecttypes=nil)
          @DetectTypes = detecttypes
        end

        def deserialize(params)
          @DetectTypes = params['DetectTypes']
        end
      end

      # TWeSee 语义理解结果
      class VisionRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态（1：分析失败；2：下载/读取视频/图片失败；3：成功；4：执行中）
        # @type Status: Integer
        # @param DetectedClassifications: 识别到的目标类型。可能取值：

        # - `person`：人
        # - `vehicle`：车辆
        # - `dog`：狗
        # - `cat`：猫
        # - `fire`：火焰
        # - `smoke`：烟雾
        # - `package`：快递包裹
        # - `license_plate`：车牌
        # @type DetectedClassifications: Array
        # @param Summary: 摘要文本
        # @type Summary: String
        # @param AlternativeSummary: 摘要文本（次选语言）
        # @type AlternativeSummary: String
        # @param ErrorCode: 错误码，可能取值：

        # - `DownloadFailed`：下载视频/图片文件失败
        # - `ReadFailed`：读取视频/图片文件失败
        # @type ErrorCode: String
        # @param DetectedObjects: 目标检测算法检测到的目标列表
        # @type DetectedObjects: Array

        attr_accessor :Status, :DetectedClassifications, :Summary, :AlternativeSummary, :ErrorCode, :DetectedObjects

        def initialize(status=nil, detectedclassifications=nil, summary=nil, alternativesummary=nil, errorcode=nil, detectedobjects=nil)
          @Status = status
          @DetectedClassifications = detectedclassifications
          @Summary = summary
          @AlternativeSummary = alternativesummary
          @ErrorCode = errorcode
          @DetectedObjects = detectedobjects
        end

        def deserialize(params)
          @Status = params['Status']
          @DetectedClassifications = params['DetectedClassifications']
          @Summary = params['Summary']
          @AlternativeSummary = params['AlternativeSummary']
          @ErrorCode = params['ErrorCode']
          unless params['DetectedObjects'].nil?
            @DetectedObjects = []
            params['DetectedObjects'].each do |i|
              visiondetectedobject_tmp = VisionDetectedObject.new
              visiondetectedobject_tmp.deserialize(i)
              @DetectedObjects << visiondetectedobject_tmp
            end
          end
        end
      end

      # TWeSee 语义理解任务信息
      class VisionRecognitionTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 云存 AI 服务任务 ID
        # @type TaskId: String
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ChannelId: 通道 ID
        # @type ChannelId: Integer
        # @param StartTime: 对应云存视频的起始时间（秒级 UNIX 时间戳）
        # @type StartTime: Integer
        # @param StartTimeMs: 对应云存视频的起始时间（毫秒级 UNIX 时间戳）
        # @type StartTimeMs: Integer
        # @param EndTime: 对应云存视频的结束时间（秒级 UNIX 时间戳）
        # @type EndTime: Integer
        # @param EndTimeMs: 对应云存视频的结束时间（毫秒级 UNIX 时间戳）
        # @type EndTimeMs: Integer
        # @param Status: 任务状态（1：分析失败；2：下载/读取视频/图片失败；3：成功；4：执行中）
        # @type Status: Integer
        # @param Result: 任务结果
        # @type Result: :class:`Tencentcloud::Iotexplorer.v20190423.models.VisionRecognitionResult`
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 最后更新时间
        # @type UpdateTime: Integer
        # @param CustomId: 自定义任务 ID
        # @type CustomId: String
        # @param Files: 任务输出文件列表
        # @type Files: Array
        # @param FilesInfo: 任务输出文件信息列表
        # @type FilesInfo: Array

        attr_accessor :TaskId, :ProductId, :DeviceName, :ChannelId, :StartTime, :StartTimeMs, :EndTime, :EndTimeMs, :Status, :Result, :CreateTime, :UpdateTime, :CustomId, :Files, :FilesInfo

        def initialize(taskid=nil, productid=nil, devicename=nil, channelid=nil, starttime=nil, starttimems=nil, endtime=nil, endtimems=nil, status=nil, result=nil, createtime=nil, updatetime=nil, customid=nil, files=nil, filesinfo=nil)
          @TaskId = taskid
          @ProductId = productid
          @DeviceName = devicename
          @ChannelId = channelid
          @StartTime = starttime
          @StartTimeMs = starttimems
          @EndTime = endtime
          @EndTimeMs = endtimems
          @Status = status
          @Result = result
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CustomId = customid
          @Files = files
          @FilesInfo = filesinfo
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ChannelId = params['ChannelId']
          @StartTime = params['StartTime']
          @StartTimeMs = params['StartTimeMs']
          @EndTime = params['EndTime']
          @EndTimeMs = params['EndTimeMs']
          @Status = params['Status']
          unless params['Result'].nil?
            @Result = VisionRecognitionResult.new
            @Result.deserialize(params['Result'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CustomId = params['CustomId']
          @Files = params['Files']
          unless params['FilesInfo'].nil?
            @FilesInfo = []
            params['FilesInfo'].each do |i|
              cloudstorageaiservicetaskfileinfo_tmp = CloudStorageAIServiceTaskFileInfo.new
              cloudstorageaiservicetaskfileinfo_tmp.deserialize(i)
              @FilesInfo << cloudstorageaiservicetaskfileinfo_tmp
            end
          end
        end
      end

      # 视频摘要配置
      class VisionSummaryConfig < TencentCloud::Common::AbstractModel
        # @param OutputLang: <p>主输出语言，可选值包括：</p><ul><li><code>zh</code> 中文（默认值）</li><li><code>en</code> 英语</li><li><code>ja</code> 日语</li><li><code>ko</code> 韩文</li><li><code>pt-BR</code> 葡萄牙语（巴西）</li><li><code>th</code> 泰语</li><li><code>ms</code> 马来语</li></ul>
        # @type OutputLang: String
        # @param AlternativeOutputLang: <p>次选输出语言，可选值包括：</p><ul><li><code>zh</code> 中文</li><li><code>en</code> 英语</li><li><code>ja</code> 日语</li><li><code>ko</code> 韩文</li><li><code>pt-BR</code> 葡萄牙语（巴西）</li><li><code>th</code> 泰语</li><li><code>ms</code> 马来语</li></ul>
        # @type AlternativeOutputLang: String
        # @param MultiCameraLayout: <p>多摄像头布局定义。可选值包括：</p><ul><li><p>单摄（默认值）：<code>Single</code></p></li><li><p>双摄（纵向排列）- 全部画面：<code>Vertical,Num=2,Index=0;1</code></p></li><li><p>双摄（纵向排列）- 画面1：<code>Vertical,Num=2,Index=0</code></p></li><li><p>双摄（纵向排列）- 画面2：<code>Vertical,Num=2,Index=1</code></p></li><li><p>三摄（纵向排列）- 全部画面：<code>Vertical,Num=3,Index=0;1;2</code></p></li><li><p>三摄（纵向排列）- 画面1：<code>Vertical,Num=3,Index=0</code></p></li><li><p>三摄（纵向排列）- 画面2：<code>Vertical,Num=3,Index=1</code></p></li><li><p>三摄（纵向排列）- 画面3：<code>Vertical,Num=3,Index=2</code></p></li><li><p>三摄（纵向排列）- 画面1+2：<code>Vertical,Num=3,Index=0;1</code></p></li><li><p>三摄（纵向排列）- 画面1+3：<code>Vertical,Num=3,Index=0;2</code></p></li><li><p>三摄（纵向排列）- 画面2+3：<code>Vertical,Num=3,Index=1;2</code></p></li></ul>
        # @type MultiCameraLayout: String
        # @param DetectTypes: <p>拓展的目标及事件检测类别。可选值包括：</p><p><strong>通用事件标签</strong></p><ul><li><code>person_enter</code> 有人进入</li><li><code>vehicle_entering</code> 车辆进入</li><li><code>vehicle_parking</code> 车辆停靠</li><li><code>pet</code> 有宠物</li><li><code>no_signal</code> 视频画面异常（无信号等）</li></ul><p><strong>看家护院</strong></p><ul><li><code>person_climbing_fence</code> 有人翻围墙</li><li><code>door_window_open</code> 门窗被开启</li><li><code>person_carrying_object</code> 有人搬运物品</li></ul><p><strong>商铺看管</strong></p><ul><li><code>person_at_cashier</code> 有人在收银台</li><li><code>person_taking_goods</code> 有人拿商品</li><li><code>person_night_moving</code> 夜间有人移动</li></ul><p><strong>公共及防火安全</strong></p><ul><li><code>person_stealing</code> 有人偷盗</li><li><code>crowd</code> 多人聚集</li><li><code>smoking</code> 有人吸烟</li><li><code>safety_fire</code> 明火</li><li><code>safety_smoke</code> 浓烟</li><li><code>fireworks</code> 有人燃放烟花爆竹</li><li><code>knife</code> 有人持刀</li><li><code>gun</code> 有人持枪</li><li><code>fight</code> 有人打架</li><li><code>hurt</code> 有人受伤流血</li></ul><p><strong>养殖看护</strong></p><ul><li><code>person_feeding_animal</code> 有人投喂牲畜</li><li><code>animal_lying</code> 有动物躺地上</li><li><code>animal_wild_intrusion</code> 野生动物入侵</li></ul><p><strong>果园农田</strong></p><ul><li><code>person_picking_fruit</code> 有人采摘果实</li><li><code>person_carrying_bag</code> 有人携带包裹</li></ul><p><strong>鱼塘看管</strong></p><ul><li><code>fishing</code> 有人钓鱼</li><li><code>net_fishing</code> 有人撒网</li><li><code>person_carrying_fishing_gear</code> 有人携带渔具</li><li><code>loitering_near_water</code> 有人岸边逗留</li><li><code>throwing_into_water</code> 有人投掷物品</li></ul><p><strong>婴儿看护</strong></p><ul><li><code>baby</code> 有婴儿</li><li><code>baby_dropping</code> 婴儿跌落床铺</li><li><code>person_holding_baby</code> 有人抱起婴儿</li><li><code>baby_rolling</code> 婴儿翻滚</li><li><code>baby_crying</code> 婴儿哭闹</li></ul><p><strong>儿童看护</strong></p><ul><li><code>child</code> 有小孩</li><li><code>child_falling</code> 小孩摔倒</li><li><code>child_entering_kitchen</code> 小孩进入厨房</li><li><code>child_climbing_window</code> 小孩攀爬室内窗户</li><li><code>child_near_water</code> 小孩靠近水域</li></ul><p><strong>老人看护</strong></p><ul><li><code>elderly</code> 有老人</li><li><code>elderly_falling</code> 老人摔倒</li><li><code>elderly_eating</code> 老人用餐</li><li><code>elderly_using_stove</code> 老人使用灶具</li></ul><p><strong>宠物看护</strong></p><ul><li><code>pet_eating</code> 宠物进食</li><li><code>pet_damaging</code> 宠物损坏家具</li><li><code>pet_barking</code> 宠物吠叫</li><li><code>pet_scratching_door</code> 宠物挠门</li></ul>
        # @type DetectTypes: Array
        # @param CustomDetectQueries: <p>自定义检测标签</p>
        # @type CustomDetectQueries: Array
        # @param DetectContinuous: <p>标签持续检测配置</p>
        # @type DetectContinuous: Array
        # @param SummaryPrompt: <p>自定义摘要提示词</p>
        # @type SummaryPrompt: String

        attr_accessor :OutputLang, :AlternativeOutputLang, :MultiCameraLayout, :DetectTypes, :CustomDetectQueries, :DetectContinuous, :SummaryPrompt

        def initialize(outputlang=nil, alternativeoutputlang=nil, multicameralayout=nil, detecttypes=nil, customdetectqueries=nil, detectcontinuous=nil, summaryprompt=nil)
          @OutputLang = outputlang
          @AlternativeOutputLang = alternativeoutputlang
          @MultiCameraLayout = multicameralayout
          @DetectTypes = detecttypes
          @CustomDetectQueries = customdetectqueries
          @DetectContinuous = detectcontinuous
          @SummaryPrompt = summaryprompt
        end

        def deserialize(params)
          @OutputLang = params['OutputLang']
          @AlternativeOutputLang = params['AlternativeOutputLang']
          @MultiCameraLayout = params['MultiCameraLayout']
          @DetectTypes = params['DetectTypes']
          unless params['CustomDetectQueries'].nil?
            @CustomDetectQueries = []
            params['CustomDetectQueries'].each do |i|
              visioncustomdetectquery_tmp = VisionCustomDetectQuery.new
              visioncustomdetectquery_tmp.deserialize(i)
              @CustomDetectQueries << visioncustomdetectquery_tmp
            end
          end
          unless params['DetectContinuous'].nil?
            @DetectContinuous = []
            params['DetectContinuous'].each do |i|
              seedetectcontinuousconfig_tmp = SeeDetectContinuousConfig.new
              seedetectcontinuousconfig_tmp.deserialize(i)
              @DetectContinuous << seedetectcontinuousconfig_tmp
            end
          end
          @SummaryPrompt = params['SummaryPrompt']
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

    end
  end
end

