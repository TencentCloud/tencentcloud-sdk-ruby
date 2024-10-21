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
      # 业务入参
      class Device < TencentCloud::Common::AbstractModel
        # @param DeviceId: 业务入参id
        # @type DeviceId: String
        # @param DeviceType: 业务入参类型
        # @type DeviceType: Integer

        attr_accessor :DeviceId, :DeviceType

        def initialize(deviceid=nil, devicetype=nil)
          @DeviceId = deviceid
          @DeviceType = devicetype
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @DeviceType = params['DeviceType']
        end
      end

      # 业务入参
      class InputBusinessEncryptData < TencentCloud::Common::AbstractModel
        # @param EncryptMethod: 加密方式；0：AES;1:DES
        # @type EncryptMethod: Integer
        # @param EncryptData: 业务数据加密字符串
        # @type EncryptData: String
        # @param EncryptMode: 加密模式；0：ECB,1:CBC;2:CTR;3:CFB;4:OFB
        # @type EncryptMode: Integer
        # @param PaddingType: 填充模式;0:ZERO ;1:PKCS5;3:PKCS7
        # @type PaddingType: Integer

        attr_accessor :EncryptMethod, :EncryptData, :EncryptMode, :PaddingType

        def initialize(encryptmethod=nil, encryptdata=nil, encryptmode=nil, paddingtype=nil)
          @EncryptMethod = encryptmethod
          @EncryptData = encryptdata
          @EncryptMode = encryptmode
          @PaddingType = paddingtype
        end

        def deserialize(params)
          @EncryptMethod = params['EncryptMethod']
          @EncryptData = params['EncryptData']
          @EncryptMode = params['EncryptMode']
          @PaddingType = params['PaddingType']
        end
      end

      # 流量反欺诈-验准入参
      class InputRecognizeTargetAudience < TencentCloud::Common::AbstractModel
        # @param ModelIdList: 模型ID列表
        # @type ModelIdList: Array
        # @param Uid: 设备ID，AccountType指定的类型
        # @type Uid: String
        # @param AccountType: 设备号类型，1.imei 2.imeiMd5（小写后转MD5转小写）3.idfa， 4.idfaMd5（大写后转MD5转小写），5.手机号,256.其它
        # @type AccountType: Integer
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
        # @param AppName: app名称
        # @type AppName: String
        # @param AppVer: app版本描述
        # @type AppVer: String
        # @param ReqType: 竞价模式1：rtb 2:pd
        # @type ReqType: Integer
        # @param IsAuthorized: 用户是否授权,1为授权，0为未授权
        # @type IsAuthorized: Integer
        # @param DeviceList: 设备信息
        # @type DeviceList: Array

        attr_accessor :ModelIdList, :Uid, :AccountType, :Ip, :Os, :Osv, :Lat, :Lon, :DeviceModel, :BidFloor, :Age, :Gender, :Location, :DeliveryMode, :AdvertisingType, :Mac, :Phone, :Ua, :App, :Package, :Maker, :DeviceType, :AccessMode, :Sp, :DeviceW, :DeviceH, :FullScreen, :ImpBannerW, :ImpBannerH, :Url, :Context, :Channel, :ReqId, :ReqMd5, :AdType, :AppName, :AppVer, :ReqType, :IsAuthorized, :DeviceList

        def initialize(modelidlist=nil, uid=nil, accounttype=nil, ip=nil, os=nil, osv=nil, lat=nil, lon=nil, devicemodel=nil, bidfloor=nil, age=nil, gender=nil, location=nil, deliverymode=nil, advertisingtype=nil, mac=nil, phone=nil, ua=nil, app=nil, package=nil, maker=nil, devicetype=nil, accessmode=nil, sp=nil, devicew=nil, deviceh=nil, fullscreen=nil, impbannerw=nil, impbannerh=nil, url=nil, context=nil, channel=nil, reqid=nil, reqmd5=nil, adtype=nil, appname=nil, appver=nil, reqtype=nil, isauthorized=nil, devicelist=nil)
          @ModelIdList = modelidlist
          @Uid = uid
          @AccountType = accounttype
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
          @IsAuthorized = isauthorized
          @DeviceList = devicelist
        end

        def deserialize(params)
          @ModelIdList = params['ModelIdList']
          @Uid = params['Uid']
          @AccountType = params['AccountType']
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
          @IsAuthorized = params['IsAuthorized']
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              device_tmp = Device.new
              device_tmp.deserialize(i)
              @DeviceList << device_tmp
            end
          end
        end
      end

      # 业务入参
      class ManagePortraitRiskInput < TencentCloud::Common::AbstractModel
        # @param PostTime: 请求时间戳秒
        # @type PostTime: Integer
        # @param UserIp: 用户公网ip（仅支持IPv4）
        # @type UserIp: String
        # @param Channel: 渠道号
        # @type Channel: Integer

        attr_accessor :PostTime, :UserIp, :Channel

        def initialize(posttime=nil, userip=nil, channel=nil)
          @PostTime = posttime
          @UserIp = userip
          @Channel = channel
        end

        def deserialize(params)
          @PostTime = params['PostTime']
          @UserIp = params['UserIp']
          @Channel = params['Channel']
        end
      end

      # 业务出参
      class ManagePortraitRiskOutput < TencentCloud::Common::AbstractModel
        # @param Code: 返回码（0，成功，其他失败）
        # @type Code: Integer
        # @param Message: 返回码对应的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Taf.v20200210.models.ManagePortraitRiskValueOutput`

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
            @Value = ManagePortraitRiskValueOutput.new
            @Value.deserialize(params['Value'])
          end
        end
      end

      # ManagePortraitRisk请求参数结构体
      class ManagePortraitRiskRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Taf.v20200210.models.ManagePortraitRiskInput`

        attr_accessor :BusinessSecurityData

        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = ManagePortraitRiskInput.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
        end
      end

      # ManagePortraitRisk返回参数结构体
      class ManagePortraitRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.ManagePortraitRiskOutput`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ManagePortraitRiskOutput.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 业务出参
      class ManagePortraitRiskValueOutput < TencentCloud::Common::AbstractModel
        # @param UserIp: 对应的IP
        # @type UserIp: String
        # @param Level: 返回风险等级, 0 - 4，0代表无风险，数值越大，风险越高
        # @type Level: Integer

        attr_accessor :UserIp, :Level

        def initialize(userip=nil, level=nil)
          @UserIp = userip
          @Level = level
        end

        def deserialize(params)
          @UserIp = params['UserIp']
          @Level = params['Level']
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
        # @param ModelType: 模型类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelType: Integer
        # @param Uid: 入参Uid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uid: String

        attr_accessor :ModelId, :IsFound, :Score, :ModelType, :Uid

        def initialize(modelid=nil, isfound=nil, score=nil, modeltype=nil, uid=nil)
          @ModelId = modelid
          @IsFound = isfound
          @Score = score
          @ModelType = modeltype
          @Uid = uid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @IsFound = params['IsFound']
          @Score = params['Score']
          @ModelType = params['ModelType']
          @Uid = params['Uid']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param BusinessEncryptData: 业务加密数据
        # @type BusinessEncryptData: :class:`Tencentcloud::Taf.v20200210.models.InputBusinessEncryptData`

        attr_accessor :BspData, :BusinessEncryptData

        def initialize(bspdata=nil, businessencryptdata=nil)
          @BspData = bspdata
          @BusinessEncryptData = businessencryptdata
        end

        def deserialize(params)
          unless params['BspData'].nil?
            @BspData = InputRecognizeTargetAudience.new
            @BspData.deserialize(params['BspData'])
          end
          unless params['BusinessEncryptData'].nil?
            @BusinessEncryptData = InputBusinessEncryptData.new
            @BusinessEncryptData.deserialize(params['BusinessEncryptData'])
          end
        end
      end

      # RecognizeTargetAudience返回参数结构体
      class RecognizeTargetAudienceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 回包数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Taf.v20200210.models.OutputRecognizeTargetAudience`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

