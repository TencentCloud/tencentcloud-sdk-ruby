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
  module Trdp
    module V20220726
      # 账号信息
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountType: 用户账号类型：
        # 1-手机号；
        # 2-IMEI；
        # 3-IDFA；
        # 100-SSID类型
        # @type AccountType: Integer
        # @param UniversalAccount: 通用账号信息，当AccountType为1、2、3、100时必填
        # @type UniversalAccount: :class:`Tencentcloud::Trdp.v20220726.models.UniversalAccountInfo`

        attr_accessor :AccountType, :UniversalAccount

        def initialize(accounttype=nil, universalaccount=nil)
          @AccountType = accounttype
          @UniversalAccount = universalaccount
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          unless params['UniversalAccount'].nil?
            @UniversalAccount = UniversalAccountInfo.new
            @UniversalAccount.deserialize(params['UniversalAccount'])
          end
        end
      end

      # 设备详情
      class DeviceDetailInfo < TencentCloud::Common::AbstractModel
        # @param MacAddress: mac地址或唯一设备标识
        # @type MacAddress: String
        # @param Model: 手机型号
        # @type Model: String
        # @param OsSystem: 操作系统(unknown，android，ios，windows)
        # @type OsSystem: String
        # @param OsSystemVersion: 操作系统版本
        # @type OsSystemVersion: String
        # @param BidFloor: 竞价底价
        # @type BidFloor: Integer
        # @param DeviceVersion: 设备版本
        # @type DeviceVersion: String
        # @param Maker: 设备制造商
        # @type Maker: String
        # @param DeviceType: 设备类型（PHONE,TABLET）
        # @type DeviceType: String
        # @param Carrier: 运营商；-1: 获取失败，0: 其他，1: 移动，2: 联通，3: 电信，4: 铁通
        # @type Carrier: String
        # @param AccessMode: 入网方式(wifi,5g,4g,3g,2g)
        # @type AccessMode: String
        # @param PhoneChipInfo: 手机芯片信息
        # @type PhoneChipInfo: String
        # @param CpuModel: CPU 型号
        # @type CpuModel: String
        # @param CpuCore: CPU 核数
        # @type CpuCore: String
        # @param Memory: 内存容量，单位转换为 GB
        # @type Memory: String
        # @param Language: 系统语言
        # @type Language: String
        # @param Volume: 手机音量
        # @type Volume: String
        # @param BatteryPower: 电池电量
        # @type BatteryPower: String
        # @param ResolutionWidth: 屏幕分辨率宽，保留整数
        # @type ResolutionWidth: Integer
        # @param ResolutionHeight: 屏幕分辨率高，保留整数
        # @type ResolutionHeight: Integer
        # @param Ua: 浏览器类型
        # @type Ua: String
        # @param App: 客户端应用
        # @type App: String
        # @param AppPackageName: 应用包名
        # @type AppPackageName: String
        # @param SerialNumber: 设备序列号
        # Android设备
        # @type SerialNumber: String
        # @param MobileCountryAndNetworkCode: netOperator MCC+MNC
        # Android设备
        # @type MobileCountryAndNetworkCode: String
        # @param VendorId: 设备品牌 “华为”“oppo”“小米”
        # Android设备
        # @type VendorId: String
        # @param AndroidApiLevel: Android API等级
        # Android设备
        # @type AndroidApiLevel: String
        # @param Brightness: 屏幕亮度
        # Android设备
        # @type Brightness: String
        # @param BluetoothAddress: 蓝牙地址
        # Android设备
        # @type BluetoothAddress: String
        # @param BaseBandVersion: 基带版本
        # Android设备
        # @type BaseBandVersion: String
        # @param KernelVersion: kernel 版本
        # Android设备
        # @type KernelVersion: String
        # @param Storage: 存储容量，单位转换为 GB
        # Android设备
        # @type Storage: String
        # @param PackageName: 软件包名
        # Android设备
        # @type PackageName: String
        # @param AppVersion: app 版本号
        # Android设备
        # @type AppVersion: String
        # @param AppName: app 显示名称
        # Android设备
        # @type AppName: String
        # @param IsDebug: 是否 debug；0 为正常模式，1 为 debug 模式；其他值无效
        # Android设备
        # @type IsDebug: String
        # @param IsRoot: 是否越狱；0 为正常，1 为越狱；其他值无效
        # Android设备
        # @type IsRoot: String
        # @param IsProxy: 是否启动代理；0 为未开启，1 为开启；其他值无效
        # Android设备
        # @type IsProxy: String
        # @param IsEmulator: 是否模拟器；0 为未开启，1 为开启；其他值无效
        # Android设备
        # @type IsEmulator: String
        # @param ChargeStatus: 充电状态；1-不在充电，2-USB充电，3-电源充电
        # Android设备
        # @type ChargeStatus: String
        # @param NetworkType: 网络类型：2G/3G/4G/5G/Wi-Fi/WWAN/other
        # Android设备
        # @type NetworkType: String
        # @param WifiMac: Wi-Fi MAC地址
        # Android设备
        # @type WifiMac: String
        # @param DeviceName: 设备名称 "xxx 的 iPhone"，"xxx's IPhone" 等等
        # IOS设备
        # @type DeviceName: String
        # @param StartupTime: 开机时间
        # IOS设备
        # @type StartupTime: String
        # @param Lon: 所在经度
        # @type Lon: String
        # @param Lat: 所在纬度
        # @type Lat: String

        attr_accessor :MacAddress, :Model, :OsSystem, :OsSystemVersion, :BidFloor, :DeviceVersion, :Maker, :DeviceType, :Carrier, :AccessMode, :PhoneChipInfo, :CpuModel, :CpuCore, :Memory, :Language, :Volume, :BatteryPower, :ResolutionWidth, :ResolutionHeight, :Ua, :App, :AppPackageName, :SerialNumber, :MobileCountryAndNetworkCode, :VendorId, :AndroidApiLevel, :Brightness, :BluetoothAddress, :BaseBandVersion, :KernelVersion, :Storage, :PackageName, :AppVersion, :AppName, :IsDebug, :IsRoot, :IsProxy, :IsEmulator, :ChargeStatus, :NetworkType, :WifiMac, :DeviceName, :StartupTime, :Lon, :Lat

        def initialize(macaddress=nil, model=nil, ossystem=nil, ossystemversion=nil, bidfloor=nil, deviceversion=nil, maker=nil, devicetype=nil, carrier=nil, accessmode=nil, phonechipinfo=nil, cpumodel=nil, cpucore=nil, memory=nil, language=nil, volume=nil, batterypower=nil, resolutionwidth=nil, resolutionheight=nil, ua=nil, app=nil, apppackagename=nil, serialnumber=nil, mobilecountryandnetworkcode=nil, vendorid=nil, androidapilevel=nil, brightness=nil, bluetoothaddress=nil, basebandversion=nil, kernelversion=nil, storage=nil, packagename=nil, appversion=nil, appname=nil, isdebug=nil, isroot=nil, isproxy=nil, isemulator=nil, chargestatus=nil, networktype=nil, wifimac=nil, devicename=nil, startuptime=nil, lon=nil, lat=nil)
          @MacAddress = macaddress
          @Model = model
          @OsSystem = ossystem
          @OsSystemVersion = ossystemversion
          @BidFloor = bidfloor
          @DeviceVersion = deviceversion
          @Maker = maker
          @DeviceType = devicetype
          @Carrier = carrier
          @AccessMode = accessmode
          @PhoneChipInfo = phonechipinfo
          @CpuModel = cpumodel
          @CpuCore = cpucore
          @Memory = memory
          @Language = language
          @Volume = volume
          @BatteryPower = batterypower
          @ResolutionWidth = resolutionwidth
          @ResolutionHeight = resolutionheight
          @Ua = ua
          @App = app
          @AppPackageName = apppackagename
          @SerialNumber = serialnumber
          @MobileCountryAndNetworkCode = mobilecountryandnetworkcode
          @VendorId = vendorid
          @AndroidApiLevel = androidapilevel
          @Brightness = brightness
          @BluetoothAddress = bluetoothaddress
          @BaseBandVersion = basebandversion
          @KernelVersion = kernelversion
          @Storage = storage
          @PackageName = packagename
          @AppVersion = appversion
          @AppName = appname
          @IsDebug = isdebug
          @IsRoot = isroot
          @IsProxy = isproxy
          @IsEmulator = isemulator
          @ChargeStatus = chargestatus
          @NetworkType = networktype
          @WifiMac = wifimac
          @DeviceName = devicename
          @StartupTime = startuptime
          @Lon = lon
          @Lat = lat
        end

        def deserialize(params)
          @MacAddress = params['MacAddress']
          @Model = params['Model']
          @OsSystem = params['OsSystem']
          @OsSystemVersion = params['OsSystemVersion']
          @BidFloor = params['BidFloor']
          @DeviceVersion = params['DeviceVersion']
          @Maker = params['Maker']
          @DeviceType = params['DeviceType']
          @Carrier = params['Carrier']
          @AccessMode = params['AccessMode']
          @PhoneChipInfo = params['PhoneChipInfo']
          @CpuModel = params['CpuModel']
          @CpuCore = params['CpuCore']
          @Memory = params['Memory']
          @Language = params['Language']
          @Volume = params['Volume']
          @BatteryPower = params['BatteryPower']
          @ResolutionWidth = params['ResolutionWidth']
          @ResolutionHeight = params['ResolutionHeight']
          @Ua = params['Ua']
          @App = params['App']
          @AppPackageName = params['AppPackageName']
          @SerialNumber = params['SerialNumber']
          @MobileCountryAndNetworkCode = params['MobileCountryAndNetworkCode']
          @VendorId = params['VendorId']
          @AndroidApiLevel = params['AndroidApiLevel']
          @Brightness = params['Brightness']
          @BluetoothAddress = params['BluetoothAddress']
          @BaseBandVersion = params['BaseBandVersion']
          @KernelVersion = params['KernelVersion']
          @Storage = params['Storage']
          @PackageName = params['PackageName']
          @AppVersion = params['AppVersion']
          @AppName = params['AppName']
          @IsDebug = params['IsDebug']
          @IsRoot = params['IsRoot']
          @IsProxy = params['IsProxy']
          @IsEmulator = params['IsEmulator']
          @ChargeStatus = params['ChargeStatus']
          @NetworkType = params['NetworkType']
          @WifiMac = params['WifiMac']
          @DeviceName = params['DeviceName']
          @StartupTime = params['StartupTime']
          @Lon = params['Lon']
          @Lat = params['Lat']
        end
      end

      # 设备指纹信息
      class DeviceFingerprintInfo < TencentCloud::Common::AbstractModel
        # @param DeviceToken: 设备指纹Token
        # @type DeviceToken: String
        # @param SdkChannel: 设备指纹的客户端SDK对应渠道
        # @type SdkChannel: String

        attr_accessor :DeviceToken, :SdkChannel

        def initialize(devicetoken=nil, sdkchannel=nil)
          @DeviceToken = devicetoken
          @SdkChannel = sdkchannel
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @SdkChannel = params['SdkChannel']
        end
      end

      # EvaluateUserRisk请求参数结构体
      class EvaluateUserRiskRequest < TencentCloud::Common::AbstractModel
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Trdp.v20220726.models.AccountInfo`
        # @param User: 用户信息
        # @type User: :class:`Tencentcloud::Trdp.v20220726.models.UserInfo`
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param DeviceFingerprint: 设备指纹信息
        # @type DeviceFingerprint: :class:`Tencentcloud::Trdp.v20220726.models.DeviceFingerprintInfo`
        # @param SceneCode: 场景Code，不传默认活动防刷；
        # e_activity_antirush；活动防刷场景
        # e_login_protection；登录保护场景
        # e_register_protection：注册保护场景
        # @type SceneCode: String
        # @param DeviceDetail: 设备详情
        # @type DeviceDetail: :class:`Tencentcloud::Trdp.v20220726.models.DeviceDetailInfo`
        # @param Marketing: 营销信息
        # @type Marketing: :class:`Tencentcloud::Trdp.v20220726.models.MarketingInfo`

        attr_accessor :Account, :User, :ModelId, :DeviceFingerprint, :SceneCode, :DeviceDetail, :Marketing

        def initialize(account=nil, user=nil, modelid=nil, devicefingerprint=nil, scenecode=nil, devicedetail=nil, marketing=nil)
          @Account = account
          @User = user
          @ModelId = modelid
          @DeviceFingerprint = devicefingerprint
          @SceneCode = scenecode
          @DeviceDetail = devicedetail
          @Marketing = marketing
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = AccountInfo.new
            @Account.deserialize(params['Account'])
          end
          unless params['User'].nil?
            @User = UserInfo.new
            @User.deserialize(params['User'])
          end
          @ModelId = params['ModelId']
          unless params['DeviceFingerprint'].nil?
            @DeviceFingerprint = DeviceFingerprintInfo.new
            @DeviceFingerprint.deserialize(params['DeviceFingerprint'])
          end
          @SceneCode = params['SceneCode']
          unless params['DeviceDetail'].nil?
            @DeviceDetail = DeviceDetailInfo.new
            @DeviceDetail.deserialize(params['DeviceDetail'])
          end
          unless params['Marketing'].nil?
            @Marketing = MarketingInfo.new
            @Marketing.deserialize(params['Marketing'])
          end
        end
      end

      # EvaluateUserRisk返回参数结构体
      class EvaluateUserRiskResponse < TencentCloud::Common::AbstractModel
        # @param EvaluationResult: 评估结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvaluationResult: :class:`Tencentcloud::Trdp.v20220726.models.EvaluationResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EvaluationResult, :RequestId

        def initialize(evaluationresult=nil, requestid=nil)
          @EvaluationResult = evaluationresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EvaluationResult'].nil?
            @EvaluationResult = EvaluationResult.new
            @EvaluationResult.deserialize(params['EvaluationResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 评估结果
      class EvaluationResult < TencentCloud::Common::AbstractModel
        # @param SSID: SSID值
        # @type SSID: String
        # @param Score: 风险价值分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float
        # @param RiskLabels: 风险标签，请参考官网风险类型
        # 账号风险
        # 1 账号信用低 账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素
        # 11 疑似低活跃账号 账号活跃度与正常用户有差异
        # 2 垃圾账号 疑似批量注册小号，近期存在严重违规或大量举报
        # 21 疑似小号 账号有疑似线上养号，小号等行为
        # 22 疑似违规账号 账号曾有违规行为、曾被举报过、曾因违规被处罚过等
        # 3 无效账号 送检账号参数无法成功解析，请检查微信 Openid 是否有误/Appid与QQopenid无法关联/微信Openid权限是否有开通/手机号是否为中国大陆手机号
        # 4 黑名单 该账号在业务侧有过拉黑记录
        # 5 白名单 业务自行有添加过白名单记录
        # 行为风险
        # 101 批量操作存在 IP/设备/环境等因素的聚集性异常
        # 1011 疑似 IP 属性聚集 出现 IP 聚集
        # 1012 疑似设备属性聚集 出现设备聚集
        # 102 自动机 疑似自动机批量请求
        # 103 恶意行为-网赚 疑似网赚
        # 104 微信登录态无效 检查 WeChatAccessToken 参数，是否已经失效
        # 201 环境风险 环境异常 操作 IP/设备/环境存在异常。当前 IP 为非常用 IP 或恶意 IP 段
        # 2011 疑似非常用 IP 请求 当前请求 IP 非该账号常用 IP
        # 2012 疑似 IP 异常 使用 idc 机房 IP 或使用代理 IP 或使用恶意 IP 等
        # 205 非公网有效IP 传进来的 IP 地址为内网 IP 地址或者 IP 保留地址
        # 设备风险
        # 206 设备异常 该设备存在异常的使用行为
        # 2061 疑似非常用设备 当前请求的设备非该账号常用设备
        # 2062 疑似虚拟设备 请求设备为模拟器、脚本、云设备等虚拟设备
        # 2063 疑似群控设备 请求设备为猫池、手机墙等群控设备
        # 10201 设备处于开发者模式 来源于Android
        # 10202 设备疑似 Root 来源于Android
        # 10203 疑似应用被注 来源于Android
        # 10204 疑似应用被重打包 来源于Android
        # 10205 疑似使用 hook 技术 来源于Android
        # 10206 疑似应用被双开 来源于Android
        # 10207 疑似设备存在风险进程 来源于Android
        # 10208 疑似伪造地理位置 来源于Android
        # 10209 疑似使用 VPN 软件 来源于Android
        # 10210 疑似使用代理软件 来源于Android
        # 10211 疑似设备处于调试模式 来源于Android
        # 10212 疑似高危 ROM 来源于Android
        # 10213 疑似检测到系统劫持 来源于Android
        # 10003 疑似模拟器 来源于Android
        # 10301 疑似主流模拟器 来源于Android
        # 10302 疑似云模拟器 来源于Android
        # 10303 疑似开发板设备 来源于Android
        # 10004 疑似群控设备风险 来源于Android
        # 10401 疑似使用自动化软件 来源于Android
        # 10402 疑似群控自动化操作 来源于Android
        # 10501 疑似参数异常-IMEI 来源于Android
        # 10502 疑似参数异常-FP 来源于Android
        # 10504 疑似参数异常-IMSI 来源于Android
        # 10801 疑似存在刷量安装应用的行为 来源于Android
        # 10901 疑似多账号异常 来源于Android
        # 11001 疑似设备参数篡改 来源于Android
        # 11002 疑似存在风险软件 来源于Android
        # 11003 疑似应用被调试 来源于Android
        # 11100 疑似云真机 来源于Android
        # 25001 设备疑似越狱 来源于IOS
        # 25004 进程疑似有注入文件 来源于IOS
        # 25005 疑似使用代理软件 来源于IOS
        # 25006 疑似使用 VPN 软件 来源于IOS
        # 25007 疑似被 Hook 来源于IOS
        # 25008 疑似进程被调试 来源于IOS
        # 25009 疑似多开 来源于IOS
        # 25010 疑似改机 来源于IOS
        # 25011 疑似应用二次打包 来源于IOS
        # 25012 疑似模拟器 来源于IOS
        # 25013 疑似云真机 来源于IOS
        # 25014 疑似云模拟器 来源于IOS
        # 25015 疑似伪造地理位置 来源于IOS
        # 25016 疑似使用自动化脚本 来源于IOS
        # 25017 疑似群控自动化操作 来源于IOS
        # 30001 疑似虚拟浏览器 来源于H5
        # 30002 疑似安装作弊插件 来源于H5
        # 30003 疑似浏览器参数遭篡改 来源于H5
        # 30004 疑似 JS 代码被篡改 来源于H5
        # 30005 疑似 JS 被调试 来源于H5
        # 30006 Cookies 被禁用 来源于H5
        # 40001 疑似伪造地理位置 来源于小程序
        # 40002 疑似被调试 来源于小程序
        # 40003 疑似模拟器 来源于小程序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLabels: Array

        attr_accessor :SSID, :Score, :RiskLabels

        def initialize(ssid=nil, score=nil, risklabels=nil)
          @SSID = ssid
          @Score = score
          @RiskLabels = risklabels
        end

        def deserialize(params)
          @SSID = params['SSID']
          @Score = params['Score']
          @RiskLabels = params['RiskLabels']
        end
      end

      # 营销信息
      class MarketingInfo < TencentCloud::Common::AbstractModel
        # @param DeliveryMode: 投放模式（0=PDB，1=PD，2=RTB，10=其他）
        # @type DeliveryMode: Integer
        # @param AdvertisingType: 广告位类型 （0=前贴片，1=开屏广告，2=网页头部广告、3=网页中部广告、4=网页底部广告、5=悬浮广告、10=其它）
        # @type AdvertisingType: Integer
        # @param FullScreen: 是否全屏插广告（0-否，1-是）
        # @type FullScreen: Integer
        # @param AdvertisingSpaceWidth: 广告位宽度
        # @type AdvertisingSpaceWidth: Integer
        # @param AdvertisingSpaceHeight: 广告位高度
        # @type AdvertisingSpaceHeight: Integer
        # @param Url: 网址
        # @type Url: String

        attr_accessor :DeliveryMode, :AdvertisingType, :FullScreen, :AdvertisingSpaceWidth, :AdvertisingSpaceHeight, :Url

        def initialize(deliverymode=nil, advertisingtype=nil, fullscreen=nil, advertisingspacewidth=nil, advertisingspaceheight=nil, url=nil)
          @DeliveryMode = deliverymode
          @AdvertisingType = advertisingtype
          @FullScreen = fullscreen
          @AdvertisingSpaceWidth = advertisingspacewidth
          @AdvertisingSpaceHeight = advertisingspaceheight
          @Url = url
        end

        def deserialize(params)
          @DeliveryMode = params['DeliveryMode']
          @AdvertisingType = params['AdvertisingType']
          @FullScreen = params['FullScreen']
          @AdvertisingSpaceWidth = params['AdvertisingSpaceWidth']
          @AdvertisingSpaceHeight = params['AdvertisingSpaceHeight']
          @Url = params['Url']
        end
      end

      # 通用账号信息
      class UniversalAccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountId: 账号值：
        # 当账户类型为1时，填入手机号，如135****3695；
        # 当账户类型为2、3或100时，填入对应的值。
        # @type AccountId: String

        attr_accessor :AccountId

        def initialize(accountid=nil)
          @AccountId = accountid
        end

        def deserialize(params)
          @AccountId = params['AccountId']
        end
      end

      # 用户信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 用户外网IP地址
        # @type Ip: String
        # @param ChannelSource: 来源渠道编码
        # @type ChannelSource: String
        # @param Platform: 用户登录平台。1：Android 2：iOS 3：H5 4：小程序
        # @type Platform: Integer
        # @param Name: 姓名
        # @type Name: String
        # @param Age: 年龄
        # @type Age: Integer
        # @param Gender: 性别：
        # male（男）
        # female（女）
        # @type Gender: String
        # @param ResidentIdentityCard: 身份证号
        # @type ResidentIdentityCard: String
        # @param Email: 邮箱地址
        # @type Email: String
        # @param Address: 用户地址
        # @type Address: String
        # @param Nickname: 用户昵称
        # @type Nickname: String

        attr_accessor :Ip, :ChannelSource, :Platform, :Name, :Age, :Gender, :ResidentIdentityCard, :Email, :Address, :Nickname

        def initialize(ip=nil, channelsource=nil, platform=nil, name=nil, age=nil, gender=nil, residentidentitycard=nil, email=nil, address=nil, nickname=nil)
          @Ip = ip
          @ChannelSource = channelsource
          @Platform = platform
          @Name = name
          @Age = age
          @Gender = gender
          @ResidentIdentityCard = residentidentitycard
          @Email = email
          @Address = address
          @Nickname = nickname
        end

        def deserialize(params)
          @Ip = params['Ip']
          @ChannelSource = params['ChannelSource']
          @Platform = params['Platform']
          @Name = params['Name']
          @Age = params['Age']
          @Gender = params['Gender']
          @ResidentIdentityCard = params['ResidentIdentityCard']
          @Email = params['Email']
          @Address = params['Address']
          @Nickname = params['Nickname']
        end
      end

    end
  end
end

