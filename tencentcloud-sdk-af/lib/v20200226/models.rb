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
      # AntiFraudCryptoFilter – 业务入参
      class AntiFraudCryptoFilter < TencentCloud::Common::AbstractModel
        # @param CryptoType: 约定用入参，默认不涉及默认BusinessSecurityData 与BusinessCrptoData 不传
        # @type CryptoType: String
        # @param CryptoContent: 约定用入参，默认不涉及
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

      # AntiFraudFilter – 业务入参
      class AntiFraudFilter < TencentCloud::Common::AbstractModel
        # @param CustomerUin: 业务方账号 ID
        # @type CustomerUin: String
        # @param CustomerAppid: 业务方APPID
        # @type CustomerAppid: String
        # @param IdNumber: 身份证号
        # 注 1：下方 idCryptoType 为指定
        # 加密方式
        # 注 2：若 idNumber 加密则必传加
        # 密方式
        # @type IdNumber: String
        # @param PhoneNumber: 手机号码（注：不需要带国家代码
        # 例如：13430421011）
        # 注 1：下方 phoneCryptoType 为
        # 指定加密方式:
        # 注 2：若 phoneNumber 加密则必
        # 传加密方式
        # @type PhoneNumber: String
        # @param Scene: 业务场景 ID
        # @type Scene: String
        # @param CustomerSubUin: 默认不使用，业务方子
        # 账号，若接口使用密钥对应是子账
        # 号则必填
        # @type CustomerSubUin: String
        # @param Authorization: 已获取约定标识则传 1；
        # 用于基于特定需求而传的标识字段
        # 注：有约定则是必传，若未传则查
        # 询接口失败
        # @type Authorization: String
        # @param Name: 姓名
        # 注 ：不支持加密
        # @type Name: String
        # @param BankCardNumber: 银行卡号
        # @type BankCardNumber: String
        # @param UserIp: 用户请求来源 IP
        # @type UserIp: String
        # @param Imei: 国际移动设备识别码
        # @type Imei: String
        # @param Idfa: ios 系统广告标示符
        # @type Idfa: String
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
        # @param AppIdU: qq 或微信分配给网站或应用的
        # appid，用来唯一标识网站或应用
        # @type AppIdU: String
        # @param WifiMac: ＷＩＦＩＭＡＣ
        # @type WifiMac: String
        # @param WifiSSID: WIFI 服务集标识
        # @type WifiSSID: String
        # @param WifiBSSID: WIFI-BSSID
        # @type WifiBSSID: String
        # @param ExtensionId: 拓展字段类型 ID
        # 注：默认不填写，需要时天御侧将
        # 提供
        # @type ExtensionId: String
        # @param ExtensionIn: 拓展字段内容
        # 注：默认不填，需要时天御侧将提
        # 供
        # @type ExtensionIn: String
        # @param BusinessId: 业务 ID，默认不传
        # @type BusinessId: String
        # @param IdCryptoType: 身份证加密类型
        # 0：不加密（默认值）
        # 1：md5
        # 2：sha256
        # 3：SM3
        # 注：若 idNumber 加密则必传加密
        # 方式
        # @type IdCryptoType: String
        # @param PhoneCryptoType: 手机号加密类型
        # 0：不加密（默认值）
        # 1：md5,
        # 2：sha256
        # 3：SM3
        # 注：若 phoneNumber 加密则必传
        # 加密方式
        # @type PhoneCryptoType: String
        # @param NameCryptoType: 姓名加密类型：——注：已经不支持加
        # 密，该字段存在是为了兼容可能历史客户
        # 版本；
        # 0：不加密（默认值）
        # 1：md5
        # @type NameCryptoType: String
        # @param OldResponseType: 是否使用旧回包
        # @type OldResponseType: String

        attr_accessor :CustomerUin, :CustomerAppid, :IdNumber, :PhoneNumber, :Scene, :CustomerSubUin, :Authorization, :Name, :BankCardNumber, :UserIp, :Imei, :Idfa, :EmailAddress, :Address, :Mac, :Imsi, :AccountType, :Uid, :AppIdU, :WifiMac, :WifiSSID, :WifiBSSID, :ExtensionId, :ExtensionIn, :BusinessId, :IdCryptoType, :PhoneCryptoType, :NameCryptoType, :OldResponseType
        
        def initialize(customeruin=nil, customerappid=nil, idnumber=nil, phonenumber=nil, scene=nil, customersubuin=nil, authorization=nil, name=nil, bankcardnumber=nil, userip=nil, imei=nil, idfa=nil, emailaddress=nil, address=nil, mac=nil, imsi=nil, accounttype=nil, uid=nil, appidu=nil, wifimac=nil, wifissid=nil, wifibssid=nil, extensionid=nil, extensionin=nil, businessid=nil, idcryptotype=nil, phonecryptotype=nil, namecryptotype=nil, oldresponsetype=nil)
          @CustomerUin = customeruin
          @CustomerAppid = customerappid
          @IdNumber = idnumber
          @PhoneNumber = phonenumber
          @Scene = scene
          @CustomerSubUin = customersubuin
          @Authorization = authorization
          @Name = name
          @BankCardNumber = bankcardnumber
          @UserIp = userip
          @Imei = imei
          @Idfa = idfa
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
          @ExtensionId = extensionid
          @ExtensionIn = extensionin
          @BusinessId = businessid
          @IdCryptoType = idcryptotype
          @PhoneCryptoType = phonecryptotype
          @NameCryptoType = namecryptotype
          @OldResponseType = oldresponsetype
        end

        def deserialize(params)
          @CustomerUin = params['CustomerUin']
          @CustomerAppid = params['CustomerAppid']
          @IdNumber = params['IdNumber']
          @PhoneNumber = params['PhoneNumber']
          @Scene = params['Scene']
          @CustomerSubUin = params['CustomerSubUin']
          @Authorization = params['Authorization']
          @Name = params['Name']
          @BankCardNumber = params['BankCardNumber']
          @UserIp = params['UserIp']
          @Imei = params['Imei']
          @Idfa = params['Idfa']
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
          @ExtensionId = params['ExtensionId']
          @ExtensionIn = params['ExtensionIn']
          @BusinessId = params['BusinessId']
          @IdCryptoType = params['IdCryptoType']
          @PhoneCryptoType = params['PhoneCryptoType']
          @NameCryptoType = params['NameCryptoType']
          @OldResponseType = params['OldResponseType']
        end
      end

      # 反欺诈查询结果
      class AntiFraudRecord < TencentCloud::Common::AbstractModel
        # @param Code: 公共错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param CodeDesc: 业务侧错误码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeDesc: String
        # @param Message: 业务侧错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Found: 表示该条记录能否查到：1 为能查到；-1 为查不到，此时 RiskScore 返回-1；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Found: String
        # @param IdFound: 表示该条记录中的身份 ID 能否查到
        # 1 为能查到
        # -1 为查不到
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdFound: String
        # @param RiskScore: 当可查到时，返回 0~100 区间，值越高 欺诈可
        # 能性越大。
        # 当查不到时（即 found=-1），返回-1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskScore: String
        # @param RiskInfo: 扩展字段，对风险类型的说明。扩展字段并非必
        # 然出现。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskInfo: Array
        # @param OtherModelScores: 默认出现，提供模型版本号说明及多模型返回需
        # 要时用到；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherModelScores: Array
        # @param PostTime: 表示请求时间，标准 sunix 时间戳，非必然出现
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostTime: String
        # @param ExtensionOut: 拓展字段，非必然出现，和 ExtensionIn 对应；
        # 注：非必然出现，需要返回时天御侧将说明；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtensionOut: String

        attr_accessor :Code, :CodeDesc, :Message, :Found, :IdFound, :RiskScore, :RiskInfo, :OtherModelScores, :PostTime, :ExtensionOut
        
        def initialize(code=nil, codedesc=nil, message=nil, found=nil, idfound=nil, riskscore=nil, riskinfo=nil, othermodelscores=nil, posttime=nil, extensionout=nil)
          @Code = code
          @CodeDesc = codedesc
          @Message = message
          @Found = found
          @IdFound = idfound
          @RiskScore = riskscore
          @RiskInfo = riskinfo
          @OtherModelScores = othermodelscores
          @PostTime = posttime
          @ExtensionOut = extensionout
        end

        def deserialize(params)
          @Code = params['Code']
          @CodeDesc = params['CodeDesc']
          @Message = params['Message']
          @Found = params['Found']
          @IdFound = params['IdFound']
          @RiskScore = params['RiskScore']
          unless params['RiskInfo'].nil?
            @RiskInfo = []
            params['RiskInfo'].each do |i|
              simplekindriskdetail_tmp = SimpleKindRiskDetail.new
              simplekindriskdetail_tmp.deserialize(i)
              @RiskInfo << simplekindriskdetail_tmp
            end
          end
          unless params['OtherModelScores'].nil?
            @OtherModelScores = []
            params['OtherModelScores'].each do |i|
              othermodelscoresdetail_tmp = OtherModelScoresDetail.new
              othermodelscoresdetail_tmp.deserialize(i)
              @OtherModelScores << othermodelscoresdetail_tmp
            end
          end
          @PostTime = params['PostTime']
          @ExtensionOut = params['ExtensionOut']
        end
      end

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

      # GetAntiFraud请求参数结构体
      class GetAntiFraudRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 默认不传，约定用原始业务
        # 入参(二选一BusinessSecurityData 或
        # BusinessCryptoData)。
        # @type BusinessSecurityData: :class:`Tencentcloud::Af.v20200226.models.AntiFraudFilter`
        # @param BusinessCryptoData: 默认不传，约定用密文业务
        # 入参(二选一
        # BusinessSecurityData 或
        # BusinessCryptoData)。
        # @type BusinessCryptoData: :class:`Tencentcloud::Af.v20200226.models.AntiFraudCryptoFilter`

        attr_accessor :BusinessSecurityData, :BusinessCryptoData
        
        def initialize(businesssecuritydata=nil, businesscryptodata=nil)
          @BusinessSecurityData = businesssecuritydata
          @BusinessCryptoData = businesscryptodata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = AntiFraudFilter.new
            @BusinessSecurityData.deserialize(params['BusinessSecurityData'])
          end
          unless params['BusinessCryptoData'].nil?
            @BusinessCryptoData = AntiFraudCryptoFilter.new
            @BusinessCryptoData.deserialize(params['BusinessCryptoData'])
          end
        end
      end

      # GetAntiFraud返回参数结构体
      class GetAntiFraudResponse < TencentCloud::Common::AbstractModel
        # @param Data: 反欺诈评分接口结果
        # @type Data: :class:`Tencentcloud::Af.v20200226.models.AntiFraudRecord`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AntiFraudRecord.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 扩展字段，对多模型返回结果的说明，被如下接口引用：GetAntiFraud。
      class OtherModelScoresDetail < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型版本号；默认顺序为 0、1、2、3、…其中：0=主模型，跟 RiskScore 保持一致；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelId: String
        # @param ModelScore: 模型版本对应的评分结果；Found=1 时：模型版本对应的评分结果，0~100 分
        # 区间；Found=-1（未查到）时：全部模型结果返回-1
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

      # 扩展字段，对风险类型的说明
      class SimpleKindRiskDetail < TencentCloud::Common::AbstractModel
        # @param RiskCode: 风险码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskCode: String
        # @param RiskCodeValue: 风险码详情
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

    end
  end
end

