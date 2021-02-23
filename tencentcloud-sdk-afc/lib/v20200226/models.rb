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
  module Afc
    module V20200226
      # QueryAntiFraudVip请求参数结构体
      class QueryAntiFraudVipRequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumber: 电话号码(五选二)
        # @type PhoneNumber: String
        # @param IdNumber: Id号(五选二)
        # @type IdNumber: String
        # @param BankCardNumber: 银行卡号(五选二)
        # @type BankCardNumber: String
        # @param UserIp: 用户请求来源 IP(五选二)
        # @type UserIp: String
        # @param Imei: 国际移动设备识别码(五选二)
        # @type Imei: String
        # @param Idfa: ios 系统广告标示符(五选二)
        # @type Idfa: String
        # @param Scene: 业务场景 ID，需要找技术对接
        # @type Scene: String
        # @param Name: 姓名
        # @type Name: String
        # @param EmailAddress: 用户邮箱地址
        # @type EmailAddress: String
        # @param Address: 用户住址
        # @type Address: String
        # @param AccountType: 关联的腾讯帐号 QQ：1；
        # 开放帐号微信： 2；
        # @type AccountType: String
        # @param Uid: 可选的 QQ 或微信 openid
        # @type Uid: String
        # @param AppIdU: qq 或微信分配给网站或应用的 appid，用来
        # 唯一标识网站或应用
        # @type AppIdU: String
        # @param WifiMac: WIFI MAC
        # @type WifiMac: String
        # @param WifiSSID: WIFI 服务集标识
        # @type WifiSSID: String
        # @param WifiBSSID: WIFI-BSSID
        # @type WifiBSSID: String
        # @param BusinessId: 业务 ID，在多个业务中使用此服务，通过此
        # ID 区分统计数据
        # @type BusinessId: String
        # @param IdCryptoType: Id加密类型
        # 0：不加密（默认值）
        # 1：md5
        # 2：sha256
        # 3：SM3
        # @type IdCryptoType: String
        # @param PhoneCryptoType: 手机号加密类型
        # 0：不加密（默认值）
        # 1：md5, 2：sha256
        # 3：SM3
        # @type PhoneCryptoType: String
        # @param Mac: MAC 地址
        # @type Mac: String
        # @param Imsi: 国际移动用户识别码
        # @type Imsi: String
        # @param NameCryptoType: 姓名加密类型
        # 0：不加密（默认值）
        # 1：md5
        # 2：sha256
        # 3：SM3
        # @type NameCryptoType: String

        attr_accessor :PhoneNumber, :IdNumber, :BankCardNumber, :UserIp, :Imei, :Idfa, :Scene, :Name, :EmailAddress, :Address, :AccountType, :Uid, :AppIdU, :WifiMac, :WifiSSID, :WifiBSSID, :BusinessId, :IdCryptoType, :PhoneCryptoType, :Mac, :Imsi, :NameCryptoType
        
        def initialize(phonenumber=nil, idnumber=nil, bankcardnumber=nil, userip=nil, imei=nil, idfa=nil, scene=nil, name=nil, emailaddress=nil, address=nil, accounttype=nil, uid=nil, appidu=nil, wifimac=nil, wifissid=nil, wifibssid=nil, businessid=nil, idcryptotype=nil, phonecryptotype=nil, mac=nil, imsi=nil, namecryptotype=nil)
          @PhoneNumber = phonenumber
          @IdNumber = idnumber
          @BankCardNumber = bankcardnumber
          @UserIp = userip
          @Imei = imei
          @Idfa = idfa
          @Scene = scene
          @Name = name
          @EmailAddress = emailaddress
          @Address = address
          @AccountType = accounttype
          @Uid = uid
          @AppIdU = appidu
          @WifiMac = wifimac
          @WifiSSID = wifissid
          @WifiBSSID = wifibssid
          @BusinessId = businessid
          @IdCryptoType = idcryptotype
          @PhoneCryptoType = phonecryptotype
          @Mac = mac
          @Imsi = imsi
          @NameCryptoType = namecryptotype
        end

        def deserialize(params)
          @PhoneNumber = params['PhoneNumber']
          @IdNumber = params['IdNumber']
          @BankCardNumber = params['BankCardNumber']
          @UserIp = params['UserIp']
          @Imei = params['Imei']
          @Idfa = params['Idfa']
          @Scene = params['Scene']
          @Name = params['Name']
          @EmailAddress = params['EmailAddress']
          @Address = params['Address']
          @AccountType = params['AccountType']
          @Uid = params['Uid']
          @AppIdU = params['AppIdU']
          @WifiMac = params['WifiMac']
          @WifiSSID = params['WifiSSID']
          @WifiBSSID = params['WifiBSSID']
          @BusinessId = params['BusinessId']
          @IdCryptoType = params['IdCryptoType']
          @PhoneCryptoType = params['PhoneCryptoType']
          @Mac = params['Mac']
          @Imsi = params['Imsi']
          @NameCryptoType = params['NameCryptoType']
        end
      end

      # QueryAntiFraudVip返回参数结构体
      class QueryAntiFraudVipResponse < TencentCloud::Common::AbstractModel
        # @param Found: 表示该条记录能否查到：1为能查到，-1为查不到
        # @type Found: Integer
        # @param IdFound: 表示该条Id能否查到：1为能查到，-1为查不到
        # @type IdFound: Integer
        # @param RiskScore: 0~100;值越高 欺诈可能性越大
        # @type RiskScore: Integer
        # @param RiskInfo: 扩展字段，对风险类型的说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskInfo: Array
        # @param CodeDesc: 业务侧错误码。成功时返回Success，错误时返回具体业务错误原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeDesc: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Found, :IdFound, :RiskScore, :RiskInfo, :CodeDesc, :RequestId
        
        def initialize(found=nil, idfound=nil, riskscore=nil, riskinfo=nil, codedesc=nil, requestid=nil)
          @Found = found
          @IdFound = idfound
          @RiskScore = riskscore
          @RiskInfo = riskinfo
          @CodeDesc = codedesc
          @RequestId = requestid
        end

        def deserialize(params)
          @Found = params['Found']
          @IdFound = params['IdFound']
          @RiskScore = params['RiskScore']
          unless params['RiskInfo'].nil?
            @RiskInfo = []
            params['RiskInfo'].each do |i|
              @RiskInfo << RiskDetail.new.deserialize(i)
            end
          end
          @CodeDesc = params['CodeDesc']
          @RequestId = params['RequestId']
        end
      end

      # 扩展字段，对风险类型的说明
      class RiskDetail < TencentCloud::Common::AbstractModel
        # @param RiskCode: 风险码
        # @type RiskCode: Integer

        attr_accessor :RiskCode
        
        def initialize(riskcode=nil)
          @RiskCode = riskcode
        end

        def deserialize(params)
          @RiskCode = params['RiskCode']
        end
      end

    end
  end
end

