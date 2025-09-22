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
  module Mna
    module V20210119
      # 激活设备
      class ActivateHardware < TencentCloud::Common::AbstractModel
        # @param Vendor: 厂商名称
        # @type Vendor: String
        # @param SN: 设备SN序列号
        # @type SN: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Description: 备注
        # @type Description: String
        # @param DataKey: 设备密钥
        # @type DataKey: String
        # @param AccessScope: 接入环境。0：公有云网关；1：自有网关；2：公有云网关和自有网关。不填默认公有云网关。 具体含义： 公有云网关：即该设备只能接入公有云网关（就近接入） 自有网关：即该设备只能接入已经注册上线的自有网关（就近接入或固定ip接入） 公有云网关和自有网关：即该设备同时可以接入公有云网关和已经注册上线的自有网关（就近接入或固定ip接入）
        # @type AccessScope: Integer
        # @param LicensePayMode: 当付费方为租户时，可选择租户license付费方式：
        # 0，月度授权
        # 1，永久授权
        # 若不传则默认为月度授权。
        # 当付费方为厂商时，此参数无效
        # @type LicensePayMode: Integer
        # @param GroupId: 设备分组ID
        # @type GroupId: String
        # @param GroupName: 设备分组名称，预留参数，需要分组时传入GroupId
        # @type GroupName: String
        # @param FlowTrunc: 设备无流量包处理方式，0: 按量付费，1: 截断加速
        # @type FlowTrunc: Integer
        # @param DeviceId: 激活后的设备ID
        # @type DeviceId: String

        attr_accessor :Vendor, :SN, :DeviceName, :Description, :DataKey, :AccessScope, :LicensePayMode, :GroupId, :GroupName, :FlowTrunc, :DeviceId

        def initialize(vendor=nil, sn=nil, devicename=nil, description=nil, datakey=nil, accessscope=nil, licensepaymode=nil, groupid=nil, groupname=nil, flowtrunc=nil, deviceid=nil)
          @Vendor = vendor
          @SN = sn
          @DeviceName = devicename
          @Description = description
          @DataKey = datakey
          @AccessScope = accessscope
          @LicensePayMode = licensepaymode
          @GroupId = groupid
          @GroupName = groupname
          @FlowTrunc = flowtrunc
          @DeviceId = deviceid
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @SN = params['SN']
          @DeviceName = params['DeviceName']
          @Description = params['Description']
          @DataKey = params['DataKey']
          @AccessScope = params['AccessScope']
          @LicensePayMode = params['LicensePayMode']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @FlowTrunc = params['FlowTrunc']
          @DeviceId = params['DeviceId']
        end
      end

      # ActivateHardware请求参数结构体
      class ActivateHardwareRequest < TencentCloud::Common::AbstractModel
        # @param Hardware: 待激活的设备列表
        # @type Hardware: Array

        attr_accessor :Hardware

        def initialize(hardware=nil)
          @Hardware = hardware
        end

        def deserialize(params)
          unless params['Hardware'].nil?
            @Hardware = []
            params['Hardware'].each do |i|
              activatehardware_tmp = ActivateHardware.new
              activatehardware_tmp.deserialize(i)
              @Hardware << activatehardware_tmp
            end
          end
        end
      end

      # ActivateHardware返回参数结构体
      class ActivateHardwareResponse < TencentCloud::Common::AbstractModel
        # @param HardwareInfo: 完成激活的设备信息
        # @type HardwareInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HardwareInfo, :RequestId

        def initialize(hardwareinfo=nil, requestid=nil)
          @HardwareInfo = hardwareinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HardwareInfo'].nil?
            @HardwareInfo = []
            params['HardwareInfo'].each do |i|
              activatehardware_tmp = ActivateHardware.new
              activatehardware_tmp.deserialize(i)
              @HardwareInfo << activatehardware_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 激活设备数统计
      class ActiveDeviceList < TencentCloud::Common::AbstractModel
        # @param Count: 数量
        # @type Count: Integer
        # @param Time: 时间
        # @type Time: String

        attr_accessor :Count, :Time

        def initialize(count=nil, time=nil)
          @Count = count
          @Time = time
        end

        def deserialize(params)
          @Count = params['Count']
          @Time = params['Time']
        end
      end

      # AddDevice请求参数结构体
      class AddDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceName: 新建设备的名称
        # @type DeviceName: String
        # @param Remark: 新建设备的备注
        # @type Remark: String
        # @param DataKey: 新建设备的base64密钥字符串，非必选，如果不填写则由系统自动生成
        # @type DataKey: String
        # @param Encrypted: 是否设置预置密钥
        # @type Encrypted: Boolean
        # @param AccessScope: 接入环境。0：公有云网关；1：自有网关；2：公有云网关和自有网关。不填默认公有云网关。
        # 具体含义：
        # 公有云网关：即该设备只能接入公有云网关（就近接入）
        # 自有网关：即该设备只能接入已经注册上线的自有网关（就近接入或固定ip接入）
        # 公有云网关和自有网关：即该设备同时可以接入公有云网关和已经注册上线的自有网关（就近接入或固定ip接入）
        # @type AccessScope: Integer
        # @param LicensePayMode: license付费方式：
        # 0，月度授权
        # 1，永久授权
        # 若不传则默认为月度授权，永久授权设备需要调用OrderPerLicense接口支付授权费，否则设备无法使用
        # @type LicensePayMode: Integer
        # @param GroupName: 设备分组名称，非必选，预留参数，需要分组时传入GroupId
        # @type GroupName: String
        # @param GroupId: 设备分组ID，非必选，如果不填写则默认设备无分组
        # @type GroupId: String
        # @param FlowTrunc: 设备无流量包处理方式，0: 按量付费，1: 截断加速
        # @type FlowTrunc: Integer

        attr_accessor :DeviceName, :Remark, :DataKey, :Encrypted, :AccessScope, :LicensePayMode, :GroupName, :GroupId, :FlowTrunc

        def initialize(devicename=nil, remark=nil, datakey=nil, encrypted=nil, accessscope=nil, licensepaymode=nil, groupname=nil, groupid=nil, flowtrunc=nil)
          @DeviceName = devicename
          @Remark = remark
          @DataKey = datakey
          @Encrypted = encrypted
          @AccessScope = accessscope
          @LicensePayMode = licensepaymode
          @GroupName = groupname
          @GroupId = groupid
          @FlowTrunc = flowtrunc
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Remark = params['Remark']
          @DataKey = params['DataKey']
          @Encrypted = params['Encrypted']
          @AccessScope = params['AccessScope']
          @LicensePayMode = params['LicensePayMode']
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @FlowTrunc = params['FlowTrunc']
        end
      end

      # AddDevice返回参数结构体
      class AddDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DataKey: 经过加密算法加密后的base64格式密钥
        # @type DataKey: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param Signature: 签名字符串
        # @type Signature: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataKey, :DeviceId, :Signature, :RequestId

        def initialize(datakey=nil, deviceid=nil, signature=nil, requestid=nil)
          @DataKey = datakey
          @DeviceId = deviceid
          @Signature = signature
          @RequestId = requestid
        end

        def deserialize(params)
          @DataKey = params['DataKey']
          @DeviceId = params['DeviceId']
          @Signature = params['Signature']
          @RequestId = params['RequestId']
        end
      end

      # AddGroup请求参数结构体
      class AddGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 分组的名称
        # @type GroupName: String
        # @param Description: 分组的描述
        # @type Description: String

        attr_accessor :GroupName, :Description

        def initialize(groupname=nil, description=nil)
          @GroupName = groupname
          @Description = description
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Description = params['Description']
        end
      end

      # AddGroup返回参数结构体
      class AddGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组的唯一ID，仅做分组唯一区分
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId

        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # AddHardware请求参数结构体
      class AddHardwareRequest < TencentCloud::Common::AbstractModel
        # @param Hardware: 硬件列表
        # @type Hardware: Array

        attr_accessor :Hardware

        def initialize(hardware=nil)
          @Hardware = hardware
        end

        def deserialize(params)
          unless params['Hardware'].nil?
            @Hardware = []
            params['Hardware'].each do |i|
              hardware_tmp = Hardware.new
              hardware_tmp.deserialize(i)
              @Hardware << hardware_tmp
            end
          end
        end
      end

      # AddHardware返回参数结构体
      class AddHardwareResponse < TencentCloud::Common::AbstractModel
        # @param Hardware: 硬件设备
        # @type Hardware: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Hardware, :RequestId

        def initialize(hardware=nil, requestid=nil)
          @Hardware = hardware
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Hardware'].nil?
            @Hardware = []
            params['Hardware'].each do |i|
              hardware_tmp = Hardware.new
              hardware_tmp.deserialize(i)
              @Hardware << hardware_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AddL3Conn请求参数结构体
      class AddL3ConnRequest < TencentCloud::Common::AbstractModel
        # @param Cidr1: 设置互通网段CIDR1，支持： 10.0.0.0 - 10.255.255.255，172.16.0.0 - 172.31.255.255，192.168.0.0 - 192.168.255.255
        # @type Cidr1: String
        # @param Cidr2: 设置互通网段CIDR2，支持： 10.0.0.0 - 10.255.255.255，172.16.0.0 - 172.31.255.255，192.168.0.0 - 192.168.255.255
        # @type Cidr2: String
        # @param DeviceId1: CIDR1对应的设备ID
        # @type DeviceId1: String
        # @param DeviceId2: CIDR2对应的设备ID
        # @type DeviceId2: String
        # @param Description: 规则描述
        # @type Description: String

        attr_accessor :Cidr1, :Cidr2, :DeviceId1, :DeviceId2, :Description

        def initialize(cidr1=nil, cidr2=nil, deviceid1=nil, deviceid2=nil, description=nil)
          @Cidr1 = cidr1
          @Cidr2 = cidr2
          @DeviceId1 = deviceid1
          @DeviceId2 = deviceid2
          @Description = description
        end

        def deserialize(params)
          @Cidr1 = params['Cidr1']
          @Cidr2 = params['Cidr2']
          @DeviceId1 = params['DeviceId1']
          @DeviceId2 = params['DeviceId2']
          @Description = params['Description']
        end
      end

      # AddL3Conn返回参数结构体
      class AddL3ConnResponse < TencentCloud::Common::AbstractModel
        # @param L3ConnId: 互通规则ID
        # @type L3ConnId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :L3ConnId, :RequestId

        def initialize(l3connid=nil, requestid=nil)
          @L3ConnId = l3connid
          @RequestId = requestid
        end

        def deserialize(params)
          @L3ConnId = params['L3ConnId']
          @RequestId = params['RequestId']
        end
      end

      # CreateEncryptedKey请求参数结构体
      class CreateEncryptedKeyRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateEncryptedKey返回参数结构体
      class CreateEncryptedKeyResponse < TencentCloud::Common::AbstractModel
        # @param EncryptedKey: 预置密钥
        # @type EncryptedKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EncryptedKey, :RequestId

        def initialize(encryptedkey=nil, requestid=nil)
          @EncryptedKey = encryptedkey
          @RequestId = requestid
        end

        def deserialize(params)
          @EncryptedKey = params['EncryptedKey']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 删除设备的唯一ID
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

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 删除指定分组
        # @type GroupId: String

        attr_accessor :GroupId

        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteL3Conn请求参数结构体
      class DeleteL3ConnRequest < TencentCloud::Common::AbstractModel
        # @param L3ConnIdList: 互通规则ID列表
        # @type L3ConnIdList: Array

        attr_accessor :L3ConnIdList

        def initialize(l3connidlist=nil)
          @L3ConnIdList = l3connidlist
        end

        def deserialize(params)
          @L3ConnIdList = params['L3ConnIdList']
        end
      end

      # DeleteL3Conn返回参数结构体
      class DeleteL3ConnResponse < TencentCloud::Common::AbstractModel
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

      # 设备的基本信息
      class DeviceBaseInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备唯一ID
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param CreateTime: 设备创建的时间，单位：ms
        # @type CreateTime: String
        # @param LastTime: 设备最后在线时间，单位：ms
        # @type LastTime: String
        # @param Remark: 设备的备注
        # @type Remark: String
        # @param AccessScope: 接入环境。0：公有云网关；1：自有网关；2：公有云网关和自有网关。默认公有云网关。 具体含义： 公有云网关：即该设备只能接入公有云网关（就近接入） 自有网关：即该设备只能接入已经注册上线的自有网关（就近接入或固定ip接入） 公有云网关和自有网关：即该设备同时可以接入公有云网关和已经注册上线的自有网关（就近接入或固定ip接入）
        # @type AccessScope: Integer
        # @param LicensePayMode: license授权有效期 0：月度授权 1：永久授权
        # @type LicensePayMode: Integer
        # @param Payer: 付费方 0：厂商付费 1：客户付费
        # @type Payer: Integer
        # @param GroupId: 设备分组ID
        # @type GroupId: String
        # @param GroupName: 设备分组名称
        # @type GroupName: String
        # @param FlowTrunc: 设备无流量包处理方式，0: 按量付费，1: 截断加速
        # @type FlowTrunc: Integer
        # @param Sn: 设备sn
        # @type Sn: String
        # @param Vendor: 厂商
        # @type Vendor: String

        attr_accessor :DeviceId, :DeviceName, :CreateTime, :LastTime, :Remark, :AccessScope, :LicensePayMode, :Payer, :GroupId, :GroupName, :FlowTrunc, :Sn, :Vendor

        def initialize(deviceid=nil, devicename=nil, createtime=nil, lasttime=nil, remark=nil, accessscope=nil, licensepaymode=nil, payer=nil, groupid=nil, groupname=nil, flowtrunc=nil, sn=nil, vendor=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @CreateTime = createtime
          @LastTime = lasttime
          @Remark = remark
          @AccessScope = accessscope
          @LicensePayMode = licensepaymode
          @Payer = payer
          @GroupId = groupid
          @GroupName = groupname
          @FlowTrunc = flowtrunc
          @Sn = sn
          @Vendor = vendor
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @CreateTime = params['CreateTime']
          @LastTime = params['LastTime']
          @Remark = params['Remark']
          @AccessScope = params['AccessScope']
          @LicensePayMode = params['LicensePayMode']
          @Payer = params['Payer']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @FlowTrunc = params['FlowTrunc']
          @Sn = params['Sn']
          @Vendor = params['Vendor']
        end
      end

      # 设备详细信息
      class DeviceDetails < TencentCloud::Common::AbstractModel
        # @param DeviceBaseInfo: 设备基本信息
        # @type DeviceBaseInfo: :class:`Tencentcloud::Mna.v20210119.models.DeviceBaseInfo`
        # @param DeviceNetInfo: 设备网络信息
        # @type DeviceNetInfo: Array
        # @param GatewaySite: 聚合服务器地址
        # @type GatewaySite: String
        # @param BusinessDownRate: 业务下行速率
        # @type BusinessDownRate: Float
        # @param BusinessUpRate: 业务上行速率
        # @type BusinessUpRate: Float

        attr_accessor :DeviceBaseInfo, :DeviceNetInfo, :GatewaySite, :BusinessDownRate, :BusinessUpRate

        def initialize(devicebaseinfo=nil, devicenetinfo=nil, gatewaysite=nil, businessdownrate=nil, businessuprate=nil)
          @DeviceBaseInfo = devicebaseinfo
          @DeviceNetInfo = devicenetinfo
          @GatewaySite = gatewaysite
          @BusinessDownRate = businessdownrate
          @BusinessUpRate = businessuprate
        end

        def deserialize(params)
          unless params['DeviceBaseInfo'].nil?
            @DeviceBaseInfo = DeviceBaseInfo.new
            @DeviceBaseInfo.deserialize(params['DeviceBaseInfo'])
          end
          unless params['DeviceNetInfo'].nil?
            @DeviceNetInfo = []
            params['DeviceNetInfo'].each do |i|
              devicenetinfo_tmp = DeviceNetInfo.new
              devicenetinfo_tmp.deserialize(i)
              @DeviceNetInfo << devicenetinfo_tmp
            end
          end
          @GatewaySite = params['GatewaySite']
          @BusinessDownRate = params['BusinessDownRate']
          @BusinessUpRate = params['BusinessUpRate']
        end
      end

      # 设备网络状态信息
      class DeviceNetInfo < TencentCloud::Common::AbstractModel
        # @param Type: 网络类型：
        # 0:数据
        # 1:Wi-Fi
        # 2:有线
        # @type Type: Integer
        # @param DataEnable: 启用/禁用
        # @type DataEnable: Boolean
        # @param UploadLimit: 上行限速
        # @type UploadLimit: String
        # @param DownloadLimit: 下行限速
        # @type DownloadLimit: String
        # @param DataRx: 接收实时速率
        # @type DataRx: Integer
        # @param DataTx: 发送实时速率
        # @type DataTx: Integer
        # @param Vendor: 运营商类型：
        # 1: 中国移动；
        # 2: 中国电信;
        # 3: 中国联通
        # @type Vendor: Integer
        # @param State: 连接状态：
        # 0:无连接
        # 1:连接中
        # 2:已连接
        # @type State: Integer
        # @param PublicIp: 公网IP
        # @type PublicIp: String
        # @param SignalStrength: 信号强度/单位：dbm
        # @type SignalStrength: Integer
        # @param Rat: 数据网络类型：
        # -1 ：无效值
        # 2：2G
        # 3：3G
        # 4：4G
        # 5：5G
        # @type Rat: Integer
        # @param NetInfoName: 网卡名
        # @type NetInfoName: String
        # @param DownRate: 下行实时速率（浮点数类型代替上一版本DataRx的整型）
        # @type DownRate: Float
        # @param UpRate: 上行实时速率（浮点数类型代替上一版本TxRate的整型）
        # @type UpRate: Float

        attr_accessor :Type, :DataEnable, :UploadLimit, :DownloadLimit, :DataRx, :DataTx, :Vendor, :State, :PublicIp, :SignalStrength, :Rat, :NetInfoName, :DownRate, :UpRate

        def initialize(type=nil, dataenable=nil, uploadlimit=nil, downloadlimit=nil, datarx=nil, datatx=nil, vendor=nil, state=nil, publicip=nil, signalstrength=nil, rat=nil, netinfoname=nil, downrate=nil, uprate=nil)
          @Type = type
          @DataEnable = dataenable
          @UploadLimit = uploadlimit
          @DownloadLimit = downloadlimit
          @DataRx = datarx
          @DataTx = datatx
          @Vendor = vendor
          @State = state
          @PublicIp = publicip
          @SignalStrength = signalstrength
          @Rat = rat
          @NetInfoName = netinfoname
          @DownRate = downrate
          @UpRate = uprate
        end

        def deserialize(params)
          @Type = params['Type']
          @DataEnable = params['DataEnable']
          @UploadLimit = params['UploadLimit']
          @DownloadLimit = params['DownloadLimit']
          @DataRx = params['DataRx']
          @DataTx = params['DataTx']
          @Vendor = params['Vendor']
          @State = params['State']
          @PublicIp = params['PublicIp']
          @SignalStrength = params['SignalStrength']
          @Rat = params['Rat']
          @NetInfoName = params['NetInfoName']
          @DownRate = params['DownRate']
          @UpRate = params['UpRate']
        end
      end

      # 设备付费模式信息
      class DevicePayModeInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param PayMode: 付费模式。
        # 1：预付费流量包
        # 0：按流量后付费
        # @type PayMode: Integer
        # @param PayModeDesc: 付费模式描述
        # @type PayModeDesc: String
        # @param ResourceId: 流量包ID，仅当付费模式为流量包类型时才有。
        # @type ResourceId: String

        attr_accessor :DeviceId, :PayMode, :PayModeDesc, :ResourceId

        def initialize(deviceid=nil, paymode=nil, paymodedesc=nil, resourceid=nil)
          @DeviceId = deviceid
          @PayMode = paymode
          @PayModeDesc = paymodedesc
          @ResourceId = resourceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @PayMode = params['PayMode']
          @PayModeDesc = params['PayModeDesc']
          @ResourceId = params['ResourceId']
        end
      end

      # DownloadActiveDeviceCount请求参数结构体
      class DownloadActiveDeviceCountRequest < TencentCloud::Common::AbstractModel
        # @param Period: 查询粒度。0:day, 1:week, 2:month, 不传默认为day
        # @type Period: Integer
        # @param StartTime: 开始时间。单位秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间。单位秒
        # @type EndTime: Integer
        # @param DevGroup: 设备组, 不传查询全部
        # @type DevGroup: String
        # @param LicenseType: license类型, 不传查询全部, 1: 租户月付，2：厂商月付，3：永久授权
        # @type LicenseType: Integer

        attr_accessor :Period, :StartTime, :EndTime, :DevGroup, :LicenseType

        def initialize(period=nil, starttime=nil, endtime=nil, devgroup=nil, licensetype=nil)
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @DevGroup = devgroup
          @LicenseType = licensetype
        end

        def deserialize(params)
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DevGroup = params['DevGroup']
          @LicenseType = params['LicenseType']
        end
      end

      # DownloadActiveDeviceCount返回参数结构体
      class DownloadActiveDeviceCountResponse < TencentCloud::Common::AbstractModel
        # @param FilePath: URL地址
        # @type FilePath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FilePath, :RequestId

        def initialize(filepath=nil, requestid=nil)
          @FilePath = filepath
          @RequestId = requestid
        end

        def deserialize(params)
          @FilePath = params['FilePath']
          @RequestId = params['RequestId']
        end
      end

      # 设备流量信息
      class FlowDetails < TencentCloud::Common::AbstractModel
        # @param NetDetails: 流量数据点
        # @type NetDetails: Array
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param MaxValue: 流量最大值（单位：bytes）
        # @type MaxValue: Float
        # @param AvgValue: 流量平均值（单位：bytes）
        # @type AvgValue: Float
        # @param TotalValue: 流量总值（单位：bytes）
        # @type TotalValue: Float

        attr_accessor :NetDetails, :DeviceId, :MaxValue, :AvgValue, :TotalValue

        def initialize(netdetails=nil, deviceid=nil, maxvalue=nil, avgvalue=nil, totalvalue=nil)
          @NetDetails = netdetails
          @DeviceId = deviceid
          @MaxValue = maxvalue
          @AvgValue = avgvalue
          @TotalValue = totalvalue
        end

        def deserialize(params)
          unless params['NetDetails'].nil?
            @NetDetails = []
            params['NetDetails'].each do |i|
              netdetails_tmp = NetDetails.new
              netdetails_tmp.deserialize(i)
              @NetDetails << netdetails_tmp
            end
          end
          @DeviceId = params['DeviceId']
          @MaxValue = params['MaxValue']
          @AvgValue = params['AvgValue']
          @TotalValue = params['TotalValue']
        end
      end

      # 流量包信息
      class FlowPackageInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 流量包的唯一资源ID
        # @type ResourceId: String
        # @param AppId: 流量包所属的用户AppId
        # @type AppId: Integer
        # @param PackageType: 流量包规格类型。可取值如下：
        # DEVICE_1_FLOW_20G、DEVICE_2_FLOW_50G、
        # DEVICE_3_FLOW_100G、
        # DEVICE_5_FLOW_500G，分别代表20G、50G、100G、500G档位的流量包。
        # 档位也影响流量包可绑定的设备数量上限：
        # 20G：最多绑定1个设备
        # 50G：最多绑定2个设备
        # 100G：最多绑定3个设备
        # 500G：最多绑定5个设备
        # @type PackageType: String
        # @param Status: 流量包状态，0：未生效，1：有效期内，2：已过期
        # @type Status: Integer
        # @param CreateTime: 购买时间，Unix时间戳格式，单位：秒
        # @type CreateTime: Integer
        # @param ActiveTime: 生效时间，Unix时间戳格式，单位：秒
        # @type ActiveTime: Integer
        # @param ExpireTime: 过期时间，Unix时间戳格式，单位：秒
        # @type ExpireTime: Integer
        # @param DeviceList: 流量包绑定的设备ID列表
        # @type DeviceList: Array
        # @param CapacitySize: 流量包总容量，单位：MB
        # @type CapacitySize: Integer
        # @param CapacityRemain: 流量包余量，单位：MB
        # @type CapacityRemain: Integer
        # @param RenewFlag: 自动续费标识。true代表自动续费，false代表不自动续费
        # @type RenewFlag: Boolean
        # @param ModifyStatus: 资源包变更状态，0：未发生变配；1：变配中；2：已变配或已续费
        # @type ModifyStatus: Integer
        # @param TruncFlag: 流量截断标识。true代表开启流量截断，false代表不开启流量截断
        # @type TruncFlag: Boolean
        # @param CapacityRemainPrecise: 流量包精确余量，单位：MB
        # @type CapacityRemainPrecise: Integer

        attr_accessor :ResourceId, :AppId, :PackageType, :Status, :CreateTime, :ActiveTime, :ExpireTime, :DeviceList, :CapacitySize, :CapacityRemain, :RenewFlag, :ModifyStatus, :TruncFlag, :CapacityRemainPrecise

        def initialize(resourceid=nil, appid=nil, packagetype=nil, status=nil, createtime=nil, activetime=nil, expiretime=nil, devicelist=nil, capacitysize=nil, capacityremain=nil, renewflag=nil, modifystatus=nil, truncflag=nil, capacityremainprecise=nil)
          @ResourceId = resourceid
          @AppId = appid
          @PackageType = packagetype
          @Status = status
          @CreateTime = createtime
          @ActiveTime = activetime
          @ExpireTime = expiretime
          @DeviceList = devicelist
          @CapacitySize = capacitysize
          @CapacityRemain = capacityremain
          @RenewFlag = renewflag
          @ModifyStatus = modifystatus
          @TruncFlag = truncflag
          @CapacityRemainPrecise = capacityremainprecise
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @AppId = params['AppId']
          @PackageType = params['PackageType']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ActiveTime = params['ActiveTime']
          @ExpireTime = params['ExpireTime']
          @DeviceList = params['DeviceList']
          @CapacitySize = params['CapacitySize']
          @CapacityRemain = params['CapacityRemain']
          @RenewFlag = params['RenewFlag']
          @ModifyStatus = params['ModifyStatus']
          @TruncFlag = params['TruncFlag']
          @CapacityRemainPrecise = params['CapacityRemainPrecise']
        end
      end

      # GetActiveDeviceCount请求参数结构体
      class GetActiveDeviceCountRequest < TencentCloud::Common::AbstractModel
        # @param Period: 查询粒度。0:day, 1:week, 2:month, 不传默认为day
        # @type Period: Integer
        # @param StartTime: 开始时间。单位秒
        # @type StartTime: Integer
        # @param EndTime: 结束时间。单位秒
        # @type EndTime: Integer
        # @param DevGroup: 设备组, 不传查询全部
        # @type DevGroup: String
        # @param LicenseType: license类型, 不传查询全部, 1: 租户月付，2：厂商月付，3：永久授权
        # @type LicenseType: Integer

        attr_accessor :Period, :StartTime, :EndTime, :DevGroup, :LicenseType

        def initialize(period=nil, starttime=nil, endtime=nil, devgroup=nil, licensetype=nil)
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @DevGroup = devgroup
          @LicenseType = licensetype
        end

        def deserialize(params)
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DevGroup = params['DevGroup']
          @LicenseType = params['LicenseType']
        end
      end

      # GetActiveDeviceCount返回参数结构体
      class GetActiveDeviceCountResponse < TencentCloud::Common::AbstractModel
        # @param ActiveDeviceList: 激活设备统计
        # @type ActiveDeviceList: Array
        # @param Period: 查询粒度，0:day, 1:week, 2:month, 不传默认为day
        # @type Period: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param DevGroup: 设备组
        # @type DevGroup: String
        # @param LicenseType: license类型, 不传查询全部, 1: 租户月付，2：厂商月付，3：永久授权
        # @type LicenseType: String
        # @param AppId: 租户ID
        # @type AppId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ActiveDeviceList, :Period, :StartTime, :EndTime, :DevGroup, :LicenseType, :AppId, :RequestId

        def initialize(activedevicelist=nil, period=nil, starttime=nil, endtime=nil, devgroup=nil, licensetype=nil, appid=nil, requestid=nil)
          @ActiveDeviceList = activedevicelist
          @Period = period
          @StartTime = starttime
          @EndTime = endtime
          @DevGroup = devgroup
          @LicenseType = licensetype
          @AppId = appid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ActiveDeviceList'].nil?
            @ActiveDeviceList = []
            params['ActiveDeviceList'].each do |i|
              activedevicelist_tmp = ActiveDeviceList.new
              activedevicelist_tmp.deserialize(i)
              @ActiveDeviceList << activedevicelist_tmp
            end
          end
          @Period = params['Period']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DevGroup = params['DevGroup']
          @LicenseType = params['LicenseType']
          @AppId = params['AppId']
          @RequestId = params['RequestId']
        end
      end

      # GetDevicePayMode请求参数结构体
      class GetDevicePayModeRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIdList: 设备ID列表
        # @type DeviceIdList: Array

        attr_accessor :DeviceIdList

        def initialize(deviceidlist=nil)
          @DeviceIdList = deviceidlist
        end

        def deserialize(params)
          @DeviceIdList = params['DeviceIdList']
        end
      end

      # GetDevicePayMode返回参数结构体
      class GetDevicePayModeResponse < TencentCloud::Common::AbstractModel
        # @param Result: 结果信息
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              devicepaymodeinfo_tmp = DevicePayModeInfo.new
              devicepaymodeinfo_tmp.deserialize(i)
              @Result << devicepaymodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDevice请求参数结构体
      class GetDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 搜索指定设备的id
        # @type DeviceId: String

        attr_accessor :DeviceId

        def initialize(deviceid=nil)
          @DeviceId = deviceid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
        end
      end

      # GetDevice返回参数结构体
      class GetDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceDetails: 设备详细信息
        # @type DeviceDetails: :class:`Tencentcloud::Mna.v20210119.models.DeviceDetails`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceDetails, :RequestId

        def initialize(devicedetails=nil, requestid=nil)
          @DeviceDetails = devicedetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceDetails'].nil?
            @DeviceDetails = DeviceDetails.new
            @DeviceDetails.deserialize(params['DeviceDetails'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDevices请求参数结构体
      class GetDevicesRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页显示记录数，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageSize: Integer
        # @param PageNumber: 当前查看页码，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageNumber: Integer
        # @param Keyword: 搜索设备的关键字（ID或者设备名），为空时匹配所有设备
        # @type Keyword: String
        # @param DeviceType: DeviceType
        # 不传：返回所有设备；
        # 1:自有设备；
        # 2:三方设备
        # @type DeviceType: Integer

        attr_accessor :PageSize, :PageNumber, :Keyword, :DeviceType

        def initialize(pagesize=nil, pagenumber=nil, keyword=nil, devicetype=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Keyword = keyword
          @DeviceType = devicetype
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Keyword = params['Keyword']
          @DeviceType = params['DeviceType']
        end
      end

      # GetDevices返回参数结构体
      class GetDevicesResponse < TencentCloud::Common::AbstractModel
        # @param DeviceInfos: 设备信息列表
        # @type DeviceInfos: Array
        # @param Length: 设备总记录条数
        # @type Length: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceInfos, :Length, :TotalPage, :RequestId

        def initialize(deviceinfos=nil, length=nil, totalpage=nil, requestid=nil)
          @DeviceInfos = deviceinfos
          @Length = length
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceInfos'].nil?
            @DeviceInfos = []
            params['DeviceInfos'].each do |i|
              devicebaseinfo_tmp = DeviceBaseInfo.new
              devicebaseinfo_tmp.deserialize(i)
              @DeviceInfos << devicebaseinfo_tmp
            end
          end
          @Length = params['Length']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # GetFlowAlarmInfo请求参数结构体
      class GetFlowAlarmInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetFlowAlarmInfo返回参数结构体
      class GetFlowAlarmInfoResponse < TencentCloud::Common::AbstractModel
        # @param AlarmValue: 流量包的告警阈值
        # @type AlarmValue: Integer
        # @param NotifyUrl: 告警通知回调url
        # @type NotifyUrl: String
        # @param CallbackKey: 告警通知回调key
        # @type CallbackKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AlarmValue, :NotifyUrl, :CallbackKey, :RequestId

        def initialize(alarmvalue=nil, notifyurl=nil, callbackkey=nil, requestid=nil)
          @AlarmValue = alarmvalue
          @NotifyUrl = notifyurl
          @CallbackKey = callbackkey
          @RequestId = requestid
        end

        def deserialize(params)
          @AlarmValue = params['AlarmValue']
          @NotifyUrl = params['NotifyUrl']
          @CallbackKey = params['CallbackKey']
          @RequestId = params['RequestId']
        end
      end

      # GetFlowPackages请求参数结构体
      class GetFlowPackagesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码，从1开始
        # @type PageNumber: Integer
        # @param PageSize: 每页个数
        # @type PageSize: Integer
        # @param ResourceId: 流量包的唯一资源ID
        # @type ResourceId: String
        # @param DeviceId: 流量包绑定的设备ID
        # @type DeviceId: String
        # @param Status: 流量包状态，0：未生效，1：有效期内，2：已过期
        # @type Status: Integer

        attr_accessor :PageNumber, :PageSize, :ResourceId, :DeviceId, :Status

        def initialize(pagenumber=nil, pagesize=nil, resourceid=nil, deviceid=nil, status=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ResourceId = resourceid
          @DeviceId = deviceid
          @Status = status
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ResourceId = params['ResourceId']
          @DeviceId = params['DeviceId']
          @Status = params['Status']
        end
      end

      # GetFlowPackages返回参数结构体
      class GetFlowPackagesResponse < TencentCloud::Common::AbstractModel
        # @param PackageList: 流量包列表
        # @type PackageList: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackageList, :Total, :RequestId

        def initialize(packagelist=nil, total=nil, requestid=nil)
          @PackageList = packagelist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PackageList'].nil?
            @PackageList = []
            params['PackageList'].each do |i|
              flowpackageinfo_tmp = FlowPackageInfo.new
              flowpackageinfo_tmp.deserialize(i)
              @PackageList << flowpackageinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetFlowStatisticByGroup请求参数结构体
      class GetFlowStatisticByGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param BeginTime: 开始查找时间
        # @type BeginTime: Integer
        # @param EndTime: 截止时间
        # @type EndTime: Integer
        # @param Type: 流量种类（1：上行流量，2：下行流量， 3: 上下行总和）
        # @type Type: Integer
        # @param TimeGranularity: 时间粒度（1：按小时统计，2：按天统计）
        # @type TimeGranularity: Integer
        # @param AccessRegion: 接入区域。取值范围：['MC','AP','EU','AM'] MC=中国大陆 AP=亚太 EU=欧洲 AM=美洲。不填代表全量区域。
        # @type AccessRegion: String
        # @param GatewayType: 网关类型。0：公有云网关；1：自有网关。不传默认为0。
        # @type GatewayType: Integer
        # @param MpApplicationId: 应用ID, 查询分组流量时无需使用。 查询应用流量时该字段为应用ID，GroupId 填写 "-1"
        # @type MpApplicationId: String

        attr_accessor :GroupId, :BeginTime, :EndTime, :Type, :TimeGranularity, :AccessRegion, :GatewayType, :MpApplicationId

        def initialize(groupid=nil, begintime=nil, endtime=nil, type=nil, timegranularity=nil, accessregion=nil, gatewaytype=nil, mpapplicationid=nil)
          @GroupId = groupid
          @BeginTime = begintime
          @EndTime = endtime
          @Type = type
          @TimeGranularity = timegranularity
          @AccessRegion = accessregion
          @GatewayType = gatewaytype
          @MpApplicationId = mpapplicationid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @TimeGranularity = params['TimeGranularity']
          @AccessRegion = params['AccessRegion']
          @GatewayType = params['GatewayType']
          @MpApplicationId = params['MpApplicationId']
        end
      end

      # GetFlowStatisticByGroup返回参数结构体
      class GetFlowStatisticByGroupResponse < TencentCloud::Common::AbstractModel
        # @param NetDetails: 流量详细信息
        # @type NetDetails: Array
        # @param MaxValue: 查找时间段流量使用最大值（单位：byte）
        # @type MaxValue: Float
        # @param AvgValue: 查找时间段流量使用平均值（单位：byte）
        # @type AvgValue: Float
        # @param TotalValue: 查找时间段流量使用总量（单位：byte）
        # @type TotalValue: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetDetails, :MaxValue, :AvgValue, :TotalValue, :RequestId

        def initialize(netdetails=nil, maxvalue=nil, avgvalue=nil, totalvalue=nil, requestid=nil)
          @NetDetails = netdetails
          @MaxValue = maxvalue
          @AvgValue = avgvalue
          @TotalValue = totalvalue
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetDetails'].nil?
            @NetDetails = []
            params['NetDetails'].each do |i|
              netdetails_tmp = NetDetails.new
              netdetails_tmp.deserialize(i)
              @NetDetails << netdetails_tmp
            end
          end
          @MaxValue = params['MaxValue']
          @AvgValue = params['AvgValue']
          @TotalValue = params['TotalValue']
          @RequestId = params['RequestId']
        end
      end

      # GetFlowStatisticByRegion请求参数结构体
      class GetFlowStatisticByRegionRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 开始查找时间
        # @type BeginTime: Integer
        # @param EndTime: 截止时间
        # @type EndTime: Integer
        # @param Type: 流量种类（1：上行流量，2：下行流量， 3: 上下行总和）
        # @type Type: Integer
        # @param TimeGranularity: 时间粒度（1：按小时统计，2：按天统计）
        # @type TimeGranularity: Integer
        # @param GatewayType: 网关类型。0：公有云网关；1：自有网关。
        # @type GatewayType: Integer
        # @param AccessRegion: 接入区域。取值范围：['MC','AP','EU','AM'] MC=中国大陆 AP=亚太 EU=欧洲 AM=美洲。不填代表全量区域。
        # @type AccessRegion: String

        attr_accessor :BeginTime, :EndTime, :Type, :TimeGranularity, :GatewayType, :AccessRegion

        def initialize(begintime=nil, endtime=nil, type=nil, timegranularity=nil, gatewaytype=nil, accessregion=nil)
          @BeginTime = begintime
          @EndTime = endtime
          @Type = type
          @TimeGranularity = timegranularity
          @GatewayType = gatewaytype
          @AccessRegion = accessregion
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @TimeGranularity = params['TimeGranularity']
          @GatewayType = params['GatewayType']
          @AccessRegion = params['AccessRegion']
        end
      end

      # GetFlowStatisticByRegion返回参数结构体
      class GetFlowStatisticByRegionResponse < TencentCloud::Common::AbstractModel
        # @param NetDetails: 流量详细信息
        # @type NetDetails: Array
        # @param MaxValue: 查找时间段流量使用最大值（单位：byte）
        # @type MaxValue: Float
        # @param AvgValue: 查找时间段流量使用平均值（单位：byte）
        # @type AvgValue: Float
        # @param TotalValue: 查找时间段流量使用总量（单位：byte）
        # @type TotalValue: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetDetails, :MaxValue, :AvgValue, :TotalValue, :RequestId

        def initialize(netdetails=nil, maxvalue=nil, avgvalue=nil, totalvalue=nil, requestid=nil)
          @NetDetails = netdetails
          @MaxValue = maxvalue
          @AvgValue = avgvalue
          @TotalValue = totalvalue
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetDetails'].nil?
            @NetDetails = []
            params['NetDetails'].each do |i|
              netdetails_tmp = NetDetails.new
              netdetails_tmp.deserialize(i)
              @NetDetails << netdetails_tmp
            end
          end
          @MaxValue = params['MaxValue']
          @AvgValue = params['AvgValue']
          @TotalValue = params['TotalValue']
          @RequestId = params['RequestId']
        end
      end

      # GetFlowStatistic请求参数结构体
      class GetFlowStatisticRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param BeginTime: 开始查找时间
        # @type BeginTime: Integer
        # @param EndTime: 截止时间
        # @type EndTime: Integer
        # @param Type: 流量种类（1：上行流量，2：下行流量，3：上下行总和）
        # @type Type: Integer
        # @param TimeGranularity: 时间粒度（1：按小时统计，2：按天统计）
        # @type TimeGranularity: Integer
        # @param AccessRegion: 接入区域。取值范围：['MC','AP','EU','AM'] MC=中国大陆 AP=亚太 EU=欧洲 AM=美洲。不填代表全量区域。
        # @type AccessRegion: String
        # @param GatewayType: 网关类型。0：公有云网关；1：自有网关。不传默认为0。
        # @type GatewayType: Integer
        # @param DeviceList: 设备ID列表，用于查询多设备流量，该字段启用时DeviceId可传"-1"
        # @type DeviceList: Array

        attr_accessor :DeviceId, :BeginTime, :EndTime, :Type, :TimeGranularity, :AccessRegion, :GatewayType, :DeviceList

        def initialize(deviceid=nil, begintime=nil, endtime=nil, type=nil, timegranularity=nil, accessregion=nil, gatewaytype=nil, devicelist=nil)
          @DeviceId = deviceid
          @BeginTime = begintime
          @EndTime = endtime
          @Type = type
          @TimeGranularity = timegranularity
          @AccessRegion = accessregion
          @GatewayType = gatewaytype
          @DeviceList = devicelist
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @TimeGranularity = params['TimeGranularity']
          @AccessRegion = params['AccessRegion']
          @GatewayType = params['GatewayType']
          @DeviceList = params['DeviceList']
        end
      end

      # GetFlowStatistic返回参数结构体
      class GetFlowStatisticResponse < TencentCloud::Common::AbstractModel
        # @param NetDetails: 流量详细信息
        # @type NetDetails: Array
        # @param MaxValue: 查找时间段流量使用最大值（单位：byte）
        # @type MaxValue: Float
        # @param AvgValue: 查找时间段流量使用平均值（单位：byte）
        # @type AvgValue: Float
        # @param TotalValue: 查找时间段流量使用总量（单位：byte）
        # @type TotalValue: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetDetails, :MaxValue, :AvgValue, :TotalValue, :RequestId

        def initialize(netdetails=nil, maxvalue=nil, avgvalue=nil, totalvalue=nil, requestid=nil)
          @NetDetails = netdetails
          @MaxValue = maxvalue
          @AvgValue = avgvalue
          @TotalValue = totalvalue
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetDetails'].nil?
            @NetDetails = []
            params['NetDetails'].each do |i|
              netdetails_tmp = NetDetails.new
              netdetails_tmp.deserialize(i)
              @NetDetails << netdetails_tmp
            end
          end
          @MaxValue = params['MaxValue']
          @AvgValue = params['AvgValue']
          @TotalValue = params['TotalValue']
          @RequestId = params['RequestId']
        end
      end

      # GetGroupDetail请求参数结构体
      class GetGroupDetailRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param PageSize: 每页显示记录数，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageSize: Integer
        # @param PageNumber: 每页显示记录数，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageNumber: Integer
        # @param KeyWord: 搜索关键字
        # @type KeyWord: String

        attr_accessor :GroupId, :PageSize, :PageNumber, :KeyWord

        def initialize(groupid=nil, pagesize=nil, pagenumber=nil, keyword=nil)
          @GroupId = groupid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @KeyWord = keyword
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @KeyWord = params['KeyWord']
        end
      end

      # GetGroupDetail返回参数结构体
      class GetGroupDetailResponse < TencentCloud::Common::AbstractModel
        # @param GroupInfo: 分组基本信息
        # @type GroupInfo: :class:`Tencentcloud::Mna.v20210119.models.GroupInfo`
        # @param DeviceInfos: 分组中设备列表
        # @type DeviceInfos: Array
        # @param Length: 设备总记录条数
        # @type Length: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupInfo, :DeviceInfos, :Length, :TotalPage, :RequestId

        def initialize(groupinfo=nil, deviceinfos=nil, length=nil, totalpage=nil, requestid=nil)
          @GroupInfo = groupinfo
          @DeviceInfos = deviceinfos
          @Length = length
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupInfo'].nil?
            @GroupInfo = GroupInfo.new
            @GroupInfo.deserialize(params['GroupInfo'])
          end
          unless params['DeviceInfos'].nil?
            @DeviceInfos = []
            params['DeviceInfos'].each do |i|
              devicebaseinfo_tmp = DeviceBaseInfo.new
              devicebaseinfo_tmp.deserialize(i)
              @DeviceInfos << devicebaseinfo_tmp
            end
          end
          @Length = params['Length']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # GetGroupList请求参数结构体
      class GetGroupListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页显示记录数，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageSize: Integer
        # @param PageNumber: 当前查看页码，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageNumber: Integer
        # @param Keyword: 搜索分组的关键字，为空时匹配所有分组
        # @type Keyword: String

        attr_accessor :PageSize, :PageNumber, :Keyword

        def initialize(pagesize=nil, pagenumber=nil, keyword=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Keyword = keyword
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @Keyword = params['Keyword']
        end
      end

      # GetGroupList返回参数结构体
      class GetGroupListResponse < TencentCloud::Common::AbstractModel
        # @param GroupInfos: 设备信息列表
        # @type GroupInfos: Array
        # @param Length: 设备总记录条数
        # @type Length: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupInfos, :Length, :TotalPage, :RequestId

        def initialize(groupinfos=nil, length=nil, totalpage=nil, requestid=nil)
          @GroupInfos = groupinfos
          @Length = length
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupInfos'].nil?
            @GroupInfos = []
            params['GroupInfos'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @GroupInfos << groupinfo_tmp
            end
          end
          @Length = params['Length']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # GetHardwareList请求参数结构体
      class GetHardwareListRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页面设备数量
        # @type PageSize: Integer
        # @param Keyword: 关键字
        # @type Keyword: String

        attr_accessor :PageNumber, :PageSize, :Keyword

        def initialize(pagenumber=nil, pagesize=nil, keyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Keyword = keyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
        end
      end

      # GetHardwareList返回参数结构体
      class GetHardwareListResponse < TencentCloud::Common::AbstractModel
        # @param HardwareInfos: 硬件信息列表
        # @type HardwareInfos: Array
        # @param Length: 硬件总数
        # @type Length: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HardwareInfos, :Length, :TotalPage, :RequestId

        def initialize(hardwareinfos=nil, length=nil, totalpage=nil, requestid=nil)
          @HardwareInfos = hardwareinfos
          @Length = length
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HardwareInfos'].nil?
            @HardwareInfos = []
            params['HardwareInfos'].each do |i|
              hardwareinfo_tmp = HardwareInfo.new
              hardwareinfo_tmp.deserialize(i)
              @HardwareInfos << hardwareinfo_tmp
            end
          end
          @Length = params['Length']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # GetL3ConnList请求参数结构体
      class GetL3ConnListRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 每页显示记录数，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageSize: Integer
        # @param PageNumber: 当前查看页码，PageSize、PageNumber值均为-1 时，按照1页无限制条数匹配所有设备
        # @type PageNumber: Integer
        # @param DeviceId: 搜索分组的DeviceId，为空时匹配所有分组
        # @type DeviceId: String

        attr_accessor :PageSize, :PageNumber, :DeviceId

        def initialize(pagesize=nil, pagenumber=nil, deviceid=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
          @DeviceId = deviceid
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          @DeviceId = params['DeviceId']
        end
      end

      # GetL3ConnList返回参数结构体
      class GetL3ConnListResponse < TencentCloud::Common::AbstractModel
        # @param L3ConnList: 互通规则列表
        # @type L3ConnList: Array
        # @param Length: 设备总记录条数
        # @type Length: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :L3ConnList, :Length, :TotalPage, :RequestId

        def initialize(l3connlist=nil, length=nil, totalpage=nil, requestid=nil)
          @L3ConnList = l3connlist
          @Length = length
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['L3ConnList'].nil?
            @L3ConnList = []
            params['L3ConnList'].each do |i|
              l3conninfo_tmp = L3ConnInfo.new
              l3conninfo_tmp.deserialize(i)
              @L3ConnList << l3conninfo_tmp
            end
          end
          @Length = params['Length']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # GetMultiFlowStatistic请求参数结构体
      class GetMultiFlowStatisticRequest < TencentCloud::Common::AbstractModel
        # @param DeviceIds: 设备id列表，单次最多请求10个设备
        # @type DeviceIds: Array
        # @param BeginTime: 1659514436
        # @type BeginTime: Integer
        # @param EndTime: 1659515000
        # @type EndTime: Integer
        # @param Type: 统计流量类型（1：上行流量，2：下行流量， 3: 上下行总和）
        # @type Type: Integer
        # @param TimeGranularity: 统计时间粒度（1：按小时统计，2：按天统计）
        # @type TimeGranularity: Integer
        # @param AccessRegion: 接入区域。取值范围：['MC','AP','EU','AM'] MC=中国大陆 AP=亚太 EU=欧洲 AM=美洲。不填代表全量区域。
        # @type AccessRegion: String
        # @param GatewayType: 网关类型。0：公有云网关；1：自有网关。不传默认为0。
        # @type GatewayType: Integer

        attr_accessor :DeviceIds, :BeginTime, :EndTime, :Type, :TimeGranularity, :AccessRegion, :GatewayType

        def initialize(deviceids=nil, begintime=nil, endtime=nil, type=nil, timegranularity=nil, accessregion=nil, gatewaytype=nil)
          @DeviceIds = deviceids
          @BeginTime = begintime
          @EndTime = endtime
          @Type = type
          @TimeGranularity = timegranularity
          @AccessRegion = accessregion
          @GatewayType = gatewaytype
        end

        def deserialize(params)
          @DeviceIds = params['DeviceIds']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @TimeGranularity = params['TimeGranularity']
          @AccessRegion = params['AccessRegion']
          @GatewayType = params['GatewayType']
        end
      end

      # GetMultiFlowStatistic返回参数结构体
      class GetMultiFlowStatisticResponse < TencentCloud::Common::AbstractModel
        # @param FlowDetails: 批量设备流量信息
        # @type FlowDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowDetails, :RequestId

        def initialize(flowdetails=nil, requestid=nil)
          @FlowDetails = flowdetails
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowDetails'].nil?
            @FlowDetails = []
            params['FlowDetails'].each do |i|
              flowdetails_tmp = FlowDetails.new
              flowdetails_tmp.deserialize(i)
              @FlowDetails << flowdetails_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetNetMonitor请求参数结构体
      class GetNetMonitorRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param BeginTime: 开始时间
        # @type BeginTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Metrics: 统计指标（上行速率："TxRate":bit/s，下行速率："RxRate":bit/s，丢包："Loss":%，时延："RTT":ms）
        # @type Metrics: String
        # @param GatewayType: 网关类型。0：公有云网关；1：自有网关。不传默认为0。
        # @type GatewayType: Integer

        attr_accessor :DeviceId, :BeginTime, :EndTime, :Metrics, :GatewayType

        def initialize(deviceid=nil, begintime=nil, endtime=nil, metrics=nil, gatewaytype=nil)
          @DeviceId = deviceid
          @BeginTime = begintime
          @EndTime = endtime
          @Metrics = metrics
          @GatewayType = gatewaytype
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Metrics = params['Metrics']
          @GatewayType = params['GatewayType']
        end
      end

      # GetNetMonitor返回参数结构体
      class GetNetMonitorResponse < TencentCloud::Common::AbstractModel
        # @param MonitorData: 监控数据
        # @type MonitorData: Array
        # @param AccessRegion: 接入区域。取值范围：['MC','AP','EU','AM']
        # MC=中国大陆
        # AP=亚太
        # EU=欧洲
        # AM=美洲
        # @type AccessRegion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonitorData, :AccessRegion, :RequestId

        def initialize(monitordata=nil, accessregion=nil, requestid=nil)
          @MonitorData = monitordata
          @AccessRegion = accessregion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MonitorData'].nil?
            @MonitorData = []
            params['MonitorData'].each do |i|
              monitordata_tmp = MonitorData.new
              monitordata_tmp.deserialize(i)
              @MonitorData << monitordata_tmp
            end
          end
          @AccessRegion = params['AccessRegion']
          @RequestId = params['RequestId']
        end
      end

      # GetPublicKey请求参数结构体
      class GetPublicKeyRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetPublicKey返回参数结构体
      class GetPublicKeyResponse < TencentCloud::Common::AbstractModel
        # @param PublicKey: 非对称公钥
        # @type PublicKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PublicKey, :RequestId

        def initialize(publickey=nil, requestid=nil)
          @PublicKey = publickey
          @RequestId = requestid
        end

        def deserialize(params)
          @PublicKey = params['PublicKey']
          @RequestId = params['RequestId']
        end
      end

      # GetStatisticData请求参数结构体
      class GetStatisticDataRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID。若不指定设备，可传"-1"
        # @type DeviceId: String
        # @param BeginTime: 统计开始时间，单位：s
        # @type BeginTime: Integer
        # @param EndTime: 统计结束时间，单位：s
        # @type EndTime: Integer
        # @param TimeGranularity: 聚合粒度：
        # 1:按小时统计
        # 2:按天统计
        # @type TimeGranularity: Integer
        # @param AccessRegion: 接入区域。取值范围：['MC','AP','EU','AM'] MC=中国大陆 AP=亚太 EU=欧洲 AM=美洲。不填代表全量区域。
        # @type AccessRegion: String
        # @param GatewayType: 网关类型。0：公有云网关；1：自有网关。不传默认为0。
        # @type GatewayType: Integer
        # @param DeviceList: 设备ID列表，最多10个设备，下载多个设备流量和时使用，此时DeviceId可传"-1"
        # @type DeviceList: Array
        # @param GroupId: 设备分组ID，若不指定分组则不传，按分组下载数据时使用
        # @type GroupId: String

        attr_accessor :DeviceId, :BeginTime, :EndTime, :TimeGranularity, :AccessRegion, :GatewayType, :DeviceList, :GroupId

        def initialize(deviceid=nil, begintime=nil, endtime=nil, timegranularity=nil, accessregion=nil, gatewaytype=nil, devicelist=nil, groupid=nil)
          @DeviceId = deviceid
          @BeginTime = begintime
          @EndTime = endtime
          @TimeGranularity = timegranularity
          @AccessRegion = accessregion
          @GatewayType = gatewaytype
          @DeviceList = devicelist
          @GroupId = groupid
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @TimeGranularity = params['TimeGranularity']
          @AccessRegion = params['AccessRegion']
          @GatewayType = params['GatewayType']
          @DeviceList = params['DeviceList']
          @GroupId = params['GroupId']
        end
      end

      # GetStatisticData返回参数结构体
      class GetStatisticDataResponse < TencentCloud::Common::AbstractModel
        # @param FilePath: 文件地址url
        # @type FilePath: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FilePath, :RequestId

        def initialize(filepath=nil, requestid=nil)
          @FilePath = filepath
          @RequestId = requestid
        end

        def deserialize(params)
          @FilePath = params['FilePath']
          @RequestId = params['RequestId']
        end
      end

      # GetVendorHardware请求参数结构体
      class GetVendorHardwareRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param PageSize: 页面数量
        # @type PageSize: Integer
        # @param Keyword: 关键字
        # @type Keyword: String
        # @param Status: 激活状态，
        # 空：全部；
        # 1:待激活；
        # 2:已激活；
        # @type Status: Integer

        attr_accessor :PageNumber, :PageSize, :Keyword, :Status

        def initialize(pagenumber=nil, pagesize=nil, keyword=nil, status=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @Keyword = keyword
          @Status = status
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @Keyword = params['Keyword']
          @Status = params['Status']
        end
      end

      # GetVendorHardware返回参数结构体
      class GetVendorHardwareResponse < TencentCloud::Common::AbstractModel
        # @param VendorHardware: 硬件信息列表
        # @type VendorHardware: Array
        # @param Length: 设备总数
        # @type Length: Integer
        # @param TotalPage: 总页数
        # @type TotalPage: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VendorHardware, :Length, :TotalPage, :RequestId

        def initialize(vendorhardware=nil, length=nil, totalpage=nil, requestid=nil)
          @VendorHardware = vendorhardware
          @Length = length
          @TotalPage = totalpage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VendorHardware'].nil?
            @VendorHardware = []
            params['VendorHardware'].each do |i|
              vendorhardware_tmp = VendorHardware.new
              vendorhardware_tmp.deserialize(i)
              @VendorHardware << vendorhardware_tmp
            end
          end
          @Length = params['Length']
          @TotalPage = params['TotalPage']
          @RequestId = params['RequestId']
        end
      end

      # GroupAddDevice请求参数结构体
      class GroupAddDeviceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param DeviceList: 待添加的设备列表
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

      # GroupAddDevice返回参数结构体
      class GroupAddDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceNum: 分组中的设备数量
        # @type DeviceNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceNum, :RequestId

        def initialize(devicenum=nil, requestid=nil)
          @DeviceNum = devicenum
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceNum = params['DeviceNum']
          @RequestId = params['RequestId']
        end
      end

      # GroupDeleteDevice请求参数结构体
      class GroupDeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param DeviceList: 待删除的设备列表
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

      # GroupDeleteDevice返回参数结构体
      class GroupDeleteDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceNum: 分组中的设备数量
        # @type DeviceNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceNum, :RequestId

        def initialize(devicenum=nil, requestid=nil)
          @DeviceNum = devicenum
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceNum = params['DeviceNum']
          @RequestId = params['RequestId']
        end
      end

      # 分组的基本信息
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param GroupName: 分组名
        # @type GroupName: String
        # @param CreateTime: 分组创建的时间，单位：ms
        # @type CreateTime: String
        # @param UpdateTime: 分组更新的时间，单位：ms
        # @type UpdateTime: String
        # @param Description: 分组描述
        # @type Description: String
        # @param DeviceNum: 分组中的设备数量
        # @type DeviceNum: Integer

        attr_accessor :GroupId, :GroupName, :CreateTime, :UpdateTime, :Description, :DeviceNum

        def initialize(groupid=nil, groupname=nil, createtime=nil, updatetime=nil, description=nil, devicenum=nil)
          @GroupId = groupid
          @GroupName = groupname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Description = description
          @DeviceNum = devicenum
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Description = params['Description']
          @DeviceNum = params['DeviceNum']
        end
      end

      # 新建Hardware入参
      class Hardware < TencentCloud::Common::AbstractModel
        # @param SN: 硬件序列号
        # @type SN: String
        # @param LicenseChargingMode: license计费模式：
        # 1，租户付费
        # 2，厂商月付费
        # 3，厂商永久授权
        # @type LicenseChargingMode: Integer
        # @param Description: 设备描述
        # @type Description: String
        # @param HardwareId: 硬件ID，入参无需传递
        # @type HardwareId: String

        attr_accessor :SN, :LicenseChargingMode, :Description, :HardwareId

        def initialize(sn=nil, licensechargingmode=nil, description=nil, hardwareid=nil)
          @SN = sn
          @LicenseChargingMode = licensechargingmode
          @Description = description
          @HardwareId = hardwareid
        end

        def deserialize(params)
          @SN = params['SN']
          @LicenseChargingMode = params['LicenseChargingMode']
          @Description = params['Description']
          @HardwareId = params['HardwareId']
        end
      end

      # 硬件信息
      class HardwareInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActiveTime: 激活时间
        # @type ActiveTime: String
        # @param LastOnlineTime: 最后在线时间
        # @type LastOnlineTime: String
        # @param Description: 备注
        # @type Description: String
        # @param VendorDescription: 厂商备注
        # @type VendorDescription: String
        # @param LicenseChargingMode: license计费模式： 1，租户月付费 2，厂商月付费 3，license永久授权
        # 注：后续将废弃此参数，新接入请使用LicensePayMode和Payer
        # @type LicenseChargingMode: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param SN: 硬件序列号
        # @type SN: String
        # @param LicensePayMode: license授权有效期
        # 0：月度授权
        # 1：永久授权
        # @type LicensePayMode: Integer
        # @param Payer: 付费方
        # 0：客户付费
        # 1：厂商付费
        # @type Payer: Integer
        # @param GroupId: 设备分组ID
        # @type GroupId: String
        # @param GroupName: 设备分组名称
        # @type GroupName: String
        # @param FlowTrunc: 设备无流量包处理方式，0: 按量付费，1: 截断加速
        # @type FlowTrunc: Integer

        attr_accessor :DeviceId, :DeviceName, :ActiveTime, :LastOnlineTime, :Description, :VendorDescription, :LicenseChargingMode, :CreateTime, :SN, :LicensePayMode, :Payer, :GroupId, :GroupName, :FlowTrunc

        def initialize(deviceid=nil, devicename=nil, activetime=nil, lastonlinetime=nil, description=nil, vendordescription=nil, licensechargingmode=nil, createtime=nil, sn=nil, licensepaymode=nil, payer=nil, groupid=nil, groupname=nil, flowtrunc=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @ActiveTime = activetime
          @LastOnlineTime = lastonlinetime
          @Description = description
          @VendorDescription = vendordescription
          @LicenseChargingMode = licensechargingmode
          @CreateTime = createtime
          @SN = sn
          @LicensePayMode = licensepaymode
          @Payer = payer
          @GroupId = groupid
          @GroupName = groupname
          @FlowTrunc = flowtrunc
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @ActiveTime = params['ActiveTime']
          @LastOnlineTime = params['LastOnlineTime']
          @Description = params['Description']
          @VendorDescription = params['VendorDescription']
          @LicenseChargingMode = params['LicenseChargingMode']
          @CreateTime = params['CreateTime']
          @SN = params['SN']
          @LicensePayMode = params['LicensePayMode']
          @Payer = params['Payer']
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @FlowTrunc = params['FlowTrunc']
        end
      end

      # 三层互通规则信息
      class L3ConnInfo < TencentCloud::Common::AbstractModel
        # @param L3ConnId: 互通规则ID
        # @type L3ConnId: String
        # @param DeviceId1: 互通设备ID
        # @type DeviceId1: String
        # @param Cidr1: 互通规则CIDR
        # @type Cidr1: String
        # @param DeviceId2: 互通设备ID
        # @type DeviceId2: String
        # @param Cidr2: 互通规则CIDR
        # @type Cidr2: String
        # @param Enable: 互通规则启用状态
        # @type Enable: Boolean
        # @param Description: 互通规则描述
        # @type Description: String

        attr_accessor :L3ConnId, :DeviceId1, :Cidr1, :DeviceId2, :Cidr2, :Enable, :Description

        def initialize(l3connid=nil, deviceid1=nil, cidr1=nil, deviceid2=nil, cidr2=nil, enable=nil, description=nil)
          @L3ConnId = l3connid
          @DeviceId1 = deviceid1
          @Cidr1 = cidr1
          @DeviceId2 = deviceid2
          @Cidr2 = cidr2
          @Enable = enable
          @Description = description
        end

        def deserialize(params)
          @L3ConnId = params['L3ConnId']
          @DeviceId1 = params['DeviceId1']
          @Cidr1 = params['Cidr1']
          @DeviceId2 = params['DeviceId2']
          @Cidr2 = params['Cidr2']
          @Enable = params['Enable']
          @Description = params['Description']
        end
      end

      # ModifyPackageRenewFlag请求参数结构体
      class ModifyPackageRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 流量包的唯一资源ID
        # @type ResourceId: String
        # @param RenewFlag: 自动续费标识。true代表自动续费，false代表不自动续费
        # @type RenewFlag: Boolean

        attr_accessor :ResourceId, :RenewFlag

        def initialize(resourceid=nil, renewflag=nil)
          @ResourceId = resourceid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @RenewFlag = params['RenewFlag']
        end
      end

      # ModifyPackageRenewFlag返回参数结构体
      class ModifyPackageRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # 流量监控指标
      class MonitorData < TencentCloud::Common::AbstractModel
        # @param Time: 时间点：s
        # @type Time: String
        # @param BusinessMetrics: 业务指标（bps/ms/%）
        # @type BusinessMetrics: Float
        # @param SlotNetInfo: 网卡状态信息
        # @type SlotNetInfo: Array

        attr_accessor :Time, :BusinessMetrics, :SlotNetInfo

        def initialize(time=nil, businessmetrics=nil, slotnetinfo=nil)
          @Time = time
          @BusinessMetrics = businessmetrics
          @SlotNetInfo = slotnetinfo
        end

        def deserialize(params)
          @Time = params['Time']
          @BusinessMetrics = params['BusinessMetrics']
          unless params['SlotNetInfo'].nil?
            @SlotNetInfo = []
            params['SlotNetInfo'].each do |i|
              slotnetinfo_tmp = SlotNetInfo.new
              slotnetinfo_tmp.deserialize(i)
              @SlotNetInfo << slotnetinfo_tmp
            end
          end
        end
      end

      # 网络详细信息
      class NetDetails < TencentCloud::Common::AbstractModel
        # @param Current: 流量值（byte）
        # @type Current: Float
        # @param Time: 时间点，单位：s
        # @type Time: String

        attr_accessor :Current, :Time

        def initialize(current=nil, time=nil)
          @Current = current
          @Time = time
        end

        def deserialize(params)
          @Current = params['Current']
          @Time = params['Time']
        end
      end

      # OrderFlowPackage请求参数结构体
      class OrderFlowPackageRequest < TencentCloud::Common::AbstractModel
        # @param PackageType: 流量包规格类型。可取值如下：
        # DEVICE_1_FLOW_20G、DEVICE_2_FLOW_50G、
        # DEVICE_3_FLOW_100G、
        # DEVICE_5_FLOW_500G，分别代表20G、50G、100G、500G档位的流量包。
        # 档位也影响流量包可绑定的设备数量上限：
        # 20G：最多绑定1个设备
        # 50G：最多绑定2个设备
        # 100G：最多绑定3个设备
        # 500G：最多绑定5个设备
        # @type PackageType: String
        # @param DeviceList: 流量包绑定的设备ID列表。捆绑设备个数上限取决于包的规格档位：
        # 20G：最多绑定1个设备
        # 50G：最多绑定2个设备
        # 100G：最多绑定3个设备
        # 500G：最多绑定5个设备
        # @type DeviceList: Array
        # @param AutoRenewFlag: 是否自动续费，该选项和流量截断冲突，只能开启一个
        # @type AutoRenewFlag: Boolean
        # @param PackageRegion: 区域标识，0：国内，1：国外
        # @type PackageRegion: Integer
        # @param FlowTruncFlag: 是否开启流量截断功能，该选项和自动续费冲突
        # @type FlowTruncFlag: Boolean
        # @param AutoVoucher: 是否自动选择代金券，默认false。
        # 有多张券时的选择策略：按照可支付订单全部金额的券，先到期的券，可抵扣金额最大的券，余额最小的券，现金券 这个优先级进行扣券，且最多只抵扣一张券。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 指定代金券ID。自动选择代金券时此参数无效。目前只允许传入一张代金券。
        # 注：若指定的代金券不符合订单抵扣条件，则正常支付，不扣券
        # @type VoucherIds: Array

        attr_accessor :PackageType, :DeviceList, :AutoRenewFlag, :PackageRegion, :FlowTruncFlag, :AutoVoucher, :VoucherIds

        def initialize(packagetype=nil, devicelist=nil, autorenewflag=nil, packageregion=nil, flowtruncflag=nil, autovoucher=nil, voucherids=nil)
          @PackageType = packagetype
          @DeviceList = devicelist
          @AutoRenewFlag = autorenewflag
          @PackageRegion = packageregion
          @FlowTruncFlag = flowtruncflag
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @PackageType = params['PackageType']
          @DeviceList = params['DeviceList']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PackageRegion = params['PackageRegion']
          @FlowTruncFlag = params['FlowTruncFlag']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # OrderFlowPackage返回参数结构体
      class OrderFlowPackageResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 流量包的唯一资源ID
        # @type ResourceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :RequestId

        def initialize(resourceid=nil, requestid=nil)
          @ResourceId = resourceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @RequestId = params['RequestId']
        end
      end

      # 返回上报的订单信息
      class OrderInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 父账号uin
        # @type Uin: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PackageType: 用量类型
        # @type PackageType: String
        # @param OrderId: 订单编号唯一标识符
        # @type OrderId: String
        # @param ReportMonth: 上报月份，默认当前月
        # @type ReportMonth: String
        # @param Updated: 数据更新时间
        # @type Updated: String

        attr_accessor :Uin, :ProjectId, :PackageType, :OrderId, :ReportMonth, :Updated

        def initialize(uin=nil, projectid=nil, packagetype=nil, orderid=nil, reportmonth=nil, updated=nil)
          @Uin = uin
          @ProjectId = projectid
          @PackageType = packagetype
          @OrderId = orderid
          @ReportMonth = reportmonth
          @Updated = updated
        end

        def deserialize(params)
          @Uin = params['Uin']
          @ProjectId = params['ProjectId']
          @PackageType = params['PackageType']
          @OrderId = params['OrderId']
          @ReportMonth = params['ReportMonth']
          @Updated = params['Updated']
        end
      end

      # OrderPerLicense请求参数结构体
      class OrderPerLicenseRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 购买永久授权License的设备ID，如果是厂商未激活设备采用HardwareId
        # @type DeviceId: String
        # @param Type: 设备类型，0: SDK，1: CPE，作为用户创建或激活设备时传0，作为厂商创建待激活设备时传1
        # @type Type: Integer
        # @param RollBack: 购买失败后是否回滚（删除）设备，默认false，如果设备绑定了生效中的流量包则不能回滚。
        # @type RollBack: Boolean
        # @param AutoVoucher: 是否自动选择代金券，默认false。
        # 有多张券时的选择策略：按照可支付订单全部金额的券，先到期的券，可抵扣金额最大的券，余额最小的券，现金券 这个优先级进行扣券，且最多只抵扣一张券。
        # @type AutoVoucher: Boolean
        # @param VoucherIds: 指定代金券ID。自动选择代金券时此参数无效。目前只允许传入一张代金券。
        # 注：若指定的代金券不符合订单抵扣条件，则正常支付，不扣券
        # @type VoucherIds: Array

        attr_accessor :DeviceId, :Type, :RollBack, :AutoVoucher, :VoucherIds

        def initialize(deviceid=nil, type=nil, rollback=nil, autovoucher=nil, voucherids=nil)
          @DeviceId = deviceid
          @Type = type
          @RollBack = rollback
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @Type = params['Type']
          @RollBack = params['RollBack']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # OrderPerLicense返回参数结构体
      class OrderPerLicenseResponse < TencentCloud::Common::AbstractModel
        # @param ResourceId: 一次性授权License的资源ID
        # @type ResourceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceId, :RequestId

        def initialize(resourceid=nil, requestid=nil)
          @ResourceId = resourceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @RequestId = params['RequestId']
        end
      end

      # ReportOrder请求参数结构体
      class ReportOrderRequest < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单编号唯一标识符
        # @type OrderId: String
        # @param ProjectId: 项目id
        # @type ProjectId: String
        # @param PackageType: 用量类型
        # @type PackageType: String
        # @param ReportMonth: 上报月份，默认当前月
        # @type ReportMonth: String

        attr_accessor :OrderId, :ProjectId, :PackageType, :ReportMonth

        def initialize(orderid=nil, projectid=nil, packagetype=nil, reportmonth=nil)
          @OrderId = orderid
          @ProjectId = projectid
          @PackageType = packagetype
          @ReportMonth = reportmonth
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @ProjectId = params['ProjectId']
          @PackageType = params['PackageType']
          @ReportMonth = params['ReportMonth']
        end
      end

      # ReportOrder返回参数结构体
      class ReportOrderResponse < TencentCloud::Common::AbstractModel
        # @param OrderInfo: 订单信息
        # @type OrderInfo: :class:`Tencentcloud::Mna.v20210119.models.OrderInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderInfo, :RequestId

        def initialize(orderinfo=nil, requestid=nil)
          @OrderInfo = orderinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OrderInfo'].nil?
            @OrderInfo = OrderInfo.new
            @OrderInfo.deserialize(params['OrderInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # SetNotifyUrl请求参数结构体
      class SetNotifyUrlRequest < TencentCloud::Common::AbstractModel
        # @param NotifyUrl: 告警通知回调url
        # @type NotifyUrl: String
        # @param CallbackKey: 告警通知回调key
        # @type CallbackKey: String
        # @param AlarmValue: 流量包的告警阈值
        # @type AlarmValue: Integer

        attr_accessor :NotifyUrl, :CallbackKey, :AlarmValue

        def initialize(notifyurl=nil, callbackkey=nil, alarmvalue=nil)
          @NotifyUrl = notifyurl
          @CallbackKey = callbackkey
          @AlarmValue = alarmvalue
        end

        def deserialize(params)
          @NotifyUrl = params['NotifyUrl']
          @CallbackKey = params['CallbackKey']
          @AlarmValue = params['AlarmValue']
        end
      end

      # SetNotifyUrl返回参数结构体
      class SetNotifyUrlResponse < TencentCloud::Common::AbstractModel
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

      # 网卡流量指标数据
      class SlotNetInfo < TencentCloud::Common::AbstractModel
        # @param NetInfoName: 网卡名
        # @type NetInfoName: String
        # @param PublicIP: 公网IP
        # @type PublicIP: String
        # @param Current: 指标数据（bps/ms/%）
        # @type Current: Float

        attr_accessor :NetInfoName, :PublicIP, :Current

        def initialize(netinfoname=nil, publicip=nil, current=nil)
          @NetInfoName = netinfoname
          @PublicIP = publicip
          @Current = current
        end

        def deserialize(params)
          @NetInfoName = params['NetInfoName']
          @PublicIP = params['PublicIP']
          @Current = params['Current']
        end
      end

      # UpdateDevice请求参数结构体
      class UpdateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Remark: 设备备注
        # @type Remark: String
        # @param UpdateNetInfo: 更新设备网络信息
        # @type UpdateNetInfo: Array
        # @param FlowTrunc: 设备无流量包处理方式，0: 按量付费，1: 截断加速
        # @type FlowTrunc: Integer

        attr_accessor :DeviceId, :DeviceName, :Remark, :UpdateNetInfo, :FlowTrunc

        def initialize(deviceid=nil, devicename=nil, remark=nil, updatenetinfo=nil, flowtrunc=nil)
          @DeviceId = deviceid
          @DeviceName = devicename
          @Remark = remark
          @UpdateNetInfo = updatenetinfo
          @FlowTrunc = flowtrunc
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceName = params['DeviceName']
          @Remark = params['Remark']
          unless params['UpdateNetInfo'].nil?
            @UpdateNetInfo = []
            params['UpdateNetInfo'].each do |i|
              updatenetinfo_tmp = UpdateNetInfo.new
              updatenetinfo_tmp.deserialize(i)
              @UpdateNetInfo << updatenetinfo_tmp
            end
          end
          @FlowTrunc = params['FlowTrunc']
        end
      end

      # UpdateDevice返回参数结构体
      class UpdateDeviceResponse < TencentCloud::Common::AbstractModel
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

      # UpdateGroup请求参数结构体
      class UpdateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: String
        # @param Description: 分组备注
        # @type Description: String

        attr_accessor :GroupId, :Description

        def initialize(groupid=nil, description=nil)
          @GroupId = groupid
          @Description = description
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Description = params['Description']
        end
      end

      # UpdateGroup返回参数结构体
      class UpdateGroupResponse < TencentCloud::Common::AbstractModel
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

      # UpdateHardware请求参数结构体
      class UpdateHardwareRequest < TencentCloud::Common::AbstractModel
        # @param HardwareId: 硬件ID
        # @type HardwareId: String
        # @param SN: 硬件序列号
        # @type SN: String
        # @param Description: 设备备注
        # @type Description: String

        attr_accessor :HardwareId, :SN, :Description

        def initialize(hardwareid=nil, sn=nil, description=nil)
          @HardwareId = hardwareid
          @SN = sn
          @Description = description
        end

        def deserialize(params)
          @HardwareId = params['HardwareId']
          @SN = params['SN']
          @Description = params['Description']
        end
      end

      # UpdateHardware返回参数结构体
      class UpdateHardwareResponse < TencentCloud::Common::AbstractModel
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

      # UpdateL3Cidr请求参数结构体
      class UpdateL3CidrRequest < TencentCloud::Common::AbstractModel
        # @param L3ConnId: 互通规则ID
        # @type L3ConnId: String
        # @param Cidr1: 互通规则CIDR
        # @type Cidr1: String
        # @param DeviceId1: 互通设备ID
        # @type DeviceId1: String
        # @param DeviceId2: 互通设备ID
        # @type DeviceId2: String
        # @param Cidr2: 互通规则CIDR
        # @type Cidr2: String

        attr_accessor :L3ConnId, :Cidr1, :DeviceId1, :DeviceId2, :Cidr2

        def initialize(l3connid=nil, cidr1=nil, deviceid1=nil, deviceid2=nil, cidr2=nil)
          @L3ConnId = l3connid
          @Cidr1 = cidr1
          @DeviceId1 = deviceid1
          @DeviceId2 = deviceid2
          @Cidr2 = cidr2
        end

        def deserialize(params)
          @L3ConnId = params['L3ConnId']
          @Cidr1 = params['Cidr1']
          @DeviceId1 = params['DeviceId1']
          @DeviceId2 = params['DeviceId2']
          @Cidr2 = params['Cidr2']
        end
      end

      # UpdateL3Cidr返回参数结构体
      class UpdateL3CidrResponse < TencentCloud::Common::AbstractModel
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

      # UpdateL3Conn请求参数结构体
      class UpdateL3ConnRequest < TencentCloud::Common::AbstractModel
        # @param L3ConnId: 互通规则ID
        # @type L3ConnId: String
        # @param Description: 互通规则备注
        # @type Description: String

        attr_accessor :L3ConnId, :Description

        def initialize(l3connid=nil, description=nil)
          @L3ConnId = l3connid
          @Description = description
        end

        def deserialize(params)
          @L3ConnId = params['L3ConnId']
          @Description = params['Description']
        end
      end

      # UpdateL3Conn返回参数结构体
      class UpdateL3ConnResponse < TencentCloud::Common::AbstractModel
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

      # UpdateL3Switch请求参数结构体
      class UpdateL3SwitchRequest < TencentCloud::Common::AbstractModel
        # @param L3ConnId: 互通规则ID
        # @type L3ConnId: String
        # @param Enable: 互通规则开关
        # @type Enable: Boolean

        attr_accessor :L3ConnId, :Enable

        def initialize(l3connid=nil, enable=nil)
          @L3ConnId = l3connid
          @Enable = enable
        end

        def deserialize(params)
          @L3ConnId = params['L3ConnId']
          @Enable = params['Enable']
        end
      end

      # UpdateL3Switch返回参数结构体
      class UpdateL3SwitchResponse < TencentCloud::Common::AbstractModel
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

      # 更新设备网络状态信息
      class UpdateNetInfo < TencentCloud::Common::AbstractModel
        # @param Type: 网络类型：
        # 0:数据
        # 1:Wi-Fi
        # @type Type: Integer
        # @param DataEnable: 启用/禁用
        # @type DataEnable: Boolean
        # @param UploadLimit: 上行限速：bit
        # @type UploadLimit: Integer
        # @param DownloadLimit: 下行限速：bit
        # @type DownloadLimit: Integer
        # @param NetInfoName: 网卡名
        # @type NetInfoName: String

        attr_accessor :Type, :DataEnable, :UploadLimit, :DownloadLimit, :NetInfoName

        def initialize(type=nil, dataenable=nil, uploadlimit=nil, downloadlimit=nil, netinfoname=nil)
          @Type = type
          @DataEnable = dataenable
          @UploadLimit = uploadlimit
          @DownloadLimit = downloadlimit
          @NetInfoName = netinfoname
        end

        def deserialize(params)
          @Type = params['Type']
          @DataEnable = params['DataEnable']
          @UploadLimit = params['UploadLimit']
          @DownloadLimit = params['DownloadLimit']
          @NetInfoName = params['NetInfoName']
        end
      end

      # 厂商硬件详细信息
      class VendorHardware < TencentCloud::Common::AbstractModel
        # @param HardwareId: 硬件id
        # @type HardwareId: String
        # @param SN: 硬件序列号
        # @type SN: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Status: 激活状态， 空：全部； 1:待激活； 2:已激活
        # @type Status: Integer
        # @param ActiveTime: 激活时间
        # @type ActiveTime: String
        # @param Description: 厂商备注
        # @type Description: String
        # @param DeviceId: 设备id
        # @type DeviceId: String
        # @param LicenseChargingMode: license计费模式： 1，租户月付费 2，厂商月付费 3，license永久授权
        # 注：设备为租户付费且未激活（未选择月付还是永久付费）时，此参数返回1，仅代表租户付费。后续将废弃此参数，新接入请使用LicensePayMode和Payer
        # @type LicenseChargingMode: Integer
        # @param LastOnlineTime: 最后在线时间
        # @type LastOnlineTime: String
        # @param LicensePayMode: license授权有效期
        # 0：月度授权
        # 1：永久授权
        # -1：未知
        # @type LicensePayMode: Integer
        # @param Payer: 付费方
        # 0：客户付费
        # 1：厂商付费
        # @type Payer: Integer

        attr_accessor :HardwareId, :SN, :CreateTime, :Status, :ActiveTime, :Description, :DeviceId, :LicenseChargingMode, :LastOnlineTime, :LicensePayMode, :Payer

        def initialize(hardwareid=nil, sn=nil, createtime=nil, status=nil, activetime=nil, description=nil, deviceid=nil, licensechargingmode=nil, lastonlinetime=nil, licensepaymode=nil, payer=nil)
          @HardwareId = hardwareid
          @SN = sn
          @CreateTime = createtime
          @Status = status
          @ActiveTime = activetime
          @Description = description
          @DeviceId = deviceid
          @LicenseChargingMode = licensechargingmode
          @LastOnlineTime = lastonlinetime
          @LicensePayMode = licensepaymode
          @Payer = payer
        end

        def deserialize(params)
          @HardwareId = params['HardwareId']
          @SN = params['SN']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @ActiveTime = params['ActiveTime']
          @Description = params['Description']
          @DeviceId = params['DeviceId']
          @LicenseChargingMode = params['LicenseChargingMode']
          @LastOnlineTime = params['LastOnlineTime']
          @LicensePayMode = params['LicensePayMode']
          @Payer = params['Payer']
        end
      end

    end
  end
end

