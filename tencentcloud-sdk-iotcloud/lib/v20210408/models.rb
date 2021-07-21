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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param OriginProductId: 划归的产品，展示为源产品ID，其余为空
        # @type OriginProductId: String
        # @param PrivateCAName: 私有CA名称
        # @type PrivateCAName: String
        # @param OriginUserId: 划归的产品，展示为源用户ID，其余为空
        # @type OriginUserId: Integer

        attr_accessor :ProductDescription, :EncryptionType, :Region, :ProductType, :Format, :Platform, :Appeui, :ModelId, :ModelName, :ProductKey, :RegisterType, :ProductSecret, :RegisterLimit, :OriginProductId, :PrivateCAName, :OriginUserId
        
        def initialize(productdescription=nil, encryptiontype=nil, region=nil, producttype=nil, format=nil, platform=nil, appeui=nil, modelid=nil, modelname=nil, productkey=nil, registertype=nil, productsecret=nil, registerlimit=nil, originproductid=nil, privatecaname=nil, originuserid=nil)
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
          @OriginProductId = originproductid
          @PrivateCAName = privatecaname
          @OriginUserId = originuserid
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
          @OriginProductId = params['OriginProductId']
          @PrivateCAName = params['PrivateCAName']
          @OriginUserId = params['OriginUserId']
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

