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
  module Rkp
    module V20191209
      # 设备信息
      class DevInfoQ < TencentCloud::Common::AbstractModel
        # @param OpenId: devid
        # @type OpenId: String
        # @param RiskScore: 风险值
        # @type RiskScore: Integer
        # @param RiskInfo: 风险详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskInfo: Array
        # @param Probability: 概率值
        # @type Probability: Float

        attr_accessor :OpenId, :RiskScore, :RiskInfo, :Probability
        
        def initialize(openid=nil, riskscore=nil, riskinfo=nil, probability=nil)
          @OpenId = openid
          @RiskScore = riskscore
          @RiskInfo = riskinfo
          @Probability = probability
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @RiskScore = params['RiskScore']
          @RiskInfo = params['RiskInfo']
          @Probability = params['Probability']
        end
      end

      # GetOpenId请求参数结构体
      class GetOpenIdRequest < TencentCloud::Common::AbstractModel
        # @param DeviceToken: dev临时token，通过sdk接口获取
        # @type DeviceToken: String
        # @param BusinessId: 业务ID
        # @type BusinessId: Integer
        # @param BusinessUserId: 业务侧账号体系下的用户ID
        # @type BusinessUserId: String
        # @param Platform: 平台：0-Android， 1-iOS， 2-web
        # @type Platform: Integer
        # @param Option: 选项
        # @type Option: String

        attr_accessor :DeviceToken, :BusinessId, :BusinessUserId, :Platform, :Option
        
        def initialize(devicetoken=nil, businessid=nil, businessuserid=nil, platform=nil, option=nil)
          @DeviceToken = devicetoken
          @BusinessId = businessid
          @BusinessUserId = businessuserid
          @Platform = platform
          @Option = option
        end

        def deserialize(params)
          @DeviceToken = params['DeviceToken']
          @BusinessId = params['BusinessId']
          @BusinessUserId = params['BusinessUserId']
          @Platform = params['Platform']
          @Option = params['Option']
        end
      end

      # GetOpenId返回参数结构体
      class GetOpenIdResponse < TencentCloud::Common::AbstractModel
        # @param OpenId: 设备ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param RiskInfo: 设备风险
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OpenId, :RiskInfo, :RequestId
        
        def initialize(openid=nil, riskinfo=nil, requestid=nil)
          @OpenId = openid
          @RiskInfo = riskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @RiskInfo = params['RiskInfo']
          @RequestId = params['RequestId']
        end
      end

      # GetToken请求参数结构体
      class GetTokenRequest < TencentCloud::Common::AbstractModel
        # @param BusinessId: 业务ID
        # @type BusinessId: Integer
        # @param Scene: 业务子场景
        # @type Scene: Integer
        # @param BusinessUserId: 业务侧账号体系下的用户ID
        # @type BusinessUserId: String
        # @param AppClientIp: 用户侧的IP
        # @type AppClientIp: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: Integer
        # @param OldToken: 上一个token
        # @type OldToken: String

        attr_accessor :BusinessId, :Scene, :BusinessUserId, :AppClientIp, :ExpireTime, :OldToken
        
        def initialize(businessid=nil, scene=nil, businessuserid=nil, appclientip=nil, expiretime=nil, oldtoken=nil)
          @BusinessId = businessid
          @Scene = scene
          @BusinessUserId = businessuserid
          @AppClientIp = appclientip
          @ExpireTime = expiretime
          @OldToken = oldtoken
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
          @Scene = params['Scene']
          @BusinessUserId = params['BusinessUserId']
          @AppClientIp = params['AppClientIp']
          @ExpireTime = params['ExpireTime']
          @OldToken = params['OldToken']
        end
      end

      # GetToken返回参数结构体
      class GetTokenResponse < TencentCloud::Common::AbstractModel
        # @param Token: 返回token
        # @type Token: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :ExpireTime, :RequestId
        
        def initialize(token=nil, expiretime=nil, requestid=nil)
          @Token = token
          @ExpireTime = expiretime
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @ExpireTime = params['ExpireTime']
          @RequestId = params['RequestId']
        end
      end

      # QueryDevAndRisk请求参数结构体
      class QueryDevAndRiskRequest < TencentCloud::Common::AbstractModel
        # @param DevType: 设备类型 0表示Android， 1表示IOS
        # @type DevType: Integer
        # @param Imei: Android Imei号
        # @type Imei: String
        # @param Mac: Mac地址
        # @type Mac: String
        # @param Aid: android  Aid
        # @type Aid: String
        # @param Cid: Android Cid
        # @type Cid: String
        # @param Imsi: 手机Imsi
        # @type Imsi: String
        # @param Df: Df 磁盘分区信息
        # @type Df: String
        # @param KernelVer: 内核版本
        # @type KernelVer: String
        # @param Storage: 存储大小
        # @type Storage: String
        # @param Dfp: 设备驱动指纹
        # @type Dfp: String
        # @param BootTime: 启动时间
        # @type BootTime: String
        # @param Resolution: 分辨率 水平*垂直 格式
        # @type Resolution: String
        # @param RingList: 铃声列表
        # @type RingList: String
        # @param FontList: 字体列表
        # @type FontList: String
        # @param SensorList: 传感器列表
        # @type SensorList: String
        # @param CpuType: CPU型号
        # @type CpuType: String
        # @param Battery: 电池容量
        # @type Battery: String
        # @param Oaid: 信通院广告ID
        # @type Oaid: String
        # @param Idfa: IOS 广告ID
        # @type Idfa: String
        # @param Idfv: IOS 应用ID
        # @type Idfv: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param IphoneModel: IOS手机型号
        # @type IphoneModel: String
        # @param Fingerprint: Android 指纹
        # @type Fingerprint: String
        # @param SerialId: Android序列号
        # @type SerialId: String

        attr_accessor :DevType, :Imei, :Mac, :Aid, :Cid, :Imsi, :Df, :KernelVer, :Storage, :Dfp, :BootTime, :Resolution, :RingList, :FontList, :SensorList, :CpuType, :Battery, :Oaid, :Idfa, :Idfv, :DeviceName, :IphoneModel, :Fingerprint, :SerialId
        
        def initialize(devtype=nil, imei=nil, mac=nil, aid=nil, cid=nil, imsi=nil, df=nil, kernelver=nil, storage=nil, dfp=nil, boottime=nil, resolution=nil, ringlist=nil, fontlist=nil, sensorlist=nil, cputype=nil, battery=nil, oaid=nil, idfa=nil, idfv=nil, devicename=nil, iphonemodel=nil, fingerprint=nil, serialid=nil)
          @DevType = devtype
          @Imei = imei
          @Mac = mac
          @Aid = aid
          @Cid = cid
          @Imsi = imsi
          @Df = df
          @KernelVer = kernelver
          @Storage = storage
          @Dfp = dfp
          @BootTime = boottime
          @Resolution = resolution
          @RingList = ringlist
          @FontList = fontlist
          @SensorList = sensorlist
          @CpuType = cputype
          @Battery = battery
          @Oaid = oaid
          @Idfa = idfa
          @Idfv = idfv
          @DeviceName = devicename
          @IphoneModel = iphonemodel
          @Fingerprint = fingerprint
          @SerialId = serialid
        end

        def deserialize(params)
          @DevType = params['DevType']
          @Imei = params['Imei']
          @Mac = params['Mac']
          @Aid = params['Aid']
          @Cid = params['Cid']
          @Imsi = params['Imsi']
          @Df = params['Df']
          @KernelVer = params['KernelVer']
          @Storage = params['Storage']
          @Dfp = params['Dfp']
          @BootTime = params['BootTime']
          @Resolution = params['Resolution']
          @RingList = params['RingList']
          @FontList = params['FontList']
          @SensorList = params['SensorList']
          @CpuType = params['CpuType']
          @Battery = params['Battery']
          @Oaid = params['Oaid']
          @Idfa = params['Idfa']
          @Idfv = params['Idfv']
          @DeviceName = params['DeviceName']
          @IphoneModel = params['IphoneModel']
          @Fingerprint = params['Fingerprint']
          @SerialId = params['SerialId']
        end
      end

      # QueryDevAndRisk返回参数结构体
      class QueryDevAndRiskResponse < TencentCloud::Common::AbstractModel
        # @param Found: 是否查得
        # @type Found: Integer
        # @param AllCnt: 匹配数量级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllCnt: Integer
        # @param Matches: 匹配到的设备信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Matches: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Found, :AllCnt, :Matches, :RequestId
        
        def initialize(found=nil, allcnt=nil, matches=nil, requestid=nil)
          @Found = found
          @AllCnt = allcnt
          @Matches = matches
          @RequestId = requestid
        end

        def deserialize(params)
          @Found = params['Found']
          @AllCnt = params['AllCnt']
          @Matches = params['Matches']
          @RequestId = params['RequestId']
        end
      end

      # 风险详情
      class RiskDetail < TencentCloud::Common::AbstractModel
        # @param RiskCode: 风险码
        # @type RiskCode: Integer
        # @param RiskCodeValue: 风险详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCodeValue: String

        attr_accessor :RiskCode, :RiskCodeValue
        
        def initialize(riskcode=nil, riskcodevalue=nil)
          @RiskCode = riskcode
          @RiskCodeValue = riskcodevalue
        end

        def deserialize(params)
          @RiskCode = params['RiskCode']
          @RiskCodeValue = params['RiskCodeValue']
        end
      end

      # 风险信息
      class RiskInfo < TencentCloud::Common::AbstractModel
        # @param Key: 风险码
        # @type Key: Integer
        # @param Value: 风险详情
        # 注意：此字段可能返回 null，表示取不到有效值。
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

    end
  end
end

