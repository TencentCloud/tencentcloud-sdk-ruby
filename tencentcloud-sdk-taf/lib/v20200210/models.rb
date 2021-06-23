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
  module Taf
    module V20200210
      # DetectFraudKOL请求参数结构体
      class DetectFraudKOLRequest < TencentCloud::Common::AbstractModel
        # @param BspData: 业务数据
        # @type BspData: :class:`Tencentcloud::Taf.v20200210.models.InputKolBspData`

        attr_accessor :BspData
        
        def initialize(bspdata=nil)
          @BspData = bspdata
        end

        def deserialize(params)
          unless params['BspData'].nil?
            @BspData = InputKolBspData.new
            @BspData.deserialize(params['BspData'])
          end
        end
      end

      # DetectFraudKOL返回参数结构体
      class DetectFraudKOLResponse < TencentCloud::Common::AbstractModel
        # @param Data: 回包数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputKolData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputKolData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # EnhanceTaDegree请求参数结构体
      class EnhanceTaDegreeRequest < TencentCloud::Common::AbstractModel
        # @param BspData: 业务数据
        # @type BspData: :class:`Tencentcloud::Taf.v20200210.models.InputTaBspData`

        attr_accessor :BspData
        
        def initialize(bspdata=nil)
          @BspData = bspdata
        end

        def deserialize(params)
          unless params['BspData'].nil?
            @BspData = InputTaBspData.new
            @BspData.deserialize(params['BspData'])
          end
        end
      end

      # EnhanceTaDegree返回参数结构体
      class EnhanceTaDegreeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 回包数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputTaData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputTaData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CheckKol
      class InputKolBspData < TencentCloud::Common::AbstractModel
        # @param DataList: BspData
        # @type DataList: Array

        attr_accessor :DataList
        
        def initialize(datalist=nil)
          @DataList = datalist
        end

        def deserialize(params)
          unless params['DataList'].nil?
            @DataList = []
            params['DataList'].each do |i|
              inputkoldatalist_tmp = InputKolDataList.new
              inputkoldatalist_tmp.deserialize(i)
              @DataList << inputkoldatalist_tmp
            end
          end
        end
      end

      # CheckKol
      class InputKolDataList < TencentCloud::Common::AbstractModel
        # @param Type: 账号类型[1：微信；2：qq；3：微博]
        # @type Type: Integer
        # @param Id: KOL账号ID[比如微信公众号ID]
        # @type Id: String
        # @param Name: KOL名称
        # @type Name: String
        # @param Phone: 手机号
        # @type Phone: String
        # @param AgentInfo: 代理商名称
        # @type AgentInfo: String

        attr_accessor :Type, :Id, :Name, :Phone, :AgentInfo
        
        def initialize(type=nil, id=nil, name=nil, phone=nil, agentinfo=nil)
          @Type = type
          @Id = id
          @Name = name
          @Phone = phone
          @AgentInfo = agentinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @Id = params['Id']
          @Name = params['Name']
          @Phone = params['Phone']
          @AgentInfo = params['AgentInfo']
        end
      end

      # 接口入参
      class InputRecognizeEffectiveFlow < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # 流量反欺诈-验准入参
      class InputRecognizeTargetAudience < TencentCloud::Common::AbstractModel
        # @param Uid: 设备ID，AccountType指定的类型
        # @type Uid: String
        # @param AccountType: 设备号类型，1.imei 2.imeiMd5（小写后转MD5转小写）3.idfa， 4.idfaMd5（大写后转MD5转小写），5.手机号,256.其它
        # @type AccountType: Integer
        # @param ModelIdList: 模型ID列表
        # @type ModelIdList: Array
        # @param Ip: 用户IP
        # @type Ip: String
        # @param Os: 操作系统类型(unknown，android，ios，windows)
        # @type Os: String
        # @param Osv: 操作系统版本
        # @type Osv: String
        # @param Lat: 纬度
        # @type Lat: String
        # @param Lon: 经度
        # @type Lon: String
        # @param DeviceModel: 设备型号(MI 6)
        # @type DeviceModel: String
        # @param BidFloor: 竞价底价
        # @type BidFloor: Integer
        # @param Age: 年龄
        # @type Age: Integer
        # @param Gender: 性别(1.MALE 2.FEMALE)
        # @type Gender: Integer
        # @param Location: 用户地址
        # @type Location: String
        # @param DeliveryMode: 投放模式（0=PDB，1=PD，2=RTB，10=其他）
        # @type DeliveryMode: Integer
        # @param AdvertisingType: 广告位类型<br />（0=前贴片，1=开屏广告，2=网页头部广告、3=网页中部广告、4=网页底部广告、5=悬浮广告、10=其它）
        # @type AdvertisingType: Integer
        # @param Mac: mac地址，建议提供
        # @type Mac: String
        # @param Phone: 电话号码
        # @type Phone: String
        # @param Ua: 浏览器类型
        # @type Ua: String
        # @param App: 客户端应用
        # @type App: String
        # @param Package: 应用包名
        # @type Package: String
        # @param Maker: 设备制造商
        # @type Maker: String
        # @param DeviceType: 设备类型（PHONE,TABLET）
        # @type DeviceType: String
        # @param AccessMode: 入网方式(wifi,4g,3g,2g)
        # @type AccessMode: String
        # @param Sp: 运营商(1.移动 2.联通 3.电信等)
        # @type Sp: Integer
        # @param DeviceW: 设备屏幕分辨率宽度像素数
        # @type DeviceW: Integer
        # @param DeviceH: 设备屏幕分辨率高度像素数
        # @type DeviceH: Integer
        # @param FullScreen: 是否全屏插广告(0-否，1-是)
        # @type FullScreen: Integer
        # @param ImpBannerW: 广告位宽度
        # @type ImpBannerW: Integer
        # @param ImpBannerH: 广告位高度
        # @type ImpBannerH: Integer
        # @param Url: 网址
        # @type Url: String
        # @param Context: 上下文信息
        # @type Context: String
        # @param Channel: 渠道
        # @type Channel: String
        # @param ReqId: 请求ID
        # @type ReqId: String
        # @param ReqMd5: 请求ID的md5值
        # @type ReqMd5: String
        # @param AdType: ad_type
        # @type AdType: Integer
        # @param AppName: app name
        # @type AppName: String
        # @param AppVer: appVer
        # @type AppVer: String
        # @param ReqType: 竞价模式1：rtb 2:pd
        # @type ReqType: Integer

        attr_accessor :Uid, :AccountType, :ModelIdList, :Ip, :Os, :Osv, :Lat, :Lon, :DeviceModel, :BidFloor, :Age, :Gender, :Location, :DeliveryMode, :AdvertisingType, :Mac, :Phone, :Ua, :App, :Package, :Maker, :DeviceType, :AccessMode, :Sp, :DeviceW, :DeviceH, :FullScreen, :ImpBannerW, :ImpBannerH, :Url, :Context, :Channel, :ReqId, :ReqMd5, :AdType, :AppName, :AppVer, :ReqType
        
        def initialize(uid=nil, accounttype=nil, modelidlist=nil, ip=nil, os=nil, osv=nil, lat=nil, lon=nil, devicemodel=nil, bidfloor=nil, age=nil, gender=nil, location=nil, deliverymode=nil, advertisingtype=nil, mac=nil, phone=nil, ua=nil, app=nil, package=nil, maker=nil, devicetype=nil, accessmode=nil, sp=nil, devicew=nil, deviceh=nil, fullscreen=nil, impbannerw=nil, impbannerh=nil, url=nil, context=nil, channel=nil, reqid=nil, reqmd5=nil, adtype=nil, appname=nil, appver=nil, reqtype=nil)
          @Uid = uid
          @AccountType = accounttype
          @ModelIdList = modelidlist
          @Ip = ip
          @Os = os
          @Osv = osv
          @Lat = lat
          @Lon = lon
          @DeviceModel = devicemodel
          @BidFloor = bidfloor
          @Age = age
          @Gender = gender
          @Location = location
          @DeliveryMode = deliverymode
          @AdvertisingType = advertisingtype
          @Mac = mac
          @Phone = phone
          @Ua = ua
          @App = app
          @Package = package
          @Maker = maker
          @DeviceType = devicetype
          @AccessMode = accessmode
          @Sp = sp
          @DeviceW = devicew
          @DeviceH = deviceh
          @FullScreen = fullscreen
          @ImpBannerW = impbannerw
          @ImpBannerH = impbannerh
          @Url = url
          @Context = context
          @Channel = channel
          @ReqId = reqid
          @ReqMd5 = reqmd5
          @AdType = adtype
          @AppName = appname
          @AppVer = appver
          @ReqType = reqtype
        end

        def deserialize(params)
          @Uid = params['Uid']
          @AccountType = params['AccountType']
          @ModelIdList = params['ModelIdList']
          @Ip = params['Ip']
          @Os = params['Os']
          @Osv = params['Osv']
          @Lat = params['Lat']
          @Lon = params['Lon']
          @DeviceModel = params['DeviceModel']
          @BidFloor = params['BidFloor']
          @Age = params['Age']
          @Gender = params['Gender']
          @Location = params['Location']
          @DeliveryMode = params['DeliveryMode']
          @AdvertisingType = params['AdvertisingType']
          @Mac = params['Mac']
          @Phone = params['Phone']
          @Ua = params['Ua']
          @App = params['App']
          @Package = params['Package']
          @Maker = params['Maker']
          @DeviceType = params['DeviceType']
          @AccessMode = params['AccessMode']
          @Sp = params['Sp']
          @DeviceW = params['DeviceW']
          @DeviceH = params['DeviceH']
          @FullScreen = params['FullScreen']
          @ImpBannerW = params['ImpBannerW']
          @ImpBannerH = params['ImpBannerH']
          @Url = params['Url']
          @Context = params['Context']
          @Channel = params['Channel']
          @ReqId = params['ReqId']
          @ReqMd5 = params['ReqMd5']
          @AdType = params['AdType']
          @AppName = params['AppName']
          @AppVer = params['AppVer']
          @ReqType = params['ReqType']
        end
      end

      # 业务入参
      class InputSendTrafficSecuritySmsMsg < TencentCloud::Common::AbstractModel
        # @param TaskId: 投放任务ID
        # @type TaskId: String
        # @param Mobiles: 手机号码列表（号码量<=200）
        # @type Mobiles: Array

        attr_accessor :TaskId, :Mobiles
        
        def initialize(taskid=nil, mobiles=nil)
          @TaskId = taskid
          @Mobiles = mobiles
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Mobiles = params['Mobiles']
        end
      end

      # 流量反欺诈-虚假TA识别
      class InputTaBspData < TencentCloud::Common::AbstractModel
        # @param Seq: 请求序列号
        # @type Seq: Integer
        # @param OsType: 操作系统类型[0：未知；1：android；2：ios；3：windows]
        # @type OsType: String
        # @param AgeFloor: 年龄下限
        # @type AgeFloor: Integer
        # @param AgeCeil: 年龄上限
        # @type AgeCeil: Integer
        # @param Gender: 性别[1：男；2：女]
        # @type Gender: Integer
        # @param UserTime: 用户操作时间
        # @type UserTime: Integer
        # @param Imei: Imei [在(Imei|ImeiMd5|Idfa|IdfaMd5)里面4选1]
        # @type Imei: String
        # @param ImeiMd5: Imei小写后加密Md5 [在(Imei|ImeiMd5|Idfa|IdfaMd5)里面4选1]
        # @type ImeiMd5: String
        # @param Idfa: Idfa [在(Imei|ImeiMd5|Idfa|IdfaMd5)里面4选1]
        # @type Idfa: String
        # @param IdfaMd5: Idfa大写后加密Md5 [在(Imei|ImeiMd5|Idfa|IdfaMd5)里面4选1]
        # @type IdfaMd5: String
        # @param UserIp: 用户IP
        # @type UserIp: String
        # @param Mac: MAC地址[建议提供]
        # @type Mac: String
        # @param PhoneNum: 手机号码[中国大陆]
        # @type PhoneNum: String
        # @param UserAgent: 浏览器
        # @type UserAgent: String
        # @param App: APP名称
        # @type App: String
        # @param Package: 应用安装包名称
        # @type Package: String
        # @param DeviceMaker: 设备制造商
        # @type DeviceMaker: String
        # @param DeviceModule: 设备型号
        # @type DeviceModule: String
        # @param AccessMode: 入网方式[1：WIFI；2：4G；3：3G；4：2G；5：其它]
        # @type AccessMode: String
        # @param Sp: 运营商[1：移动；2：联通；3：电信；4：其它]
        # @type Sp: String
        # @param Url: 网址
        # @type Url: String
        # @param Location: 用户地址
        # @type Location: String
        # @param Latitude: 纬度
        # @type Latitude: String
        # @param Longitude: 精度
        # @type Longitude: String
        # @param Context: 辅助区分信息
        # @type Context: String

        attr_accessor :Seq, :OsType, :AgeFloor, :AgeCeil, :Gender, :UserTime, :Imei, :ImeiMd5, :Idfa, :IdfaMd5, :UserIp, :Mac, :PhoneNum, :UserAgent, :App, :Package, :DeviceMaker, :DeviceModule, :AccessMode, :Sp, :Url, :Location, :Latitude, :Longitude, :Context
        
        def initialize(seq=nil, ostype=nil, agefloor=nil, ageceil=nil, gender=nil, usertime=nil, imei=nil, imeimd5=nil, idfa=nil, idfamd5=nil, userip=nil, mac=nil, phonenum=nil, useragent=nil, app=nil, package=nil, devicemaker=nil, devicemodule=nil, accessmode=nil, sp=nil, url=nil, location=nil, latitude=nil, longitude=nil, context=nil)
          @Seq = seq
          @OsType = ostype
          @AgeFloor = agefloor
          @AgeCeil = ageceil
          @Gender = gender
          @UserTime = usertime
          @Imei = imei
          @ImeiMd5 = imeimd5
          @Idfa = idfa
          @IdfaMd5 = idfamd5
          @UserIp = userip
          @Mac = mac
          @PhoneNum = phonenum
          @UserAgent = useragent
          @App = app
          @Package = package
          @DeviceMaker = devicemaker
          @DeviceModule = devicemodule
          @AccessMode = accessmode
          @Sp = sp
          @Url = url
          @Location = location
          @Latitude = latitude
          @Longitude = longitude
          @Context = context
        end

        def deserialize(params)
          @Seq = params['Seq']
          @OsType = params['OsType']
          @AgeFloor = params['AgeFloor']
          @AgeCeil = params['AgeCeil']
          @Gender = params['Gender']
          @UserTime = params['UserTime']
          @Imei = params['Imei']
          @ImeiMd5 = params['ImeiMd5']
          @Idfa = params['Idfa']
          @IdfaMd5 = params['IdfaMd5']
          @UserIp = params['UserIp']
          @Mac = params['Mac']
          @PhoneNum = params['PhoneNum']
          @UserAgent = params['UserAgent']
          @App = params['App']
          @Package = params['Package']
          @DeviceMaker = params['DeviceMaker']
          @DeviceModule = params['DeviceModule']
          @AccessMode = params['AccessMode']
          @Sp = params['Sp']
          @Url = params['Url']
          @Location = params['Location']
          @Latitude = params['Latitude']
          @Longitude = params['Longitude']
          @Context = params['Context']
        end
      end

      # CheckKol
      class OutputKolData < TencentCloud::Common::AbstractModel
        # @param Code: 错误码[0:成功；非0：失败的错误码]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 业务返回数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value
        
        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = []
            params['Value'].each do |i|
              outputkolvalue_tmp = OutputKolValue.new
              outputkolvalue_tmp.deserialize(i)
              @Value << outputkolvalue_tmp
            end
          end
        end
      end

      # CheckKol
      class OutputKolValue < TencentCloud::Common::AbstractModel
        # @param Id: KOL账号ID[比如微信公众号ID]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param IsCheck: 是否查得[0：未查得；1：查得]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCheck: Integer
        # @param FraudPScore: 作弊的可能性[0～100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FraudPScore: Integer
        # @param EvilPScore: 作弊的严重性[0～100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EvilPScore: Integer

        attr_accessor :Id, :IsCheck, :FraudPScore, :EvilPScore
        
        def initialize(id=nil, ischeck=nil, fraudpscore=nil, evilpscore=nil)
          @Id = id
          @IsCheck = ischeck
          @FraudPScore = fraudpscore
          @EvilPScore = evilpscore
        end

        def deserialize(params)
          @Id = params['Id']
          @IsCheck = params['IsCheck']
          @FraudPScore = params['FraudPScore']
          @EvilPScore = params['EvilPScore']
        end
      end

      # 业务出参
      class OutputRecognizeEffectiveFlow < TencentCloud::Common::AbstractModel
        # @param Code: 返回码。0表示成功，非0标识失败错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: UTF-8编码，出错消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 业务入参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Taf.v20200210.models.OutputRecognizeEffectiveFlowValue`

        attr_accessor :Code, :Message, :Value
        
        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputRecognizeEffectiveFlowValue.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 业务出参
      class OutputRecognizeEffectiveFlowValue < TencentCloud::Common::AbstractModel
        # @param Lable: 返回标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Lable: String
        # @param Score: 返回分值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float

        attr_accessor :Lable, :Score
        
        def initialize(lable=nil, score=nil)
          @Lable = lable
          @Score = score
        end

        def deserialize(params)
          @Lable = params['Lable']
          @Score = params['Score']
        end
      end

      # 流量反欺诈-验准返回值
      class OutputRecognizeTargetAudience < TencentCloud::Common::AbstractModel
        # @param Code: 返回码（0，成功，其他失败）
        # @type Code: Integer
        # @param Message: 返回码对应的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 返回模型结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value
        
        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = []
            params['Value'].each do |i|
              outputrecognizetargetaudiencevalue_tmp = OutputRecognizeTargetAudienceValue.new
              outputrecognizetargetaudiencevalue_tmp.deserialize(i)
              @Value << outputrecognizetargetaudiencevalue_tmp
            end
          end
        end
      end

      # 流量反欺诈-验准返回的查询分值
      class OutputRecognizeTargetAudienceValue < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: Integer
        # @param IsFound: 是否正常返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFound: Integer
        # @param Score: 返回分值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float

        attr_accessor :ModelId, :IsFound, :Score
        
        def initialize(modelid=nil, isfound=nil, score=nil)
          @ModelId = modelid
          @IsFound = isfound
          @Score = score
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @IsFound = params['IsFound']
          @Score = params['Score']
        end
      end

      # 返回结果
      class OutputSendTrafficSecuritySmsMsg < TencentCloud::Common::AbstractModel
        # @param Code: 返回码（0：接口调用成功 非0：接口调用失败）
        # @type Code: Integer
        # @param Message: 返回码对应的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 发送失败的号码列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Array

        attr_accessor :Code, :Message, :Value
        
        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @Value = params['Value']
        end
      end

      # 流量反欺诈-虚假TA识别
      class OutputTaData < TencentCloud::Common::AbstractModel
        # @param Code: 错误码[0:成功；非0：失败的错误码]
        # @type Code: Integer
        # @param Message: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 结果数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Taf.v20200210.models.OutputTaValue`

        attr_accessor :Code, :Message, :Value
        
        def initialize(code=nil, message=nil, value=nil)
          @Code = code
          @Message = message
          @Value = value
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputTaValue.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # 流量反欺诈-虚假TA识别
      class OutputTaValue < TencentCloud::Common::AbstractModel
        # @param IsCheck: 是否查得[0：未查得；1：查得]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCheck: Integer
        # @param IsMatch: 是否符合[0：不符合；1：符合]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsMatch: Integer

        attr_accessor :IsCheck, :IsMatch
        
        def initialize(ischeck=nil, ismatch=nil)
          @IsCheck = ischeck
          @IsMatch = ismatch
        end

        def deserialize(params)
          @IsCheck = params['IsCheck']
          @IsMatch = params['IsMatch']
        end
      end

      # RecognizeCustomizedAudience请求参数结构体
      class RecognizeCustomizedAudienceRequest < TencentCloud::Common::AbstractModel
        # @param BspData: 业务入参
        # @type BspData: :class:`Tencentcloud::Taf.v20200210.models.InputRecognizeTargetAudience`

        attr_accessor :BspData
        
        def initialize(bspdata=nil)
          @BspData = bspdata
        end

        def deserialize(params)
          unless params['BspData'].nil?
            @BspData = InputRecognizeTargetAudience.new
            @BspData.deserialize(params['BspData'])
          end
        end
      end

      # RecognizeCustomizedAudience返回参数结构体
      class RecognizeCustomizedAudienceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputRecognizeTargetAudience`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputRecognizeTargetAudience.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RecognizeEffectiveFlow请求参数结构体
      class RecognizeEffectiveFlowRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Taf.v20200210.models.InputRecognizeEffectiveFlow`

        attr_accessor :BusinessSecurityData
        
        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputRecognizeEffectiveFlow.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # RecognizeEffectiveFlow返回参数结构体
      class RecognizeEffectiveFlowResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputRecognizeEffectiveFlow`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputRecognizeEffectiveFlow.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RecognizePreciseTargetAudience请求参数结构体
      class RecognizePreciseTargetAudienceRequest < TencentCloud::Common::AbstractModel
        # @param BspData: 业务数据
        # @type BspData: :class:`Tencentcloud::Taf.v20200210.models.InputRecognizeTargetAudience`

        attr_accessor :BspData
        
        def initialize(bspdata=nil)
          @BspData = bspdata
        end

        def deserialize(params)
          unless params['BspData'].nil?
            @BspData = InputRecognizeTargetAudience.new
            @BspData.deserialize(params['BspData'])
          end
        end
      end

      # RecognizePreciseTargetAudience返回参数结构体
      class RecognizePreciseTargetAudienceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 回包数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputRecognizeTargetAudience`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputRecognizeTargetAudience.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RecognizeTargetAudience请求参数结构体
      class RecognizeTargetAudienceRequest < TencentCloud::Common::AbstractModel
        # @param BspData: 业务数据
        # @type BspData: :class:`Tencentcloud::Taf.v20200210.models.InputRecognizeTargetAudience`

        attr_accessor :BspData
        
        def initialize(bspdata=nil)
          @BspData = bspdata
        end

        def deserialize(params)
          unless params['BspData'].nil?
            @BspData = InputRecognizeTargetAudience.new
            @BspData.deserialize(params['BspData'])
          end
        end
      end

      # RecognizeTargetAudience返回参数结构体
      class RecognizeTargetAudienceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 回包数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputRecognizeTargetAudience`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputRecognizeTargetAudience.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # SendTrafficSecuritySmsMessage请求参数结构体
      class SendTrafficSecuritySmsMessageRequest < TencentCloud::Common::AbstractModel
        # @param BspData: 业务入参
        # @type BspData: :class:`Tencentcloud::Taf.v20200210.models.InputSendTrafficSecuritySmsMsg`

        attr_accessor :BspData
        
        def initialize(bspdata=nil)
          @BspData = bspdata
        end

        def deserialize(params)
          unless params['BspData'].nil?
            @BspData = InputSendTrafficSecuritySmsMsg.new
            @BspData.deserialize(params['BspData'])
          end
        end
      end

      # SendTrafficSecuritySmsMessage返回参数结构体
      class SendTrafficSecuritySmsMessageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputSendTrafficSecuritySmsMsg`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputSendTrafficSecuritySmsMsg.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

