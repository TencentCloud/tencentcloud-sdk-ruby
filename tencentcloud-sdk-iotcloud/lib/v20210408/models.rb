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
    module V20210408
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

      # BatchUpdateFirmware请求参数结构体
      class BatchUpdateFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
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
        # @param Type: 固件升级任务类型，默认静态升级值为空或1，动态升级值为7。
        # @type Type: Integer

        attr_accessor :ProductId, :FirmwareVersion, :FirmwareOriVersion, :UpgradeMethod, :FileName, :FileMd5, :FileSize, :DeviceNames, :TimeoutInterval, :Type

        def initialize(productid=nil, firmwareversion=nil, firmwareoriversion=nil, upgrademethod=nil, filename=nil, filemd5=nil, filesize=nil, devicenames=nil, timeoutinterval=nil, type=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @FirmwareOriVersion = firmwareoriversion
          @UpgradeMethod = upgrademethod
          @FileName = filename
          @FileMd5 = filemd5
          @FileSize = filesize
          @DeviceNames = devicenames
          @TimeoutInterval = timeoutinterval
          @Type = type
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareOriVersion = params['FirmwareOriVersion']
          @UpgradeMethod = params['UpgradeMethod']
          @FileName = params['FileName']
          @FileMd5 = params['FileMd5']
          @FileSize = params['FileSize']
          @DeviceNames = params['DeviceNames']
          @TimeoutInterval = params['TimeoutInterval']
          @Type = params['Type']
        end
      end

      # BatchUpdateFirmware返回参数结构体
      class BatchUpdateFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # 子设备信息
      class BindDeviceInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Tags: 设备Tag
        # @type Tags: Array
        # @param BindTime: 子设备绑定时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindTime: Integer

        attr_accessor :ProductId, :DeviceName, :Tags, :BindTime

        def initialize(productid=nil, devicename=nil, tags=nil, bindtime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Tags = tags
          @BindTime = bindtime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              devicetag_tmp = DeviceTag.new
              devicetag_tmp.deserialize(i)
              @Tags << devicetag_tmp
            end
          end
          @BindTime = params['BindTime']
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

      # 子产品信息
      class BindProductInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名
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

      # CLS日志
      class CLSLogItem < TencentCloud::Common::AbstractModel
        # @param Content: 日志内容
        # @type Content: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param RequestId: 请求ID
        # @type RequestId: String
        # @param Result: 结果
        # @type Result: String
        # @param Scene: 模块
        # @type Scene: String
        # @param Time: 日志时间
        # @type Time: String
        # @param Userid: 腾讯云账号
        # @type Userid: String
        # @param UserId: 腾讯云账号
        # @type UserId: String

        attr_accessor :Content, :DeviceName, :ProductId, :RequestId, :Result, :Scene, :Time, :Userid, :UserId
        extend Gem::Deprecate
        deprecate :Userid, :none, 2025, 4
        deprecate :Userid=, :none, 2025, 4

        def initialize(content=nil, devicename=nil, productid=nil, requestid=nil, result=nil, scene=nil, time=nil, userid=nil)
          @Content = content
          @DeviceName = devicename
          @ProductId = productid
          @RequestId = requestid
          @Result = result
          @Scene = scene
          @Time = time
          @UserId = userid
        end

        def deserialize(params)
          @Content = params['Content']
          @DeviceName = params['DeviceName']
          @ProductId = params['ProductId']
          @RequestId = params['RequestId']
          @Result = params['Result']
          @Scene = params['Scene']
          @Time = params['Time']
          @UserId = params['UserId']
        end
      end

      # CancelDeviceFirmwareTask请求参数结构体
      class CancelDeviceFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductId, :DeviceName, :FirmwareVersion, :TaskId

        def initialize(productid=nil, devicename=nil, firmwareversion=nil, taskid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # CancelDeviceFirmwareTask返回参数结构体
      class CancelDeviceFirmwareTaskResponse < TencentCloud::Common::AbstractModel
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

      # X509证书信息
      class CertInfo < TencentCloud::Common::AbstractModel
        # @param CertName: 证书名称
        # @type CertName: String
        # @param CertSN: 证书的序列号，16进制编码
        # @type CertSN: String
        # @param IssuerName: 证书颁发着名称
        # @type IssuerName: String
        # @param Subject: 证书主题
        # @type Subject: String
        # @param CreateTime: 证书创建时间，秒级时间戳
        # @type CreateTime: Integer
        # @param EffectiveTime: 证书生效时间，秒级时间戳
        # @type EffectiveTime: Integer
        # @param ExpireTime: 证书失效时间，秒级时间戳
        # @type ExpireTime: Integer
        # @param CertText: X509证书内容
        # @type CertText: String

        attr_accessor :CertName, :CertSN, :IssuerName, :Subject, :CreateTime, :EffectiveTime, :ExpireTime, :CertText

        def initialize(certname=nil, certsn=nil, issuername=nil, subject=nil, createtime=nil, effectivetime=nil, expiretime=nil, certtext=nil)
          @CertName = certname
          @CertSN = certsn
          @IssuerName = issuername
          @Subject = subject
          @CreateTime = createtime
          @EffectiveTime = effectivetime
          @ExpireTime = expiretime
          @CertText = certtext
        end

        def deserialize(params)
          @CertName = params['CertName']
          @CertSN = params['CertSN']
          @IssuerName = params['IssuerName']
          @Subject = params['Subject']
          @CreateTime = params['CreateTime']
          @EffectiveTime = params['EffectiveTime']
          @ExpireTime = params['ExpireTime']
          @CertText = params['CertText']
        end
      end

      # CreateDevice请求参数结构体
      class CreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID 。创建产品时腾讯云为用户分配全局唯一的 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}。
        # @type DeviceName: String
        # @param Attribute: 设备属性
        # @type Attribute: :class:`Tencentcloud::Iotcloud.v20210408.models.Attribute`
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
        # @param TlsCrt: 私有CA创建的设备证书
        # @type TlsCrt: String

        attr_accessor :ProductId, :DeviceName, :Attribute, :DefinedPsk, :Isp, :Imei, :LoraDevEui, :LoraMoteType, :Skey, :LoraAppKey, :TlsCrt

        def initialize(productid=nil, devicename=nil, attribute=nil, definedpsk=nil, isp=nil, imei=nil, loradeveui=nil, loramotetype=nil, skey=nil, loraappkey=nil, tlscrt=nil)
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
          @TlsCrt = tlscrt
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
          @TlsCrt = params['TlsCrt']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreatePrivateCA请求参数结构体
      class CreatePrivateCARequest < TencentCloud::Common::AbstractModel
        # @param CertName: CA证书名称
        # @type CertName: String
        # @param CertText: CA证书内容
        # @type CertText: String
        # @param VerifyCertText: 校验CA证书的证书内容
        # @type VerifyCertText: String

        attr_accessor :CertName, :CertText, :VerifyCertText

        def initialize(certname=nil, certtext=nil, verifycerttext=nil)
          @CertName = certname
          @CertText = certtext
          @VerifyCertText = verifycerttext
        end

        def deserialize(params)
          @CertName = params['CertName']
          @CertText = params['CertText']
          @VerifyCertText = params['VerifyCertText']
        end
      end

      # CreatePrivateCA返回参数结构体
      class CreatePrivateCAResponse < TencentCloud::Common::AbstractModel
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

      # CreateProduct请求参数结构体
      class CreateProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称，名称不能和已经存在的产品名称重复。命名规则：[a-zA-Z0-9:_-]{1,32}
        # @type ProductName: String
        # @param ProductProperties: 产品属性
        # @type ProductProperties: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductProperties`
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
        # @type ProductProperties: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductProperties`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateTopicPolicy请求参数结构体
      class CreateTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品自身ID
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限，1发布，2订阅，3订阅和发布
        # @type Privilege: Integer
        # @param BrokerSubscribe: 代理订阅信息，网关产品为绑定的子产品创建topic时需要填写，内容为子产品的ID和设备信息。
        # @type BrokerSubscribe: :class:`Tencentcloud::Iotcloud.v20210408.models.BrokerSubscribe`

        attr_accessor :ProductId, :TopicName, :Privilege, :BrokerSubscribe

        def initialize(productid=nil, topicname=nil, privilege=nil, brokersubscribe=nil)
          @ProductId = productid
          @TopicName = topicname
          @Privilege = privilege
          @BrokerSubscribe = brokersubscribe
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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
        # @type TopicRulePayload: :class:`Tencentcloud::Iotcloud.v20210408.models.TopicRulePayload`

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

      # DeleteDeviceResource请求参数结构体
      class DeleteDeviceResourceRequest < TencentCloud::Common::AbstractModel
        # @param Name: 资源名称
        # @type Name: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ProductID: 产品ID
        # @type ProductID: String

        attr_accessor :Name, :DeviceName, :ProductID

        def initialize(name=nil, devicename=nil, productid=nil)
          @Name = name
          @DeviceName = devicename
          @ProductID = productid
        end

        def deserialize(params)
          @Name = params['Name']
          @DeviceName = params['DeviceName']
          @ProductID = params['ProductID']
        end
      end

      # DeleteDeviceResource返回参数结构体
      class DeleteDeviceResourceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDeviceShadow请求参数结构体
      class DeleteDeviceShadowRequest < TencentCloud::Common::AbstractModel
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

      # DeleteDeviceShadow返回参数结构体
      class DeleteDeviceShadowResponse < TencentCloud::Common::AbstractModel
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

      # DeletePrivateCA请求参数结构体
      class DeletePrivateCARequest < TencentCloud::Common::AbstractModel
        # @param CertName: 私有CA证书名称
        # @type CertName: String

        attr_accessor :CertName

        def initialize(certname=nil)
          @CertName = certname
        end

        def deserialize(params)
          @CertName = params['CertName']
        end
      end

      # DeletePrivateCA返回参数结构体
      class DeletePrivateCAResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProductPrivateCA请求参数结构体
      class DeleteProductPrivateCARequest < TencentCloud::Common::AbstractModel
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

      # DeleteProductPrivateCA返回参数结构体
      class DeleteProductPrivateCAResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @type Result: :class:`Tencentcloud::Iotcloud.v20210408.models.DeviceResourceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Online: 设备是否在线，0不在线，1在线，3未激活
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
        # @param CreateUserId: 创建者账号ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param NBIoTDeviceID: NB IoT运营商处的DeviceID
        # @type NBIoTDeviceID: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceName, :Online, :LoginTime, :Version, :LastUpdateTime, :DeviceCert, :DevicePsk, :Tags, :DeviceType, :Imei, :Isp, :ConnIP, :NbiotDeviceID, :LoraDevEui, :LoraMoteType, :LogLevel, :FirstOnlineTime, :LastOfflineTime, :CreateTime, :CertState, :EnableState, :Labels, :ClientIP, :FirmwareUpdateTime, :CreateUserId, :NBIoTDeviceID, :RequestId
        extend Gem::Deprecate
        deprecate :NbiotDeviceID, :none, 2025, 4
        deprecate :NbiotDeviceID=, :none, 2025, 4

        def initialize(devicename=nil, online=nil, logintime=nil, version=nil, lastupdatetime=nil, devicecert=nil, devicepsk=nil, tags=nil, devicetype=nil, imei=nil, isp=nil, connip=nil, loradeveui=nil, loramotetype=nil, loglevel=nil, firstonlinetime=nil, lastofflinetime=nil, createtime=nil, certstate=nil, enablestate=nil, labels=nil, clientip=nil, firmwareupdatetime=nil, createuserid=nil, nbiotdeviceid=nil, requestid=nil)
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
          @CreateUserId = createuserid
          @NBIoTDeviceID = nbiotdeviceid
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
          @CreateUserId = params['CreateUserId']
          @NBIoTDeviceID = params['NBIoTDeviceID']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceShadow请求参数结构体
      class DescribeDeviceShadowRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品 ID
        # @type ProductId: String
        # @param DeviceName: 设备名称。命名规则：[a-zA-Z0-9:_-]{1,60}
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
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String

        attr_accessor :ProductId, :FirmwareVersion

        def initialize(productid=nil, firmwareversion=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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
        # @param UserDefined: 固件用户自定义配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
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
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询的数量
        # @type Limit: Integer

        attr_accessor :ProductId, :FirmwareVersion, :Filters, :Offset, :Limit

        def initialize(productid=nil, firmwareversion=nil, filters=nil, offset=nil, limit=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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

      # DescribeFirmwareTaskDistribution请求参数结构体
      class DescribeFirmwareTaskDistributionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductId, :FirmwareVersion, :TaskId

        def initialize(productid=nil, firmwareversion=nil, taskid=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # DescribeFirmwareTaskDistribution返回参数结构体
      class DescribeFirmwareTaskDistributionResponse < TencentCloud::Common::AbstractModel
        # @param StatusInfos: 固件升级任务状态分布信息
        # @type StatusInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件任务ID
        # @type TaskId: Integer

        attr_accessor :ProductId, :FirmwareVersion, :TaskId

        def initialize(productid=nil, firmwareversion=nil, taskid=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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
        # @param OriginalVersion: 升级前版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalVersion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :CreateTime, :Type, :ProductName, :UpgradeMode, :ProductId, :OriginalVersion, :RequestId

        def initialize(taskid=nil, status=nil, createtime=nil, type=nil, productname=nil, upgrademode=nil, productid=nil, originalversion=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @CreateTime = createtime
          @Type = type
          @ProductName = productname
          @UpgradeMode = upgrademode
          @ProductId = productid
          @OriginalVersion = originalversion
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
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTaskStatistics请求参数结构体
      class DescribeFirmwareTaskStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String

        attr_accessor :ProductId, :FirmwareVersion

        def initialize(productid=nil, firmwareversion=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 返回查询结果条数
        # @type Limit: Integer
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :ProductId, :FirmwareVersion, :Offset, :Limit, :Filters

        def initialize(productid=nil, firmwareversion=nil, offset=nil, limit=nil, filters=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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

      # DescribeGatewayBindDevices请求参数结构体
      class DescribeGatewayBindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名
        # @type GatewayDeviceName: String
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param Limit: 分页的页大小
        # @type Limit: Integer
        # @param ProductId: LoRa产品的ID
        # @type ProductId: String

        attr_accessor :GatewayProductId, :GatewayDeviceName, :Offset, :Limit, :ProductId

        def initialize(gatewayproductid=nil, gatewaydevicename=nil, offset=nil, limit=nil, productid=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @Offset = offset
          @Limit = limit
          @ProductId = productid
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductId = params['ProductId']
        end
      end

      # DescribeGatewayBindDevices返回参数结构体
      class DescribeGatewayBindDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 子设备总数
        # @type TotalCount: Integer
        # @param Devices: 子设备信息
        # @type Devices: Array
        # @param ProductName: 子设备所属的产品名
        # @type ProductName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Devices, :ProductName, :RequestId

        def initialize(totalcount=nil, devices=nil, productname=nil, requestid=nil)
          @TotalCount = totalcount
          @Devices = devices
          @ProductName = productname
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              binddeviceinfo_tmp = BindDeviceInfo.new
              binddeviceinfo_tmp.deserialize(i)
              @Devices << binddeviceinfo_tmp
            end
          end
          @ProductName = params['ProductName']
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateCABindedProducts请求参数结构体
      class DescribePrivateCABindedProductsRequest < TencentCloud::Common::AbstractModel
        # @param CertName: 证书名称
        # @type CertName: String
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询的数据量，默认为20， 最大为200
        # @type Limit: Integer

        attr_accessor :CertName, :Offset, :Limit

        def initialize(certname=nil, offset=nil, limit=nil)
          @CertName = certname
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CertName = params['CertName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePrivateCABindedProducts返回参数结构体
      class DescribePrivateCABindedProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 私有CA绑定的产品列表
        # @type Products: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :RequestId

        def initialize(products=nil, requestid=nil)
          @Products = products
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
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateCA请求参数结构体
      class DescribePrivateCARequest < TencentCloud::Common::AbstractModel
        # @param CertName: 私有化CA名称
        # @type CertName: String

        attr_accessor :CertName

        def initialize(certname=nil)
          @CertName = certname
        end

        def deserialize(params)
          @CertName = params['CertName']
        end
      end

      # DescribePrivateCA返回参数结构体
      class DescribePrivateCAResponse < TencentCloud::Common::AbstractModel
        # @param CA: 私有化CA详情
        # @type CA: :class:`Tencentcloud::Iotcloud.v20210408.models.CertInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CA, :RequestId

        def initialize(ca=nil, requestid=nil)
          @CA = ca
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CA'].nil?
            @CA = CertInfo.new
            @CA.deserialize(params['CA'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrivateCAs请求参数结构体
      class DescribePrivateCAsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribePrivateCAs返回参数结构体
      class DescribePrivateCAsResponse < TencentCloud::Common::AbstractModel
        # @param CAs: 私有CA证书列表
        # @type CAs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CAs, :RequestId

        def initialize(cas=nil, requestid=nil)
          @CAs = cas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CAs'].nil?
            @CAs = []
            params['CAs'].each do |i|
              certinfo_tmp = CertInfo.new
              certinfo_tmp.deserialize(i)
              @CAs << certinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductCA请求参数结构体
      class DescribeProductCARequest < TencentCloud::Common::AbstractModel
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

      # DescribeProductCA返回参数结构体
      class DescribeProductCAResponse < TencentCloud::Common::AbstractModel
        # @param CAs: CA证书列表
        # @type CAs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CAs, :RequestId

        def initialize(cas=nil, requestid=nil)
          @CAs = cas
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CAs'].nil?
            @CAs = []
            params['CAs'].each do |i|
              certinfo_tmp = CertInfo.new
              certinfo_tmp.deserialize(i)
              @CAs << certinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProduct请求参数结构体
      class DescribeProductRequest < TencentCloud::Common::AbstractModel
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
        # @type Result: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductResourceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeProduct返回参数结构体
      class DescribeProductResponse < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名
        # @type ProductName: String
        # @param ProductMetadata: 产品元数据
        # @type ProductMetadata: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductMetadata`
        # @param ProductProperties: 产品属性
        # @type ProductProperties: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductProperties`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductId, :ProductName, :ProductMetadata, :ProductProperties, :RequestId

        def initialize(productid=nil, productname=nil, productmetadata=nil, productproperties=nil, requestid=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductMetadata = productmetadata
          @ProductProperties = productproperties
          @RequestId = requestid
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
        # @type TaskInfo: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductTaskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param CreateUserId: 创建者 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param NBIoTDeviceID: NB IOT运营商处的DeviceID
        # @type NBIoTDeviceID: String

        attr_accessor :DeviceName, :Online, :LoginTime, :Version, :DeviceCert, :DevicePsk, :Tags, :DeviceType, :Imei, :Isp, :NbiotDeviceID, :ConnIP, :LastUpdateTime, :LoraDevEui, :LoraMoteType, :FirstOnlineTime, :LastOfflineTime, :CreateTime, :LogLevel, :CertState, :EnableState, :Labels, :ClientIP, :FirmwareUpdateTime, :CreateUserId, :NBIoTDeviceID
        extend Gem::Deprecate
        deprecate :NbiotDeviceID, :none, 2025, 4
        deprecate :NbiotDeviceID=, :none, 2025, 4

        def initialize(devicename=nil, online=nil, logintime=nil, version=nil, devicecert=nil, devicepsk=nil, tags=nil, devicetype=nil, imei=nil, isp=nil, connip=nil, lastupdatetime=nil, loradeveui=nil, loramotetype=nil, firstonlinetime=nil, lastofflinetime=nil, createtime=nil, loglevel=nil, certstate=nil, enablestate=nil, labels=nil, clientip=nil, firmwareupdatetime=nil, createuserid=nil, nbiotdeviceid=nil)
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
          @CreateUserId = createuserid
          @NBIoTDeviceID = nbiotdeviceid
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
          @CreateUserId = params['CreateUserId']
          @NBIoTDeviceID = params['NBIoTDeviceID']
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

      # DownloadDeviceResource请求参数结构体
      class DownloadDeviceResourceRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Name: 资源名称
        # @type Name: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductID, :Name, :DeviceName

        def initialize(productid=nil, name=nil, devicename=nil)
          @ProductID = productid
          @Name = name
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @Name = params['Name']
          @DeviceName = params['DeviceName']
        end
      end

      # DownloadDeviceResource返回参数结构体
      class DownloadDeviceResourceResponse < TencentCloud::Common::AbstractModel
        # @param Url: 设备资源的cos链接
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

      # EditFirmware请求参数结构体
      class EditFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本号。
        # @type FirmwareVersion: String
        # @param FirmwareName: 固件名称。
        # @type FirmwareName: String
        # @param FirmwareDescription: 固件描述
        # @type FirmwareDescription: String
        # @param FirmwareUserDefined: 固件用户自定义配置信息
        # @type FirmwareUserDefined: String

        attr_accessor :ProductId, :FirmwareVersion, :FirmwareName, :FirmwareDescription, :FirmwareUserDefined

        def initialize(productid=nil, firmwareversion=nil, firmwarename=nil, firmwaredescription=nil, firmwareuserdefined=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
          @FirmwareUserDefined = firmwareuserdefined
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
          @FirmwareUserDefined = params['FirmwareUserDefined']
        end
      end

      # EditFirmware返回参数结构体
      class EditFirmwareResponse < TencentCloud::Common::AbstractModel
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

      # 设备固件详细信息
      class FirmwareInfo < TencentCloud::Common::AbstractModel
        # @param Version: 固件版本
        # @type Version: String
        # @param Md5sum: 固件MD5值
        # @type Md5sum: String
        # @param CreateTime: 固件创建时间
        # @type CreateTime: Integer
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param Name: 固件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 固件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param FwType: 固件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FwType: String
        # @param CreateUserId: 创建者 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param UserDefined: 固件用户自定义配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefined: String

        attr_accessor :Version, :Md5sum, :CreateTime, :ProductName, :Name, :Description, :ProductId, :FwType, :CreateUserId, :UserDefined

        def initialize(version=nil, md5sum=nil, createtime=nil, productname=nil, name=nil, description=nil, productid=nil, fwtype=nil, createuserid=nil, userdefined=nil)
          @Version = version
          @Md5sum = md5sum
          @CreateTime = createtime
          @ProductName = productname
          @Name = name
          @Description = description
          @ProductId = productid
          @FwType = fwtype
          @CreateUserId = createuserid
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

      # GetAllVersion请求参数结构体
      class GetAllVersionRequest < TencentCloud::Common::AbstractModel
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

      # GetAllVersion返回参数结构体
      class GetAllVersionResponse < TencentCloud::Common::AbstractModel
        # @param Version: 版本号列表
        # @type Version: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :RequestId

        def initialize(version=nil, requestid=nil)
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # GetCOSURL请求参数结构体
      class GetCOSURLRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String
        # @param FileSize: 固件版本大小
        # @type FileSize: Integer

        attr_accessor :ProductId, :FirmwareVersion, :FileSize

        def initialize(productid=nil, firmwareversion=nil, filesize=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @FileSize = filesize
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ListFirmwares请求参数结构体
      class ListFirmwaresRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 获取的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :PageNum, :PageSize, :ProductId, :Filters

        def initialize(pagenum=nil, pagesize=nil, productid=nil, filters=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @ProductId = productid
          @Filters = filters
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @ProductId = params['ProductId']
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

      # ListLogPayload请求参数结构体
      class ListLogPayloadRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 日志开始时间，毫秒级时间戳
        # @type MinTime: Integer
        # @param MaxTime: 日志结束时间，毫秒级时间戳
        # @type MaxTime: Integer
        # @param Keywords: 查询关键字，可以同时支持键值查询和文本查询，例如，查询某key的值为value，并且包含某word的日志，该参数为：key:value word。键值或文本可以包含多个，以空格隔开。其中可以索引的key比如：RequestID、ProductID、DeviceName等。
        # 一个典型的查询示例：ProductID:ABCDE12345 DeviceName:test publish
        # @type Keywords: String
        # @param Context: 日志检索上下文
        # @type Context: String
        # @param MaxNum: 日志最大条数
        # @type MaxNum: Integer

        attr_accessor :MinTime, :MaxTime, :Keywords, :Context, :MaxNum

        def initialize(mintime=nil, maxtime=nil, keywords=nil, context=nil, maxnum=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @Keywords = keywords
          @Context = context
          @MaxNum = maxnum
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @Keywords = params['Keywords']
          @Context = params['Context']
          @MaxNum = params['MaxNum']
        end
      end

      # ListLogPayload返回参数结构体
      class ListLogPayloadResponse < TencentCloud::Common::AbstractModel
        # @param Context: 日志上下文
        # @type Context: String
        # @param Listover: 是否还有日志，如有仍有日志，下次查询的请求带上当前请求返回的Context
        # @type Listover: Boolean
        # @param Results: 日志列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Listover, :Results, :RequestId

        def initialize(context=nil, listover=nil, results=nil, requestid=nil)
          @Context = context
          @Listover = listover
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Listover = params['Listover']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              payloadlogitem_tmp = PayloadLogItem.new
              payloadlogitem_tmp.deserialize(i)
              @Results << payloadlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListLog请求参数结构体
      class ListLogRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 日志开始时间，毫秒级时间戳
        # @type MinTime: Integer
        # @param MaxTime: 日志结束时间，毫秒级时间戳
        # @type MaxTime: Integer
        # @param Keywords: 查询关键字，可以同时支持键值查询和文本查询，例如，查询某key的值为value，并且包含某word的日志，该参数为：key:vlue worda。键值或文本可以包含多个，以空格隔开。其中可以索引的key包括：requestid、productid、devicename、scene、content。一个典型的查询示例：productid:ABCDE12345 devicename:test scene:SHADOW content:Device%20connect publish
        # @type Keywords: String
        # @param Context: 日志检索上下文
        # @type Context: String
        # @param MaxNum: 查询条数
        # @type MaxNum: Integer

        attr_accessor :MinTime, :MaxTime, :Keywords, :Context, :MaxNum

        def initialize(mintime=nil, maxtime=nil, keywords=nil, context=nil, maxnum=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @Keywords = keywords
          @Context = context
          @MaxNum = maxnum
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @Keywords = params['Keywords']
          @Context = params['Context']
          @MaxNum = params['MaxNum']
        end
      end

      # ListLog返回参数结构体
      class ListLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 日志上下文
        # @type Context: String
        # @param Listover: 是否还有日志，如有仍有日志，下次查询的请求带上当前请求返回的Context
        # @type Listover: Boolean
        # @param Results: 日志列表
        # @type Results: Array
        # @param TotalCount: 日志总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Listover, :Results, :TotalCount, :RequestId

        def initialize(context=nil, listover=nil, results=nil, totalcount=nil, requestid=nil)
          @Context = context
          @Listover = listover
          @Results = results
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Listover = params['Listover']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              clslogitem_tmp = CLSLogItem.new
              clslogitem_tmp.deserialize(i)
              @Results << clslogitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # ListSDKLog请求参数结构体
      class ListSDKLogRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 日志开始时间
        # @type MinTime: Integer
        # @param MaxTime: 日志结束时间
        # @type MaxTime: Integer
        # @param Keywords: 查询关键字，可以同时支持键值查询和文本查询，
        # 例如，查询某key的值为value，并且包含某word的日志，该参数为：key:value word。
        # 键值或文本可以包含多个，以空格隔开。
        # 其中可以索引的key包括：productid、devicename、loglevel
        # 一个典型的查询示例：productid:7JK1G72JNE devicename:name publish loglevel:WARN一个典型的查询示例：productid:ABCDE12345 devicename:test scene:SHADOW publish
        # @type Keywords: String
        # @param Context: 日志检索上下文
        # @type Context: String
        # @param MaxNum: 查询条数
        # @type MaxNum: Integer

        attr_accessor :MinTime, :MaxTime, :Keywords, :Context, :MaxNum

        def initialize(mintime=nil, maxtime=nil, keywords=nil, context=nil, maxnum=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @Keywords = keywords
          @Context = context
          @MaxNum = maxnum
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @Keywords = params['Keywords']
          @Context = params['Context']
          @MaxNum = params['MaxNum']
        end
      end

      # ListSDKLog返回参数结构体
      class ListSDKLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 日志检索上下文
        # @type Context: String
        # @param Listover: 是否还有日志，如有仍有日志，下次查询的请求带上当前请求返回的Context
        # @type Listover: Boolean
        # @param Results: 日志列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Listover, :Results, :RequestId

        def initialize(context=nil, listover=nil, results=nil, requestid=nil)
          @Context = context
          @Listover = listover
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Listover = params['Listover']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              sdklogitem_tmp = SDKLogItem.new
              sdklogitem_tmp.deserialize(i)
              @Results << sdklogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTopicRules请求参数结构体
      class ListTopicRulesRequest < TencentCloud::Common::AbstractModel
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

      # ListTopicRules返回参数结构体
      class ListTopicRulesResponse < TencentCloud::Common::AbstractModel
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

      # 内容日志项
      class PayloadLogItem < TencentCloud::Common::AbstractModel
        # @param Uin: 账号id
        # @type Uin: String
        # @param ProductId: 产品id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param SrcType: 来源类型
        # @type SrcType: String
        # @param SrcName: 来源名称
        # @type SrcName: String
        # @param Topic: 消息topic
        # @type Topic: String
        # @param PayloadFormatType: 内容格式类型
        # @type PayloadFormatType: String
        # @param Payload: 内容信息
        # @type Payload: String
        # @param RequestId: 请求ID
        # @type RequestId: String
        # @param DateTime: 日期时间
        # @type DateTime: String

        attr_accessor :Uin, :ProductId, :DeviceName, :SrcType, :SrcName, :Topic, :PayloadFormatType, :Payload, :RequestId, :DateTime

        def initialize(uin=nil, productid=nil, devicename=nil, srctype=nil, srcname=nil, topic=nil, payloadformattype=nil, payload=nil, requestid=nil, datetime=nil)
          @Uin = uin
          @ProductId = productid
          @DeviceName = devicename
          @SrcType = srctype
          @SrcName = srcname
          @Topic = topic
          @PayloadFormatType = payloadformattype
          @Payload = payload
          @RequestId = requestid
          @DateTime = datetime
        end

        def deserialize(params)
          @Uin = params['Uin']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @SrcType = params['SrcType']
          @SrcName = params['SrcName']
          @Topic = params['Topic']
          @PayloadFormatType = params['PayloadFormatType']
          @Payload = params['Payload']
          @RequestId = params['RequestId']
          @DateTime = params['DateTime']
        end
      end

      # 产品详细信息
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名
        # @type ProductName: String
        # @param ProductMetadata: 产品元数据
        # @type ProductMetadata: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductMetadata`
        # @param ProductProperties: 产品属性
        # @type ProductProperties: :class:`Tencentcloud::Iotcloud.v20210408.models.ProductProperties`

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
        # @param CreateUserId: 创建者 Uin
        # @type CreateUserId: Integer
        # @param UserId: 账号 Uin
        # @type UserId: Integer

        attr_accessor :CreationDate, :CreateUserId, :UserId

        def initialize(creationdate=nil, createuserid=nil, userid=nil)
          @CreationDate = creationdate
          @CreateUserId = createuserid
          @UserId = userid
        end

        def deserialize(params)
          @CreationDate = params['CreationDate']
          @CreateUserId = params['CreateUserId']
          @UserId = params['UserId']
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
        # @param ProductSecret: 动态注册产品密钥
        # @type ProductSecret: String
        # @param RegisterLimit: RegisterType为2时，设备动态创建的限制数量
        # @type RegisterLimit: Integer
        # @param OriginProductId: 划归的产品，展示为源产品ID，其余为空
        # @type OriginProductId: String
        # @param PrivateCAName: 私有CA名称
        # @type PrivateCAName: String
        # @param OriginUserId: 划归的产品，展示为源用户ID，其余为空
        # @type OriginUserId: Integer
        # @param DeviceLimit: 设备限制
        # @type DeviceLimit: Integer
        # @param ForbiddenStatus: 产品禁用状态
        # @type ForbiddenStatus: Integer
        # @param AppEUI: LoRa产品运营侧APPEUI，只有LoRa产品需要填写
        # @type AppEUI: String

        attr_accessor :ProductDescription, :EncryptionType, :Region, :ProductType, :Format, :Platform, :Appeui, :ModelId, :ModelName, :ProductKey, :RegisterType, :ProductSecret, :RegisterLimit, :OriginProductId, :PrivateCAName, :OriginUserId, :DeviceLimit, :ForbiddenStatus, :AppEUI
        extend Gem::Deprecate
        deprecate :Appeui, :none, 2025, 4
        deprecate :Appeui=, :none, 2025, 4

        def initialize(productdescription=nil, encryptiontype=nil, region=nil, producttype=nil, format=nil, platform=nil, modelid=nil, modelname=nil, productkey=nil, registertype=nil, productsecret=nil, registerlimit=nil, originproductid=nil, privatecaname=nil, originuserid=nil, devicelimit=nil, forbiddenstatus=nil, appeui=nil)
          @ProductDescription = productdescription
          @EncryptionType = encryptiontype
          @Region = region
          @ProductType = producttype
          @Format = format
          @Platform = platform
          @ModelId = modelid
          @ModelName = modelname
          @ProductKey = productkey
          @RegisterType = registertype
          @ProductSecret = productsecret
          @RegisterLimit = registerlimit
          @OriginProductId = originproductid
          @PrivateCAName = privatecaname
          @OriginUserId = originuserid
          @DeviceLimit = devicelimit
          @ForbiddenStatus = forbiddenstatus
          @AppEUI = appeui
        end

        def deserialize(params)
          @ProductDescription = params['ProductDescription']
          @EncryptionType = params['EncryptionType']
          @Region = params['Region']
          @ProductType = params['ProductType']
          @Format = params['Format']
          @Platform = params['Platform']
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ProductKey = params['ProductKey']
          @RegisterType = params['RegisterType']
          @ProductSecret = params['ProductSecret']
          @RegisterLimit = params['RegisterLimit']
          @OriginProductId = params['OriginProductId']
          @PrivateCAName = params['PrivateCAName']
          @OriginUserId = params['OriginUserId']
          @DeviceLimit = params['DeviceLimit']
          @ForbiddenStatus = params['ForbiddenStatus']
          @AppEUI = params['AppEUI']
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
        # @type MessageId: Integer
        # @param PayloadBase64: 设备回复的消息内容，采用base64编码
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

      # ReplaceTopicRule请求参数结构体
      class ReplaceTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 替换的规则包体
        # @type TopicRulePayload: :class:`Tencentcloud::Iotcloud.v20210408.models.TopicRulePayload`

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

      # ReplaceTopicRule返回参数结构体
      class ReplaceTopicRuleResponse < TencentCloud::Common::AbstractModel
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductId, :DeviceName, :FirmwareVersion, :TaskId

        def initialize(productid=nil, devicename=nil, firmwareversion=nil, taskid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # RetryDeviceFirmwareTask返回参数结构体
      class RetryDeviceFirmwareTaskResponse < TencentCloud::Common::AbstractModel
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

      # SDK日志项
      class SDKLogItem < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Level: 日志等级
        # @type Level: String
        # @param DateTime: 日志时间
        # @type DateTime: String
        # @param Content: 日志内容
        # @type Content: String

        attr_accessor :ProductId, :DeviceName, :Level, :DateTime, :Content

        def initialize(productid=nil, devicename=nil, level=nil, datetime=nil, content=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Level = level
          @DateTime = datetime
          @Content = content
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Level = params['Level']
          @DateTime = params['DateTime']
          @Content = params['Content']
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

      # SetProductsForbiddenStatus请求参数结构体
      class SetProductsForbiddenStatusRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 要设置禁用状态的产品列表
        # @type ProductId: Array
        # @param Status: 0启用，1禁用
        # @type Status: Integer

        attr_accessor :ProductId, :Status

        def initialize(productid=nil, status=nil)
          @ProductId = productid
          @Status = status
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Status = params['Status']
        end
      end

      # SetProductsForbiddenStatus返回参数结构体
      class SetProductsForbiddenStatusResponse < TencentCloud::Common::AbstractModel
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

      # 规则详细信息
      class TopicRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Description: 规则描述
        # @type Description: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: Integer
        # @param RuleDisabled: 不生效
        # @type RuleDisabled: Boolean
        # @param TopicPattern: 规则模式
        # @type TopicPattern: String

        attr_accessor :RuleName, :Description, :CreatedAt, :RuleDisabled, :TopicPattern

        def initialize(rulename=nil, description=nil, createdat=nil, ruledisabled=nil, topicpattern=nil)
          @RuleName = rulename
          @Description = description
          @CreatedAt = createdat
          @RuleDisabled = ruledisabled
          @TopicPattern = topicpattern
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Description = params['Description']
          @CreatedAt = params['CreatedAt']
          @RuleDisabled = params['RuleDisabled']
          @TopicPattern = params['TopicPattern']
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

      # UpdateDeviceLogLevel请求参数结构体
      class UpdateDeviceLogLevelRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param LogLevel: 日志级别，0：关闭，1：错误，2：告警，3：信息，4：调试
        # @type LogLevel: Integer

        attr_accessor :ProductId, :DeviceName, :LogLevel

        def initialize(productid=nil, devicename=nil, loglevel=nil)
          @ProductId = productid
          @DeviceName = devicename
          @LogLevel = loglevel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @LogLevel = params['LogLevel']
        end
      end

      # UpdateDeviceLogLevel返回参数结构体
      class UpdateDeviceLogLevelResponse < TencentCloud::Common::AbstractModel
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

      # UpdateDevicePSK请求参数结构体
      class UpdateDevicePSKRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品名
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Psk: 设备的psk
        # @type Psk: String

        attr_accessor :ProductId, :DeviceName, :Psk

        def initialize(productid=nil, devicename=nil, psk=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Psk = psk
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Psk = params['Psk']
        end
      end

      # UpdateDevicePSK返回参数结构体
      class UpdateDevicePSKResponse < TencentCloud::Common::AbstractModel
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

        attr_accessor :ProductId, :DeviceName, :State, :ShadowVersion

        def initialize(productid=nil, devicename=nil, state=nil, shadowversion=nil)
          @ProductId = productid
          @DeviceName = devicename
          @State = state
          @ShadowVersion = shadowversion
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @State = params['State']
          @ShadowVersion = params['ShadowVersion']
        end
      end

      # UpdateDeviceShadow返回参数结构体
      class UpdateDeviceShadowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备影子数据，JSON字符串格式
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

      # UpdateDevicesEnableState请求参数结构体
      class UpdateDevicesEnableStateRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 设备所属产品id
        # @type ProductId: String
        # @param DeviceNames: 设备名称集合
        # @type DeviceNames: Array
        # @param Status: 要设置的设备状态，1为启用，0为禁用
        # @type Status: Integer

        attr_accessor :ProductId, :DeviceNames, :Status

        def initialize(productid=nil, devicenames=nil, status=nil)
          @ProductId = productid
          @DeviceNames = devicenames
          @Status = status
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
          @Status = params['Status']
        end
      end

      # UpdateDevicesEnableState返回参数结构体
      class UpdateDevicesEnableStateResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePrivateCA请求参数结构体
      class UpdatePrivateCARequest < TencentCloud::Common::AbstractModel
        # @param CertName: CA证书名称
        # @type CertName: String
        # @param CertText: CA证书内容
        # @type CertText: String
        # @param VerifyCertText: 校验CA证书的证书内容
        # @type VerifyCertText: String

        attr_accessor :CertName, :CertText, :VerifyCertText

        def initialize(certname=nil, certtext=nil, verifycerttext=nil)
          @CertName = certname
          @CertText = certtext
          @VerifyCertText = verifycerttext
        end

        def deserialize(params)
          @CertName = params['CertName']
          @CertText = params['CertText']
          @VerifyCertText = params['VerifyCertText']
        end
      end

      # UpdatePrivateCA返回参数结构体
      class UpdatePrivateCAResponse < TencentCloud::Common::AbstractModel
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

      # UpdateProductDynamicRegister请求参数结构体
      class UpdateProductDynamicRegisterRequest < TencentCloud::Common::AbstractModel
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

      # UpdateProductDynamicRegister返回参数结构体
      class UpdateProductDynamicRegisterResponse < TencentCloud::Common::AbstractModel
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

      # UpdateProductPrivateCA请求参数结构体
      class UpdateProductPrivateCARequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param CertName: 私有CA证书名称
        # @type CertName: String

        attr_accessor :ProductId, :CertName

        def initialize(productid=nil, certname=nil)
          @ProductId = productid
          @CertName = certname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @CertName = params['CertName']
        end
      end

      # UpdateProductPrivateCA返回参数结构体
      class UpdateProductPrivateCAResponse < TencentCloud::Common::AbstractModel
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

      # UpdateTopicPolicy请求参数结构体
      class UpdateTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: 更新前Topic名
        # @type TopicName: String
        # @param NewTopicName: 更新后Topic名
        # @type NewTopicName: String
        # @param Privilege: Topic权限
        # @type Privilege: Integer
        # @param BrokerSubscribe: 代理订阅信息
        # @type BrokerSubscribe: :class:`Tencentcloud::Iotcloud.v20210408.models.BrokerSubscribe`

        attr_accessor :ProductId, :TopicName, :NewTopicName, :Privilege, :BrokerSubscribe

        def initialize(productid=nil, topicname=nil, newtopicname=nil, privilege=nil, brokersubscribe=nil)
          @ProductId = productid
          @TopicName = topicname
          @NewTopicName = newtopicname
          @Privilege = privilege
          @BrokerSubscribe = brokersubscribe
        end

        def deserialize(params)
          @ProductId = params['ProductId']
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
        # @param ProductId: 产品ID
        # @type ProductId: String
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
        # @param FirmwareUserDefined: 固件用户自定义配置信息
        # @type FirmwareUserDefined: String

        attr_accessor :ProductId, :FirmwareVersion, :Md5sum, :FileSize, :FirmwareName, :FirmwareDescription, :FirmwareUserDefined

        def initialize(productid=nil, firmwareversion=nil, md5sum=nil, filesize=nil, firmwarename=nil, firmwaredescription=nil, firmwareuserdefined=nil)
          @ProductId = productid
          @FirmwareVersion = firmwareversion
          @Md5sum = md5sum
          @FileSize = filesize
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
          @FirmwareUserDefined = firmwareuserdefined
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @FirmwareVersion = params['FirmwareVersion']
          @Md5sum = params['Md5sum']
          @FileSize = params['FileSize']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
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

    end
  end
end

