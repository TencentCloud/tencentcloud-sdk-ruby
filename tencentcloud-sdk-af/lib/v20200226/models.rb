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
  module Af
    module V20200226
      # DescribeAntiFraud请求参数结构体
      class DescribeAntiFraudRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 原始业务入参(二选一）
        # @type BusinessSecurityData: :class:`Tencentcloud::Af.v20200226.models.FinanceAntiFraudFilter`
        # @param BusinessCryptoData: 密文业务入参(二选一）
        # @type BusinessCryptoData: :class:`Tencentcloud::Af.v20200226.models.FinanceAntiFraudCryptoFilter`

        attr_accessor :BusinessSecurityData, :BusinessCryptoData
        
        def initialize(businesssecuritydata=nil, businesscryptodata=nil)
          @BusinessSecurityData = businesssecuritydata
          @BusinessCryptoData = businesscryptodata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = FinanceAntiFraudFilter.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
          unless params['BusinessCryptoData'].nil?
            @BusinessCryptoData = FinanceAntiFraudCryptoFilter.new
            @BusinessCryptoData.deserialize(params['BusinessCryptoData'])
          end
        end
      end

      # DescribeAntiFraud返回参数结构体
      class DescribeAntiFraudResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Af.v20200226.models.FinanceAntiFraudRecord`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FinanceAntiFraudRecord.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 借贷反欺诈密文业务入参
      class FinanceAntiFraudCryptoFilter < TencentCloud::Common::AbstractModel
        # @param CryptoType: 值1定义：AES加密方式[加密模式ECB；填充格式pkcs7padding；秘钥16字节即128位
        # @type CryptoType: String
        # @param CryptoContent: 业务字段BusinessSecurityData的json数据格式，采用CryptoType相应的加密方式计算后得到的bash64编码内容。比如对{"PhoneNumber":"13430420001","IdNumber":"420115199501010001","BankCardNumber":"6214000100010001"}包体做加密。
        # @type CryptoContent: String

        attr_accessor :CryptoType, :CryptoContent
        
        def initialize(cryptotype=nil, cryptocontent=nil)
          @CryptoType = cryptotype
          @CryptoContent = cryptocontent
        end

        def deserialize(params)
          @CryptoType = params['CryptoType']
          @CryptoContent = params['CryptoContent']
        end
      end

      # 借贷反欺诈原始业务入参
      class FinanceAntiFraudFilter < TencentCloud::Common::AbstractModel
        # @param PhoneNumber: 电话号码(五选二)
        # @type PhoneNumber: String
        # @param IdNumber: 身份证Id(五选二) 参数详细定义请加微信：TYXGJ-01
        # @type IdNumber: String
        # @param BankCardNumber: 银行卡号(五选二)
        # @type BankCardNumber: String
        # @param UserIp: 用户请求来源 IP(五选二)
        # @type UserIp: String
        # @param Imei: 国际移动设备识别码(五选二)
        # @type Imei: String
        # @param Idfa: ios 系统广告标示符(五选二)
        # @type Idfa: String
        # @param Scene: 业务场景ID，需要找技术对接
        # @type Scene: String
        # @param Name: 姓名
        # @type Name: String
        # @param EmailAddress: 用户邮箱地址
        # @type EmailAddress: String
        # @param Address: 用户住址
        # @type Address: String
        # @param Mac: MAC 地址
        # @type Mac: String
        # @param Imsi: 国际移动用户识别码
        # @type Imsi: String
        # @param AccountType: 1：关联的腾讯帐号QQ；2：开放帐号微信
        # @type AccountType: String
        # @param Uid: 可选的 QQ 或微信 openid
        # @type Uid: String
        # @param AppIdU: qq 或微信分配给网站或应用的 appid，用来唯一标识网站或应用
        # @type AppIdU: String
        # @param WifiMac: WIFI MAC
        # @type WifiMac: String
        # @param WifiSSID: WIFI 服务集标识
        # @type WifiSSID: String
        # @param WifiBSSID: WIFI-BSSID
        # @type WifiBSSID: String
        # @param BusinessId: 业务 ID，在多个业务中使用此服务，通过此ID 区分统计数据
        # @type BusinessId: String
        # @param PhoneCryptoType: 手机号加密类型 0：不加密（默认值）；1：md5；2：sha256；3：SM3
        # @type PhoneCryptoType: String
        # @param IdCryptoType: 身份证Id加密类型 0：不加密（默认值）；1：md5；2：sha256；3：SM3
        # @type IdCryptoType: String
        # @param NameCryptoType: 姓名加密类型 0：不加密（默认值）；1：md5；2：sha256；3：SM3
        # @type NameCryptoType: String

        attr_accessor :PhoneNumber, :IdNumber, :BankCardNumber, :UserIp, :Imei, :Idfa, :Scene, :Name, :EmailAddress, :Address, :Mac, :Imsi, :AccountType, :Uid, :AppIdU, :WifiMac, :WifiSSID, :WifiBSSID, :BusinessId, :PhoneCryptoType, :IdCryptoType, :NameCryptoType
        
        def initialize(phonenumber=nil, idnumber=nil, bankcardnumber=nil, userip=nil, imei=nil, idfa=nil, scene=nil, name=nil, emailaddress=nil, address=nil, mac=nil, imsi=nil, accounttype=nil, uid=nil, appidu=nil, wifimac=nil, wifissid=nil, wifibssid=nil, businessid=nil, phonecryptotype=nil, idcryptotype=nil, namecryptotype=nil)
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
          @Mac = mac
          @Imsi = imsi
          @AccountType = accounttype
          @Uid = uid
          @AppIdU = appidu
          @WifiMac = wifimac
          @WifiSSID = wifissid
          @WifiBSSID = wifibssid
          @BusinessId = businessid
          @PhoneCryptoType = phonecryptotype
          @IdCryptoType = idcryptotype
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
          @Mac = params['Mac']
          @Imsi = params['Imsi']
          @AccountType = params['AccountType']
          @Uid = params['Uid']
          @AppIdU = params['AppIdU']
          @WifiMac = params['WifiMac']
          @WifiSSID = params['WifiSSID']
          @WifiBSSID = params['WifiBSSID']
          @BusinessId = params['BusinessId']
          @PhoneCryptoType = params['PhoneCryptoType']
          @IdCryptoType = params['IdCryptoType']
          @NameCryptoType = params['NameCryptoType']
        end
      end

      # 借贷反欺查询返回结果出参
      class FinanceAntiFraudRecord < TencentCloud::Common::AbstractModel
        # @param Found: 表示该条记录能否查到：1为能查到，-1为查不到
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Found: String
        # @param IdFound: 表示该条Id能否查到：1为能查到，-1为查不到
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdFound: String
        # @param RiskScore: 评分0~100;值越高 欺诈可能性越大
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskScore: String
        # @param RiskInfo: 扩展字段，对风险类型的说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskInfo: Array
        # @param OtherModelScores: 多模型返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherModelScores: Array
        # @param Code: 业务侧错误码。成功时返回0，错误时返回非0值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Message: 业务侧错误信息。成功时返回Success，错误时返回具体业务错误原因。
        # 注意：此字段可能返回 null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Found, :IdFound, :RiskScore, :RiskInfo, :OtherModelScores, :Code, :Message
        
        def initialize(found=nil, idfound=nil, riskscore=nil, riskinfo=nil, othermodelscores=nil, code=nil, message=nil)
          @Found = found
          @IdFound = idfound
          @RiskScore = riskscore
          @RiskInfo = riskinfo
          @OtherModelScores = othermodelscores
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Found = params['Found']
          @IdFound = params['IdFound']
          @RiskScore = params['RiskScore']
          unless params['RiskInfo'].nil?
            @RiskInfo = []
            params['RiskInfo'].each do |i|
              riskdetailinfo_tmp = RiskDetailInfo.new
              riskdetailinfo_tmp.deserialize(i)
              @RiskInfo << riskdetailinfo_tmp
            end
          end
          unless params['OtherModelScores'].nil?
            @OtherModelScores = []
            params['OtherModelScores'].each do |i|
              financeothermodelscores_tmp = FinanceOtherModelScores.new
              financeothermodelscores_tmp.deserialize(i)
              @OtherModelScores << financeothermodelscores_tmp
            end
          end
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 借贷反欺返回结果出参中的多模型返回结果
      class FinanceOtherModelScores < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelScore: 模型ID序号对应的评分结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelScore: String

        attr_accessor :ModelId, :ModelScore
        
        def initialize(modelid=nil, modelscore=nil)
          @ModelId = modelid
          @ModelScore = modelscore
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ModelScore = params['ModelScore']
        end
      end

      # QueryAntiFraud请求参数结构体
      class QueryAntiFraudRequest < TencentCloud::Common::AbstractModel
        # @param PhoneNumber: 电话号码(五选二)
        # @type PhoneNumber: String
        # @param IdNumber: Id(五选二)
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
        # @param Mac: MAC 地址
        # @type Mac: String
        # @param Imsi: 国际移动用户识别码
        # @type Imsi: String
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
        # @param NameCryptoType: 姓名加密类型
        # 0：不加密（默认值）
        # 1：md5
        # 2：sha256
        # 3：SM3
        # @type NameCryptoType: String

        attr_accessor :PhoneNumber, :IdNumber, :BankCardNumber, :UserIp, :Imei, :Idfa, :Scene, :Name, :EmailAddress, :Address, :Mac, :Imsi, :AccountType, :Uid, :AppIdU, :WifiMac, :WifiSSID, :WifiBSSID, :BusinessId, :IdCryptoType, :PhoneCryptoType, :NameCryptoType
        
        def initialize(phonenumber=nil, idnumber=nil, bankcardnumber=nil, userip=nil, imei=nil, idfa=nil, scene=nil, name=nil, emailaddress=nil, address=nil, mac=nil, imsi=nil, accounttype=nil, uid=nil, appidu=nil, wifimac=nil, wifissid=nil, wifibssid=nil, businessid=nil, idcryptotype=nil, phonecryptotype=nil, namecryptotype=nil)
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
          @Mac = mac
          @Imsi = imsi
          @AccountType = accounttype
          @Uid = uid
          @AppIdU = appidu
          @WifiMac = wifimac
          @WifiSSID = wifissid
          @WifiBSSID = wifibssid
          @BusinessId = businessid
          @IdCryptoType = idcryptotype
          @PhoneCryptoType = phonecryptotype
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
          @Mac = params['Mac']
          @Imsi = params['Imsi']
          @AccountType = params['AccountType']
          @Uid = params['Uid']
          @AppIdU = params['AppIdU']
          @WifiMac = params['WifiMac']
          @WifiSSID = params['WifiSSID']
          @WifiBSSID = params['WifiBSSID']
          @BusinessId = params['BusinessId']
          @IdCryptoType = params['IdCryptoType']
          @PhoneCryptoType = params['PhoneCryptoType']
          @NameCryptoType = params['NameCryptoType']
        end
      end

      # QueryAntiFraud返回参数结构体
      class QueryAntiFraudResponse < TencentCloud::Common::AbstractModel
        # @param Found: 表示该条记录能否查到：1为能查到，-1为查不到
        # @type Found: Integer
        # @param IdFound: 表示该条Id能否查到：1为能查到，-1为查不到
        # @type IdFound: Integer
        # @param RiskScore: 0~100;值越高 欺诈可能性越大
        # @type RiskScore: Integer
        # @param RiskInfo: 扩展字段，对风险类型的说明
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
              riskdetail_tmp = RiskDetail.new
              riskdetail_tmp.deserialize(i)
              @RiskInfo << riskdetail_tmp
            end
          end
          @CodeDesc = params['CodeDesc']
          @RequestId = params['RequestId']
        end
      end

      # 扩展字段，对风险类型的说明
      class RiskDetail < TencentCloud::Common::AbstractModel
        # @param RiskCode: 风险码 参数详细定义请加微信：TYXGJ-01
        # @type RiskCode: Integer

        attr_accessor :RiskCode
        
        def initialize(riskcode=nil)
          @RiskCode = riskcode
        end

        def deserialize(params)
          @RiskCode = params['RiskCode']
        end
      end

      # 金融借贷反欺诈 风险码输出类型
      class RiskDetailInfo < TencentCloud::Common::AbstractModel
        # @param RiskCode: 风险码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCode: String
        # @param RiskValue: 风险码对应的风险值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskValue: String

        attr_accessor :RiskCode, :RiskValue
        
        def initialize(riskcode=nil, riskvalue=nil)
          @RiskCode = riskcode
          @RiskValue = riskvalue
        end

        def deserialize(params)
          @RiskCode = params['RiskCode']
          @RiskValue = params['RiskValue']
        end
      end

    end
  end
end

