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
  module Iotcloud
    module V20180614
      # 设备属性
      class Attribute < TencentCloud::Common::AbstractModel
        # @param Tags: 属性列表
        # @type Tags: Array

        attr_accessor :Tags
        
        def initialize(tags=nil)
          @Tags = tags
        end

        def deserialize(params)
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              devicetag_tmp = DeviceTag.new
              devicetag_tmp.deserialize(i)
              @Tags << devicetag_tmp
            end
          end
        end
      end

      # 批量发消息请求
      class BatchPublishMessage < TencentCloud::Common::AbstractModel
        # @param Topic: 消息发往的主题。为 Topic 权限中去除 ProductID 和 DeviceName 的部分，如 “event”
        # @type Topic: String
        # @param Payload: 消息内容
        # @type Payload: String

        attr_accessor :Topic, :Payload
        
        def initialize(topic=nil, payload=nil)
          @Topic = topic
          @Payload = payload
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Payload = params['Payload']
        end
      end

      # BatchUpdateFirmware请求参数结构体
      class BatchUpdateFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件新版本号
        # @type FirmwareVersion: String
        # @param FirmwareOriVersion: 固件原版本号，根据文件列表升级固件不需要填写此参数
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
        # @param TimeoutInterval: 固件升级任务，默认超时时间。 最小取值60秒，最大为3600秒
        # @type TimeoutInterval: Integer

        attr_accessor :ProductID, :FirmwareVersion, :FirmwareOriVersion, :UpgradeMethod, :FileName, :FileMd5, :FileSize, :DeviceNames, :TimeoutInterval
        
        def initialize(productid=nil, firmwareversion=nil, firmwareoriversion=nil, upgrademethod=nil, filename=nil, filemd5=nil, filesize=nil, devicenames=nil, timeoutinterval=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FirmwareOriVersion = firmwareoriversion
          @UpgradeMethod = upgrademethod
          @FileName = filename
          @FileMd5 = filemd5
          @FileSize = filesize
          @DeviceNames = devicenames
          @TimeoutInterval = timeoutinterval
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
        end
      end

      # BatchUpdateFirmware返回参数结构体
      class BatchUpdateFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 批量更新设备影子任务
      class BatchUpdateShadow < TencentCloud::Common::AbstractModel
        # @param Desired: 设备影子的期望状态，格式为 Json 对象序列化之后的字符串
        # @type Desired: String

        attr_accessor :Desired
        
        def initialize(desired=nil)
          @Desired = desired
        end

        def deserialize(params)
          @Desired = params['Desired']
        end
      end

      # BindDevices请求参数结构体
      class BindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名
        # @type GatewayDeviceName: String
        # @param ProductId: 被绑定设备的产品ID
        # @type ProductId: String
        # @param DeviceNames: 被绑定的多个设备名
        # @type DeviceNames: Array
        # @param Skey: 中兴CLAA设备的绑定需要skey，普通的设备不需要
        # @type Skey: String

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :DeviceNames, :Skey
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, devicenames=nil, skey=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @DeviceNames = devicenames
          @Skey = skey
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
          @Skey = params['Skey']
        end
      end

      # BindDevices返回参数结构体
      class BindDevicesResponse < TencentCloud::Common::AbstractModel
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

      # 代理订阅信息
      class BrokerSubscribe < TencentCloud::Common::AbstractModel
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

      # CancelDeviceFirmwareTask请求参数结构体
      class CancelDeviceFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :DeviceName, :FirmwareVersion, :TaskId
        
        def initialize(productid=nil, devicename=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # CancelDeviceFirmwareTask返回参数结构体
      class CancelDeviceFirmwareTaskResponse < TencentCloud::Common::AbstractModel
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

      # CancelTask请求参数结构体
      class CancelTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 任务 ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # CancelTask返回参数结构体
      class CancelTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateDevice请求参数结构体
      class CreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID 。创建产品时腾讯云为用户分配全局唯一的 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}。
        # @type DeviceName: String
        # @param Attribute: 设备属性
        # @type Attribute: :class:`Tencentcloud::Iotcloud.v20180614.models.Attribute`
        # @param DefinedPsk: 是否使用自定义PSK，默认不使用
        # @type DefinedPsk: String
        # @param Isp: 运营商类型，当产品是NB-IoT产品时，此字段必填。1表示中国电信，2表示中国移动，3表示中国联通
        # @type Isp: Integer
        # @param Imei: IMEI，当产品是NB-IoT产品时，此字段必填
        # @type Imei: String
        # @param LoraDevEui: LoRa设备的DevEui，当创建LoRa时，此字段必填
        # @type LoraDevEui: String
        # @param LoraMoteType: LoRa设备的MoteType
        # @type LoraMoteType: Integer
        # @param Skey: 创建LoRa设备需要skey
        # @type Skey: String
        # @param LoraAppKey: LoRa设备的AppKey
        # @type LoraAppKey: String

        attr_accessor :ProductId, :DeviceName, :Attribute, :DefinedPsk, :Isp, :Imei, :LoraDevEui, :LoraMoteType, :Skey, :LoraAppKey
        
        def initialize(productid=nil, devicename=nil, attribute=nil, definedpsk=nil, isp=nil, imei=nil, loradeveui=nil, loramotetype=nil, skey=nil, loraappkey=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Attribute = attribute
          @DefinedPsk = definedpsk
          @Isp = isp
          @Imei = imei
          @LoraDevEui = loradeveui
          @LoraMoteType = loramotetype
          @Skey = skey
          @LoraAppKey = loraappkey
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          unless params['Attribute'].nil?
            @Attribute = Attribute.new
            @Attribute.deserialize(params['Attribute'])
          end
          @DefinedPsk = params['DefinedPsk']
          @Isp = params['Isp']
          @Imei = params['Imei']
          @LoraDevEui = params['LoraDevEui']
          @LoraMoteType = params['LoraMoteType']
          @Skey = params['Skey']
          @LoraAppKey = params['LoraAppKey']
        end
      end

      # CreateDevice返回参数结构体
      class CreateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DevicePsk: 对称加密密钥，base64编码。采用对称加密时返回该参数
        # @type DevicePsk: String
        # @param DeviceCert: 设备证书，用于 TLS 建立链接时校验客户端身份。采用非对称加密时返回该参数
        # @type DeviceCert: String
        # @param DevicePrivateKey: 设备私钥，用于 TLS 建立链接时校验客户端身份，腾讯云后台不保存，请妥善保管。采用非对称加密时返回该参数
        # @type DevicePrivateKey: String
        # @param LoraDevEui: LoRa设备的DevEui，当设备是LoRa设备时，会返回该字段
        # @type LoraDevEui: String
        # @param LoraMoteType: LoRa设备的MoteType，当设备是LoRa设备时，会返回该字段
        # @type LoraMoteType: Integer
        # @param LoraAppKey: LoRa设备的AppKey，当设备是LoRa设备时，会返回该字段
        # @type LoraAppKey: String
        # @param LoraNwkKey: LoRa设备的NwkKey，当设备是LoRa设备时，会返回该字段
        # @type LoraNwkKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceName, :DevicePsk, :DeviceCert, :DevicePrivateKey, :LoraDevEui, :LoraMoteType, :LoraAppKey, :LoraNwkKey, :RequestId
        
        def initialize(devicename=nil, devicepsk=nil, devicecert=nil, deviceprivatekey=nil, loradeveui=nil, loramotetype=nil, loraappkey=nil, loranwkkey=nil, requestid=nil)
          @DeviceName = devicename
          @DevicePsk = devicepsk
          @DeviceCert = devicecert
          @DevicePrivateKey = deviceprivatekey
          @LoraDevEui = loradeveui
          @LoraMoteType = loramotetype
          @LoraAppKey = loraappkey
          @LoraNwkKey = loranwkkey
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @DevicePsk = params['DevicePsk']
          @DeviceCert = params['DeviceCert']
          @DevicePrivateKey = params['DevicePrivateKey']
          @LoraDevEui = params['LoraDevEui']
          @LoraMoteType = params['LoraMoteType']
          @LoraAppKey = params['LoraAppKey']
          @LoraNwkKey = params['LoraNwkKey']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoraDevice请求参数结构体
      class CreateLoraDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id ，创建产品时腾讯云为用户分配全局唯一的Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceType: 设备类型 ，目前支持A、B、C三种
        # @type DeviceType: String
        # @param AppEui: LoRa应用UUID
        # @type AppEui: String
        # @param DeviceEui: LoRa设备UUID
        # @type DeviceEui: String
        # @param AppKey: LoRa应用密钥
        # @type AppKey: String
        # @param AuthKey: LoRa设备验证密钥
        # @type AuthKey: String
        # @param Memo: 设备备注
        # @type Memo: String

        attr_accessor :ProductId, :DeviceName, :DeviceType, :AppEui, :DeviceEui, :AppKey, :AuthKey, :Memo
        
        def initialize(productid=nil, devicename=nil, devicetype=nil, appeui=nil, deviceeui=nil, appkey=nil, authkey=nil, memo=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceType = devicetype
          @AppEui = appeui
          @DeviceEui = deviceeui
          @AppKey = appkey
          @AuthKey = authkey
          @Memo = memo
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceType = params['DeviceType']
          @AppEui = params['AppEui']
          @DeviceEui = params['DeviceEui']
          @AppKey = params['AppKey']
          @AuthKey = params['AuthKey']
          @Memo = params['Memo']
        end
      end

      # CreateLoraDevice返回参数结构体
      class CreateLoraDeviceResponse < TencentCloud::Common::AbstractModel
        # @param AppEui: LoRa应用UUID
        # @type AppEui: String
        # @param DeviceEui: LoRa设备UUID
        # @type DeviceEui: String
        # @param ClassType: 设备类型,目前支持A、B、C三种
        # @type ClassType: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppEui, :DeviceEui, :ClassType, :DeviceName, :RequestId
        
        def initialize(appeui=nil, deviceeui=nil, classtype=nil, devicename=nil, requestid=nil)
          @AppEui = appeui
          @DeviceEui = deviceeui
          @ClassType = classtype
          @DeviceName = devicename
          @RequestId = requestid
        end

        def deserialize(params)
          @AppEui = params['AppEui']
          @DeviceEui = params['DeviceEui']
          @ClassType = params['ClassType']
          @DeviceName = params['DeviceName']
          @RequestId = params['RequestId']
        end
      end

      # CreateMultiDevice请求参数结构体
      class CreateMultiDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID。创建产品时腾讯云为用户分配全局唯一的 ID
        # @type ProductId: String
        # @param DeviceNames: 批量创建的设备名数组，单次最多创建 100 个设备。命名规则：[a-zA-Z0-9:_-]{1,48}
        # @type DeviceNames: Array

        attr_accessor :ProductId, :DeviceNames
        
        def initialize(productid=nil, devicenames=nil)
          @ProductId = productid
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
        end
      end

      # CreateMultiDevice返回参数结构体
      class CreateMultiDeviceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，腾讯云生成全局唯一的任务 ID，有效期一个月，一个月之后任务失效。可以调用获取创建多设备任务状态接口获取该任务的执行状态，当状态为成功时，可以调用获取创建多设备任务结果接口获取该任务的结果
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateMultiDevicesTask请求参数结构体
      class CreateMultiDevicesTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ParametersType: 参数类型 cosfile-文件上传 random-随机创建
        # @type ParametersType: String
        # @param FileName: 文件上传类型时文件名
        # @type FileName: String
        # @param FileSize: 文件上传类型时文件大小
        # @type FileSize: Integer
        # @param BatchCount: 随机创建时设备创建个数
        # @type BatchCount: Integer
        # @param Hash: 文件上传类型时文件md5值
        # @type Hash: String

        attr_accessor :ProductId, :ParametersType, :FileName, :FileSize, :BatchCount, :Hash
        
        def initialize(productid=nil, parameterstype=nil, filename=nil, filesize=nil, batchcount=nil, hash=nil)
          @ProductId = productid
          @ParametersType = parameterstype
          @FileName = filename
          @FileSize = filesize
          @BatchCount = batchcount
          @Hash = hash
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ParametersType = params['ParametersType']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @BatchCount = params['BatchCount']
          @Hash = params['Hash']
        end
      end

      # CreateMultiDevicesTask返回参数结构体
      class CreateMultiDevicesTaskResponse < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId
        
        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # CreateProduct请求参数结构体
      class CreateProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称，名称不能和已经存在的产品名称重复。命名规则：[a-zA-Z0-9:_-]{1,32}
        # @type ProductName: String
        # @param ProductProperties: 产品属性
        # @type ProductProperties: :class:`Tencentcloud::Iotcloud.v20180614.models.ProductProperties`
        # @param Skey: 创建CLAA产品时，需要Skey
        # @type Skey: String

        attr_accessor :ProductName, :ProductProperties, :Skey
        
        def initialize(productname=nil, productproperties=nil, skey=nil)
          @ProductName = productname
          @ProductProperties = productproperties
          @Skey = skey
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          unless params['ProductProperties'].nil?
            @ProductProperties = ProductProperties.new
            @ProductProperties.deserialize(params['ProductProperties'])
          end
          @Skey = params['Skey']
        end
      end

      # CreateProduct返回参数结构体
      class CreateProductResponse < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductId: 产品 ID，腾讯云生成全局唯一 ID
        # @type ProductId: String
        # @param ProductProperties: 产品属性
        # @type ProductProperties: :class:`Tencentcloud::Iotcloud.v20180614.models.ProductProperties`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductName, :ProductId, :ProductProperties, :RequestId
        
        def initialize(productname=nil, productid=nil, productproperties=nil, requestid=nil)
          @ProductName = productname
          @ProductId = productid
          @ProductProperties = productproperties
          @RequestId = requestid
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @ProductId = params['ProductId']
          unless params['ProductProperties'].nil?
            @ProductProperties = ProductProperties.new
            @ProductProperties.deserialize(params['ProductProperties'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTaskFileUrl请求参数结构体
      class CreateTaskFileUrlRequest < TencentCloud::Common::AbstractModel
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

      # CreateTaskFileUrl返回参数结构体
      class CreateTaskFileUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 任务文件上传链接
        # @type Url: String
        # @param FileName: 任务文件名
        # @type FileName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :FileName, :RequestId
        
        def initialize(url=nil, filename=nil, requestid=nil)
          @Url = url
          @FileName = filename
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @FileName = params['FileName']
          @RequestId = params['RequestId']
        end
      end

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，取值为 “UpdateShadow” 或者 “PublishMessage”
        # @type TaskType: String
        # @param ProductId: 执行任务的产品ID
        # @type ProductId: String
        # @param DeviceNameFilter: 执行任务的设备名的正则表达式
        # @type DeviceNameFilter: String
        # @param ScheduleTimeInSeconds: 任务开始执行的时间。 取值为 Unix 时间戳，单位秒，且需大于等于当前时间时间戳，0为系统当前时间时间戳，即立即执行，最大为当前时间86400秒后，超过则取值为当前时间86400秒后
        # @type ScheduleTimeInSeconds: Integer
        # @param Tasks: 任务描述细节，描述见下 Task
        # @type Tasks: :class:`Tencentcloud::Iotcloud.v20180614.models.Task`
        # @param MaxExecutionTimeInSeconds: 最长执行时间，单位秒，被调度后超过此时间仍未有结果则视为任务失败。取值为0-86400，默认为86400
        # @type MaxExecutionTimeInSeconds: Integer

        attr_accessor :TaskType, :ProductId, :DeviceNameFilter, :ScheduleTimeInSeconds, :Tasks, :MaxExecutionTimeInSeconds
        
        def initialize(tasktype=nil, productid=nil, devicenamefilter=nil, scheduletimeinseconds=nil, tasks=nil, maxexecutiontimeinseconds=nil)
          @TaskType = tasktype
          @ProductId = productid
          @DeviceNameFilter = devicenamefilter
          @ScheduleTimeInSeconds = scheduletimeinseconds
          @Tasks = tasks
          @MaxExecutionTimeInSeconds = maxexecutiontimeinseconds
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ProductId = params['ProductId']
          @DeviceNameFilter = params['DeviceNameFilter']
          @ScheduleTimeInSeconds = params['ScheduleTimeInSeconds']
          unless params['Tasks'].nil?
            @Tasks = Task.new
            @Tasks.deserialize(params['Tasks'])
          end
          @MaxExecutionTimeInSeconds = params['MaxExecutionTimeInSeconds']
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 创建的任务ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateTopicPolicy请求参数结构体
      class CreateTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品自身ID
        # @type ProductID: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限，1发布，2订阅，3订阅和发布
        # @type Privilege: Integer
        # @param BrokerSubscribe: 代理订阅信息，网关产品为绑定的子产品创建topic时需要填写，内容为子产品的ID和设备信息。
        # @type BrokerSubscribe: :class:`Tencentcloud::Iotcloud.v20180614.models.BrokerSubscribe`

        attr_accessor :ProductID, :TopicName, :Privilege, :BrokerSubscribe
        
        def initialize(productid=nil, topicname=nil, privilege=nil, brokersubscribe=nil)
          @ProductID = productid
          @TopicName = topicname
          @Privilege = privilege
          @BrokerSubscribe = brokersubscribe
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @TopicName = params['TopicName']
          @Privilege = params['Privilege']
          unless params['BrokerSubscribe'].nil?
            @BrokerSubscribe = BrokerSubscribe.new
            @BrokerSubscribe.deserialize(params['BrokerSubscribe'])
          end
        end
      end

      # CreateTopicPolicy返回参数结构体
      class CreateTopicPolicyResponse < TencentCloud::Common::AbstractModel
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

      # CreateTopicRule请求参数结构体
      class CreateTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 规则内容
        # @type TopicRulePayload: :class:`Tencentcloud::Iotcloud.v20180614.models.TopicRulePayload`

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

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 设备所属的产品 ID
        # @type ProductId: String
        # @param DeviceName: 需要删除的设备名称
        # @type DeviceName: String
        # @param Skey: 删除LoRa设备以及LoRa网关设备需要skey
        # @type Skey: String

        attr_accessor :ProductId, :DeviceName, :Skey
        
        def initialize(productid=nil, devicename=nil, skey=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Skey = skey
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Skey = params['Skey']
        end
      end

      # DeleteDevice返回参数结构体
      class DeleteDeviceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoraDevice请求参数结构体
      class DeleteLoraDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 设备所属产品ID
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

      # DeleteLoraDevice返回参数结构体
      class DeleteLoraDeviceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProduct请求参数结构体
      class DeleteProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 需要删除的产品 ID
        # @type ProductId: String
        # @param Skey: 删除LoRa产品需要skey
        # @type Skey: String

        attr_accessor :ProductId, :Skey
        
        def initialize(productid=nil, skey=nil)
          @ProductId = productid
          @Skey = skey
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Skey = params['Skey']
        end
      end

      # DeleteProduct返回参数结构体
      class DeleteProductResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAllDevices请求参数结构体
      class DescribeAllDevicesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 查询偏移量。
        # @type Offset: Integer
        # @param Limit: 查询设备数量。最大支持250个
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAllDevices返回参数结构体
      class DescribeAllDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 设备总数。
        # @type TotalCount: Integer
        # @param Devices: 查询的设备列表信息。
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
              deviceproperty_tmp = DeviceProperty.new
              deviceproperty_tmp.deserialize(i)
              @Devices << deviceproperty_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceClientKey请求参数结构体
      class DescribeDeviceClientKeyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 所属产品的Id
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

      # DescribeDeviceClientKey返回参数结构体
      class DescribeDeviceClientKeyResponse < TencentCloud::Common::AbstractModel
        # @param ClientKey: 设备的私钥
        # @type ClientKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientKey, :RequestId
        
        def initialize(clientkey=nil, requestid=nil)
          @ClientKey = clientkey
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientKey = params['ClientKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevice请求参数结构体
      class DescribeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名
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

      # DescribeDeviceResource请求参数结构体
      class DescribeDeviceResourceRequest < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Name: 具体的设备资源名称
        # @type Name: String

        attr_accessor :DeviceName, :ProductID, :Name
        
        def initialize(devicename=nil, productid=nil, name=nil)
          @DeviceName = devicename
          @ProductID = productid
          @Name = name
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @ProductID = params['ProductID']
          @Name = params['Name']
        end
      end

      # DescribeDeviceResource返回参数结构体
      class DescribeDeviceResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 设备资源详情
        # @type Result: :class:`Tencentcloud::Iotcloud.v20180614.models.DeviceResourceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DeviceResourceInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceResources请求参数结构体
      class DescribeDeviceResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param Limit: 分页的大小，数值范围 10-250
        # @type Limit: Integer
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 需要过滤的设备名称
        # @type DeviceName: String
        # @param StartTime: 资源搜索开始时间
        # @type StartTime: String
        # @param EndTime: 资源搜索结束时间
        # @type EndTime: String

        attr_accessor :Offset, :Limit, :ProductID, :DeviceName, :StartTime, :EndTime
        
        def initialize(offset=nil, limit=nil, productid=nil, devicename=nil, starttime=nil, endtime=nil)
          @Offset = offset
          @Limit = limit
          @ProductID = productid
          @DeviceName = devicename
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDeviceResources返回参数结构体
      class DescribeDeviceResourcesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源总数
        # @type TotalCount: Integer
        # @param Result: 资源列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Result, :RequestId
        
        def initialize(totalcount=nil, result=nil, requestid=nil)
          @TotalCount = totalcount
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              deviceresourceinfo_tmp = DeviceResourceInfo.new
              deviceresourceinfo_tmp.deserialize(i)
              @Result << deviceresourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevice返回参数结构体
      class DescribeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Online: 设备是否在线，0不在线，1在线
        # @type Online: Integer
        # @param LoginTime: 设备登录时间
        # @type LoginTime: Integer
        # @param Version: 设备固件版本
        # @type Version: String
        # @param LastUpdateTime: 设备最后更新时间
        # @type LastUpdateTime: Integer
        # @param DeviceCert: 设备证书
        # @type DeviceCert: String
        # @param DevicePsk: 设备密钥
        # @type DevicePsk: String
        # @param Tags: 设备属性
        # @type Tags: Array
        # @param DeviceType: 设备类型
        # @type DeviceType: Integer
        # @param Imei: 国际移动设备识别码 IMEI
        # @type Imei: String
        # @param Isp: 运营商类型
        # @type Isp: Integer
        # @param ConnIP: IP地址
        # @type ConnIP: Integer
        # @param NbiotDeviceID: NB IoT运营商处的DeviceID
        # @type NbiotDeviceID: String
        # @param LoraDevEui: Lora设备的dev eui
        # @type LoraDevEui: String
        # @param LoraMoteType: Lora设备的mote type
        # @type LoraMoteType: Integer
        # @param LogLevel: 设备的sdk日志等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogLevel: Integer
        # @param FirstOnlineTime: 首次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstOnlineTime: Integer
        # @param LastOfflineTime: 最近下线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOfflineTime: Integer
        # @param CreateTime: 设备创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param CertState: 设备证书获取状态，0 未获取过设备密钥, 1 已获取过设备密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertState: Integer
        # @param EnableState: 设备启用状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableState: Integer
        # @param Labels: 设备标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param ClientIP: MQTT客户端IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIP: String
        # @param FirmwareUpdateTime: 设备固件更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirmwareUpdateTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceName, :Online, :LoginTime, :Version, :LastUpdateTime, :DeviceCert, :DevicePsk, :Tags, :DeviceType, :Imei, :Isp, :ConnIP, :NbiotDeviceID, :LoraDevEui, :LoraMoteType, :LogLevel, :FirstOnlineTime, :LastOfflineTime, :CreateTime, :CertState, :EnableState, :Labels, :ClientIP, :FirmwareUpdateTime, :RequestId
        
        def initialize(devicename=nil, online=nil, logintime=nil, version=nil, lastupdatetime=nil, devicecert=nil, devicepsk=nil, tags=nil, devicetype=nil, imei=nil, isp=nil, connip=nil, nbiotdeviceid=nil, loradeveui=nil, loramotetype=nil, loglevel=nil, firstonlinetime=nil, lastofflinetime=nil, createtime=nil, certstate=nil, enablestate=nil, labels=nil, clientip=nil, firmwareupdatetime=nil, requestid=nil)
          @DeviceName = devicename
          @Online = online
          @LoginTime = logintime
          @Version = version
          @LastUpdateTime = lastupdatetime
          @DeviceCert = devicecert
          @DevicePsk = devicepsk
          @Tags = tags
          @DeviceType = devicetype
          @Imei = imei
          @Isp = isp
          @ConnIP = connip
          @NbiotDeviceID = nbiotdeviceid
          @LoraDevEui = loradeveui
          @LoraMoteType = loramotetype
          @LogLevel = loglevel
          @FirstOnlineTime = firstonlinetime
          @LastOfflineTime = lastofflinetime
          @CreateTime = createtime
          @CertState = certstate
          @EnableState = enablestate
          @Labels = labels
          @ClientIP = clientip
          @FirmwareUpdateTime = firmwareupdatetime
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Online = params['Online']
          @LoginTime = params['LoginTime']
          @Version = params['Version']
          @LastUpdateTime = params['LastUpdateTime']
          @DeviceCert = params['DeviceCert']
          @DevicePsk = params['DevicePsk']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              devicetag_tmp = DeviceTag.new
              devicetag_tmp.deserialize(i)
              @Tags << devicetag_tmp
            end
          end
          @DeviceType = params['DeviceType']
          @Imei = params['Imei']
          @Isp = params['Isp']
          @ConnIP = params['ConnIP']
          @NbiotDeviceID = params['NbiotDeviceID']
          @LoraDevEui = params['LoraDevEui']
          @LoraMoteType = params['LoraMoteType']
          @LogLevel = params['LogLevel']
          @FirstOnlineTime = params['FirstOnlineTime']
          @LastOfflineTime = params['LastOfflineTime']
          @CreateTime = params['CreateTime']
          @CertState = params['CertState']
          @EnableState = params['EnableState']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              devicelabel_tmp = DeviceLabel.new
              devicelabel_tmp.deserialize(i)
              @Labels << devicelabel_tmp
            end
          end
          @ClientIP = params['ClientIP']
          @FirmwareUpdateTime = params['FirmwareUpdateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceShadow请求参数结构体
      class DescribeDeviceShadowRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}
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

      # DescribeDeviceShadow返回参数结构体
      class DescribeDeviceShadowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备影子数据
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 需要查看设备列表的产品 ID
        # @type ProductId: String
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param Limit: 分页的大小，数值范围 10-250
        # @type Limit: Integer
        # @param FirmwareVersion: 设备固件版本号，若不带此参数会返回所有固件版本的设备。传"None-FirmwareVersion"查询无版本号的设备
        # @type FirmwareVersion: String
        # @param DeviceName: 需要过滤的设备名称
        # @type DeviceName: String
        # @param EnableState: 设备是否启用，0禁用状态1启用状态，默认不区分
        # @type EnableState: Integer

        attr_accessor :ProductId, :Offset, :Limit, :FirmwareVersion, :DeviceName, :EnableState
        
        def initialize(productid=nil, offset=nil, limit=nil, firmwareversion=nil, devicename=nil, enablestate=nil)
          @ProductId = productid
          @Offset = offset
          @Limit = limit
          @FirmwareVersion = firmwareversion
          @DeviceName = devicename
          @EnableState = enablestate
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FirmwareVersion = params['FirmwareVersion']
          @DeviceName = params['DeviceName']
          @EnableState = params['EnableState']
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 设备总数
        # @type TotalCount: Integer
        # @param Devices: 设备详细信息列表
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
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @Devices << deviceinfo_tmp
            end
          end
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 固件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Md5sum: 固件Md5值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5sum: String
        # @param Createtime: 固件上传的秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Createtime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param FwType: 固件类型。选项：mcu、module
        # @type FwType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :ProductId, :Name, :Description, :Md5sum, :Createtime, :ProductName, :FwType, :RequestId
        
        def initialize(version=nil, productid=nil, name=nil, description=nil, md5sum=nil, createtime=nil, productname=nil, fwtype=nil, requestid=nil)
          @Version = version
          @ProductId = productid
          @Name = name
          @Description = description
          @Md5sum = md5sum
          @Createtime = createtime
          @ProductName = productname
          @FwType = fwtype
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

        attr_accessor :ProductID, :FirmwareVersion, :Filters, :Offset, :Limit
        
        def initialize(productid=nil, firmwareversion=nil, filters=nil, offset=nil, limit=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeFirmwareTaskDistribution请求参数结构体
      class DescribeFirmwareTaskDistributionRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
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

      # DescribeFirmwareTaskDistribution返回参数结构体
      class DescribeFirmwareTaskDistributionResponse < TencentCloud::Common::AbstractModel
        # @param StatusInfos: 固件升级任务状态分布信息
        # @type StatusInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatusInfos, :RequestId
        
        def initialize(statusinfos=nil, requestid=nil)
          @StatusInfos = statusinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StatusInfos'].nil?
            @StatusInfos = []
            params['StatusInfos'].each do |i|
              statusstatistic_tmp = StatusStatistic.new
              statusstatistic_tmp.deserialize(i)
              @StatusInfos << statusstatistic_tmp
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param Status: 固件任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 固件任务创建时间，单位:秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Type: 固件任务升级类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param UpgradeMode: 固件任务升级模式。originalVersion（按版本号升级）、filename（提交文件升级）、devicenames（按设备名称升级）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeMode: String
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :CreateTime, :Type, :ProductName, :UpgradeMode, :ProductId, :RequestId
        
        def initialize(taskid=nil, status=nil, createtime=nil, type=nil, productname=nil, upgrademode=nil, productid=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @CreateTime = createtime
          @Type = type
          @ProductName = productname
          @UpgradeMode = upgrademode
          @ProductId = productid
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTaskStatistics请求参数结构体
      class DescribeFirmwareTaskStatisticsRequest < TencentCloud::Common::AbstractModel
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

      # DescribeFirmwareTaskStatistics返回参数结构体
      class DescribeFirmwareTaskStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SuccessTotal: 升级成功的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessTotal: Integer
        # @param FailureTotal: 升级失败的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureTotal: Integer
        # @param UpgradingTotal: 正在升级的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradingTotal: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessTotal, :FailureTotal, :UpgradingTotal, :RequestId
        
        def initialize(successtotal=nil, failuretotal=nil, upgradingtotal=nil, requestid=nil)
          @SuccessTotal = successtotal
          @FailureTotal = failuretotal
          @UpgradingTotal = upgradingtotal
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessTotal = params['SuccessTotal']
          @FailureTotal = params['FailureTotal']
          @UpgradingTotal = params['UpgradingTotal']
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

        attr_accessor :ProductID, :FirmwareVersion, :Offset, :Limit, :Filters
        
        def initialize(productid=nil, firmwareversion=nil, offset=nil, limit=nil, filters=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Offset = offset
          @Limit = limit
          @Filters = filters
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeLoraDevice请求参数结构体
      class DescribeLoraDeviceRequest < TencentCloud::Common::AbstractModel
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

      # DescribeLoraDevice返回参数结构体
      class DescribeLoraDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param AppEui: LoRa应用UUID
        # @type AppEui: String
        # @param DeviceEui: LoRa设备UUID
        # @type DeviceEui: String
        # @param AppKey: LoRa应用密钥
        # @type AppKey: String
        # @param ClassType: 设备类型,目前支持A、B、C三种
        # @type ClassType: String
        # @param ProductId: 设备所属产品id
        # @type ProductId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceName, :AppEui, :DeviceEui, :AppKey, :ClassType, :ProductId, :RequestId
        
        def initialize(devicename=nil, appeui=nil, deviceeui=nil, appkey=nil, classtype=nil, productid=nil, requestid=nil)
          @DeviceName = devicename
          @AppEui = appeui
          @DeviceEui = deviceeui
          @AppKey = appkey
          @ClassType = classtype
          @ProductId = productid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @AppEui = params['AppEui']
          @DeviceEui = params['DeviceEui']
          @AppKey = params['AppKey']
          @ClassType = params['ClassType']
          @ProductId = params['ProductId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMultiDevTask请求参数结构体
      class DescribeMultiDevTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID，由批量创建设备接口返回
        # @type TaskId: String
        # @param ProductId: 产品 ID，创建产品时腾讯云为用户分配全局唯一的 ID
        # @type ProductId: String

        attr_accessor :TaskId, :ProductId
        
        def initialize(taskid=nil, productid=nil)
          @TaskId = taskid
          @ProductId = productid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ProductId = params['ProductId']
        end
      end

      # DescribeMultiDevTask返回参数结构体
      class DescribeMultiDevTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param TaskStatus: 任务是否完成。0 代表任务未开始，1 代表任务正在执行，2 代表任务已完成
        # @type TaskStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :TaskStatus, :RequestId
        
        def initialize(taskid=nil, taskstatus=nil, requestid=nil)
          @TaskId = taskid
          @TaskStatus = taskstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskStatus = params['TaskStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMultiDevices请求参数结构体
      class DescribeMultiDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID，创建产品时腾讯云为用户分配全局唯一的 ID
        # @type ProductId: String
        # @param TaskId: 任务 ID，由批量创建设备接口返回
        # @type TaskId: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页大小，每页返回的设备个数
        # @type Limit: Integer

        attr_accessor :ProductId, :TaskId, :Offset, :Limit
        
        def initialize(productid=nil, taskid=nil, offset=nil, limit=nil)
          @ProductId = productid
          @TaskId = taskid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TaskId = params['TaskId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeMultiDevices返回参数结构体
      class DescribeMultiDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID，由批量创建设备接口返回
        # @type TaskId: String
        # @param DevicesInfo: 设备详细信息列表
        # @type DevicesInfo: Array
        # @param TotalDevNum: 该任务创建设备的总数
        # @type TotalDevNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :DevicesInfo, :TotalDevNum, :RequestId
        
        def initialize(taskid=nil, devicesinfo=nil, totaldevnum=nil, requestid=nil)
          @TaskId = taskid
          @DevicesInfo = devicesinfo
          @TotalDevNum = totaldevnum
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['DevicesInfo'].nil?
            @DevicesInfo = []
            params['DevicesInfo'].each do |i|
              multidevicesinfo_tmp = MultiDevicesInfo.new
              multidevicesinfo_tmp.deserialize(i)
              @DevicesInfo << multidevicesinfo_tmp
            end
          end
          @TotalDevNum = params['TotalDevNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductResource请求参数结构体
      class DescribeProductResourceRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 需要查看资源列表的产品 ID
        # @type ProductID: String
        # @param Name: 需要过滤的资源名称
        # @type Name: String

        attr_accessor :ProductID, :Name
        
        def initialize(productid=nil, name=nil)
          @ProductID = productid
          @Name = name
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @Name = params['Name']
        end
      end

      # DescribeProductResource返回参数结构体
      class DescribeProductResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Iotcloud.v20180614.models.ProductResourceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ProductResourceInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductResources请求参数结构体
      class DescribeProductResourcesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param Limit: 分页的大小，数值范围 10-250
        # @type Limit: Integer
        # @param ProductID: 需要查看资源列表的产品 ID
        # @type ProductID: String
        # @param Name: 需要过滤的资源名称
        # @type Name: String

        attr_accessor :Offset, :Limit, :ProductID, :Name
        
        def initialize(offset=nil, limit=nil, productid=nil, name=nil)
          @Offset = offset
          @Limit = limit
          @ProductID = productid
          @Name = name
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductID = params['ProductID']
          @Name = params['Name']
        end
      end

      # DescribeProductResources返回参数结构体
      class DescribeProductResourcesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源总数
        # @type TotalCount: Integer
        # @param Result: 资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Result, :RequestId
        
        def initialize(totalcount=nil, result=nil, requestid=nil)
          @TotalCount = totalcount
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              productresourceinfo_tmp = ProductResourceInfo.new
              productresourceinfo_tmp.deserialize(i)
              @Result << productresourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductTask请求参数结构体
      class DescribeProductTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :ProductId, :TaskId
        
        def initialize(productid=nil, taskid=nil)
          @ProductId = productid
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeProductTask返回参数结构体
      class DescribeProductTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 产品任务详细信息
        # @type TaskInfo: :class:`Tencentcloud::Iotcloud.v20180614.models.ProductTaskInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId
        
        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = ProductTaskInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductTasks请求参数结构体
      class DescribeProductTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Offset: 产品级别任务列表偏移量
        # @type Offset: Integer
        # @param Limit: 产品级别任务列表拉取个数
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

      # DescribeProductTasks返回参数结构体
      class DescribeProductTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的任务总个数
        # @type TotalCount: Integer
        # @param TaskInfos: 任务详细信息列表
        # @type TaskInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TaskInfos, :RequestId
        
        def initialize(totalcount=nil, taskinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @TaskInfos = taskinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              producttaskinfo_tmp = ProductTaskInfo.new
              producttaskinfo_tmp.deserialize(i)
              @TaskInfos << producttaskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProducts请求参数结构体
      class DescribeProductsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param Limit: 分页大小，当前页面中显示的最大数量，值范围 10-250。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeProducts返回参数结构体
      class DescribeProductsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 产品总数
        # @type TotalCount: Integer
        # @param Products: 产品详细信息列表
        # @type Products: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Products, :RequestId
        
        def initialize(totalcount=nil, products=nil, requestid=nil)
          @TotalCount = totalcount
          @Products = products
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              productinfo_tmp = ProductInfo.new
              productinfo_tmp.deserialize(i)
              @Products << productinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePushResourceTaskStatistics请求参数结构体
      class DescribePushResourceTaskStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Name: 资源名称
        # @type Name: String

        attr_accessor :ProductID, :Name
        
        def initialize(productid=nil, name=nil)
          @ProductID = productid
          @Name = name
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @Name = params['Name']
        end
      end

      # DescribePushResourceTaskStatistics返回参数结构体
      class DescribePushResourceTaskStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SuccessTotal: 推送成功的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessTotal: Integer
        # @param FailureTotal: 推送失败的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureTotal: Integer
        # @param UpgradingTotal: 正在推送的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradingTotal: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessTotal, :FailureTotal, :UpgradingTotal, :RequestId
        
        def initialize(successtotal=nil, failuretotal=nil, upgradingtotal=nil, requestid=nil)
          @SuccessTotal = successtotal
          @FailureTotal = failuretotal
          @UpgradingTotal = upgradingtotal
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessTotal = params['SuccessTotal']
          @FailureTotal = params['FailureTotal']
          @UpgradingTotal = params['UpgradingTotal']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourceTasks请求参数结构体
      class DescribeResourceTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Name: 资源名称
        # @type Name: String
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 返回查询结果条数
        # @type Limit: Integer
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :ProductID, :Name, :Offset, :Limit, :Filters
        
        def initialize(productid=nil, name=nil, offset=nil, limit=nil, filters=nil)
          @ProductID = productid
          @Name = name
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @Name = params['Name']
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
        end
      end

      # DescribeResourceTasks返回参数结构体
      class DescribeResourceTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfos: 资源任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfos: Array
        # @param Total: 资源任务总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeTask请求参数结构体
      class DescribeTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeTask返回参数结构体
      class DescribeTaskResponse < TencentCloud::Common::AbstractModel
        # @param Type: 任务类型，目前取值为 “UpdateShadow” 或者 “PublishMessage”
        # @type Type: String
        # @param Id: 任务 ID
        # @type Id: String
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param Status: 状态。1表示等待处理，2表示调度处理中，3表示已完成，4表示失败，5表示已取消
        # @type Status: Integer
        # @param CreateTime: 任务创建时间，Unix 时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 最后任务更新时间，Unix 时间戳
        # @type UpdateTime: Integer
        # @param DoneTime: 任务完成时间，Unix 时间戳
        # @type DoneTime: Integer
        # @param ScheduleTime: 被调度时间，Unix 时间戳
        # @type ScheduleTime: Integer
        # @param RetCode: 返回的错误码
        # @type RetCode: Integer
        # @param ErrMsg: 返回的错误信息
        # @type ErrMsg: String
        # @param Percent: 完成任务的设备比例
        # @type Percent: Integer
        # @param AllDeviceCnt: 匹配到的需执行任务的设备数目
        # @type AllDeviceCnt: Integer
        # @param DoneDeviceCnt: 已完成任务的设备数目
        # @type DoneDeviceCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :Id, :ProductId, :Status, :CreateTime, :UpdateTime, :DoneTime, :ScheduleTime, :RetCode, :ErrMsg, :Percent, :AllDeviceCnt, :DoneDeviceCnt, :RequestId
        
        def initialize(type=nil, id=nil, productid=nil, status=nil, createtime=nil, updatetime=nil, donetime=nil, scheduletime=nil, retcode=nil, errmsg=nil, percent=nil, alldevicecnt=nil, donedevicecnt=nil, requestid=nil)
          @Type = type
          @Id = id
          @ProductId = productid
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DoneTime = donetime
          @ScheduleTime = scheduletime
          @RetCode = retcode
          @ErrMsg = errmsg
          @Percent = percent
          @AllDeviceCnt = alldevicecnt
          @DoneDeviceCnt = donedevicecnt
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
          @ProductId = params['ProductId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DoneTime = params['DoneTime']
          @ScheduleTime = params['ScheduleTime']
          @RetCode = params['RetCode']
          @ErrMsg = params['ErrMsg']
          @Percent = params['Percent']
          @AllDeviceCnt = params['AllDeviceCnt']
          @DoneDeviceCnt = params['DoneDeviceCnt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页的大小，数值范围 1-250
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户一个月内创建的任务总数
        # @type TotalCount: Integer
        # @param Tasks: 此页任务对象的数组，按创建时间排序
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId
        
        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              taskinfo_tmp = TaskInfo.new
              taskinfo_tmp.deserialize(i)
              @Tasks << taskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备详细信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Online: 设备是否在线，0不在线，1在线
        # @type Online: Integer
        # @param LoginTime: 设备登录时间
        # @type LoginTime: Integer
        # @param Version: 设备版本
        # @type Version: String
        # @param DeviceCert: 设备证书，证书加密的设备返回
        # @type DeviceCert: String
        # @param DevicePsk: 设备密钥，密钥加密的设备返回
        # @type DevicePsk: String
        # @param Tags: 设备属性
        # @type Tags: Array
        # @param DeviceType: 设备类型
        # @type DeviceType: Integer
        # @param Imei: 国际移动设备识别码 IMEI
        # @type Imei: String
        # @param Isp: 运营商类型
        # @type Isp: Integer
        # @param NbiotDeviceID: NB IOT运营商处的DeviceID
        # @type NbiotDeviceID: String
        # @param ConnIP: IP地址
        # @type ConnIP: Integer
        # @param LastUpdateTime: 设备最后更新时间
        # @type LastUpdateTime: Integer
        # @param LoraDevEui: LoRa设备的dev eui
        # @type LoraDevEui: String
        # @param LoraMoteType: LoRa设备的Mote type
        # @type LoraMoteType: Integer
        # @param FirstOnlineTime: 首次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstOnlineTime: Integer
        # @param LastOfflineTime: 最近下线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastOfflineTime: Integer
        # @param CreateTime: 设备创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param LogLevel: 设备日志级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogLevel: Integer
        # @param CertState: 设备证书获取状态, 1 已获取过设备密钥，0 未获取过设备密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertState: Integer
        # @param EnableState: 设备可用状态，0禁用，1启用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableState: Integer
        # @param Labels: 设备标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param ClientIP: MQTT客户端IP地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIP: String
        # @param FirmwareUpdateTime: ota最后更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirmwareUpdateTime: Integer

        attr_accessor :DeviceName, :Online, :LoginTime, :Version, :DeviceCert, :DevicePsk, :Tags, :DeviceType, :Imei, :Isp, :NbiotDeviceID, :ConnIP, :LastUpdateTime, :LoraDevEui, :LoraMoteType, :FirstOnlineTime, :LastOfflineTime, :CreateTime, :LogLevel, :CertState, :EnableState, :Labels, :ClientIP, :FirmwareUpdateTime
        
        def initialize(devicename=nil, online=nil, logintime=nil, version=nil, devicecert=nil, devicepsk=nil, tags=nil, devicetype=nil, imei=nil, isp=nil, nbiotdeviceid=nil, connip=nil, lastupdatetime=nil, loradeveui=nil, loramotetype=nil, firstonlinetime=nil, lastofflinetime=nil, createtime=nil, loglevel=nil, certstate=nil, enablestate=nil, labels=nil, clientip=nil, firmwareupdatetime=nil)
          @DeviceName = devicename
          @Online = online
          @LoginTime = logintime
          @Version = version
          @DeviceCert = devicecert
          @DevicePsk = devicepsk
          @Tags = tags
          @DeviceType = devicetype
          @Imei = imei
          @Isp = isp
          @NbiotDeviceID = nbiotdeviceid
          @ConnIP = connip
          @LastUpdateTime = lastupdatetime
          @LoraDevEui = loradeveui
          @LoraMoteType = loramotetype
          @FirstOnlineTime = firstonlinetime
          @LastOfflineTime = lastofflinetime
          @CreateTime = createtime
          @LogLevel = loglevel
          @CertState = certstate
          @EnableState = enablestate
          @Labels = labels
          @ClientIP = clientip
          @FirmwareUpdateTime = firmwareupdatetime
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Online = params['Online']
          @LoginTime = params['LoginTime']
          @Version = params['Version']
          @DeviceCert = params['DeviceCert']
          @DevicePsk = params['DevicePsk']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              devicetag_tmp = DeviceTag.new
              devicetag_tmp.deserialize(i)
              @Tags << devicetag_tmp
            end
          end
          @DeviceType = params['DeviceType']
          @Imei = params['Imei']
          @Isp = params['Isp']
          @NbiotDeviceID = params['NbiotDeviceID']
          @ConnIP = params['ConnIP']
          @LastUpdateTime = params['LastUpdateTime']
          @LoraDevEui = params['LoraDevEui']
          @LoraMoteType = params['LoraMoteType']
          @FirstOnlineTime = params['FirstOnlineTime']
          @LastOfflineTime = params['LastOfflineTime']
          @CreateTime = params['CreateTime']
          @LogLevel = params['LogLevel']
          @CertState = params['CertState']
          @EnableState = params['EnableState']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              devicelabel_tmp = DeviceLabel.new
              devicelabel_tmp.deserialize(i)
              @Labels << devicelabel_tmp
            end
          end
          @ClientIP = params['ClientIP']
          @FirmwareUpdateTime = params['FirmwareUpdateTime']
        end
      end

      # 设备标签
      class DeviceLabel < TencentCloud::Common::AbstractModel
        # @param Key: 标签标识
        # @type Key: String
        # @param Value: 标签值
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

      # 设备资源信息。
      class DeviceProperty < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param ProductName: 产品名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param DeviceName: 设备名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param ResourceId: 设备资源ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String

        attr_accessor :ProductId, :ProductName, :DeviceName, :ResourceId
        
        def initialize(productid=nil, productname=nil, devicename=nil, resourceid=nil)
          @ProductId = productid
          @ProductName = productname
          @DeviceName = devicename
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @DeviceName = params['DeviceName']
          @ResourceId = params['ResourceId']
        end
      end

      # 设备资源详细信息
      class DeviceResourceInfo < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param ProductName: 产品名
        # @type ProductName: String
        # @param Name: 资源名称
        # @type Name: String
        # @param Md5: 资源文件md5
        # @type Md5: String
        # @param Size: 资源文件大小
        # @type Size: Integer
        # @param UpdateTime: 资源更新时间
        # @type UpdateTime: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Status: 设备资源上传状态
        # @type Status: Integer
        # @param Percent: 设备资源上传百分比
        # @type Percent: Integer

        attr_accessor :ProductID, :ProductName, :Name, :Md5, :Size, :UpdateTime, :DeviceName, :Status, :Percent
        
        def initialize(productid=nil, productname=nil, name=nil, md5=nil, size=nil, updatetime=nil, devicename=nil, status=nil, percent=nil)
          @ProductID = productid
          @ProductName = productname
          @Name = name
          @Md5 = md5
          @Size = size
          @UpdateTime = updatetime
          @DeviceName = devicename
          @Status = status
          @Percent = percent
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @ProductName = params['ProductName']
          @Name = params['Name']
          @Md5 = params['Md5']
          @Size = params['Size']
          @UpdateTime = params['UpdateTime']
          @DeviceName = params['DeviceName']
          @Status = params['Status']
          @Percent = params['Percent']
        end
      end

      # 设备属性
      class DeviceTag < TencentCloud::Common::AbstractModel
        # @param Tag: 属性名称
        # @type Tag: String
        # @param Type: 属性值的类型，1 int，2 string
        # @type Type: Integer
        # @param Value: 属性的值
        # @type Value: String
        # @param Name: 属性描述名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :Tag, :Type, :Value, :Name
        
        def initialize(tag=nil, type=nil, value=nil, name=nil)
          @Tag = tag
          @Type = type
          @Value = value
          @Name = name
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Type = params['Type']
          @Value = params['Value']
          @Name = params['Name']
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

        attr_accessor :DeviceName, :LastProcessTime, :Status, :ErrMsg, :Retcode, :DstVersion, :Percent, :OriVersion, :TaskId
        
        def initialize(devicename=nil, lastprocesstime=nil, status=nil, errmsg=nil, retcode=nil, dstversion=nil, percent=nil, oriversion=nil, taskid=nil)
          @DeviceName = devicename
          @LastProcessTime = lastprocesstime
          @Status = status
          @ErrMsg = errmsg
          @Retcode = retcode
          @DstVersion = dstversion
          @Percent = percent
          @OriVersion = oriversion
          @TaskId = taskid
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

      # EditFirmware请求参数结构体
      class EditFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID。
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号。
        # @type FirmwareVersion: String
        # @param FirmwareName: 固件名称。
        # @type FirmwareName: String
        # @param FirmwareDescription: 固件描述
        # @type FirmwareDescription: String
        # @param FwType: 固件类型：选填 mcu、moudule。默认：mcu
        # @type FwType: String

        attr_accessor :ProductID, :FirmwareVersion, :FirmwareName, :FirmwareDescription, :FwType
        
        def initialize(productid=nil, firmwareversion=nil, firmwarename=nil, firmwaredescription=nil, fwtype=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
          @FwType = params['FwType']
        end
      end

      # EditFirmware返回参数结构体
      class EditFirmwareResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :TaskId, :Status, :Type, :CreateTime
        
        def initialize(taskid=nil, status=nil, type=nil, createtime=nil)
          @TaskId = taskid
          @Status = status
          @Type = type
          @CreateTime = createtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
        end
      end

      # GetCOSURL请求参数结构体
      class GetCOSURLRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本
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

      # GetCOSURL返回参数结构体
      class GetCOSURLResponse < TencentCloud::Common::AbstractModel
        # @param Url: 固件URL
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # GetUserResourceInfo请求参数结构体
      class GetUserResourceInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetUserResourceInfo返回参数结构体
      class GetUserResourceInfoResponse < TencentCloud::Common::AbstractModel
        # @param UsedSize: 已使用的资源字节数
        # @type UsedSize: Integer
        # @param Limit: 可以使用资源的总大小
        # @type Limit: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsedSize, :Limit, :RequestId
        
        def initialize(usedsize=nil, limit=nil, requestid=nil)
          @UsedSize = usedsize
          @Limit = limit
          @RequestId = requestid
        end

        def deserialize(params)
          @UsedSize = params['UsedSize']
          @Limit = params['Limit']
          @RequestId = params['RequestId']
        end
      end

      # 创建设备时返回的设备信息
      class MultiDevicesInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param DevicePsk: 对称加密密钥，base64 编码，采用对称加密时返回该参数
        # @type DevicePsk: String
        # @param DeviceCert: 设备证书，采用非对称加密时返回该参数
        # @type DeviceCert: String
        # @param DevicePrivateKey: 设备私钥，采用非对称加密时返回该参数，腾讯云为用户缓存起来，其生命周期与任务生命周期一致
        # @type DevicePrivateKey: String
        # @param Result: 错误码
        # @type Result: Integer
        # @param ErrMsg: 错误信息
        # @type ErrMsg: String

        attr_accessor :DeviceName, :DevicePsk, :DeviceCert, :DevicePrivateKey, :Result, :ErrMsg
        
        def initialize(devicename=nil, devicepsk=nil, devicecert=nil, deviceprivatekey=nil, result=nil, errmsg=nil)
          @DeviceName = devicename
          @DevicePsk = devicepsk
          @DeviceCert = devicecert
          @DevicePrivateKey = deviceprivatekey
          @Result = result
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @DevicePsk = params['DevicePsk']
          @DeviceCert = params['DeviceCert']
          @DevicePrivateKey = params['DevicePrivateKey']
          @Result = params['Result']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 产品详细信息
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名
        # @type ProductName: String
        # @param ProductMetadata: 产品元数据
        # @type ProductMetadata: :class:`Tencentcloud::Iotcloud.v20180614.models.ProductMetadata`
        # @param ProductProperties: 产品属性
        # @type ProductProperties: :class:`Tencentcloud::Iotcloud.v20180614.models.ProductProperties`

        attr_accessor :ProductId, :ProductName, :ProductMetadata, :ProductProperties
        
        def initialize(productid=nil, productname=nil, productmetadata=nil, productproperties=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductMetadata = productmetadata
          @ProductProperties = productproperties
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          unless params['ProductMetadata'].nil?
            @ProductMetadata = ProductMetadata.new
            @ProductMetadata.deserialize(params['ProductMetadata'])
          end
          unless params['ProductProperties'].nil?
            @ProductProperties = ProductProperties.new
            @ProductProperties.deserialize(params['ProductProperties'])
          end
        end
      end

      # 产品元数据
      class ProductMetadata < TencentCloud::Common::AbstractModel
        # @param CreationDate: 产品创建时间
        # @type CreationDate: Integer

        attr_accessor :CreationDate
        
        def initialize(creationdate=nil)
          @CreationDate = creationdate
        end

        def deserialize(params)
          @CreationDate = params['CreationDate']
        end
      end

      # 产品属性
      class ProductProperties < TencentCloud::Common::AbstractModel
        # @param ProductDescription: 产品描述
        # @type ProductDescription: String
        # @param EncryptionType: 加密类型，1表示证书认证，2表示签名认证。如不填写，默认值是1
        # @type EncryptionType: String
        # @param Region: 产品所属区域，目前只支持广州（gz）
        # @type Region: String
        # @param ProductType: 产品类型，各个类型值代表的节点-类型如下：
        # 0 普通产品，2 NB-IoT产品，4 LoRa产品，3 LoRa网关产品，5 普通网关产品   默认值是0
        # @type ProductType: Integer
        # @param Format: 数据格式，取值为json或者custom，默认值是json
        # @type Format: String
        # @param Platform: 产品所属平台，默认值是0
        # @type Platform: String
        # @param Appeui: LoRa产品运营侧APPEUI，只有LoRa产品需要填写
        # @type Appeui: String
        # @param ModelId: 产品绑定的物模型ID，-1表示不绑定
        # @type ModelId: String
        # @param ModelName: 产品绑定的物模型名称
        # @type ModelName: String
        # @param ProductKey: 产品密钥，suite产品才会有
        # @type ProductKey: String
        # @param RegisterType: 动态注册类型 0-关闭, 1-预定义设备名 2-动态定义设备名
        # @type RegisterType: Integer
        # @param ProductSecret: 动态注册产品秘钥
        # @type ProductSecret: String
        # @param RegisterLimit: RegisterType为2时，设备动态创建的限制数量
        # @type RegisterLimit: Integer

        attr_accessor :ProductDescription, :EncryptionType, :Region, :ProductType, :Format, :Platform, :Appeui, :ModelId, :ModelName, :ProductKey, :RegisterType, :ProductSecret, :RegisterLimit
        
        def initialize(productdescription=nil, encryptiontype=nil, region=nil, producttype=nil, format=nil, platform=nil, appeui=nil, modelid=nil, modelname=nil, productkey=nil, registertype=nil, productsecret=nil, registerlimit=nil)
          @ProductDescription = productdescription
          @EncryptionType = encryptiontype
          @Region = region
          @ProductType = producttype
          @Format = format
          @Platform = platform
          @Appeui = appeui
          @ModelId = modelid
          @ModelName = modelname
          @ProductKey = productkey
          @RegisterType = registertype
          @ProductSecret = productsecret
          @RegisterLimit = registerlimit
        end

        def deserialize(params)
          @ProductDescription = params['ProductDescription']
          @EncryptionType = params['EncryptionType']
          @Region = params['Region']
          @ProductType = params['ProductType']
          @Format = params['Format']
          @Platform = params['Platform']
          @Appeui = params['Appeui']
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ProductKey = params['ProductKey']
          @RegisterType = params['RegisterType']
          @ProductSecret = params['ProductSecret']
          @RegisterLimit = params['RegisterLimit']
        end
      end

      # 产品资源详细信息
      class ProductResourceInfo < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param ProductName: 产品名
        # @type ProductName: String
        # @param Name: 资源名称
        # @type Name: String
        # @param Md5: 资源文件md5
        # @type Md5: String
        # @param Size: 资源文件大小
        # @type Size: Integer
        # @param Description: 资源文件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateTime: 资源创建时间
        # @type CreateTime: String

        attr_accessor :ProductID, :ProductName, :Name, :Md5, :Size, :Description, :CreateTime
        
        def initialize(productid=nil, productname=nil, name=nil, md5=nil, size=nil, description=nil, createtime=nil)
          @ProductID = productid
          @ProductName = productname
          @Name = name
          @Md5 = md5
          @Size = size
          @Description = description
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @ProductName = params['ProductName']
          @Name = params['Name']
          @Md5 = params['Md5']
          @Size = params['Size']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
        end
      end

      # 产品级任务详细信息
      class ProductTaskInfo < TencentCloud::Common::AbstractModel
        # @param Id: 任务ID
        # @type Id: Integer
        # @param Type: 任务类型 0-批量创建设备类型
        # @type Type: Integer
        # @param State: 任务状态 0-创建中 1-待执行 2-执行中 3-执行失败 4-子任务部分失败 5-执行成功
        # @type State: Integer
        # @param ParametersType: 任务参数类型 cosfile-文件输入 random-随机生成
        # @type ParametersType: String
        # @param Parameters: 任务参数
        # @type Parameters: String
        # @param ResultType: 任务执行结果类型 cosfile-文件输出 errmsg-错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultType: String
        # @param Result: 任务执行结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param BatchCount: 子任务总个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchCount: Integer
        # @param BatchOffset: 子任务已执行个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchOffset: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 任务更新时间
        # @type UpdateTime: Integer
        # @param CompleteTime: 任务完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompleteTime: Integer

        attr_accessor :Id, :Type, :State, :ParametersType, :Parameters, :ResultType, :Result, :BatchCount, :BatchOffset, :CreateTime, :UpdateTime, :CompleteTime
        
        def initialize(id=nil, type=nil, state=nil, parameterstype=nil, parameters=nil, resulttype=nil, result=nil, batchcount=nil, batchoffset=nil, createtime=nil, updatetime=nil, completetime=nil)
          @Id = id
          @Type = type
          @State = state
          @ParametersType = parameterstype
          @Parameters = parameters
          @ResultType = resulttype
          @Result = result
          @BatchCount = batchcount
          @BatchOffset = batchoffset
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CompleteTime = completetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @State = params['State']
          @ParametersType = params['ParametersType']
          @Parameters = params['Parameters']
          @ResultType = params['ResultType']
          @Result = params['Result']
          @BatchCount = params['BatchCount']
          @BatchOffset = params['BatchOffset']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CompleteTime = params['CompleteTime']
        end
      end

      # PublishAsDevice请求参数结构体
      class PublishAsDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Port: LoRa 设备端口
        # @type Port: Integer
        # @param Payload: 消息内容
        # @type Payload: String

        attr_accessor :ProductId, :DeviceName, :Port, :Payload
        
        def initialize(productid=nil, devicename=nil, port=nil, payload=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Port = port
          @Payload = payload
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Port = params['Port']
          @Payload = params['Payload']
        end
      end

      # PublishAsDevice返回参数结构体
      class PublishAsDeviceResponse < TencentCloud::Common::AbstractModel
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

      # PublishBroadcastMessage请求参数结构体
      class PublishBroadcastMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Payload: 消息内容
        # @type Payload: String
        # @param Qos: 消息质量等级
        # @type Qos: Integer
        # @param PayloadEncoding: Payload内容的编码格式，取值为base64或空。base64表示云端将收到的请求数据进行base64解码后下发到设备，空则直接将原始内容下发到设备
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
        # @param TaskId: 广播消息任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # PublishMessage请求参数结构体
      class PublishMessageRequest < TencentCloud::Common::AbstractModel
        # @param Topic: 消息发往的主题。命名规则：${ProductId}/${DeviceName}/[a-zA-Z0-9:_-]{1,128}
        # @type Topic: String
        # @param Payload: 消息内容
        # @type Payload: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Qos: 服务质量等级，取值为0或1
        # @type Qos: Integer
        # @param PayloadEncoding: Payload内容的编码格式，取值为base64或空。base64表示云端将收到的请求数据进行base64解码后下发到设备，空则直接将原始内容下发到设备
        # @type PayloadEncoding: String

        attr_accessor :Topic, :Payload, :ProductId, :DeviceName, :Qos, :PayloadEncoding
        
        def initialize(topic=nil, payload=nil, productid=nil, devicename=nil, qos=nil, payloadencoding=nil)
          @Topic = topic
          @Payload = payload
          @ProductId = productid
          @DeviceName = devicename
          @Qos = qos
          @PayloadEncoding = payloadencoding
        end

        def deserialize(params)
          @Topic = params['Topic']
          @Payload = params['Payload']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Qos = params['Qos']
          @PayloadEncoding = params['PayloadEncoding']
        end
      end

      # PublishMessage返回参数结构体
      class PublishMessageResponse < TencentCloud::Common::AbstractModel
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
        # @type MessageId: Integer
        # @param PayloadBase64: 设备回复的消息内容，采用base64编码
        # @type PayloadBase64: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # PublishToDevice请求参数结构体
      class PublishToDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Port: LoRa 端口
        # @type Port: Integer
        # @param Payload: 消息内容
        # @type Payload: String

        attr_accessor :ProductId, :DeviceName, :Port, :Payload
        
        def initialize(productid=nil, devicename=nil, port=nil, payload=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Port = port
          @Payload = payload
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Port = params['Port']
          @Payload = params['Payload']
        end
      end

      # PublishToDevice返回参数结构体
      class PublishToDeviceResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceTopicRule请求参数结构体
      class ReplaceTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 替换的规则包体
        # @type TopicRulePayload: :class:`Tencentcloud::Iotcloud.v20180614.models.TopicRulePayload`
        # @param ModifyType: 修改类型，0：其他，1：创建行为，2：更新行为，3：删除行为
        # @type ModifyType: Integer
        # @param ActionIndex: action增删改变更填对应topicRulePayload里面第几个action
        # @type ActionIndex: Integer

        attr_accessor :RuleName, :TopicRulePayload, :ModifyType, :ActionIndex
        
        def initialize(rulename=nil, topicrulepayload=nil, modifytype=nil, actionindex=nil)
          @RuleName = rulename
          @TopicRulePayload = topicrulepayload
          @ModifyType = modifytype
          @ActionIndex = actionindex
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['TopicRulePayload'].nil?
            @TopicRulePayload = TopicRulePayload.new
            @TopicRulePayload.deserialize(params['TopicRulePayload'])
          end
          @ModifyType = params['ModifyType']
          @ActionIndex = params['ActionIndex']
        end
      end

      # ReplaceTopicRule返回参数结构体
      class ReplaceTopicRuleResponse < TencentCloud::Common::AbstractModel
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

      # 重置设备状态结果
      class ResetDeviceResult < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Success: 是否成功
        # @type Success: Boolean
        # @param Reason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String

        attr_accessor :DeviceName, :Success, :Reason
        
        def initialize(devicename=nil, success=nil, reason=nil)
          @DeviceName = devicename
          @Success = success
          @Reason = reason
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Success = params['Success']
          @Reason = params['Reason']
        end
      end

      # ResetDeviceState请求参数结构体
      class ResetDeviceStateRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceNames: 设备名称
        # @type DeviceNames: Array

        attr_accessor :ProductId, :DeviceNames
        
        def initialize(productid=nil, devicenames=nil)
          @ProductId = productid
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
        end
      end

      # ResetDeviceState返回参数结构体
      class ResetDeviceStateResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCount: 批量重置设备成功数
        # @type SuccessCount: Integer
        # @param ResetDeviceResults: 批量重置设备结果
        # @type ResetDeviceResults: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCount, :ResetDeviceResults, :RequestId
        
        def initialize(successcount=nil, resetdeviceresults=nil, requestid=nil)
          @SuccessCount = successcount
          @ResetDeviceResults = resetdeviceresults
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCount = params['SuccessCount']
          unless params['ResetDeviceResults'].nil?
            @ResetDeviceResults = []
            params['ResetDeviceResults'].each do |i|
              resetdeviceresult_tmp = ResetDeviceResult.new
              resetdeviceresult_tmp.deserialize(i)
              @ResetDeviceResults << resetdeviceresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # RetryDeviceFirmwareTask请求参数结构体
      class RetryDeviceFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :DeviceName, :FirmwareVersion, :TaskId
        
        def initialize(productid=nil, devicename=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # RetryDeviceFirmwareTask返回参数结构体
      class RetryDeviceFirmwareTaskResponse < TencentCloud::Common::AbstractModel
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

      # 状态统计信息
      class StatusStatistic < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Total: 统计总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :Status, :Total
        
        def initialize(status=nil, total=nil)
          @Status = status
          @Total = total
        end

        def deserialize(params)
          @Status = params['Status']
          @Total = params['Total']
        end
      end

      # 任务描述细节
      class Task < TencentCloud::Common::AbstractModel
        # @param UpdateShadowTask: 批量更新影子任务的描述细节，当 taskType 取值为 “UpdateShadow” 时，此字段必填。描述见下 BatchUpdateShadow
        # @type UpdateShadowTask: :class:`Tencentcloud::Iotcloud.v20180614.models.BatchUpdateShadow`
        # @param PublishMessageTask: 批量下发消息任务的描述细节，当 taskType 取值为 “PublishMessage” 时，此字段必填。描述见下 BatchPublishMessage
        # @type PublishMessageTask: :class:`Tencentcloud::Iotcloud.v20180614.models.BatchPublishMessage`

        attr_accessor :UpdateShadowTask, :PublishMessageTask
        
        def initialize(updateshadowtask=nil, publishmessagetask=nil)
          @UpdateShadowTask = updateshadowtask
          @PublishMessageTask = publishmessagetask
        end

        def deserialize(params)
          unless params['UpdateShadowTask'].nil?
            @UpdateShadowTask = BatchUpdateShadow.new
            @UpdateShadowTask.deserialize(params['UpdateShadowTask'])
          end
          unless params['PublishMessageTask'].nil?
            @PublishMessageTask = BatchPublishMessage.new
            @PublishMessageTask.deserialize(params['PublishMessageTask'])
          end
        end
      end

      # 任务列表详细信息
      class TaskInfo < TencentCloud::Common::AbstractModel
        # @param Type: 任务类型，目前取值为 “UpdateShadow” 或者 “PublishMessage”
        # @type Type: String
        # @param Id: 任务 ID
        # @type Id: String
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param Status: 状态。1表示等待处理，2表示调度处理中，3表示已完成，4表示失败，5表示已取消
        # @type Status: Integer
        # @param CreateTime: 任务创建时间，Unix 时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 最后任务更新时间，Unix 时间戳
        # @type UpdateTime: Integer
        # @param RetCode: 返回的错误码
        # @type RetCode: Integer
        # @param ErrMsg: 返回的错误信息
        # @type ErrMsg: String

        attr_accessor :Type, :Id, :ProductId, :Status, :CreateTime, :UpdateTime, :RetCode, :ErrMsg
        
        def initialize(type=nil, id=nil, productid=nil, status=nil, createtime=nil, updatetime=nil, retcode=nil, errmsg=nil)
          @Type = type
          @Id = id
          @ProductId = productid
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @RetCode = retcode
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
          @ProductId = params['ProductId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @RetCode = params['RetCode']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 创建规则请求包体
      class TopicRulePayload < TencentCloud::Common::AbstractModel
        # @param Sql: 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        # @type Sql: String
        # @param Actions: 行为的JSON字符串，大部分种类举例如下：
        # [
        #     {
        #         "republish": {
        #             "topic": "TEST/test"
        #         }
        #     },
        #     {
        #         "forward": {
        #             "api": "http://127.0.0.1:8080",
        #             "token":"xxx"
        #         }
        #     },
        #     {
        #         "ckafka": {
        #             "instance": {
        #                 "id": "ckafka-test",
        #                 "name": ""
        #             },
        #             "topic": {
        #                 "id": "topic-test",
        #                 "name": "test"
        #             },
        #             "region": "gz"
        #         }
        #     },
        #     {
        #         "cmqqueue": {
        #             "queuename": "queue-test-TEST",
        #             "region": "gz"
        #         }
        #     },
        #     {
        #         "mysql": {
        #             "instanceid": "cdb-test",
        #             "region": "gz",
        #             "username": "test",
        #             "userpwd": "*****",
        #             "dbname": "d_mqtt",
        #             "tablename": "t_test",
        #             "fieldpairs": [
        #                 {
        #                     "field": "test",
        #                     "value": "test"
        #                 }
        #             ],
        #             "devicetype": "CUSTOM"
        #         }
        #     }
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

      # UnbindDevices请求参数结构体
      class UnbindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名
        # @type GatewayDeviceName: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceNames: 多个设备名
        # @type DeviceNames: Array
        # @param Skey: 中兴CLAA设备的解绑需要Skey，普通设备不需要
        # @type Skey: String

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :DeviceNames, :Skey
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, devicenames=nil, skey=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @DeviceNames = devicenames
          @Skey = skey
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
          @Skey = params['Skey']
        end
      end

      # UnbindDevices返回参数结构体
      class UnbindDevicesResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDeviceAvailableState请求参数结构体
      class UpdateDeviceAvailableStateRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 设备所属产品id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param EnableState: 要设置的设备状态，1为启用，0为禁用
        # @type EnableState: Integer

        attr_accessor :ProductId, :DeviceName, :EnableState
        
        def initialize(productid=nil, devicename=nil, enablestate=nil)
          @ProductId = productid
          @DeviceName = devicename
          @EnableState = enablestate
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @EnableState = params['EnableState']
        end
      end

      # UpdateDeviceAvailableState返回参数结构体
      class UpdateDeviceAvailableStateResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDeviceShadow请求参数结构体
      class UpdateDeviceShadowRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param State: 虚拟设备的状态，JSON字符串格式，由desired结构组成
        # @type State: String
        # @param ShadowVersion: 当前版本号，需要和后台的version保持一致，才能更新成功
        # @type ShadowVersion: Integer
        # @param Prefix: 下发delta消息的topic前缀，可选类型: "$shadow","$template"。不填写默认"$shadow"。
        # @type Prefix: String

        attr_accessor :ProductId, :DeviceName, :State, :ShadowVersion, :Prefix
        
        def initialize(productid=nil, devicename=nil, state=nil, shadowversion=nil, prefix=nil)
          @ProductId = productid
          @DeviceName = devicename
          @State = state
          @ShadowVersion = shadowversion
          @Prefix = prefix
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @State = params['State']
          @ShadowVersion = params['ShadowVersion']
          @Prefix = params['Prefix']
        end
      end

      # UpdateDeviceShadow返回参数结构体
      class UpdateDeviceShadowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备影子数据，JSON字符串格式
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # UpdateTopicPolicy请求参数结构体
      class UpdateTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param TopicName: 更新前Topic名
        # @type TopicName: String
        # @param NewTopicName: 更新后Topic名
        # @type NewTopicName: String
        # @param Privilege: Topic权限
        # @type Privilege: Integer
        # @param BrokerSubscribe: 代理订阅信息
        # @type BrokerSubscribe: :class:`Tencentcloud::Iotcloud.v20180614.models.BrokerSubscribe`

        attr_accessor :ProductID, :TopicName, :NewTopicName, :Privilege, :BrokerSubscribe
        
        def initialize(productid=nil, topicname=nil, newtopicname=nil, privilege=nil, brokersubscribe=nil)
          @ProductID = productid
          @TopicName = topicname
          @NewTopicName = newtopicname
          @Privilege = privilege
          @BrokerSubscribe = brokersubscribe
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @TopicName = params['TopicName']
          @NewTopicName = params['NewTopicName']
          @Privilege = params['Privilege']
          unless params['BrokerSubscribe'].nil?
            @BrokerSubscribe = BrokerSubscribe.new
            @BrokerSubscribe.deserialize(params['BrokerSubscribe'])
          end
        end
      end

      # UpdateTopicPolicy返回参数结构体
      class UpdateTopicPolicyResponse < TencentCloud::Common::AbstractModel
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
        # @param FwType: 固件类型：选填 mcu、moudule。默认：mcu
        # @type FwType: String

        attr_accessor :ProductID, :FirmwareVersion, :Md5sum, :FileSize, :FirmwareName, :FirmwareDescription, :FwType
        
        def initialize(productid=nil, firmwareversion=nil, md5sum=nil, filesize=nil, firmwarename=nil, firmwaredescription=nil, fwtype=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Md5sum = md5sum
          @FileSize = filesize
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @Md5sum = params['Md5sum']
          @FileSize = params['FileSize']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
          @FwType = params['FwType']
        end
      end

      # UploadFirmware返回参数结构体
      class UploadFirmwareResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

