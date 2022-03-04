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
  module Cpdp
    module V20190820
      # 账户信息
      class Acct < TencentCloud::Common::AbstractModel
        # @param SubAcctNo: STRING(50)，见证子账户的账号（可重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctNo: String
        # @param SubAcctProperty: STRING(10)，见证子账户的属性（可重复。1: 普通会员子账号; 2: 挂账子账号; 3: 手续费子账号; 4: 利息子账号; 5: 平台担保子账号）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctProperty: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码（可重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranNetMemberCode: String
        # @param SubAcctName: STRING(150)，见证子账户的名称（可重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctName: String
        # @param AcctAvailBal: STRING(20)，见证子账户可用余额（可重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AcctAvailBal: String
        # @param CashAmt: STRING(20)，见证子账户可提现金额（可重复。开户日期或修改日期）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashAmt: String
        # @param MaintenanceDate: STRING(8)，维护日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaintenanceDate: String

        attr_accessor :SubAcctNo, :SubAcctProperty, :TranNetMemberCode, :SubAcctName, :AcctAvailBal, :CashAmt, :MaintenanceDate
        
        def initialize(subacctno=nil, subacctproperty=nil, trannetmembercode=nil, subacctname=nil, acctavailbal=nil, cashamt=nil, maintenancedate=nil)
          @SubAcctNo = subacctno
          @SubAcctProperty = subacctproperty
          @TranNetMemberCode = trannetmembercode
          @SubAcctName = subacctname
          @AcctAvailBal = acctavailbal
          @CashAmt = cashamt
          @MaintenanceDate = maintenancedate
        end

        def deserialize(params)
          @SubAcctNo = params['SubAcctNo']
          @SubAcctProperty = params['SubAcctProperty']
          @TranNetMemberCode = params['TranNetMemberCode']
          @SubAcctName = params['SubAcctName']
          @AcctAvailBal = params['AcctAvailBal']
          @CashAmt = params['CashAmt']
          @MaintenanceDate = params['MaintenanceDate']
        end
      end

      # AddContract请求参数结构体
      class AddContractRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param OutContractId: 机构合同主键（系统有唯一性校验），建议使用合同表的主键ID，防止重复添加合同
        # @type OutContractId: String
        # @param Code: 合同编号（系统有唯一性校验）
        # @type Code: String
        # @param PaymentId: 支付方式编号
        # @type PaymentId: String
        # @param PaymentClassificationId: 支付方式行业分类编号
        # @type PaymentClassificationId: String
        # @param PaymentClassificationLimit: 封顶值（分为单位，无封顶填0）
        # @type PaymentClassificationLimit: String
        # @param MerchantNo: 商户编号
        # @type MerchantNo: String
        # @param Fee: 签约扣率百分比（如：0.32）
        # @type Fee: String
        # @param StartDate: 合同生效日期（yyyy-mm-dd）
        # @type StartDate: String
        # @param EndDate: 合同过期日期（yyyy-mm-dd）
        # @type EndDate: String
        # @param SignMan: 合同签约人
        # @type SignMan: String
        # @param SignName: 签购单名称，建议使用商户招牌名称
        # @type SignName: String
        # @param SignDate: 合同签署日期（yyyy-mm-dd）
        # @type SignDate: String
        # @param AutoSign: 是否自动续签（1是，0否）
        # @type AutoSign: String
        # @param Contact: 联系人
        # @type Contact: String
        # @param ContactTelephone: 联系人电话
        # @type ContactTelephone: String
        # @param PictureOne: 合同照片【私密区】
        # @type PictureOne: String
        # @param PictureTwo: 合同照片【私密区】
        # @type PictureTwo: String
        # @param ChannelExtJson: 渠道扩展字段，json格式
        # @type ChannelExtJson: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String
        # @param PaymentOptionOne: 合同选项1（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionOne: String
        # @param PaymentOptionTwo: 合同选项2（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionTwo: String
        # @param PaymentOptionThree: 合同选项3（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionThree: String
        # @param PaymentOptionFour: 合同选项4（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionFour: String
        # @param PaymentOptionFive: 合同证书选项1（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionFive: String
        # @param PaymentOptionSix: 合同证书选项2（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionSix: String
        # @param PaymentOptionSeven: 合同选项5（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionSeven: String
        # @param PaymentOptionOther: 合同选项6（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionOther: String
        # @param PaymentOptionTen: 合同选项8
        # @type PaymentOptionTen: String
        # @param PaymentOptionNine: 合同选项7（不同支付方式规则不一样，请以支付方式规定的格式传值）
        # @type PaymentOptionNine: String

        attr_accessor :OpenId, :OpenKey, :OutContractId, :Code, :PaymentId, :PaymentClassificationId, :PaymentClassificationLimit, :MerchantNo, :Fee, :StartDate, :EndDate, :SignMan, :SignName, :SignDate, :AutoSign, :Contact, :ContactTelephone, :PictureOne, :PictureTwo, :ChannelExtJson, :Profile, :PaymentOptionOne, :PaymentOptionTwo, :PaymentOptionThree, :PaymentOptionFour, :PaymentOptionFive, :PaymentOptionSix, :PaymentOptionSeven, :PaymentOptionOther, :PaymentOptionTen, :PaymentOptionNine
        
        def initialize(openid=nil, openkey=nil, outcontractid=nil, code=nil, paymentid=nil, paymentclassificationid=nil, paymentclassificationlimit=nil, merchantno=nil, fee=nil, startdate=nil, enddate=nil, signman=nil, signname=nil, signdate=nil, autosign=nil, contact=nil, contacttelephone=nil, pictureone=nil, picturetwo=nil, channelextjson=nil, profile=nil, paymentoptionone=nil, paymentoptiontwo=nil, paymentoptionthree=nil, paymentoptionfour=nil, paymentoptionfive=nil, paymentoptionsix=nil, paymentoptionseven=nil, paymentoptionother=nil, paymentoptionten=nil, paymentoptionnine=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OutContractId = outcontractid
          @Code = code
          @PaymentId = paymentid
          @PaymentClassificationId = paymentclassificationid
          @PaymentClassificationLimit = paymentclassificationlimit
          @MerchantNo = merchantno
          @Fee = fee
          @StartDate = startdate
          @EndDate = enddate
          @SignMan = signman
          @SignName = signname
          @SignDate = signdate
          @AutoSign = autosign
          @Contact = contact
          @ContactTelephone = contacttelephone
          @PictureOne = pictureone
          @PictureTwo = picturetwo
          @ChannelExtJson = channelextjson
          @Profile = profile
          @PaymentOptionOne = paymentoptionone
          @PaymentOptionTwo = paymentoptiontwo
          @PaymentOptionThree = paymentoptionthree
          @PaymentOptionFour = paymentoptionfour
          @PaymentOptionFive = paymentoptionfive
          @PaymentOptionSix = paymentoptionsix
          @PaymentOptionSeven = paymentoptionseven
          @PaymentOptionOther = paymentoptionother
          @PaymentOptionTen = paymentoptionten
          @PaymentOptionNine = paymentoptionnine
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OutContractId = params['OutContractId']
          @Code = params['Code']
          @PaymentId = params['PaymentId']
          @PaymentClassificationId = params['PaymentClassificationId']
          @PaymentClassificationLimit = params['PaymentClassificationLimit']
          @MerchantNo = params['MerchantNo']
          @Fee = params['Fee']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @SignMan = params['SignMan']
          @SignName = params['SignName']
          @SignDate = params['SignDate']
          @AutoSign = params['AutoSign']
          @Contact = params['Contact']
          @ContactTelephone = params['ContactTelephone']
          @PictureOne = params['PictureOne']
          @PictureTwo = params['PictureTwo']
          @ChannelExtJson = params['ChannelExtJson']
          @Profile = params['Profile']
          @PaymentOptionOne = params['PaymentOptionOne']
          @PaymentOptionTwo = params['PaymentOptionTwo']
          @PaymentOptionThree = params['PaymentOptionThree']
          @PaymentOptionFour = params['PaymentOptionFour']
          @PaymentOptionFive = params['PaymentOptionFive']
          @PaymentOptionSix = params['PaymentOptionSix']
          @PaymentOptionSeven = params['PaymentOptionSeven']
          @PaymentOptionOther = params['PaymentOptionOther']
          @PaymentOptionTen = params['PaymentOptionTen']
          @PaymentOptionNine = params['PaymentOptionNine']
        end
      end

      # AddContract返回参数结构体
      class AddContractResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 添加合同响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.AddContractResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = AddContractResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加合同响应对象
      class AddContractResult < TencentCloud::Common::AbstractModel
        # @param ContractId: 合同主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractId: String

        attr_accessor :ContractId
        
        def initialize(contractid=nil)
          @ContractId = contractid
        end

        def deserialize(params)
          @ContractId = params['ContractId']
        end
      end

      # AddMerchant请求参数结构体
      class AddMerchantRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param OutMerchantId: 机构商户主键（系统有唯一性校验），建议使用商户表的主键ID，防止重复添加商户
        # @type OutMerchantId: String
        # @param MerchantName: 商户名称，小微商户命名要符合“”商户_名字” （例如：商户_张三）
        # @type MerchantName: String
        # @param BusinessLicenseType: 营业执照类型（1三证合一，2非三证合一）
        # @type BusinessLicenseType: String
        # @param BusinessLicenseNo: 营业执照编号（系统有唯一性校验），（小微商户不效验，随意传要有值，公司/个体户必传）
        # @type BusinessLicenseNo: String
        # @param BusinessLicensePicture: 营业执照图片【私密区】（系统返回的图片路径），（小微商户不效验，随意传要有值，公司/个体户必传）
        # @type BusinessLicensePicture: String
        # @param BusinessLicenseStartDate: 营业执照生效时间（yyyy-mm-dd），（小微商户不效验，随意传要有值，公司/个体户必传）
        # @type BusinessLicenseStartDate: String
        # @param BusinessLicenseEndDate: 营业执照过期时间（yyyy-mm-dd），（小微商户不效验，随意传要有值，公司/个体户必传）
        # @type BusinessLicenseEndDate: String
        # @param ClassificationIds: 行业分类编号列表（第一个分类编号为主分类，后面的为二级分类）
        # @type ClassificationIds: Array
        # @param BrandName: 招牌名称
        # @type BrandName: String
        # @param Telephone: 联系电话
        # @type Telephone: String
        # @param CityId: 城市编号
        # @type CityId: String
        # @param Address: 详细地址，不含省市区县名称，长度需要大于5。
        # @type Address: String
        # @param OpenHours: 营业时间，多个以小写逗号分开(9:00-12:00,13:00-18:00)
        # @type OpenHours: String
        # @param AccountType: 结算账户类型（2对私，1对公）
        # @type AccountType: String
        # @param BankNo: 清算联行号，开户行行号
        # @type BankNo: String
        # @param BankName: 开户行名称
        # @type BankName: String
        # @param AccountNo: 银行账号
        # @type AccountNo: String
        # @param AccountName: 银行户名
        # @type AccountName: String
        # @param BossIdType: 法人证件类型（1居民身份证,2临时居民身份证,3居民户口簿,4护照,5港澳居民来往内地通行证,6回乡证,7军人证,8武警身份证,9其他法定文件）
        # @type BossIdType: String
        # @param BossIdNo: 法人证件号码
        # @type BossIdNo: String
        # @param BossName: 法人姓名
        # @type BossName: String
        # @param BossSex: 法人性别（1男，2女）
        # @type BossSex: String
        # @param BossIdCountry: 法人证件国别/地区（中国CHN，香港HKG，澳门MAC，台湾CTN）
        # @type BossIdCountry: String
        # @param BossPositive: 法人身份证正面【私密区】（系统返回的图片路径）
        # @type BossPositive: String
        # @param BossBack: 法人身份证背面【私密区】（系统返回的图片路径）
        # @type BossBack: String
        # @param BossStartDate: 法人证件生效时间（yyyy-mm-dd）
        # @type BossStartDate: String
        # @param BossEndDate: 法人证件过期时间（yyyy-mm-dd）
        # @type BossEndDate: String
        # @param LicencePicture: 许可证图片【私密区】，（小微商户不效验，随意传要有值，公司/个体户必传）
        # @type LicencePicture: String
        # @param Type: 商户类型：1-个体，2-小微，3-企业。不传默认为2-小微商户。
        # @type Type: String
        # @param OrganizationNo: 组织机构代码证号
        # @type OrganizationNo: String
        # @param OrganizationStartDate: 组织机构代码证生效时间（yyyy-mm-dd）
        # @type OrganizationStartDate: String
        # @param OrganizationPicture: 组织机构代码证图片【私密区】
        # @type OrganizationPicture: String
        # @param OrganizationEndDate: 组织机构代码证过期时间（yyyy-mm-dd）
        # @type OrganizationEndDate: String
        # @param Intro: 商户简介
        # @type Intro: String
        # @param Logo: 商户logo【公共区】
        # @type Logo: String
        # @param Tag: 商户标记，自定义参数
        # @type Tag: String
        # @param FinancialTelephone: 财务联系人电话
        # @type FinancialTelephone: String
        # @param FinancialContact: 财务联系人
        # @type FinancialContact: String
        # @param TaxRegistrationNo: 税务登记证号
        # @type TaxRegistrationNo: String
        # @param TaxRegistrationPicture: 税务登记证图片【私密区】
        # @type TaxRegistrationPicture: String
        # @param TaxRegistrationStartDate: 税务登记证生效时间（yyyy-mm-dd）
        # @type TaxRegistrationStartDate: String
        # @param TaxRegistrationEndDate: 税务登记证过期时间（yyyy-mm-dd）
        # @type TaxRegistrationEndDate: String
        # @param AccountBoss: 结算账户人身份（1法人，2法人亲属），结算帐户为对私时必填
        # @type AccountBoss: String
        # @param AccountManagerName: 客户经理姓名，必须为系统后台的管理员真实姓名
        # @type AccountManagerName: String
        # @param BossTelephone: 法人电话
        # @type BossTelephone: String
        # @param BossJob: 法人职业
        # @type BossJob: String
        # @param BossEmail: 法人邮箱
        # @type BossEmail: String
        # @param BossAddress: 法人住址
        # @type BossAddress: String
        # @param AccountIdType: 法人亲属证件类型（1居民身份证,2临时居民身份证,3居民户口簿,4护照,5港澳居民来往内地通行证,6回乡证,7军人证,8武警身份证,9其他法定文件）结算账户人身份为法人亲属时必填
        # @type AccountIdType: String
        # @param AccountIdNo: 法人亲属证件号码
        # @type AccountIdNo: String
        # @param LicencePictureTwo: 授权文件【私密区】
        # @type LicencePictureTwo: String
        # @param OtherPictureOne: 其他资料1
        # @type OtherPictureOne: String
        # @param OtherPictureTwo: 其他资料2
        # @type OtherPictureTwo: String
        # @param OtherPictureThree: 其他资料3
        # @type OtherPictureThree: String
        # @param OtherPictureFour: 其他资料4
        # @type OtherPictureFour: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :OutMerchantId, :MerchantName, :BusinessLicenseType, :BusinessLicenseNo, :BusinessLicensePicture, :BusinessLicenseStartDate, :BusinessLicenseEndDate, :ClassificationIds, :BrandName, :Telephone, :CityId, :Address, :OpenHours, :AccountType, :BankNo, :BankName, :AccountNo, :AccountName, :BossIdType, :BossIdNo, :BossName, :BossSex, :BossIdCountry, :BossPositive, :BossBack, :BossStartDate, :BossEndDate, :LicencePicture, :Type, :OrganizationNo, :OrganizationStartDate, :OrganizationPicture, :OrganizationEndDate, :Intro, :Logo, :Tag, :FinancialTelephone, :FinancialContact, :TaxRegistrationNo, :TaxRegistrationPicture, :TaxRegistrationStartDate, :TaxRegistrationEndDate, :AccountBoss, :AccountManagerName, :BossTelephone, :BossJob, :BossEmail, :BossAddress, :AccountIdType, :AccountIdNo, :LicencePictureTwo, :OtherPictureOne, :OtherPictureTwo, :OtherPictureThree, :OtherPictureFour, :Profile
        
        def initialize(openid=nil, openkey=nil, outmerchantid=nil, merchantname=nil, businesslicensetype=nil, businesslicenseno=nil, businesslicensepicture=nil, businesslicensestartdate=nil, businesslicenseenddate=nil, classificationids=nil, brandname=nil, telephone=nil, cityid=nil, address=nil, openhours=nil, accounttype=nil, bankno=nil, bankname=nil, accountno=nil, accountname=nil, bossidtype=nil, bossidno=nil, bossname=nil, bosssex=nil, bossidcountry=nil, bosspositive=nil, bossback=nil, bossstartdate=nil, bossenddate=nil, licencepicture=nil, type=nil, organizationno=nil, organizationstartdate=nil, organizationpicture=nil, organizationenddate=nil, intro=nil, logo=nil, tag=nil, financialtelephone=nil, financialcontact=nil, taxregistrationno=nil, taxregistrationpicture=nil, taxregistrationstartdate=nil, taxregistrationenddate=nil, accountboss=nil, accountmanagername=nil, bosstelephone=nil, bossjob=nil, bossemail=nil, bossaddress=nil, accountidtype=nil, accountidno=nil, licencepicturetwo=nil, otherpictureone=nil, otherpicturetwo=nil, otherpicturethree=nil, otherpicturefour=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OutMerchantId = outmerchantid
          @MerchantName = merchantname
          @BusinessLicenseType = businesslicensetype
          @BusinessLicenseNo = businesslicenseno
          @BusinessLicensePicture = businesslicensepicture
          @BusinessLicenseStartDate = businesslicensestartdate
          @BusinessLicenseEndDate = businesslicenseenddate
          @ClassificationIds = classificationids
          @BrandName = brandname
          @Telephone = telephone
          @CityId = cityid
          @Address = address
          @OpenHours = openhours
          @AccountType = accounttype
          @BankNo = bankno
          @BankName = bankname
          @AccountNo = accountno
          @AccountName = accountname
          @BossIdType = bossidtype
          @BossIdNo = bossidno
          @BossName = bossname
          @BossSex = bosssex
          @BossIdCountry = bossidcountry
          @BossPositive = bosspositive
          @BossBack = bossback
          @BossStartDate = bossstartdate
          @BossEndDate = bossenddate
          @LicencePicture = licencepicture
          @Type = type
          @OrganizationNo = organizationno
          @OrganizationStartDate = organizationstartdate
          @OrganizationPicture = organizationpicture
          @OrganizationEndDate = organizationenddate
          @Intro = intro
          @Logo = logo
          @Tag = tag
          @FinancialTelephone = financialtelephone
          @FinancialContact = financialcontact
          @TaxRegistrationNo = taxregistrationno
          @TaxRegistrationPicture = taxregistrationpicture
          @TaxRegistrationStartDate = taxregistrationstartdate
          @TaxRegistrationEndDate = taxregistrationenddate
          @AccountBoss = accountboss
          @AccountManagerName = accountmanagername
          @BossTelephone = bosstelephone
          @BossJob = bossjob
          @BossEmail = bossemail
          @BossAddress = bossaddress
          @AccountIdType = accountidtype
          @AccountIdNo = accountidno
          @LicencePictureTwo = licencepicturetwo
          @OtherPictureOne = otherpictureone
          @OtherPictureTwo = otherpicturetwo
          @OtherPictureThree = otherpicturethree
          @OtherPictureFour = otherpicturefour
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OutMerchantId = params['OutMerchantId']
          @MerchantName = params['MerchantName']
          @BusinessLicenseType = params['BusinessLicenseType']
          @BusinessLicenseNo = params['BusinessLicenseNo']
          @BusinessLicensePicture = params['BusinessLicensePicture']
          @BusinessLicenseStartDate = params['BusinessLicenseStartDate']
          @BusinessLicenseEndDate = params['BusinessLicenseEndDate']
          @ClassificationIds = params['ClassificationIds']
          @BrandName = params['BrandName']
          @Telephone = params['Telephone']
          @CityId = params['CityId']
          @Address = params['Address']
          @OpenHours = params['OpenHours']
          @AccountType = params['AccountType']
          @BankNo = params['BankNo']
          @BankName = params['BankName']
          @AccountNo = params['AccountNo']
          @AccountName = params['AccountName']
          @BossIdType = params['BossIdType']
          @BossIdNo = params['BossIdNo']
          @BossName = params['BossName']
          @BossSex = params['BossSex']
          @BossIdCountry = params['BossIdCountry']
          @BossPositive = params['BossPositive']
          @BossBack = params['BossBack']
          @BossStartDate = params['BossStartDate']
          @BossEndDate = params['BossEndDate']
          @LicencePicture = params['LicencePicture']
          @Type = params['Type']
          @OrganizationNo = params['OrganizationNo']
          @OrganizationStartDate = params['OrganizationStartDate']
          @OrganizationPicture = params['OrganizationPicture']
          @OrganizationEndDate = params['OrganizationEndDate']
          @Intro = params['Intro']
          @Logo = params['Logo']
          @Tag = params['Tag']
          @FinancialTelephone = params['FinancialTelephone']
          @FinancialContact = params['FinancialContact']
          @TaxRegistrationNo = params['TaxRegistrationNo']
          @TaxRegistrationPicture = params['TaxRegistrationPicture']
          @TaxRegistrationStartDate = params['TaxRegistrationStartDate']
          @TaxRegistrationEndDate = params['TaxRegistrationEndDate']
          @AccountBoss = params['AccountBoss']
          @AccountManagerName = params['AccountManagerName']
          @BossTelephone = params['BossTelephone']
          @BossJob = params['BossJob']
          @BossEmail = params['BossEmail']
          @BossAddress = params['BossAddress']
          @AccountIdType = params['AccountIdType']
          @AccountIdNo = params['AccountIdNo']
          @LicencePictureTwo = params['LicencePictureTwo']
          @OtherPictureOne = params['OtherPictureOne']
          @OtherPictureTwo = params['OtherPictureTwo']
          @OtherPictureThree = params['OtherPictureThree']
          @OtherPictureFour = params['OtherPictureFour']
          @Profile = params['Profile']
        end
      end

      # AddMerchant返回参数结构体
      class AddMerchantResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码，0表示成功，其他表示失败。
        # @type ErrCode: String
        # @param Result: 添加商户响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.AddMerchantResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = AddMerchantResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加商户响应对象
      class AddMerchantResult < TencentCloud::Common::AbstractModel
        # @param MerchantNo: 系统商户号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String

        attr_accessor :MerchantNo
        
        def initialize(merchantno=nil)
          @MerchantNo = merchantno
        end

        def deserialize(params)
          @MerchantNo = params['MerchantNo']
        end
      end

      # AddShop请求参数结构体
      class AddShopRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param OutShopId: 机构门店主键（系统有唯一性校验），建议使用门店表的主键ID，防止重复添加门店
        # @type OutShopId: String
        # @param ShopName: 门店简称（例如：南山店）
        # @type ShopName: String
        # @param ShopFullName: 门店全称（例如：江山小厨（南山店））
        # @type ShopFullName: String
        # @param MerchantNo: 商户编号
        # @type MerchantNo: String
        # @param Telephone: 门店电话
        # @type Telephone: String
        # @param OpenHours: 营业时间，多个以小写逗号分开(9:00-12:00,13:00-18:00)
        # @type OpenHours: String
        # @param CityId: 门店所在的城市编码
        # @type CityId: String
        # @param Address: 门店详细地址，不含省市区县名称
        # @type Address: String
        # @param PictureOne: 整体门面（含招牌）图片【公共区】
        # @type PictureOne: String
        # @param PictureTwo: 整体门面（含招牌）图片【公共区】
        # @type PictureTwo: String
        # @param PictureThree: 店内环境图片【公共区】
        # @type PictureThree: String
        # @param FinancialTelephone: 负责人手机号码
        # @type FinancialTelephone: String
        # @param Contact: 门店负责人
        # @type Contact: String
        # @param Latitude: 百度地图纬度
        # @type Latitude: String
        # @param LatitudeTwo: 高德地图纬度
        # @type LatitudeTwo: String
        # @param Longitude: 百度地图经度
        # @type Longitude: String
        # @param LongitudeTwo: 高德地图经度
        # @type LongitudeTwo: String
        # @param OtherPicture: 其他照片【公共区】
        # @type OtherPicture: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :OutShopId, :ShopName, :ShopFullName, :MerchantNo, :Telephone, :OpenHours, :CityId, :Address, :PictureOne, :PictureTwo, :PictureThree, :FinancialTelephone, :Contact, :Latitude, :LatitudeTwo, :Longitude, :LongitudeTwo, :OtherPicture, :Profile
        
        def initialize(openid=nil, openkey=nil, outshopid=nil, shopname=nil, shopfullname=nil, merchantno=nil, telephone=nil, openhours=nil, cityid=nil, address=nil, pictureone=nil, picturetwo=nil, picturethree=nil, financialtelephone=nil, contact=nil, latitude=nil, latitudetwo=nil, longitude=nil, longitudetwo=nil, otherpicture=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OutShopId = outshopid
          @ShopName = shopname
          @ShopFullName = shopfullname
          @MerchantNo = merchantno
          @Telephone = telephone
          @OpenHours = openhours
          @CityId = cityid
          @Address = address
          @PictureOne = pictureone
          @PictureTwo = picturetwo
          @PictureThree = picturethree
          @FinancialTelephone = financialtelephone
          @Contact = contact
          @Latitude = latitude
          @LatitudeTwo = latitudetwo
          @Longitude = longitude
          @LongitudeTwo = longitudetwo
          @OtherPicture = otherpicture
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OutShopId = params['OutShopId']
          @ShopName = params['ShopName']
          @ShopFullName = params['ShopFullName']
          @MerchantNo = params['MerchantNo']
          @Telephone = params['Telephone']
          @OpenHours = params['OpenHours']
          @CityId = params['CityId']
          @Address = params['Address']
          @PictureOne = params['PictureOne']
          @PictureTwo = params['PictureTwo']
          @PictureThree = params['PictureThree']
          @FinancialTelephone = params['FinancialTelephone']
          @Contact = params['Contact']
          @Latitude = params['Latitude']
          @LatitudeTwo = params['LatitudeTwo']
          @Longitude = params['Longitude']
          @LongitudeTwo = params['LongitudeTwo']
          @OtherPicture = params['OtherPicture']
          @Profile = params['Profile']
        end
      end

      # AddShop返回参数结构体
      class AddShopResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 添加申请响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.AddShopResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = AddShopResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加门店响应对象
      class AddShopResult < TencentCloud::Common::AbstractModel
        # @param ShopNo: 门店编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopNo: String

        attr_accessor :ShopNo
        
        def initialize(shopno=nil)
          @ShopNo = shopno
        end

        def deserialize(params)
          @ShopNo = params['ShopNo']
        end
      end

      # 经办人信息
      class AgencyClientInfo < TencentCloud::Common::AbstractModel
        # @param AgencyClientName: 经办人姓名，存在经办人必输
        # @type AgencyClientName: String
        # @param AgencyClientGlobalType: 经办人证件类型，存在经办人必输
        # @type AgencyClientGlobalType: String
        # @param AgencyClientGlobalId: 经办人证件号，存在经办人必输
        # @type AgencyClientGlobalId: String
        # @param AgencyClientMobile: 经办人手机号，存在经办人必输
        # @type AgencyClientMobile: String

        attr_accessor :AgencyClientName, :AgencyClientGlobalType, :AgencyClientGlobalId, :AgencyClientMobile
        
        def initialize(agencyclientname=nil, agencyclientglobaltype=nil, agencyclientglobalid=nil, agencyclientmobile=nil)
          @AgencyClientName = agencyclientname
          @AgencyClientGlobalType = agencyclientglobaltype
          @AgencyClientGlobalId = agencyclientglobalid
          @AgencyClientMobile = agencyclientmobile
        end

        def deserialize(params)
          @AgencyClientName = params['AgencyClientName']
          @AgencyClientGlobalType = params['AgencyClientGlobalType']
          @AgencyClientGlobalId = params['AgencyClientGlobalId']
          @AgencyClientMobile = params['AgencyClientMobile']
        end
      end

      # 代理商完税证明
      class AgentTaxPayment < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播银行账号
        # @type AnchorId: String
        # @param AnchorName: 主播姓名
        # @type AnchorName: String
        # @param AnchorIDCard: 主播身份证
        # @type AnchorIDCard: String
        # @param StartTime: 纳税的开始时间，格式yyyy-MM-dd
        # @type StartTime: String
        # @param EndTime: 纳税的结束时间，格式yyyy-MM-dd
        # @type EndTime: String
        # @param Amount: 流水金额。以“分”为单位
        # @type Amount: Integer
        # @param Tax: 应缴税款。以“分”为单位
        # @type Tax: Integer

        attr_accessor :AnchorId, :AnchorName, :AnchorIDCard, :StartTime, :EndTime, :Amount, :Tax
        
        def initialize(anchorid=nil, anchorname=nil, anchoridcard=nil, starttime=nil, endtime=nil, amount=nil, tax=nil)
          @AnchorId = anchorid
          @AnchorName = anchorname
          @AnchorIDCard = anchoridcard
          @StartTime = starttime
          @EndTime = endtime
          @Amount = amount
          @Tax = tax
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @AnchorName = params['AnchorName']
          @AnchorIDCard = params['AnchorIDCard']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Amount = params['Amount']
          @Tax = params['Tax']
        end
      end

      # 代理商完税证明批次信息
      class AgentTaxPaymentBatch < TencentCloud::Common::AbstractModel
        # @param StatusMsg: 状态消息
        # @type StatusMsg: String
        # @param BatchNum: 批次号
        # @type BatchNum: Integer
        # @param InfoNum: 录入记录的条数
        # @type InfoNum: Integer
        # @param RawElectronicCertUrl: 源电子凭证下载地址
        # @type RawElectronicCertUrl: String
        # @param AgentId: 代理商账号
        # @type AgentId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param StatusCode: 状态码。0表示下载成功
        # @type StatusCode: Integer
        # @param Channel: 渠道号
        # @type Channel: Integer
        # @param Type: 0-视同，1-个体工商户
        # @type Type: Integer

        attr_accessor :StatusMsg, :BatchNum, :InfoNum, :RawElectronicCertUrl, :AgentId, :FileName, :StatusCode, :Channel, :Type
        
        def initialize(statusmsg=nil, batchnum=nil, infonum=nil, rawelectroniccerturl=nil, agentid=nil, filename=nil, statuscode=nil, channel=nil, type=nil)
          @StatusMsg = statusmsg
          @BatchNum = batchnum
          @InfoNum = infonum
          @RawElectronicCertUrl = rawelectroniccerturl
          @AgentId = agentid
          @FileName = filename
          @StatusCode = statuscode
          @Channel = channel
          @Type = type
        end

        def deserialize(params)
          @StatusMsg = params['StatusMsg']
          @BatchNum = params['BatchNum']
          @InfoNum = params['InfoNum']
          @RawElectronicCertUrl = params['RawElectronicCertUrl']
          @AgentId = params['AgentId']
          @FileName = params['FileName']
          @StatusCode = params['StatusCode']
          @Channel = params['Channel']
          @Type = params['Type']
        end
      end

      # 主播签约信息
      class AnchorContractInfo < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播ID
        # @type AnchorId: String
        # @param AnchorName: 主播名称
        # @type AnchorName: String
        # @param AgentId: 代理商ID
        # @type AgentId: String
        # @param AgentName: 代理商名称
        # @type AgentName: String
        # @param IdNo: 主播身份证号
        # @type IdNo: String

        attr_accessor :AnchorId, :AnchorName, :AgentId, :AgentName, :IdNo
        
        def initialize(anchorid=nil, anchorname=nil, agentid=nil, agentname=nil, idno=nil)
          @AnchorId = anchorid
          @AnchorName = anchorname
          @AgentId = agentid
          @AgentName = agentname
          @IdNo = idno
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @AnchorName = params['AnchorName']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @IdNo = params['IdNo']
        end
      end

      # 主播扩展信息
      class AnchorExtendInfo < TencentCloud::Common::AbstractModel
        # @param Type: 扩展信息类型
        # __id_card_no__:身份证号码
        # __id_card_name__:身份证姓名
        # __id_card_front__:身份证图片正面
        # __id_card_back__:身份证图片反面
        # __tax_type__:完税类型:0-自然人,1-个体工商户
        # __channel_account__:渠道账号(_敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密)
        # @type Type: String
        # @param Value: 扩展信息
        # @type Value: String

        attr_accessor :Type, :Value
        
        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # ApplyApplicationMaterial请求参数结构体
      class ApplyApplicationMaterialRequest < TencentCloud::Common::AbstractModel
        # @param TransactionId: 对接方汇出指令编号
        # @type TransactionId: String
        # @param DeclareId: 申报流水号
        # @type DeclareId: String
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param SourceCurrency: 源币种
        # @type SourceCurrency: String
        # @param TargetCurrency: 目的币种
        # @type TargetCurrency: String
        # @param TradeCode: 贸易编码
        # @type TradeCode: String
        # @param OriginalDeclareId: 原申报流水号
        # @type OriginalDeclareId: String
        # @param SourceAmount: 源金额
        # @type SourceAmount: Integer
        # @param TargetAmount: 目的金额
        # @type TargetAmount: Integer
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :TransactionId, :DeclareId, :PayerId, :SourceCurrency, :TargetCurrency, :TradeCode, :OriginalDeclareId, :SourceAmount, :TargetAmount, :Profile
        
        def initialize(transactionid=nil, declareid=nil, payerid=nil, sourcecurrency=nil, targetcurrency=nil, tradecode=nil, originaldeclareid=nil, sourceamount=nil, targetamount=nil, profile=nil)
          @TransactionId = transactionid
          @DeclareId = declareid
          @PayerId = payerid
          @SourceCurrency = sourcecurrency
          @TargetCurrency = targetcurrency
          @TradeCode = tradecode
          @OriginalDeclareId = originaldeclareid
          @SourceAmount = sourceamount
          @TargetAmount = targetamount
          @Profile = profile
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @DeclareId = params['DeclareId']
          @PayerId = params['PayerId']
          @SourceCurrency = params['SourceCurrency']
          @TargetCurrency = params['TargetCurrency']
          @TradeCode = params['TradeCode']
          @OriginalDeclareId = params['OriginalDeclareId']
          @SourceAmount = params['SourceAmount']
          @TargetAmount = params['TargetAmount']
          @Profile = params['Profile']
        end
      end

      # ApplyApplicationMaterial返回参数结构体
      class ApplyApplicationMaterialResponse < TencentCloud::Common::AbstractModel
        # @param Result: 提交申报材料结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyDeclareResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplyDeclareResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 提交申报材料结果
      class ApplyDeclareData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param TransactionId: 第三方指令编号
        # @type TransactionId: String
        # @param Status: 受理状态
        # @type Status: String
        # @param DeclareId: 申报流水号
        # @type DeclareId: String
        # @param OriginalDeclareId: 原申报流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalDeclareId: String
        # @param PayerId: 付款人ID
        # @type PayerId: String

        attr_accessor :MerchantId, :TransactionId, :Status, :DeclareId, :OriginalDeclareId, :PayerId
        
        def initialize(merchantid=nil, transactionid=nil, status=nil, declareid=nil, originaldeclareid=nil, payerid=nil)
          @MerchantId = merchantid
          @TransactionId = transactionid
          @Status = status
          @DeclareId = declareid
          @OriginalDeclareId = originaldeclareid
          @PayerId = payerid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @TransactionId = params['TransactionId']
          @Status = params['Status']
          @DeclareId = params['DeclareId']
          @OriginalDeclareId = params['OriginalDeclareId']
          @PayerId = params['PayerId']
        end
      end

      # 提交申报材料结果
      class ApplyDeclareResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Data: 提交申报材料数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyDeclareData`

        attr_accessor :Code, :Data
        
        def initialize(code=nil, data=nil)
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = ApplyDeclareData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 汇出指令申请数据
      class ApplyOutwardOrderData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param TransactionId: 对接方汇出指令编号
        # @type TransactionId: String
        # @param Status: 受理状态
        # @type Status: String

        attr_accessor :MerchantId, :TransactionId, :Status
        
        def initialize(merchantid=nil, transactionid=nil, status=nil)
          @MerchantId = merchantid
          @TransactionId = transactionid
          @Status = status
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @TransactionId = params['TransactionId']
          @Status = params['Status']
        end
      end

      # ApplyOutwardOrder请求参数结构体
      class ApplyOutwardOrderRequest < TencentCloud::Common::AbstractModel
        # @param TransactionId: 对接方汇出指令编号
        # @type TransactionId: String
        # @param PricingCurrency: 定价币种
        # @type PricingCurrency: String
        # @param SourceCurrency: 源币种
        # @type SourceCurrency: String
        # @param TargetCurrency: 目的币种
        # @type TargetCurrency: String
        # @param PayeeType: 收款人类型（银行卡填"BANK_ACCOUNT"）
        # @type PayeeType: String
        # @param PayeeAccount: 收款人账号
        # @type PayeeAccount: String
        # @param SourceAmount: 源币种金额
        # @type SourceAmount: Float
        # @param TargetAmount: 目的金额
        # @type TargetAmount: Float
        # @param PayeeName: 收款人姓名（PayeeType为"BANK_COUNT"时必填）
        # @type PayeeName: String
        # @param PayeeAddress: 收款人地址（PayeeType为"BANK_COUNT"时必填）
        # @type PayeeAddress: String
        # @param PayeeBankAccountType: 收款人银行账号类型（PayeeType为"BANK_COUNT"时必填）
        # 个人填"INDIVIDUAL"
        # 企业填"CORPORATE"
        # @type PayeeBankAccountType: String
        # @param PayeeCountryCode: 收款人国家或地区编码（PayeeType为"BANK_COUNT"时必填）
        # @type PayeeCountryCode: String
        # @param PayeeBankName: 收款人开户银行名称（PayeeType为"BANK_COUNT"时必填）
        # @type PayeeBankName: String
        # @param PayeeBankAddress: 收款人开户银行地址（PayeeType为"BANK_COUNT"时必填）
        # @type PayeeBankAddress: String
        # @param PayeeBankDistrict: 收款人开户银行所在国家或地区编码（PayeeType为"BANK_COUNT"时必填）
        # @type PayeeBankDistrict: String
        # @param PayeeBankSwiftCode: 收款银行SwiftCode（PayeeType为"BANK_COUNT"时必填）
        # @type PayeeBankSwiftCode: String
        # @param PayeeBankType: 收款银行国际编码类型
        # @type PayeeBankType: String
        # @param PayeeBankCode: 收款银行国际编码
        # @type PayeeBankCode: String
        # @param ReferenceForBeneficiary: 收款人附言
        # @type ReferenceForBeneficiary: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :TransactionId, :PricingCurrency, :SourceCurrency, :TargetCurrency, :PayeeType, :PayeeAccount, :SourceAmount, :TargetAmount, :PayeeName, :PayeeAddress, :PayeeBankAccountType, :PayeeCountryCode, :PayeeBankName, :PayeeBankAddress, :PayeeBankDistrict, :PayeeBankSwiftCode, :PayeeBankType, :PayeeBankCode, :ReferenceForBeneficiary, :Profile
        
        def initialize(transactionid=nil, pricingcurrency=nil, sourcecurrency=nil, targetcurrency=nil, payeetype=nil, payeeaccount=nil, sourceamount=nil, targetamount=nil, payeename=nil, payeeaddress=nil, payeebankaccounttype=nil, payeecountrycode=nil, payeebankname=nil, payeebankaddress=nil, payeebankdistrict=nil, payeebankswiftcode=nil, payeebanktype=nil, payeebankcode=nil, referenceforbeneficiary=nil, profile=nil)
          @TransactionId = transactionid
          @PricingCurrency = pricingcurrency
          @SourceCurrency = sourcecurrency
          @TargetCurrency = targetcurrency
          @PayeeType = payeetype
          @PayeeAccount = payeeaccount
          @SourceAmount = sourceamount
          @TargetAmount = targetamount
          @PayeeName = payeename
          @PayeeAddress = payeeaddress
          @PayeeBankAccountType = payeebankaccounttype
          @PayeeCountryCode = payeecountrycode
          @PayeeBankName = payeebankname
          @PayeeBankAddress = payeebankaddress
          @PayeeBankDistrict = payeebankdistrict
          @PayeeBankSwiftCode = payeebankswiftcode
          @PayeeBankType = payeebanktype
          @PayeeBankCode = payeebankcode
          @ReferenceForBeneficiary = referenceforbeneficiary
          @Profile = profile
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @PricingCurrency = params['PricingCurrency']
          @SourceCurrency = params['SourceCurrency']
          @TargetCurrency = params['TargetCurrency']
          @PayeeType = params['PayeeType']
          @PayeeAccount = params['PayeeAccount']
          @SourceAmount = params['SourceAmount']
          @TargetAmount = params['TargetAmount']
          @PayeeName = params['PayeeName']
          @PayeeAddress = params['PayeeAddress']
          @PayeeBankAccountType = params['PayeeBankAccountType']
          @PayeeCountryCode = params['PayeeCountryCode']
          @PayeeBankName = params['PayeeBankName']
          @PayeeBankAddress = params['PayeeBankAddress']
          @PayeeBankDistrict = params['PayeeBankDistrict']
          @PayeeBankSwiftCode = params['PayeeBankSwiftCode']
          @PayeeBankType = params['PayeeBankType']
          @PayeeBankCode = params['PayeeBankCode']
          @ReferenceForBeneficiary = params['ReferenceForBeneficiary']
          @Profile = params['Profile']
        end
      end

      # ApplyOutwardOrder返回参数结构体
      class ApplyOutwardOrderResponse < TencentCloud::Common::AbstractModel
        # @param Result: 汇出指令申请
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyOutwardOrderResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplyOutwardOrderResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 汇出指令申请结果
      class ApplyOutwardOrderResult < TencentCloud::Common::AbstractModel
        # @param Data: 汇出指令申请数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyOutwardOrderData`
        # @param Code: 错误码
        # @type Code: String

        attr_accessor :Data, :Code
        
        def initialize(data=nil, code=nil)
          @Data = data
          @Code = code
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ApplyOutwardOrderData.new
            @Data.deserialize(params['Data'])
          end
          @Code = params['Code']
        end
      end

      # ApplyPayerInfo请求参数结构体
      class ApplyPayerInfoRequest < TencentCloud::Common::AbstractModel
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param PayerType: 付款人类型 (个人: INDIVIDUAL, 企业: CORPORATE)
        # @type PayerType: String
        # @param PayerName: 付款人姓名
        # @type PayerName: String
        # @param PayerIdType: 付款人证件类型 (身份证: ID_CARD, 统一社会信用代码: UNIFIED_CREDIT_CODE)
        # @type PayerIdType: String
        # @param PayerIdNo: 付款人证件号
        # @type PayerIdNo: String
        # @param PayerCountryCode: 付款人常驻国家或地区编码 (见常见问题-国家/地区编码)
        # @type PayerCountryCode: String
        # @param PayerContactName: 付款人联系人名称
        # @type PayerContactName: String
        # @param PayerContactNumber: 付款人联系电话
        # @type PayerContactNumber: String
        # @param PayerEmailAddress: 付款人联系邮箱
        # @type PayerEmailAddress: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :PayerId, :PayerType, :PayerName, :PayerIdType, :PayerIdNo, :PayerCountryCode, :PayerContactName, :PayerContactNumber, :PayerEmailAddress, :Profile
        
        def initialize(payerid=nil, payertype=nil, payername=nil, payeridtype=nil, payeridno=nil, payercountrycode=nil, payercontactname=nil, payercontactnumber=nil, payeremailaddress=nil, profile=nil)
          @PayerId = payerid
          @PayerType = payertype
          @PayerName = payername
          @PayerIdType = payeridtype
          @PayerIdNo = payeridno
          @PayerCountryCode = payercountrycode
          @PayerContactName = payercontactname
          @PayerContactNumber = payercontactnumber
          @PayerEmailAddress = payeremailaddress
          @Profile = profile
        end

        def deserialize(params)
          @PayerId = params['PayerId']
          @PayerType = params['PayerType']
          @PayerName = params['PayerName']
          @PayerIdType = params['PayerIdType']
          @PayerIdNo = params['PayerIdNo']
          @PayerCountryCode = params['PayerCountryCode']
          @PayerContactName = params['PayerContactName']
          @PayerContactNumber = params['PayerContactNumber']
          @PayerEmailAddress = params['PayerEmailAddress']
          @Profile = params['Profile']
        end
      end

      # ApplyPayerInfo返回参数结构体
      class ApplyPayerInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 付款人申请结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyPayerinfoResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplyPayerinfoResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 付款人申请结果
      class ApplyPayerinfoData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param Status: 状态
        # @type Status: String
        # @param FailReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String

        attr_accessor :MerchantId, :PayerId, :Status, :FailReason
        
        def initialize(merchantid=nil, payerid=nil, status=nil, failreason=nil)
          @MerchantId = merchantid
          @PayerId = payerid
          @Status = status
          @FailReason = failreason
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @PayerId = params['PayerId']
          @Status = params['Status']
          @FailReason = params['FailReason']
        end
      end

      # 付款人申请结果
      class ApplyPayerinfoResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Data: 数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyPayerinfoData`

        attr_accessor :Code, :Data
        
        def initialize(code=nil, data=nil)
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = ApplyPayerinfoData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # ApplyReWithdrawal请求参数结构体
      class ApplyReWithdrawalRequest < TencentCloud::Common::AbstractModel
        # @param BusinessType: 聚鑫业务类型
        # @type BusinessType: Integer
        # @param MidasSecretId: 由平台客服提供的计费密钥Id
        # @type MidasSecretId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param Body: 提现信息
        # @type Body: :class:`Tencentcloud::Cpdp.v20190820.models.WithdrawBill`
        # @param MidasAppId: 聚鑫业务ID
        # @type MidasAppId: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :BusinessType, :MidasSecretId, :MidasSignature, :Body, :MidasAppId, :MidasEnvironment
        
        def initialize(businesstype=nil, midassecretid=nil, midassignature=nil, body=nil, midasappid=nil, midasenvironment=nil)
          @BusinessType = businesstype
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @Body = body
          @MidasAppId = midasappid
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @BusinessType = params['BusinessType']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          unless params['Body'].nil?
            @Body = WithdrawBill.new
            @Body.deserialize(params['Body'])
          end
          @MidasAppId = params['MidasAppId']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # ApplyReWithdrawal返回参数结构体
      class ApplyReWithdrawalResponse < TencentCloud::Common::AbstractModel
        # @param WithdrawOrderId: 重新提现业务订单号
        # @type WithdrawOrderId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WithdrawOrderId, :RequestId
        
        def initialize(withdraworderid=nil, requestid=nil)
          @WithdrawOrderId = withdraworderid
          @RequestId = requestid
        end

        def deserialize(params)
          @WithdrawOrderId = params['WithdrawOrderId']
          @RequestId = params['RequestId']
        end
      end

      # ApplyReconciliationFile请求参数结构体
      class ApplyReconciliationFileRequest < TencentCloud::Common::AbstractModel
        # @param ApplyFileType: 申请的文件类型。
        # __CZ__：充值文件
        # __TX__：提现文件
        # __JY__：交易文件
        # __YE__：余额文件
        # @type ApplyFileType: String
        # @param ApplyFileDate: 申请的对账文件日期，格式：yyyyMMdd。
        # @type ApplyFileDate: String
        # @param BankAccountNumber: 父账户账号。
        # _平安渠道为资金汇总账号_
        # @type BankAccountNumber: String
        # @param MidasEnvironment: 环境名。
        # __release__: 现网环境
        # __sandbox__: 沙箱环境
        # __development__: 开发环境
        # _缺省: release_
        # @type MidasEnvironment: String

        attr_accessor :ApplyFileType, :ApplyFileDate, :BankAccountNumber, :MidasEnvironment
        
        def initialize(applyfiletype=nil, applyfiledate=nil, bankaccountnumber=nil, midasenvironment=nil)
          @ApplyFileType = applyfiletype
          @ApplyFileDate = applyfiledate
          @BankAccountNumber = bankaccountnumber
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @ApplyFileType = params['ApplyFileType']
          @ApplyFileDate = params['ApplyFileDate']
          @BankAccountNumber = params['BankAccountNumber']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # ApplyReconciliationFile返回参数结构体
      class ApplyReconciliationFileResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyReconciliationFileResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = ApplyReconciliationFileResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 申请对账文件结果
      class ApplyReconciliationFileResult < TencentCloud::Common::AbstractModel
        # @param ApplyFileId: 申请对账文件的任务ID。
        # @type ApplyFileId: String
        # @param ApplyStatus: 对账文件申请状态。
        # __I__：申请中
        # __S__：申请成功
        # __F__：申请失败
        # @type ApplyStatus: String
        # @param ApplyMessage: 申请结果描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyMessage: String

        attr_accessor :ApplyFileId, :ApplyStatus, :ApplyMessage
        
        def initialize(applyfileid=nil, applystatus=nil, applymessage=nil)
          @ApplyFileId = applyfileid
          @ApplyStatus = applystatus
          @ApplyMessage = applymessage
        end

        def deserialize(params)
          @ApplyFileId = params['ApplyFileId']
          @ApplyStatus = params['ApplyStatus']
          @ApplyMessage = params['ApplyMessage']
        end
      end

      # 提交贸易材料结果
      class ApplyTradeData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param TradeFileId: 贸易材料流水号
        # @type TradeFileId: String
        # @param TradeCurrency: 交易币种
        # @type TradeCurrency: String
        # @param TradeAmount: 交易金额
        # @type TradeAmount: String
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param Status: 状态
        # @type Status: String

        attr_accessor :MerchantId, :TradeFileId, :TradeCurrency, :TradeAmount, :PayerId, :Status
        
        def initialize(merchantid=nil, tradefileid=nil, tradecurrency=nil, tradeamount=nil, payerid=nil, status=nil)
          @MerchantId = merchantid
          @TradeFileId = tradefileid
          @TradeCurrency = tradecurrency
          @TradeAmount = tradeamount
          @PayerId = payerid
          @Status = status
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @TradeFileId = params['TradeFileId']
          @TradeCurrency = params['TradeCurrency']
          @TradeAmount = params['TradeAmount']
          @PayerId = params['PayerId']
          @Status = params['Status']
        end
      end

      # ApplyTrade请求参数结构体
      class ApplyTradeRequest < TencentCloud::Common::AbstractModel
        # @param TradeFileId: 贸易材料流水号
        # @type TradeFileId: String
        # @param TradeOrderId: 贸易材料订单号
        # @type TradeOrderId: String
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param PayeeName: 收款人姓名
        # @type PayeeName: String
        # @param PayeeCountryCode: 收款人常驻国家或地区编码 (见常见问题)
        # @type PayeeCountryCode: String
        # @param TradeType: 贸易类型 (GOODS: 商品, SERVICE: 服务)
        # @type TradeType: String
        # @param TradeTime: 交易时间 (格式: yyyyMMdd)
        # @type TradeTime: String
        # @param TradeCurrency: 交易币种
        # @type TradeCurrency: String
        # @param TradeAmount: 交易金额
        # @type TradeAmount: Float
        # @param TradeName: 交易名称
        # (TradeType=GOODS时填写物品名称，可填写多个，格式无要求；
        # TradeType=SERVICE时填写贸易类别，见常见问题-贸易类别)
        # @type TradeName: String
        # @param TradeCount: 交易数量 (TradeType=GOODS 填写物品数量, TradeType=SERVICE填写服务次数)
        # @type TradeCount: Integer
        # @param GoodsCarrier: 货贸承运人 (TradeType=GOODS 必填)
        # @type GoodsCarrier: String
        # @param ServiceDetail: 服贸交易细节 (TradeType=GOODS 必填, 见常见问题-交易细节)
        # @type ServiceDetail: String
        # @param ServiceTime: 服贸服务时间 (TradeType=GOODS 必填, 见常见问题-服务时间)
        # @type ServiceTime: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :TradeFileId, :TradeOrderId, :PayerId, :PayeeName, :PayeeCountryCode, :TradeType, :TradeTime, :TradeCurrency, :TradeAmount, :TradeName, :TradeCount, :GoodsCarrier, :ServiceDetail, :ServiceTime, :Profile
        
        def initialize(tradefileid=nil, tradeorderid=nil, payerid=nil, payeename=nil, payeecountrycode=nil, tradetype=nil, tradetime=nil, tradecurrency=nil, tradeamount=nil, tradename=nil, tradecount=nil, goodscarrier=nil, servicedetail=nil, servicetime=nil, profile=nil)
          @TradeFileId = tradefileid
          @TradeOrderId = tradeorderid
          @PayerId = payerid
          @PayeeName = payeename
          @PayeeCountryCode = payeecountrycode
          @TradeType = tradetype
          @TradeTime = tradetime
          @TradeCurrency = tradecurrency
          @TradeAmount = tradeamount
          @TradeName = tradename
          @TradeCount = tradecount
          @GoodsCarrier = goodscarrier
          @ServiceDetail = servicedetail
          @ServiceTime = servicetime
          @Profile = profile
        end

        def deserialize(params)
          @TradeFileId = params['TradeFileId']
          @TradeOrderId = params['TradeOrderId']
          @PayerId = params['PayerId']
          @PayeeName = params['PayeeName']
          @PayeeCountryCode = params['PayeeCountryCode']
          @TradeType = params['TradeType']
          @TradeTime = params['TradeTime']
          @TradeCurrency = params['TradeCurrency']
          @TradeAmount = params['TradeAmount']
          @TradeName = params['TradeName']
          @TradeCount = params['TradeCount']
          @GoodsCarrier = params['GoodsCarrier']
          @ServiceDetail = params['ServiceDetail']
          @ServiceTime = params['ServiceTime']
          @Profile = params['Profile']
        end
      end

      # ApplyTrade返回参数结构体
      class ApplyTradeResponse < TencentCloud::Common::AbstractModel
        # @param Result: 提交贸易材料结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyTradeResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApplyTradeResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 提交贸易材料结果
      class ApplyTradeResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Data: 提交贸易材料数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.ApplyTradeData`

        attr_accessor :Code, :Data
        
        def initialize(code=nil, data=nil)
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = ApplyTradeData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # ApplyWithdrawal请求参数结构体
      class ApplyWithdrawalRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SettleAcctNo: 用于提现
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SettleAcctNo: String
        # @param SettleAcctName: 结算账户户名
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SettleAcctName: String
        # @param CurrencyType: 币种 RMB
        # @type CurrencyType: String
        # @param CurrencyUnit: 单位，1：元，2：角，3：分
        # @type CurrencyUnit: Integer
        # @param CurrencyAmt: 金额
        # @type CurrencyAmt: String
        # @param TranWebName: 交易网名称
        # @type TranWebName: String
        # @param IdType: 会员证件类型
        # @type IdType: String
        # @param IdCode: 会员证件号码
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type IdCode: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param CommissionAmount: 手续费金额
        # @type CommissionAmount: String
        # @param WithdrawOrderId: 提现单号，长度32字节
        # @type WithdrawOrderId: String

        attr_accessor :MidasAppId, :SubAppId, :SettleAcctNo, :SettleAcctName, :CurrencyType, :CurrencyUnit, :CurrencyAmt, :TranWebName, :IdType, :IdCode, :MidasSecretId, :MidasSignature, :EncryptType, :MidasEnvironment, :CommissionAmount, :WithdrawOrderId
        
        def initialize(midasappid=nil, subappid=nil, settleacctno=nil, settleacctname=nil, currencytype=nil, currencyunit=nil, currencyamt=nil, tranwebname=nil, idtype=nil, idcode=nil, midassecretid=nil, midassignature=nil, encrypttype=nil, midasenvironment=nil, commissionamount=nil, withdraworderid=nil)
          @MidasAppId = midasappid
          @SubAppId = subappid
          @SettleAcctNo = settleacctno
          @SettleAcctName = settleacctname
          @CurrencyType = currencytype
          @CurrencyUnit = currencyunit
          @CurrencyAmt = currencyamt
          @TranWebName = tranwebname
          @IdType = idtype
          @IdCode = idcode
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @EncryptType = encrypttype
          @MidasEnvironment = midasenvironment
          @CommissionAmount = commissionamount
          @WithdrawOrderId = withdraworderid
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubAppId = params['SubAppId']
          @SettleAcctNo = params['SettleAcctNo']
          @SettleAcctName = params['SettleAcctName']
          @CurrencyType = params['CurrencyType']
          @CurrencyUnit = params['CurrencyUnit']
          @CurrencyAmt = params['CurrencyAmt']
          @TranWebName = params['TranWebName']
          @IdType = params['IdType']
          @IdCode = params['IdCode']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @EncryptType = params['EncryptType']
          @MidasEnvironment = params['MidasEnvironment']
          @CommissionAmount = params['CommissionAmount']
          @WithdrawOrderId = params['WithdrawOrderId']
        end
      end

      # ApplyWithdrawal返回参数结构体
      class ApplyWithdrawalResponse < TencentCloud::Common::AbstractModel
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

      # 分配关系
      class AssignmentData < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播ID
        # @type AnchorId: String
        # @param AnchorName: 主播名称
        # @type AnchorName: String
        # @param AgentId: 代理商ID
        # @type AgentId: String
        # @param AgentName: 代理商名称
        # @type AgentName: String

        attr_accessor :AnchorId, :AnchorName, :AgentId, :AgentName
        
        def initialize(anchorid=nil, anchorname=nil, agentid=nil, agentname=nil)
          @AnchorId = anchorid
          @AnchorName = anchorname
          @AgentId = agentid
          @AgentName = agentname
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @AnchorName = params['AnchorName']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
        end
      end

      # 绑卡列表
      class BankCardItem < TencentCloud::Common::AbstractModel
        # @param EiconBankBranchId: 超级网银行号
        # @type EiconBankBranchId: String
        # @param CnapsBranchId: 大小额行号
        # @type CnapsBranchId: String
        # @param SettleAcctType: 结算账户类型
        # 1 – 本行账户
        # 2 – 他行账户
        # @type SettleAcctType: Integer
        # @param SettleAcctName: 结算账户户名
        # <敏感信息>
        # @type SettleAcctName: String
        # @param AcctBranchName: 开户行名称
        # @type AcctBranchName: String
        # @param SettleAcctNo: 用于提现
        # <敏感信息>
        # @type SettleAcctNo: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param BindType: 验证类型
        # 1 – 小额转账验证
        # 2 – 短信验证
        # @type BindType: Integer
        # @param Mobile: 用于短信验证
        # BindType==2时必填
        # <敏感信息>
        # @type Mobile: String
        # @param IdType: 证件类型
        # @type IdType: String
        # @param IdCode: 证件号码
        # <敏感信息>
        # @type IdCode: String

        attr_accessor :EiconBankBranchId, :CnapsBranchId, :SettleAcctType, :SettleAcctName, :AcctBranchName, :SettleAcctNo, :SubAppId, :BindType, :Mobile, :IdType, :IdCode
        
        def initialize(eiconbankbranchid=nil, cnapsbranchid=nil, settleaccttype=nil, settleacctname=nil, acctbranchname=nil, settleacctno=nil, subappid=nil, bindtype=nil, mobile=nil, idtype=nil, idcode=nil)
          @EiconBankBranchId = eiconbankbranchid
          @CnapsBranchId = cnapsbranchid
          @SettleAcctType = settleaccttype
          @SettleAcctName = settleacctname
          @AcctBranchName = acctbranchname
          @SettleAcctNo = settleacctno
          @SubAppId = subappid
          @BindType = bindtype
          @Mobile = mobile
          @IdType = idtype
          @IdCode = idcode
        end

        def deserialize(params)
          @EiconBankBranchId = params['EiconBankBranchId']
          @CnapsBranchId = params['CnapsBranchId']
          @SettleAcctType = params['SettleAcctType']
          @SettleAcctName = params['SettleAcctName']
          @AcctBranchName = params['AcctBranchName']
          @SettleAcctNo = params['SettleAcctNo']
          @SubAppId = params['SubAppId']
          @BindType = params['BindType']
          @Mobile = params['Mobile']
          @IdType = params['IdType']
          @IdCode = params['IdCode']
        end
      end

      # BindAccount请求参数结构体
      class BindAccountRequest < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播Id
        # @type AnchorId: String
        # @param TransferType: 1 微信企业付款
        # 2 支付宝转账
        # 3 平安银企直连代发转账
        # @type TransferType: Integer
        # @param AccountNo: 收款方标识。
        # 微信为open_id；
        # 支付宝为会员alipay_user_id;
        # 平安为收款方银行账号;
        # @type AccountNo: String
        # @param PhoneNum: 手机号
        # @type PhoneNum: String

        attr_accessor :AnchorId, :TransferType, :AccountNo, :PhoneNum
        
        def initialize(anchorid=nil, transfertype=nil, accountno=nil, phonenum=nil)
          @AnchorId = anchorid
          @TransferType = transfertype
          @AccountNo = accountno
          @PhoneNum = phonenum
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @TransferType = params['TransferType']
          @AccountNo = params['AccountNo']
          @PhoneNum = params['PhoneNum']
        end
      end

      # BindAccount返回参数结构体
      class BindAccountResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMessage: 响应消息。
        # @type ErrMessage: String
        # @param Result: 该字段为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # BindAcct请求参数结构体
      class BindAcctRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param BindType: 1 – 小额转账验证
        # 2 – 短信验证
        # 3 - 一分钱转账验证，无需再调CheckAcct验证绑卡
        # 4 - 银行四要素验证，无需再调CheckAcct验证绑卡
        # 每个结算账户每天只能使用一次小额转账验证
        # @type BindType: Integer
        # @param SettleAcctNo: 用于提现
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SettleAcctNo: String
        # @param SettleAcctName: 结算账户户名
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SettleAcctName: String
        # @param SettleAcctType: 1 – 本行账户
        # 2 – 他行账户
        # @type SettleAcctType: Integer
        # @param IdType: 证件类型，见《证件类型》表
        # @type IdType: String
        # @param IdCode: 证件号码
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type IdCode: String
        # @param AcctBranchName: 开户行名称
        # @type AcctBranchName: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param Mobile: 用于短信验证
        # BindType==2时必填
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type Mobile: String
        # @param CnapsBranchId: 大小额行号，超级网银行号和大小额行号
        # 二选一
        # @type CnapsBranchId: String
        # @param EiconBankBranchId: 超级网银行号，超级网银行号和大小额行号
        # 二选一
        # @type EiconBankBranchId: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param AgencyClientInfo: 经办人信息
        # @type AgencyClientInfo: :class:`Tencentcloud::Cpdp.v20190820.models.AgencyClientInfo`

        attr_accessor :MidasAppId, :SubAppId, :BindType, :SettleAcctNo, :SettleAcctName, :SettleAcctType, :IdType, :IdCode, :AcctBranchName, :MidasSecretId, :MidasSignature, :Mobile, :CnapsBranchId, :EiconBankBranchId, :EncryptType, :MidasEnvironment, :AgencyClientInfo
        
        def initialize(midasappid=nil, subappid=nil, bindtype=nil, settleacctno=nil, settleacctname=nil, settleaccttype=nil, idtype=nil, idcode=nil, acctbranchname=nil, midassecretid=nil, midassignature=nil, mobile=nil, cnapsbranchid=nil, eiconbankbranchid=nil, encrypttype=nil, midasenvironment=nil, agencyclientinfo=nil)
          @MidasAppId = midasappid
          @SubAppId = subappid
          @BindType = bindtype
          @SettleAcctNo = settleacctno
          @SettleAcctName = settleacctname
          @SettleAcctType = settleaccttype
          @IdType = idtype
          @IdCode = idcode
          @AcctBranchName = acctbranchname
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @Mobile = mobile
          @CnapsBranchId = cnapsbranchid
          @EiconBankBranchId = eiconbankbranchid
          @EncryptType = encrypttype
          @MidasEnvironment = midasenvironment
          @AgencyClientInfo = agencyclientinfo
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubAppId = params['SubAppId']
          @BindType = params['BindType']
          @SettleAcctNo = params['SettleAcctNo']
          @SettleAcctName = params['SettleAcctName']
          @SettleAcctType = params['SettleAcctType']
          @IdType = params['IdType']
          @IdCode = params['IdCode']
          @AcctBranchName = params['AcctBranchName']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @Mobile = params['Mobile']
          @CnapsBranchId = params['CnapsBranchId']
          @EiconBankBranchId = params['EiconBankBranchId']
          @EncryptType = params['EncryptType']
          @MidasEnvironment = params['MidasEnvironment']
          unless params['AgencyClientInfo'].nil?
            @AgencyClientInfo = AgencyClientInfo.new
            @AgencyClientInfo.deserialize(params['AgencyClientInfo'])
          end
        end
      end

      # BindAcct返回参数结构体
      class BindAcctResponse < TencentCloud::Common::AbstractModel
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

      # BindOpenBankExternalSubMerchantBankAccount请求参数结构体
      class BindOpenBankExternalSubMerchantBankAccountRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户ID。
        # @type ChannelMerchantId: String
        # @param ChannelSubMerchantId: 渠道子商户ID。
        # @type ChannelSubMerchantId: String
        # @param ChannelName: 渠道名称。
        # __TENPAY__: 商企付
        # __WECHAT__: 微信支付
        # __ALIPAY__: 支付宝
        # @type ChannelName: String
        # @param PaymentMethod: 支付方式。
        # __EBANK_PAYMENT__: ebank支付
        # __OPENBANK_PAYMENT__: openbank支付
        # @type PaymentMethod: String
        # @param ExternalSubMerchantBindBankAccountData: 第三方渠道子商户收款方银行卡信息, 为JSON格式字符串。详情见附录-复杂类型。
        # @type ExternalSubMerchantBindBankAccountData: String
        # @param OutApplyId: 外部申请编号。
        # @type OutApplyId: String
        # @param NotifyUrl: 通知地址。
        # @type NotifyUrl: String
        # @param Environment: 环境类型。
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :ChannelSubMerchantId, :ChannelName, :PaymentMethod, :ExternalSubMerchantBindBankAccountData, :OutApplyId, :NotifyUrl, :Environment
        
        def initialize(channelmerchantid=nil, channelsubmerchantid=nil, channelname=nil, paymentmethod=nil, externalsubmerchantbindbankaccountdata=nil, outapplyid=nil, notifyurl=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @ChannelSubMerchantId = channelsubmerchantid
          @ChannelName = channelname
          @PaymentMethod = paymentmethod
          @ExternalSubMerchantBindBankAccountData = externalsubmerchantbindbankaccountdata
          @OutApplyId = outapplyid
          @NotifyUrl = notifyurl
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @ChannelName = params['ChannelName']
          @PaymentMethod = params['PaymentMethod']
          @ExternalSubMerchantBindBankAccountData = params['ExternalSubMerchantBindBankAccountData']
          @OutApplyId = params['OutApplyId']
          @NotifyUrl = params['NotifyUrl']
          @Environment = params['Environment']
        end
      end

      # BindOpenBankExternalSubMerchantBankAccount返回参数结构体
      class BindOpenBankExternalSubMerchantBankAccountResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.BindOpenBankExternalSubMerchantBankAccountResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = BindOpenBankExternalSubMerchantBankAccountResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 第三方子商户银行卡绑定返回结果
      class BindOpenBankExternalSubMerchantBankAccountResult < TencentCloud::Common::AbstractModel
        # @param ChannelApplyId: 渠道申请编号。
        # @type ChannelApplyId: String
        # @param BindStatus: 绑定状态。
        # __SUCCESS__: 绑定成功
        # __FAILED__: 绑定失败
        # __PROCESSING__: 绑定中。
        # 注意：若返回绑定中，需要再次调用绑定结果查询接口,查询结果。
        # @type BindStatus: String
        # @param BindMessage: 绑定返回描述, 例如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindMessage: String
        # @param ExternalSubMerchantBankAccountReturnData: 渠道子商户银行账户信息, 为JSON格式字符串（绑定成功状态下返回）。详情见附录-复杂类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalSubMerchantBankAccountReturnData: String
        # @param BindSerialNo: 绑卡序列号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindSerialNo: String

        attr_accessor :ChannelApplyId, :BindStatus, :BindMessage, :ExternalSubMerchantBankAccountReturnData, :BindSerialNo
        
        def initialize(channelapplyid=nil, bindstatus=nil, bindmessage=nil, externalsubmerchantbankaccountreturndata=nil, bindserialno=nil)
          @ChannelApplyId = channelapplyid
          @BindStatus = bindstatus
          @BindMessage = bindmessage
          @ExternalSubMerchantBankAccountReturnData = externalsubmerchantbankaccountreturndata
          @BindSerialNo = bindserialno
        end

        def deserialize(params)
          @ChannelApplyId = params['ChannelApplyId']
          @BindStatus = params['BindStatus']
          @BindMessage = params['BindMessage']
          @ExternalSubMerchantBankAccountReturnData = params['ExternalSubMerchantBankAccountReturnData']
          @BindSerialNo = params['BindSerialNo']
        end
      end

      # BindRelateAccReUnionPay请求参数结构体
      class BindRelateAccReUnionPayRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”（右侧）进行分隔）
        # @type TranNetMemberCode: String
        # @param MemberAcctNo: STRING(50)，会员的待绑定账户的账号（即 BindRelateAcctUnionPay接口中的“会员的待绑定账户的账号”）
        # @type MemberAcctNo: String
        # @param MessageCheckCode: STRING(20)，短信验证码（即 BindRelateAcctUnionPay接口中的手机所接收到的短信验证码）
        # @type MessageCheckCode: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :TranNetMemberCode, :MemberAcctNo, :MessageCheckCode, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, trannetmembercode=nil, memberacctno=nil, messagecheckcode=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @TranNetMemberCode = trannetmembercode
          @MemberAcctNo = memberacctno
          @MessageCheckCode = messagecheckcode
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberAcctNo = params['MemberAcctNo']
          @MessageCheckCode = params['MessageCheckCode']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # BindRelateAccReUnionPay返回参数结构体
      class BindRelateAccReUnionPayResponse < TencentCloud::Common::AbstractModel
        # @param FrontSeqNo: STRING(52)，见证系统流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrontSeqNo, :ReservedMsg, :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :RequestId
        
        def initialize(frontseqno=nil, reservedmsg=nil, txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, requestid=nil)
          @FrontSeqNo = frontseqno
          @ReservedMsg = reservedmsg
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @RequestId = requestid
        end

        def deserialize(params)
          @FrontSeqNo = params['FrontSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @RequestId = params['RequestId']
        end
      end

      # BindRelateAcctSmallAmount请求参数结构体
      class BindRelateAcctSmallAmountRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”(右侧)进行分隔）
        # @type TranNetMemberCode: String
        # @param MemberName: STRING(150)，见证子账户的户名（首次绑定的情况下，此字段即为待绑定的提现账户的户名。非首次绑定的情况下，须注意带绑定的提现账户的户名须与留存在后台系统的会员户名一致）
        # @type MemberName: String
        # @param MemberGlobalType: STRING(5)，会员证件类型（详情见“常见问题”）
        # @type MemberGlobalType: String
        # @param MemberGlobalId: STRING(32)，会员证件号码
        # @type MemberGlobalId: String
        # @param MemberAcctNo: STRING(50)，会员的待绑定账户的账号（提现的银行卡）
        # @type MemberAcctNo: String
        # @param BankType: STRING(10)，会员的待绑定账户的本他行类型（1: 本行; 2: 他行）
        # @type BankType: String
        # @param AcctOpenBranchName: STRING(150)，会员的待绑定账户的开户行名称
        # @type AcctOpenBranchName: String
        # @param Mobile: STRING(30)，会员的手机号（手机号须由长度为11位的数字构成）
        # @type Mobile: String
        # @param CnapsBranchId: STRING(20)，会员的待绑定账户的开户行的联行号（本他行类型为他行的情况下，此字段和下一个字段至少一个不为空）
        # @type CnapsBranchId: String
        # @param EiconBankBranchId: STRING(20)，会员的待绑定账户的开户行的超级网银行号（本他行类型为他行的情况下，此字段和上一个字段至少一个不为空）
        # @type EiconBankBranchId: String
        # @param ReservedMsg: STRING(1027)，转账方式（1: 往账鉴权(默认值); 2: 来账鉴权）
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :TranNetMemberCode, :MemberName, :MemberGlobalType, :MemberGlobalId, :MemberAcctNo, :BankType, :AcctOpenBranchName, :Mobile, :CnapsBranchId, :EiconBankBranchId, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, trannetmembercode=nil, membername=nil, memberglobaltype=nil, memberglobalid=nil, memberacctno=nil, banktype=nil, acctopenbranchname=nil, mobile=nil, cnapsbranchid=nil, eiconbankbranchid=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @TranNetMemberCode = trannetmembercode
          @MemberName = membername
          @MemberGlobalType = memberglobaltype
          @MemberGlobalId = memberglobalid
          @MemberAcctNo = memberacctno
          @BankType = banktype
          @AcctOpenBranchName = acctopenbranchname
          @Mobile = mobile
          @CnapsBranchId = cnapsbranchid
          @EiconBankBranchId = eiconbankbranchid
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberName = params['MemberName']
          @MemberGlobalType = params['MemberGlobalType']
          @MemberGlobalId = params['MemberGlobalId']
          @MemberAcctNo = params['MemberAcctNo']
          @BankType = params['BankType']
          @AcctOpenBranchName = params['AcctOpenBranchName']
          @Mobile = params['Mobile']
          @CnapsBranchId = params['CnapsBranchId']
          @EiconBankBranchId = params['EiconBankBranchId']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # BindRelateAcctSmallAmount返回参数结构体
      class BindRelateAcctSmallAmountResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域（来账鉴权的方式下，此字段的值为客户需往监管账户转入的金额。在同名子账户绑定的场景下，若返回""VERIFIED""则说明无需验证直接绑定成功）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # BindRelateAcctUnionPay请求参数结构体
      class BindRelateAcctUnionPayRequest < TencentCloud::Common::AbstractModel
        # @param TranNetMemberCode: STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”（右侧）进行分隔）
        # @type TranNetMemberCode: String
        # @param MemberName: STRING(150)，见证子账户的户名（首次绑定的情况下，此字段即为待绑定的提现账户的户名。非首次绑定的情况下，须注意带绑定的提现账户的户名须与留存在后台系统的会员户名一致）
        # @type MemberName: String
        # @param MemberGlobalType: STRING(5)，会员证件类型（详情见“常见问题”）
        # @type MemberGlobalType: String
        # @param MemberGlobalId: STRING(32)，会员证件号码
        # @type MemberGlobalId: String
        # @param MemberAcctNo: STRING(50)，会员的待绑定账户的账号（提现的银行卡）
        # @type MemberAcctNo: String
        # @param BankType: STRING(10)，会员的待绑定账户的本他行类型（1: 本行; 2: 他行）
        # @type BankType: String
        # @param AcctOpenBranchName: STRING(150)，会员的待绑定账户的开户行名称（若大小额行号不填则送超级网银号对应的银行名称，若填大小额行号则送大小额行号对应的银行名称）
        # @type AcctOpenBranchName: String
        # @param Mobile: STRING(30)，会员的手机号（手机号须由长度为11位的数字构成）
        # @type Mobile: String
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param CnapsBranchId: STRING(20)，会员的待绑定账户的开户行的联行号（本他行类型为他行的情况下，此字段和下一个字段至少一个不为空）
        # @type CnapsBranchId: String
        # @param EiconBankBranchId: STRING(20)，会员的待绑定账户的开户行的超级网银行号（本他行类型为他行的情况下，此字段和上一个字段至少一个不为空）
        # @type EiconBankBranchId: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :TranNetMemberCode, :MemberName, :MemberGlobalType, :MemberGlobalId, :MemberAcctNo, :BankType, :AcctOpenBranchName, :Mobile, :MrchCode, :CnapsBranchId, :EiconBankBranchId, :ReservedMsg, :Profile
        
        def initialize(trannetmembercode=nil, membername=nil, memberglobaltype=nil, memberglobalid=nil, memberacctno=nil, banktype=nil, acctopenbranchname=nil, mobile=nil, mrchcode=nil, cnapsbranchid=nil, eiconbankbranchid=nil, reservedmsg=nil, profile=nil)
          @TranNetMemberCode = trannetmembercode
          @MemberName = membername
          @MemberGlobalType = memberglobaltype
          @MemberGlobalId = memberglobalid
          @MemberAcctNo = memberacctno
          @BankType = banktype
          @AcctOpenBranchName = acctopenbranchname
          @Mobile = mobile
          @MrchCode = mrchcode
          @CnapsBranchId = cnapsbranchid
          @EiconBankBranchId = eiconbankbranchid
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberName = params['MemberName']
          @MemberGlobalType = params['MemberGlobalType']
          @MemberGlobalId = params['MemberGlobalId']
          @MemberAcctNo = params['MemberAcctNo']
          @BankType = params['BankType']
          @AcctOpenBranchName = params['AcctOpenBranchName']
          @Mobile = params['Mobile']
          @MrchCode = params['MrchCode']
          @CnapsBranchId = params['CnapsBranchId']
          @EiconBankBranchId = params['EiconBankBranchId']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # BindRelateAcctUnionPay返回参数结构体
      class BindRelateAcctUnionPayResponse < TencentCloud::Common::AbstractModel
        # @param ReservedMsg: STRING(1027)，保留域（在同名子账户绑定的场景下，若返回"VERIFIED"则说明无需验证直接绑定成功）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReservedMsg, :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :RequestId
        
        def initialize(reservedmsg=nil, txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, requestid=nil)
          @ReservedMsg = reservedmsg
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @RequestId = requestid
        end

        def deserialize(params)
          @ReservedMsg = params['ReservedMsg']
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @RequestId = params['RequestId']
        end
      end

      # 米大师内部存放的合约信息
      class ChannelContractInfo < TencentCloud::Common::AbstractModel
        # @param OutContractCode: 外部合约协议号
        # @type OutContractCode: String
        # @param ChannelContractCode: 米大师内部生成的合约协议号
        # @type ChannelContractCode: String

        attr_accessor :OutContractCode, :ChannelContractCode
        
        def initialize(outcontractcode=nil, channelcontractcode=nil)
          @OutContractCode = outcontractcode
          @ChannelContractCode = channelcontractcode
        end

        def deserialize(params)
          @OutContractCode = params['OutContractCode']
          @ChannelContractCode = params['ChannelContractCode']
        end
      end

      # 米大师内部生成的合约信息
      class ChannelReturnContractInfo < TencentCloud::Common::AbstractModel
        # @param ContractStatus: 平台合约状态
        # 协议状态，枚举值：
        # CONTRACT_STATUS_SIGNED：已签约
        # CONTRACT_STATUS_TERMINATED：未签约
        # CONTRACT_STATUS_PENDING：签约进行中
        # @type ContractStatus: String
        # @param ChannelContractInfo: 米大师内部存放的合约信息
        # @type ChannelContractInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ChannelContractInfo`

        attr_accessor :ContractStatus, :ChannelContractInfo
        
        def initialize(contractstatus=nil, channelcontractinfo=nil)
          @ContractStatus = contractstatus
          @ChannelContractInfo = channelcontractinfo
        end

        def deserialize(params)
          @ContractStatus = params['ContractStatus']
          unless params['ChannelContractInfo'].nil?
            @ChannelContractInfo = ChannelContractInfo.new
            @ChannelContractInfo.deserialize(params['ChannelContractInfo'])
          end
        end
      end

      # CheckAcct请求参数结构体
      class CheckAcctRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param BindType: 1 – 小额转账验证
        # 2 – 短信验证
        # 每个结算账户每天只能使用一次小额转账验证
        # @type BindType: Integer
        # @param SettleAcctNo: 结算账户账号
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SettleAcctNo: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param CheckCode: 短信验证码或指令号
        # BindType==2必填，平安渠道必填
        # @type CheckCode: String
        # @param CurrencyType: 币种 RMB
        # BindType==1必填
        # @type CurrencyType: String
        # @param CurrencyUnit: 单位
        # 1：元，2：角，3：分
        # BindType==1必填
        # @type CurrencyUnit: Integer
        # @param CurrencyAmt: 金额
        # BindType==1必填
        # @type CurrencyAmt: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :SubAppId, :BindType, :SettleAcctNo, :MidasSecretId, :MidasSignature, :CheckCode, :CurrencyType, :CurrencyUnit, :CurrencyAmt, :EncryptType, :MidasEnvironment
        
        def initialize(midasappid=nil, subappid=nil, bindtype=nil, settleacctno=nil, midassecretid=nil, midassignature=nil, checkcode=nil, currencytype=nil, currencyunit=nil, currencyamt=nil, encrypttype=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @SubAppId = subappid
          @BindType = bindtype
          @SettleAcctNo = settleacctno
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @CheckCode = checkcode
          @CurrencyType = currencytype
          @CurrencyUnit = currencyunit
          @CurrencyAmt = currencyamt
          @EncryptType = encrypttype
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubAppId = params['SubAppId']
          @BindType = params['BindType']
          @SettleAcctNo = params['SettleAcctNo']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @CheckCode = params['CheckCode']
          @CurrencyType = params['CurrencyType']
          @CurrencyUnit = params['CurrencyUnit']
          @CurrencyAmt = params['CurrencyAmt']
          @EncryptType = params['EncryptType']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # CheckAcct返回参数结构体
      class CheckAcctResponse < TencentCloud::Common::AbstractModel
        # @param FrontSeqNo: 前置流水号，请保存
        # @type FrontSeqNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrontSeqNo, :RequestId
        
        def initialize(frontseqno=nil, requestid=nil)
          @FrontSeqNo = frontseqno
          @RequestId = requestid
        end

        def deserialize(params)
          @FrontSeqNo = params['FrontSeqNo']
          @RequestId = params['RequestId']
        end
      end

      # CheckAmount请求参数结构体
      class CheckAmountRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”(右侧)进行分隔）
        # @type TranNetMemberCode: String
        # @param TakeCashAcctNo: STRING(50)，会员的待绑定账户的账号（即 BindRelateAcctSmallAmount接口中的“会员的待绑定账户的账号”）
        # @type TakeCashAcctNo: String
        # @param AuthAmt: STRING(20)，鉴权验证金额（即 BindRelateAcctSmallAmount接口中的“会员的待绑定账户收到的验证金额。原小额转账鉴权方式为来账鉴权的情况下此字段须赋值为0.00）
        # @type AuthAmt: String
        # @param Ccy: STRING(3)，币种（默认为RMB）
        # @type Ccy: String
        # @param ReservedMsg: STRING(1027)，原小额转账方式（1: 往账鉴权，此为默认值; 2: 来账鉴权）
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :TranNetMemberCode, :TakeCashAcctNo, :AuthAmt, :Ccy, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, trannetmembercode=nil, takecashacctno=nil, authamt=nil, ccy=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @TranNetMemberCode = trannetmembercode
          @TakeCashAcctNo = takecashacctno
          @AuthAmt = authamt
          @Ccy = ccy
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @TranNetMemberCode = params['TranNetMemberCode']
          @TakeCashAcctNo = params['TakeCashAcctNo']
          @AuthAmt = params['AuthAmt']
          @Ccy = params['Ccy']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # CheckAmount返回参数结构体
      class CheckAmountResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号（即电商见证宝系统生成的流水号，可关联具体一笔请求）
        # @type FrontSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :FrontSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, frontseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @FrontSeqNo = frontseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @FrontSeqNo = params['FrontSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 查询城市编码响应对象
      class CityCodeResult < TencentCloud::Common::AbstractModel
        # @param CityId: 城市编码cityid，数字与字母的结合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityId: String
        # @param Province: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param District: 县区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type District: String
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String

        attr_accessor :CityId, :Province, :District, :City
        
        def initialize(cityid=nil, province=nil, district=nil, city=nil)
          @CityId = cityid
          @Province = province
          @District = district
          @City = city
        end

        def deserialize(params)
          @CityId = params['CityId']
          @Province = params['Province']
          @District = params['District']
          @City = params['City']
        end
      end

      # 银行在途清算结果信息
      class ClearItem < TencentCloud::Common::AbstractModel
        # @param Date: STRING(8)，日期（格式: 20190101）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Date: String
        # @param SubAcctType: STRING(40)，子账号类型（子帐号类型。1: 普通会员子账号; 2: 挂账子账号; 3: 手续费子账号; 4: 利息子账号; 5: 平台担保子账号; 7: 在途; 8: 理财购买子帐号; 9: 理财赎回子帐号; 10: 平台子拥有结算子帐号）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctType: String
        # @param ReconcileStatus: STRING(3)，对账状态（0: 成功; 1: 失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReconcileStatus: String
        # @param ReconcileReturnMsg: STRING(300)，对账返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReconcileReturnMsg: String
        # @param ClearingStatus: STRING(20)，清算状态（0: 成功; 1: 失败; 2: 异常; 3: 待处理）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClearingStatus: String
        # @param ClearingReturnMsg: STRING(2)，清算返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClearingReturnMsg: String
        # @param TotalAmt: STRING(300)，待清算总金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalAmt: String

        attr_accessor :Date, :SubAcctType, :ReconcileStatus, :ReconcileReturnMsg, :ClearingStatus, :ClearingReturnMsg, :TotalAmt
        
        def initialize(date=nil, subaccttype=nil, reconcilestatus=nil, reconcilereturnmsg=nil, clearingstatus=nil, clearingreturnmsg=nil, totalamt=nil)
          @Date = date
          @SubAcctType = subaccttype
          @ReconcileStatus = reconcilestatus
          @ReconcileReturnMsg = reconcilereturnmsg
          @ClearingStatus = clearingstatus
          @ClearingReturnMsg = clearingreturnmsg
          @TotalAmt = totalamt
        end

        def deserialize(params)
          @Date = params['Date']
          @SubAcctType = params['SubAcctType']
          @ReconcileStatus = params['ReconcileStatus']
          @ReconcileReturnMsg = params['ReconcileReturnMsg']
          @ClearingStatus = params['ClearingStatus']
          @ClearingReturnMsg = params['ClearingReturnMsg']
          @TotalAmt = params['TotalAmt']
        end
      end

      # CloseOpenBankPaymentOrder请求参数结构体
      class CloseOpenBankPaymentOrderRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户ID，云企付平台下发给外部接入平台。
        # @type ChannelMerchantId: String
        # @param OutOrderId: 外部商户订单号，与ChannelOrderId不能同时为空
        # @type OutOrderId: String
        # @param ChannelOrderId: 云企付平台订单号，与OutOrderId不能同时为空
        # @type ChannelOrderId: String
        # @param Environment: 接入环境。沙箱环境填 sandbox。缺省默认调用生产环境
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :OutOrderId, :ChannelOrderId, :Environment
        
        def initialize(channelmerchantid=nil, outorderid=nil, channelorderid=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @OutOrderId = outorderid
          @ChannelOrderId = channelorderid
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @OutOrderId = params['OutOrderId']
          @ChannelOrderId = params['ChannelOrderId']
          @Environment = params['Environment']
        end
      end

      # CloseOpenBankPaymentOrder返回参数结构体
      class CloseOpenBankPaymentOrderResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 业务系统返回码，SUCCESS表示成功，其他表示失败。
        # @type ErrCode: String
        # @param ErrMessage: 业务系统返回消息
        # @type ErrMessage: String
        # @param Result: 关单响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CloseOpenBankPaymentOrderResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = CloseOpenBankPaymentOrderResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云企付-关单响应
      class CloseOpenBankPaymentOrderResult < TencentCloud::Common::AbstractModel
        # @param OutOrderId: 外部商户订单号
        # @type OutOrderId: String
        # @param ChannelOrderId: 云企付平台订单号
        # @type ChannelOrderId: String
        # @param OrderStatus: 订单状态。关单成功CLOSED
        # @type OrderStatus: String

        attr_accessor :OutOrderId, :ChannelOrderId, :OrderStatus
        
        def initialize(outorderid=nil, channelorderid=nil, orderstatus=nil)
          @OutOrderId = outorderid
          @ChannelOrderId = channelorderid
          @OrderStatus = orderstatus
        end

        def deserialize(params)
          @OutOrderId = params['OutOrderId']
          @ChannelOrderId = params['ChannelOrderId']
          @OrderStatus = params['OrderStatus']
        end
      end

      # CloseOrder请求参数结构体
      class CloseOrderRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param UserId: 用户ID，长度不小于5位， 仅支持字母和数字的组合
        # @type UserId: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param OutTradeNo: 业务订单号，OutTradeNo ， TransactionId二选一，不能都为空,优先使用 OutTradeNo
        # @type OutTradeNo: String
        # @param TransactionId: 聚鑫订单号，OutTradeNo ， TransactionId二选一，不能都为空,优先使用 OutTradeNo
        # @type TransactionId: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :UserId, :MidasSecretId, :MidasSignature, :OutTradeNo, :TransactionId, :MidasEnvironment
        
        def initialize(midasappid=nil, userid=nil, midassecretid=nil, midassignature=nil, outtradeno=nil, transactionid=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @UserId = userid
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @OutTradeNo = outtradeno
          @TransactionId = transactionid
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @UserId = params['UserId']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @OutTradeNo = params['OutTradeNo']
          @TransactionId = params['TransactionId']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # CloseOrder返回参数结构体
      class CloseOrderResponse < TencentCloud::Common::AbstractModel
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

      # ConfirmOrder请求参数结构体
      class ConfirmOrderRequest < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 分配给商户的AppId
        # @type MerchantAppId: String
        # @param OrderNo: 平台流水号。消费订单发起成功后，返回的平台唯一订单号。
        # @type OrderNo: String

        attr_accessor :MerchantAppId, :OrderNo
        
        def initialize(merchantappid=nil, orderno=nil)
          @MerchantAppId = merchantappid
          @OrderNo = orderno
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @OrderNo = params['OrderNo']
        end
      end

      # ConfirmOrder返回参数结构体
      class ConfirmOrderResponse < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 分配给商户的AppId
        # @type MerchantAppId: String
        # @param OrderNo: 平台流水号。消费订单发起成功后，返回的平台唯一订单号。
        # @type OrderNo: String
        # @param Status: 订单确认状态。0-确认失败
        # 1-确认成功
        # 2-可疑状态
        # @type Status: String
        # @param Description: 订单确认状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantAppId, :OrderNo, :Status, :Description, :RequestId
        
        def initialize(merchantappid=nil, orderno=nil, status=nil, description=nil, requestid=nil)
          @MerchantAppId = merchantappid
          @OrderNo = orderno
          @Status = status
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @OrderNo = params['OrderNo']
          @Status = params['Status']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # 合约信息
      class ContractInfo < TencentCloud::Common::AbstractModel
        # @param ChannelContractMerchantId: 米大师内部签约商户号
        # @type ChannelContractMerchantId: String
        # @param ChannelContractSubMerchantId: 米大师内部签约子商户号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelContractSubMerchantId: String
        # @param ChannelContractAppId: 米大师内部签约应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelContractAppId: String
        # @param ChannelContractSubAppId: 米大师内部签约子应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelContractSubAppId: String
        # @param OutContractCode: 业务合约协议号
        # @type OutContractCode: String
        # @param ExternalContractUserInfoList: 第三方渠道用户信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalContractUserInfoList: Array
        # @param ContractMethod: 签约方式，如 wechat_app ，使用app方式下的微信签
        # @type ContractMethod: String
        # @param ContractSceneId: 合约场景id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractSceneId: String
        # @param UserInfo: 用户信息
        # @type UserInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ContractUserInfo`
        # @param ExternalContractData: 第三方渠道签约数据
        # @type ExternalContractData: String

        attr_accessor :ChannelContractMerchantId, :ChannelContractSubMerchantId, :ChannelContractAppId, :ChannelContractSubAppId, :OutContractCode, :ExternalContractUserInfoList, :ContractMethod, :ContractSceneId, :UserInfo, :ExternalContractData
        
        def initialize(channelcontractmerchantid=nil, channelcontractsubmerchantid=nil, channelcontractappid=nil, channelcontractsubappid=nil, outcontractcode=nil, externalcontractuserinfolist=nil, contractmethod=nil, contractsceneid=nil, userinfo=nil, externalcontractdata=nil)
          @ChannelContractMerchantId = channelcontractmerchantid
          @ChannelContractSubMerchantId = channelcontractsubmerchantid
          @ChannelContractAppId = channelcontractappid
          @ChannelContractSubAppId = channelcontractsubappid
          @OutContractCode = outcontractcode
          @ExternalContractUserInfoList = externalcontractuserinfolist
          @ContractMethod = contractmethod
          @ContractSceneId = contractsceneid
          @UserInfo = userinfo
          @ExternalContractData = externalcontractdata
        end

        def deserialize(params)
          @ChannelContractMerchantId = params['ChannelContractMerchantId']
          @ChannelContractSubMerchantId = params['ChannelContractSubMerchantId']
          @ChannelContractAppId = params['ChannelContractAppId']
          @ChannelContractSubAppId = params['ChannelContractSubAppId']
          @OutContractCode = params['OutContractCode']
          unless params['ExternalContractUserInfoList'].nil?
            @ExternalContractUserInfoList = []
            params['ExternalContractUserInfoList'].each do |i|
              externalcontractuserinfo_tmp = ExternalContractUserInfo.new
              externalcontractuserinfo_tmp.deserialize(i)
              @ExternalContractUserInfoList << externalcontractuserinfo_tmp
            end
          end
          @ContractMethod = params['ContractMethod']
          @ContractSceneId = params['ContractSceneId']
          unless params['UserInfo'].nil?
            @UserInfo = ContractUserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @ExternalContractData = params['ExternalContractData']
        end
      end

      # 支付中签约子订单列表
      class ContractOrderInSubOrder < TencentCloud::Common::AbstractModel
        # @param SubMchIncome: 子订单结算应收金额，单位： 分
        # @type SubMchIncome: Integer
        # @param PlatformIncome: 子订单平台应收金额，单位：分
        # @type PlatformIncome: Integer
        # @param ProductDetail: 子订单商品详情
        # @type ProductDetail: String
        # @param ProductName: 子订单商品名称
        # @type ProductName: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SubOutTradeNo: 子订单号
        # @type SubOutTradeNo: String
        # @param Amt: 子订单支付金额
        # @type Amt: Integer
        # @param OriginalAmt: 子订单原始金额
        # @type OriginalAmt: Integer
        # @param Metadata: 发货标识，由业务在调用聚鑫下单接口的 时候下发
        # @type Metadata: String

        attr_accessor :SubMchIncome, :PlatformIncome, :ProductDetail, :ProductName, :SubAppId, :SubOutTradeNo, :Amt, :OriginalAmt, :Metadata
        
        def initialize(submchincome=nil, platformincome=nil, productdetail=nil, productname=nil, subappid=nil, subouttradeno=nil, amt=nil, originalamt=nil, metadata=nil)
          @SubMchIncome = submchincome
          @PlatformIncome = platformincome
          @ProductDetail = productdetail
          @ProductName = productname
          @SubAppId = subappid
          @SubOutTradeNo = subouttradeno
          @Amt = amt
          @OriginalAmt = originalamt
          @Metadata = metadata
        end

        def deserialize(params)
          @SubMchIncome = params['SubMchIncome']
          @PlatformIncome = params['PlatformIncome']
          @ProductDetail = params['ProductDetail']
          @ProductName = params['ProductName']
          @SubAppId = params['SubAppId']
          @SubOutTradeNo = params['SubOutTradeNo']
          @Amt = params['Amt']
          @OriginalAmt = params['OriginalAmt']
          @Metadata = params['Metadata']
        end
      end

      # ContractOrder请求参数结构体
      class ContractOrderRequest < TencentCloud::Common::AbstractModel
        # @param CurrencyType: ISO 货币代码，CNY
        # @type CurrencyType: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param OutTradeNo: 支付订单号，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        # @type OutTradeNo: String
        # @param ProductDetail: 商品详情，需要URL编码
        # @type ProductDetail: String
        # @param ProductId: 商品ID，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        # @type ProductId: String
        # @param ProductName: 商品名称，需要URL编码
        # @type ProductName: String
        # @param TotalAmt: 支付金额，单位： 分
        # @type TotalAmt: Integer
        # @param UserId: 用户ID，长度不小于5位，仅支持字母和数字的组合
        # @type UserId: String
        # @param RealChannel: 银行真实渠道.如:bank_pingan
        # @type RealChannel: String
        # @param OriginalAmt: 原始金额
        # @type OriginalAmt: Integer
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param ContractNotifyUrl: 签约通知地址
        # @type ContractNotifyUrl: String
        # @param CallbackUrl: Web端回调地址
        # @type CallbackUrl: String
        # @param Channel: 指定支付渠道：  wechat：微信支付  qqwallet：QQ钱包
        #  bank：网银支付  只有一个渠道时需要指定
        # @type Channel: String
        # @param Metadata: 透传字段，支付成功回调透传给应用，用于业务透传自定义内容
        # @type Metadata: String
        # @param Quantity: 购买数量，不传默认为1
        # @type Quantity: Integer
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SubOrderList: 子订单信息列表，格式：子订单号、子应用ID、金额。 压缩后最长不可超过65535字节(去除空格，换行，制表符等无意义字符)
        # 注：接入银行或其他支付渠道服务商模式下，必传
        # @type SubOrderList: Array
        # @param TotalMchIncome: 结算应收金额，单位：分
        # @type TotalMchIncome: Integer
        # @param TotalPlatformIncome: 平台应收金额，单位：分
        # @type TotalPlatformIncome: Integer
        # @param WxOpenId: 微信公众号/小程序支付时为必选，需要传微信下的openid
        # @type WxOpenId: String
        # @param WxSubOpenId: 在服务商模式下，微信公众号/小程序支付时wx_sub_openid和wx_openid二选一
        # @type WxSubOpenId: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param WxAppId: 微信商户应用ID
        # @type WxAppId: String
        # @param WxSubAppId: 微信商户子应用ID
        # @type WxSubAppId: String
        # @param PaymentNotifyUrl: 支付通知地址
        # @type PaymentNotifyUrl: String
        # @param ContractSceneId: 传入调用方在Midas注册签约信息时获得的ContractSceneId。若未在Midas注册签约信息，则传入ExternalContractData。注意：ContractSceneId与ExternalContractData必须二选一传入其中一个
        # @type ContractSceneId: String
        # @param ExternalContractData: 需要按照各个渠道的扩展签约信息规范组装好该字段。若未在Midas注册签约信息，则传入该字段。注意：ContractSceneId与ExternalContractData必须二选一传入其中一个
        # @type ExternalContractData: String
        # @param OutContractCode: 外部签约协议号，唯一标记一个签约关系。仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        # @type OutContractCode: String
        # @param AttachData: 透传给第三方渠道的附加数据
        # @type AttachData: String
        # @param ContractDisplayName: 展示用的签约用户名称，若不传入时，默认取UserId
        # @type ContractDisplayName: String

        attr_accessor :CurrencyType, :MidasAppId, :OutTradeNo, :ProductDetail, :ProductId, :ProductName, :TotalAmt, :UserId, :RealChannel, :OriginalAmt, :MidasSecretId, :MidasSignature, :ContractNotifyUrl, :CallbackUrl, :Channel, :Metadata, :Quantity, :SubAppId, :SubOrderList, :TotalMchIncome, :TotalPlatformIncome, :WxOpenId, :WxSubOpenId, :MidasEnvironment, :WxAppId, :WxSubAppId, :PaymentNotifyUrl, :ContractSceneId, :ExternalContractData, :OutContractCode, :AttachData, :ContractDisplayName
        
        def initialize(currencytype=nil, midasappid=nil, outtradeno=nil, productdetail=nil, productid=nil, productname=nil, totalamt=nil, userid=nil, realchannel=nil, originalamt=nil, midassecretid=nil, midassignature=nil, contractnotifyurl=nil, callbackurl=nil, channel=nil, metadata=nil, quantity=nil, subappid=nil, suborderlist=nil, totalmchincome=nil, totalplatformincome=nil, wxopenid=nil, wxsubopenid=nil, midasenvironment=nil, wxappid=nil, wxsubappid=nil, paymentnotifyurl=nil, contractsceneid=nil, externalcontractdata=nil, outcontractcode=nil, attachdata=nil, contractdisplayname=nil)
          @CurrencyType = currencytype
          @MidasAppId = midasappid
          @OutTradeNo = outtradeno
          @ProductDetail = productdetail
          @ProductId = productid
          @ProductName = productname
          @TotalAmt = totalamt
          @UserId = userid
          @RealChannel = realchannel
          @OriginalAmt = originalamt
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @ContractNotifyUrl = contractnotifyurl
          @CallbackUrl = callbackurl
          @Channel = channel
          @Metadata = metadata
          @Quantity = quantity
          @SubAppId = subappid
          @SubOrderList = suborderlist
          @TotalMchIncome = totalmchincome
          @TotalPlatformIncome = totalplatformincome
          @WxOpenId = wxopenid
          @WxSubOpenId = wxsubopenid
          @MidasEnvironment = midasenvironment
          @WxAppId = wxappid
          @WxSubAppId = wxsubappid
          @PaymentNotifyUrl = paymentnotifyurl
          @ContractSceneId = contractsceneid
          @ExternalContractData = externalcontractdata
          @OutContractCode = outcontractcode
          @AttachData = attachdata
          @ContractDisplayName = contractdisplayname
        end

        def deserialize(params)
          @CurrencyType = params['CurrencyType']
          @MidasAppId = params['MidasAppId']
          @OutTradeNo = params['OutTradeNo']
          @ProductDetail = params['ProductDetail']
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @TotalAmt = params['TotalAmt']
          @UserId = params['UserId']
          @RealChannel = params['RealChannel']
          @OriginalAmt = params['OriginalAmt']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @ContractNotifyUrl = params['ContractNotifyUrl']
          @CallbackUrl = params['CallbackUrl']
          @Channel = params['Channel']
          @Metadata = params['Metadata']
          @Quantity = params['Quantity']
          @SubAppId = params['SubAppId']
          unless params['SubOrderList'].nil?
            @SubOrderList = []
            params['SubOrderList'].each do |i|
              contractorderinsuborder_tmp = ContractOrderInSubOrder.new
              contractorderinsuborder_tmp.deserialize(i)
              @SubOrderList << contractorderinsuborder_tmp
            end
          end
          @TotalMchIncome = params['TotalMchIncome']
          @TotalPlatformIncome = params['TotalPlatformIncome']
          @WxOpenId = params['WxOpenId']
          @WxSubOpenId = params['WxSubOpenId']
          @MidasEnvironment = params['MidasEnvironment']
          @WxAppId = params['WxAppId']
          @WxSubAppId = params['WxSubAppId']
          @PaymentNotifyUrl = params['PaymentNotifyUrl']
          @ContractSceneId = params['ContractSceneId']
          @ExternalContractData = params['ExternalContractData']
          @OutContractCode = params['OutContractCode']
          @AttachData = params['AttachData']
          @ContractDisplayName = params['ContractDisplayName']
        end
      end

      # ContractOrder返回参数结构体
      class ContractOrderResponse < TencentCloud::Common::AbstractModel
        # @param TotalAmt: 支付金额，单位： 分
        # @type TotalAmt: Integer
        # @param OutTradeNo: 应用支付订单号
        # @type OutTradeNo: String
        # @param PayInfo: 支付参数透传给聚鑫SDK（原文透传给SDK即可，不需要解码）
        # @type PayInfo: String
        # @param TransactionId: 聚鑫的交易订单号
        # @type TransactionId: String
        # @param OutContractCode: 外部签约协议号
        # @type OutContractCode: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalAmt, :OutTradeNo, :PayInfo, :TransactionId, :OutContractCode, :RequestId
        
        def initialize(totalamt=nil, outtradeno=nil, payinfo=nil, transactionid=nil, outcontractcode=nil, requestid=nil)
          @TotalAmt = totalamt
          @OutTradeNo = outtradeno
          @PayInfo = payinfo
          @TransactionId = transactionid
          @OutContractCode = outcontractcode
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalAmt = params['TotalAmt']
          @OutTradeNo = params['OutTradeNo']
          @PayInfo = params['PayInfo']
          @TransactionId = params['TransactionId']
          @OutContractCode = params['OutContractCode']
          @RequestId = params['RequestId']
        end
      end

      # 合同-支付方式列表响应对象
      class ContractPayListResult < TencentCloud::Common::AbstractModel
        # @param PaymentId: 支付方式编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentId: String
        # @param PaymentType: 支持的交易类型（多个以小写逗号分开，0现金，1刷卡，2主扫，3被扫，4JSPAY，5预授权）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentType: String
        # @param PaymentTag: 支付标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentTag: String
        # @param PaymentIcon: 支付方式图片url路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentIcon: String
        # @param PaymentName: 付款方式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentName: String
        # @param PaymentInternalName: 付款方式名称（内部名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentInternalName: String
        # @param PaymentOptionOne: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionOne: String
        # @param PaymentOptionTwo: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionTwo: String
        # @param PaymentOptionThree: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionThree: String
        # @param PaymentOptionFour: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionFour: String
        # @param PaymentOptionFive: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionFive: String
        # @param PaymentOptionSix: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionSix: String
        # @param PaymentOptionSeven: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionSeven: String
        # @param PaymentOptionOther: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionOther: String
        # @param PaymentOptionNine: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionNine: String
        # @param PaymentOptionTen: 支付方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionTen: String

        attr_accessor :PaymentId, :PaymentType, :PaymentTag, :PaymentIcon, :PaymentName, :PaymentInternalName, :PaymentOptionOne, :PaymentOptionTwo, :PaymentOptionThree, :PaymentOptionFour, :PaymentOptionFive, :PaymentOptionSix, :PaymentOptionSeven, :PaymentOptionOther, :PaymentOptionNine, :PaymentOptionTen
        
        def initialize(paymentid=nil, paymenttype=nil, paymenttag=nil, paymenticon=nil, paymentname=nil, paymentinternalname=nil, paymentoptionone=nil, paymentoptiontwo=nil, paymentoptionthree=nil, paymentoptionfour=nil, paymentoptionfive=nil, paymentoptionsix=nil, paymentoptionseven=nil, paymentoptionother=nil, paymentoptionnine=nil, paymentoptionten=nil)
          @PaymentId = paymentid
          @PaymentType = paymenttype
          @PaymentTag = paymenttag
          @PaymentIcon = paymenticon
          @PaymentName = paymentname
          @PaymentInternalName = paymentinternalname
          @PaymentOptionOne = paymentoptionone
          @PaymentOptionTwo = paymentoptiontwo
          @PaymentOptionThree = paymentoptionthree
          @PaymentOptionFour = paymentoptionfour
          @PaymentOptionFive = paymentoptionfive
          @PaymentOptionSix = paymentoptionsix
          @PaymentOptionSeven = paymentoptionseven
          @PaymentOptionOther = paymentoptionother
          @PaymentOptionNine = paymentoptionnine
          @PaymentOptionTen = paymentoptionten
        end

        def deserialize(params)
          @PaymentId = params['PaymentId']
          @PaymentType = params['PaymentType']
          @PaymentTag = params['PaymentTag']
          @PaymentIcon = params['PaymentIcon']
          @PaymentName = params['PaymentName']
          @PaymentInternalName = params['PaymentInternalName']
          @PaymentOptionOne = params['PaymentOptionOne']
          @PaymentOptionTwo = params['PaymentOptionTwo']
          @PaymentOptionThree = params['PaymentOptionThree']
          @PaymentOptionFour = params['PaymentOptionFour']
          @PaymentOptionFive = params['PaymentOptionFive']
          @PaymentOptionSix = params['PaymentOptionSix']
          @PaymentOptionSeven = params['PaymentOptionSeven']
          @PaymentOptionOther = params['PaymentOptionOther']
          @PaymentOptionNine = params['PaymentOptionNine']
          @PaymentOptionTen = params['PaymentOptionTen']
        end
      end

      # 签约同步信息
      class ContractSyncInfo < TencentCloud::Common::AbstractModel
        # @param ExternalReturnContractInfo: 第三方渠道合约信息
        # @type ExternalReturnContractInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ExternalReturnContractInfo`
        # @param ExternalContractUserInfo: 第三方渠道用户信息
        # @type ExternalContractUserInfo: Array
        # @param ContractMethod: 签约方式，枚举值，
        # <br/>CONTRACT_METHOD_WECHAT_INVALID: 无效
        # CONTRACT_METHOD_WECHAT_APP: 微信APP
        # CONTRACT_METHOD_WECHAT_PUBLIC: 微信公众号
        # CONTRACT_METHOD_WECHAT_MINIPROGRAM: 微信小程序
        # CONTRACT_METHOD_WECHAT_H5: 微信H5
        # @type ContractMethod: String
        # @param ContractSceneId: 在米大师侧分配的场景id
        # @type ContractSceneId: String
        # @param ExternalReturnContractData: 调用方从第三方渠道查询到的签约数据，由各个渠道定义
        # @type ExternalReturnContractData: String

        attr_accessor :ExternalReturnContractInfo, :ExternalContractUserInfo, :ContractMethod, :ContractSceneId, :ExternalReturnContractData
        
        def initialize(externalreturncontractinfo=nil, externalcontractuserinfo=nil, contractmethod=nil, contractsceneid=nil, externalreturncontractdata=nil)
          @ExternalReturnContractInfo = externalreturncontractinfo
          @ExternalContractUserInfo = externalcontractuserinfo
          @ContractMethod = contractmethod
          @ContractSceneId = contractsceneid
          @ExternalReturnContractData = externalreturncontractdata
        end

        def deserialize(params)
          unless params['ExternalReturnContractInfo'].nil?
            @ExternalReturnContractInfo = ExternalReturnContractInfo.new
            @ExternalReturnContractInfo.deserialize(params['ExternalReturnContractInfo'])
          end
          unless params['ExternalContractUserInfo'].nil?
            @ExternalContractUserInfo = []
            params['ExternalContractUserInfo'].each do |i|
              externalcontractuserinfo_tmp = ExternalContractUserInfo.new
              externalcontractuserinfo_tmp.deserialize(i)
              @ExternalContractUserInfo << externalcontractuserinfo_tmp
            end
          end
          @ContractMethod = params['ContractMethod']
          @ContractSceneId = params['ContractSceneId']
          @ExternalReturnContractData = params['ExternalReturnContractData']
        end
      end

      # 用户信息
      class ContractUserInfo < TencentCloud::Common::AbstractModel
        # @param UserType: USER_ID: 用户ID
        # ANONYMOUS: 匿名类型用户ID
        # @type UserType: String
        # @param UserId: 用户类型
        # @type UserId: String

        attr_accessor :UserType, :UserId
        
        def initialize(usertype=nil, userid=nil)
          @UserType = usertype
          @UserId = userid
        end

        def deserialize(params)
          @UserType = params['UserType']
          @UserId = params['UserId']
        end
      end

      # CreateAcct请求参数结构体
      class CreateAcctRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫平台分配的支付MidasAppId
        # @type MidasAppId: String
        # @param SubMchId: 业务平台的子商户ID，唯一
        # @type SubMchId: String
        # @param SubMchName: 子商户名称
        # @type SubMchName: String
        # @param Address: 子商户地址
        # @type Address: String
        # @param Contact: 子商户联系人
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type Contact: String
        # @param Mobile: 联系人手机号
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type Mobile: String
        # @param Email: 邮箱
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type Email: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param SubMchType: 子商户类型：
        # 个人: personal
        # 企业: enterprise
        # 个体工商户: individual
        # 缺省: enterprise
        # @type SubMchType: String
        # @param ShortName: 不填则默认子商户名称
        # @type ShortName: String
        # @param SubMerchantMemberType: 子商户会员类型：
        # general: 普通子账户
        # merchant: 商户子账户
        # 缺省: general
        # @type SubMerchantMemberType: String
        # @param SubMerchantKey: 子商户密钥
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SubMerchantKey: String
        # @param SubMerchantPrivateKey: 子商户私钥
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SubMerchantPrivateKey: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param SubAcctNo: 银行生成的子商户账户，已开户的场景需要录入
        # @type SubAcctNo: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param SubMerchantStoreName: 店铺名称
        # 企业、个体工商户必输
        # @type SubMerchantStoreName: String
        # @param OrganizationInfo: 公司信息
        # @type OrganizationInfo: :class:`Tencentcloud::Cpdp.v20190820.models.OrganizationInfo`

        attr_accessor :MidasAppId, :SubMchId, :SubMchName, :Address, :Contact, :Mobile, :Email, :MidasSecretId, :MidasSignature, :SubMchType, :ShortName, :SubMerchantMemberType, :SubMerchantKey, :SubMerchantPrivateKey, :EncryptType, :SubAcctNo, :MidasEnvironment, :SubMerchantStoreName, :OrganizationInfo
        
        def initialize(midasappid=nil, submchid=nil, submchname=nil, address=nil, contact=nil, mobile=nil, email=nil, midassecretid=nil, midassignature=nil, submchtype=nil, shortname=nil, submerchantmembertype=nil, submerchantkey=nil, submerchantprivatekey=nil, encrypttype=nil, subacctno=nil, midasenvironment=nil, submerchantstorename=nil, organizationinfo=nil)
          @MidasAppId = midasappid
          @SubMchId = submchid
          @SubMchName = submchname
          @Address = address
          @Contact = contact
          @Mobile = mobile
          @Email = email
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @SubMchType = submchtype
          @ShortName = shortname
          @SubMerchantMemberType = submerchantmembertype
          @SubMerchantKey = submerchantkey
          @SubMerchantPrivateKey = submerchantprivatekey
          @EncryptType = encrypttype
          @SubAcctNo = subacctno
          @MidasEnvironment = midasenvironment
          @SubMerchantStoreName = submerchantstorename
          @OrganizationInfo = organizationinfo
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubMchId = params['SubMchId']
          @SubMchName = params['SubMchName']
          @Address = params['Address']
          @Contact = params['Contact']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @SubMchType = params['SubMchType']
          @ShortName = params['ShortName']
          @SubMerchantMemberType = params['SubMerchantMemberType']
          @SubMerchantKey = params['SubMerchantKey']
          @SubMerchantPrivateKey = params['SubMerchantPrivateKey']
          @EncryptType = params['EncryptType']
          @SubAcctNo = params['SubAcctNo']
          @MidasEnvironment = params['MidasEnvironment']
          @SubMerchantStoreName = params['SubMerchantStoreName']
          unless params['OrganizationInfo'].nil?
            @OrganizationInfo = OrganizationInfo.new
            @OrganizationInfo.deserialize(params['OrganizationInfo'])
          end
        end
      end

      # CreateAcct返回参数结构体
      class CreateAcctResponse < TencentCloud::Common::AbstractModel
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SubAcctNo: 银行生成的子商户账户
        # @type SubAcctNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAppId, :SubAcctNo, :RequestId
        
        def initialize(subappid=nil, subacctno=nil, requestid=nil)
          @SubAppId = subappid
          @SubAcctNo = subacctno
          @RequestId = requestid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @SubAcctNo = params['SubAcctNo']
          @RequestId = params['RequestId']
        end
      end

      # CreateAgentTaxPaymentInfos请求参数结构体
      class CreateAgentTaxPaymentInfosRequest < TencentCloud::Common::AbstractModel
        # @param AgentId: 代理商ID
        # @type AgentId: String
        # @param Channel: 平台渠道
        # @type Channel: Integer
        # @param Type: 类型。0-视同，1-个体工商户
        # @type Type: Integer
        # @param RawElectronicCertUrl: 源电子凭证下载地址
        # @type RawElectronicCertUrl: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param AgentTaxPaymentInfos: 完税信息
        # @type AgentTaxPaymentInfos: Array
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :AgentId, :Channel, :Type, :RawElectronicCertUrl, :FileName, :AgentTaxPaymentInfos, :Profile
        
        def initialize(agentid=nil, channel=nil, type=nil, rawelectroniccerturl=nil, filename=nil, agenttaxpaymentinfos=nil, profile=nil)
          @AgentId = agentid
          @Channel = channel
          @Type = type
          @RawElectronicCertUrl = rawelectroniccerturl
          @FileName = filename
          @AgentTaxPaymentInfos = agenttaxpaymentinfos
          @Profile = profile
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @Channel = params['Channel']
          @Type = params['Type']
          @RawElectronicCertUrl = params['RawElectronicCertUrl']
          @FileName = params['FileName']
          unless params['AgentTaxPaymentInfos'].nil?
            @AgentTaxPaymentInfos = []
            params['AgentTaxPaymentInfos'].each do |i|
              agenttaxpayment_tmp = AgentTaxPayment.new
              agenttaxpayment_tmp.deserialize(i)
              @AgentTaxPaymentInfos << agenttaxpayment_tmp
            end
          end
          @Profile = params['Profile']
        end
      end

      # CreateAgentTaxPaymentInfos返回参数结构体
      class CreateAgentTaxPaymentInfosResponse < TencentCloud::Common::AbstractModel
        # @param AgentTaxPaymentBatch: 代理商完税证明批次信息
        # @type AgentTaxPaymentBatch: :class:`Tencentcloud::Cpdp.v20190820.models.AgentTaxPaymentBatch`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentTaxPaymentBatch, :RequestId
        
        def initialize(agenttaxpaymentbatch=nil, requestid=nil)
          @AgentTaxPaymentBatch = agenttaxpaymentbatch
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentTaxPaymentBatch'].nil?
            @AgentTaxPaymentBatch = AgentTaxPaymentBatch.new
            @AgentTaxPaymentBatch.deserialize(params['AgentTaxPaymentBatch'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAnchor请求参数结构体
      class CreateAnchorRequest < TencentCloud::Common::AbstractModel
        # @param AnchorUid: 主播业务ID，唯一
        # @type AnchorUid: String
        # @param AnchorName: 主播姓名
        # @type AnchorName: String
        # @param AnchorPhone: 主播电话
        # _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        # @type AnchorPhone: String
        # @param AnchorEmail: 主播邮箱
        # _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        # @type AnchorEmail: String
        # @param AnchorAddress: 主播地址
        # _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        # @type AnchorAddress: String
        # @param AnchorIdNo: 主播身份证号
        # _敏感信息_ 使用 __AES128-CBC-PKCS#7__ 加密
        # @type AnchorIdNo: String
        # @param AnchorType: 主播类型
        # __KMusic__:全民K歌
        # __QMusic__:QQ音乐
        # __WeChat__:微信视频号
        # @type AnchorType: String
        # @param AnchorExtendInfo: 主播扩展信息
        # @type AnchorExtendInfo: Array

        attr_accessor :AnchorUid, :AnchorName, :AnchorPhone, :AnchorEmail, :AnchorAddress, :AnchorIdNo, :AnchorType, :AnchorExtendInfo
        
        def initialize(anchoruid=nil, anchorname=nil, anchorphone=nil, anchoremail=nil, anchoraddress=nil, anchoridno=nil, anchortype=nil, anchorextendinfo=nil)
          @AnchorUid = anchoruid
          @AnchorName = anchorname
          @AnchorPhone = anchorphone
          @AnchorEmail = anchoremail
          @AnchorAddress = anchoraddress
          @AnchorIdNo = anchoridno
          @AnchorType = anchortype
          @AnchorExtendInfo = anchorextendinfo
        end

        def deserialize(params)
          @AnchorUid = params['AnchorUid']
          @AnchorName = params['AnchorName']
          @AnchorPhone = params['AnchorPhone']
          @AnchorEmail = params['AnchorEmail']
          @AnchorAddress = params['AnchorAddress']
          @AnchorIdNo = params['AnchorIdNo']
          @AnchorType = params['AnchorType']
          unless params['AnchorExtendInfo'].nil?
            @AnchorExtendInfo = []
            params['AnchorExtendInfo'].each do |i|
              anchorextendinfo_tmp = AnchorExtendInfo.new
              anchorextendinfo_tmp.deserialize(i)
              @AnchorExtendInfo << anchorextendinfo_tmp
            end
          end
        end
      end

      # CreateAnchor返回参数结构体
      class CreateAnchorResponse < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播ID
        # @type AnchorId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AnchorId, :RequestId
        
        def initialize(anchorid=nil, requestid=nil)
          @AnchorId = anchorid
          @RequestId = requestid
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchPayment接口BatchInfo对象
      class CreateBatchPaymentBatchData < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param TradeSerialNo: 交易流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeSerialNo: String
        # @param Status: 交易状态。
        # 0 处理中
        # 1 预占成功
        # 2 交易成功
        # 3 交易失败
        # 4 未知渠道异常
        # 5 预占额度失败
        # 6 提交成功
        # 7 提交失败
        # 8 订单重复提交
        # 99 未知系统异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param AgentId: 代理商ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param AgentName: 代理商名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String

        attr_accessor :OrderId, :TradeSerialNo, :Status, :StatusDesc, :AgentId, :AgentName
        
        def initialize(orderid=nil, tradeserialno=nil, status=nil, statusdesc=nil, agentid=nil, agentname=nil)
          @OrderId = orderid
          @TradeSerialNo = tradeserialno
          @Status = status
          @StatusDesc = statusdesc
          @AgentId = agentid
          @AgentName = agentname
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @TradeSerialNo = params['TradeSerialNo']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
        end
      end

      # CreateBatchPayment接口返回响应
      class CreateBatchPaymentData < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次号
        # @type BatchId: String
        # @param BatchInfoList: 批次列表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchInfoList: Array

        attr_accessor :BatchId, :BatchInfoList
        
        def initialize(batchid=nil, batchinfolist=nil)
          @BatchId = batchid
          @BatchInfoList = batchinfolist
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          unless params['BatchInfoList'].nil?
            @BatchInfoList = []
            params['BatchInfoList'].each do |i|
              createbatchpaymentbatchdata_tmp = CreateBatchPaymentBatchData.new
              createbatchpaymentbatchdata_tmp.deserialize(i)
              @BatchInfoList << createbatchpaymentbatchdata_tmp
            end
          end
        end
      end

      # CreateBatchPayment转账明细
      class CreateBatchPaymentRecipient < TencentCloud::Common::AbstractModel
        # @param TransferAmount: 转账金额
        # @type TransferAmount: Integer
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param AnchorId: 主播ID（与主播业务ID不能同时为空，两者都填取主播ID）
        # @type AnchorId: String
        # @param Uid: 主播业务ID（与主播业务ID不能同时为空，两者都填取主播ID）
        # @type Uid: String
        # @param AnchorName: 主播名称。如果该字段填入，则会对AnchorName和AnchorId/Uid进行校验。
        # @type AnchorName: String
        # @param Remark: 业务备注
        # @type Remark: String
        # @param ReqReserved: 子单请求预留字段
        # @type ReqReserved: String

        attr_accessor :TransferAmount, :OrderId, :AnchorId, :Uid, :AnchorName, :Remark, :ReqReserved
        
        def initialize(transferamount=nil, orderid=nil, anchorid=nil, uid=nil, anchorname=nil, remark=nil, reqreserved=nil)
          @TransferAmount = transferamount
          @OrderId = orderid
          @AnchorId = anchorid
          @Uid = uid
          @AnchorName = anchorname
          @Remark = remark
          @ReqReserved = reqreserved
        end

        def deserialize(params)
          @TransferAmount = params['TransferAmount']
          @OrderId = params['OrderId']
          @AnchorId = params['AnchorId']
          @Uid = params['Uid']
          @AnchorName = params['AnchorName']
          @Remark = params['Remark']
          @ReqReserved = params['ReqReserved']
        end
      end

      # CreateBatchPayment请求参数结构体
      class CreateBatchPaymentRequest < TencentCloud::Common::AbstractModel
        # @param TransferType: 1 微信企业付款
        # 2 支付宝转账
        # 3 平安银企直连代发转账
        # @type TransferType: Integer
        # @param RecipientList: 转账详情
        # @type RecipientList: Array
        # @param ReqReserved: 请求预留字段
        # @type ReqReserved: String
        # @param NotifyUrl: 回调Url
        # @type NotifyUrl: String

        attr_accessor :TransferType, :RecipientList, :ReqReserved, :NotifyUrl
        
        def initialize(transfertype=nil, recipientlist=nil, reqreserved=nil, notifyurl=nil)
          @TransferType = transfertype
          @RecipientList = recipientlist
          @ReqReserved = reqreserved
          @NotifyUrl = notifyurl
        end

        def deserialize(params)
          @TransferType = params['TransferType']
          unless params['RecipientList'].nil?
            @RecipientList = []
            params['RecipientList'].each do |i|
              createbatchpaymentrecipient_tmp = CreateBatchPaymentRecipient.new
              createbatchpaymentrecipient_tmp.deserialize(i)
              @RecipientList << createbatchpaymentrecipient_tmp
            end
          end
          @ReqReserved = params['ReqReserved']
          @NotifyUrl = params['NotifyUrl']
        end
      end

      # CreateBatchPayment返回参数结构体
      class CreateBatchPaymentResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMessage: 响应消息。
        # @type ErrMessage: String
        # @param Result: 返回响应
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateBatchPaymentData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = CreateBatchPaymentData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCustAcctId请求参数结构体
      class CreateCustAcctIdRequest < TencentCloud::Common::AbstractModel
        # @param FunctionFlag: STRING(2)，功能标志（1: 开户; 3: 销户）
        # @type FunctionFlag: String
        # @param FundSummaryAcctNo: STRING(50)，资金汇总账号（即收单资金归集入账的账号）
        # @type FundSummaryAcctNo: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码（平台端的用户ID，需要保证唯一性，可数字字母混合，如HY_120）
        # @type TranNetMemberCode: String
        # @param MemberProperty: STRING(10)，会员属性（00-普通子账户(默认); SH-商户子账户）
        # @type MemberProperty: String
        # @param Mobile: STRING(30)，手机号码
        # @type Mobile: String
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param SelfBusiness: String(2)，是否为自营业务（0位非自营，1为自营）
        # @type SelfBusiness: Boolean
        # @param ContactName: String(64)，联系人
        # @type ContactName: String
        # @param SubAcctName: String(64)，子账户名称
        # @type SubAcctName: String
        # @param SubAcctShortName: String(64)，子账户简称
        # @type SubAcctShortName: String
        # @param SubAcctType: String(4)，子账户类型（0: 个人子账户; 1: 企业子账户）
        # @type SubAcctType: Integer
        # @param UserNickname: STRING(150)，用户昵称
        # @type UserNickname: String
        # @param Email: STRING(150)，邮箱
        # @type Email: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :FunctionFlag, :FundSummaryAcctNo, :TranNetMemberCode, :MemberProperty, :Mobile, :MrchCode, :SelfBusiness, :ContactName, :SubAcctName, :SubAcctShortName, :SubAcctType, :UserNickname, :Email, :ReservedMsg, :Profile
        
        def initialize(functionflag=nil, fundsummaryacctno=nil, trannetmembercode=nil, memberproperty=nil, mobile=nil, mrchcode=nil, selfbusiness=nil, contactname=nil, subacctname=nil, subacctshortname=nil, subaccttype=nil, usernickname=nil, email=nil, reservedmsg=nil, profile=nil)
          @FunctionFlag = functionflag
          @FundSummaryAcctNo = fundsummaryacctno
          @TranNetMemberCode = trannetmembercode
          @MemberProperty = memberproperty
          @Mobile = mobile
          @MrchCode = mrchcode
          @SelfBusiness = selfbusiness
          @ContactName = contactname
          @SubAcctName = subacctname
          @SubAcctShortName = subacctshortname
          @SubAcctType = subaccttype
          @UserNickname = usernickname
          @Email = email
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @FunctionFlag = params['FunctionFlag']
          @FundSummaryAcctNo = params['FundSummaryAcctNo']
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberProperty = params['MemberProperty']
          @Mobile = params['Mobile']
          @MrchCode = params['MrchCode']
          @SelfBusiness = params['SelfBusiness']
          @ContactName = params['ContactName']
          @SubAcctName = params['SubAcctName']
          @SubAcctShortName = params['SubAcctShortName']
          @SubAcctType = params['SubAcctType']
          @UserNickname = params['UserNickname']
          @Email = params['Email']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # CreateCustAcctId返回参数结构体
      class CreateCustAcctIdResponse < TencentCloud::Common::AbstractModel
        # @param SubAcctNo: STRING(50)，见证子账户的账号（平台需要记录下来，后续所有接口交互都会用到）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctNo: String
        # @param ReservedMsg: STRING(1027)，保留域（需要开通智能收款，此处返回智能收款账号，正常情况下返回空）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAcctNo, :ReservedMsg, :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :RequestId
        
        def initialize(subacctno=nil, reservedmsg=nil, txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, requestid=nil)
          @SubAcctNo = subacctno
          @ReservedMsg = reservedmsg
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @RequestId = requestid
        end

        def deserialize(params)
          @SubAcctNo = params['SubAcctNo']
          @ReservedMsg = params['ReservedMsg']
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @RequestId = params['RequestId']
        end
      end

      # CreateExternalAnchor接口返回参数
      class CreateExternalAnchorData < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播Id
        # @type AnchorId: String

        attr_accessor :AnchorId
        
        def initialize(anchorid=nil)
          @AnchorId = anchorid
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
        end
      end

      # CreateExternalAnchor请求参数结构体
      class CreateExternalAnchorRequest < TencentCloud::Common::AbstractModel
        # @param Uid: 平台业务系统唯一标示的主播id
        # @type Uid: String
        # @param Name: 主播名称
        # @type Name: String
        # @param IdNo: 身份证号
        # @type IdNo: String
        # @param IdCardFront: 身份证正面图片下载链接
        # @type IdCardFront: String
        # @param IdCardReverse: 身份证反面图片下载链接
        # @type IdCardReverse: String
        # @param AgentId: 指定分配的代理商ID
        # @type AgentId: String

        attr_accessor :Uid, :Name, :IdNo, :IdCardFront, :IdCardReverse, :AgentId
        
        def initialize(uid=nil, name=nil, idno=nil, idcardfront=nil, idcardreverse=nil, agentid=nil)
          @Uid = uid
          @Name = name
          @IdNo = idno
          @IdCardFront = idcardfront
          @IdCardReverse = idcardreverse
          @AgentId = agentid
        end

        def deserialize(params)
          @Uid = params['Uid']
          @Name = params['Name']
          @IdNo = params['IdNo']
          @IdCardFront = params['IdCardFront']
          @IdCardReverse = params['IdCardReverse']
          @AgentId = params['AgentId']
        end
      end

      # CreateExternalAnchor返回参数结构体
      class CreateExternalAnchorResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMessage: 响应消息。
        # @type ErrMessage: String
        # @param Result: 返回响应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateExternalAnchorData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = CreateExternalAnchorData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 发票开具明细
      class CreateInvoiceItem < TencentCloud::Common::AbstractModel
        # @param Name: 商品名称
        # @type Name: String
        # @param TaxCode: 税收商品编码
        # @type TaxCode: String
        # @param TotalPrice: 不含税商品总价（商品含税价总额/（1+税率））。InvoicePlatformId 为1时，该金额为含税总金额。单位为分。
        # @type TotalPrice: Integer
        # @param TaxRate: 商品税率
        # @type TaxRate: Integer
        # @param TaxAmount: 商品税额（不含税商品总价*税率）。单位为分
        # @type TaxAmount: Integer
        # @param TaxType: 税收商品类别
        # @type TaxType: String
        # @param Models: 商品规格
        # @type Models: String
        # @param Unit: 商品单位
        # @type Unit: String
        # @param Total: 商品数量
        # @type Total: String
        # @param Price: 不含税商品单价。InvoicePlatformId 为1时，该金额为含税单价。
        # @type Price: String
        # @param Discount: 含税折扣总额。单位为分
        # @type Discount: Integer
        # @param PreferentialPolicyFlag: 优惠政策标志。0：不使用优惠政策；1：使用优惠政策。
        # @type PreferentialPolicyFlag: String
        # @param ZeroTaxFlag: 零税率标识：
        # 空：非零税率；
        # 0：出口零税率；
        # 1：免税；
        # 2：不征税；
        # 3：普通零税率。
        # @type ZeroTaxFlag: String
        # @param VatSpecialManagement: 增值税特殊管理。PreferentialPolicyFlag字段为1时，必填。目前仅支持5%(3%，2%，1.5%)简易征税、免税、不征税。
        # @type VatSpecialManagement: String

        attr_accessor :Name, :TaxCode, :TotalPrice, :TaxRate, :TaxAmount, :TaxType, :Models, :Unit, :Total, :Price, :Discount, :PreferentialPolicyFlag, :ZeroTaxFlag, :VatSpecialManagement
        
        def initialize(name=nil, taxcode=nil, totalprice=nil, taxrate=nil, taxamount=nil, taxtype=nil, models=nil, unit=nil, total=nil, price=nil, discount=nil, preferentialpolicyflag=nil, zerotaxflag=nil, vatspecialmanagement=nil)
          @Name = name
          @TaxCode = taxcode
          @TotalPrice = totalprice
          @TaxRate = taxrate
          @TaxAmount = taxamount
          @TaxType = taxtype
          @Models = models
          @Unit = unit
          @Total = total
          @Price = price
          @Discount = discount
          @PreferentialPolicyFlag = preferentialpolicyflag
          @ZeroTaxFlag = zerotaxflag
          @VatSpecialManagement = vatspecialmanagement
        end

        def deserialize(params)
          @Name = params['Name']
          @TaxCode = params['TaxCode']
          @TotalPrice = params['TotalPrice']
          @TaxRate = params['TaxRate']
          @TaxAmount = params['TaxAmount']
          @TaxType = params['TaxType']
          @Models = params['Models']
          @Unit = params['Unit']
          @Total = params['Total']
          @Price = params['Price']
          @Discount = params['Discount']
          @PreferentialPolicyFlag = params['PreferentialPolicyFlag']
          @ZeroTaxFlag = params['ZeroTaxFlag']
          @VatSpecialManagement = params['VatSpecialManagement']
        end
      end

      # CreateInvoice请求参数结构体
      class CreateInvoiceRequest < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID。0：高灯，1：票易通
        # @type InvoicePlatformId: Integer
        # @param TitleType: 抬头类型：1：个人/政府事业单位；2：企业
        # @type TitleType: Integer
        # @param BuyerTitle: 购方名称
        # @type BuyerTitle: String
        # @param OrderId: 业务开票号
        # @type OrderId: String
        # @param AmountHasTax: 含税总金额（单位为分）
        # @type AmountHasTax: Integer
        # @param TaxAmount: 总税额（单位为分）
        # @type TaxAmount: Integer
        # @param AmountWithoutTax: 不含税总金额（单位为分）。InvoicePlatformId 为1时，传默认值-1
        # @type AmountWithoutTax: Integer
        # @param SellerTaxpayerNum: 销方纳税人识别号
        # @type SellerTaxpayerNum: String
        # @param SellerName: 销方名称。（不填默认读取商户注册时输入的信息）
        # @type SellerName: String
        # @param SellerAddress: 销方地址。（不填默认读取商户注册时输入的信息）
        # @type SellerAddress: String
        # @param SellerPhone: 销方电话。（不填默认读取商户注册时输入的信息）
        # @type SellerPhone: String
        # @param SellerBankName: 销方银行名称。（不填默认读取商户注册时输入的信息）
        # @type SellerBankName: String
        # @param SellerBankAccount: 销方银行账号。（不填默认读取商户注册时输入的信息）
        # @type SellerBankAccount: String
        # @param BuyerTaxpayerNum: 购方纳税人识别号（购方票面信息）,若抬头类型为2时，必传
        # @type BuyerTaxpayerNum: String
        # @param BuyerAddress: 购方地址。开具专用发票时必填
        # @type BuyerAddress: String
        # @param BuyerBankName: 购方银行名称。开具专用发票时必填
        # @type BuyerBankName: String
        # @param BuyerBankAccount: 购方银行账号。开具专用发票时必填
        # @type BuyerBankAccount: String
        # @param BuyerPhone: 购方电话。开具专用发票时必填
        # @type BuyerPhone: String
        # @param BuyerEmail: 收票人邮箱。若填入，会收到发票推送邮件
        # @type BuyerEmail: String
        # @param TakerPhone: 收票人手机号。若填入，会收到发票推送短信
        # @type TakerPhone: String
        # @param InvoiceType: 开票类型：
        # 1：增值税专用发票；
        # 2：增值税普通发票；
        # 3：增值税电子发票；
        # 4：增值税卷式发票；
        # 5：区块链电子发票。
        # 若该字段不填，或值不为1-5，则认为开具”增值税电子发票”
        # @type InvoiceType: Integer
        # @param CallbackUrl: 发票结果回传地址
        # @type CallbackUrl: String
        # @param Drawer: 开票人姓名。（不填默认读取商户注册时输入的信息）
        # @type Drawer: String
        # @param Payee: 收款人姓名。（不填默认读取商户注册时输入的信息）
        # @type Payee: String
        # @param Checker: 复核人姓名。（不填默认读取商户注册时输入的信息）
        # @type Checker: String
        # @param TerminalCode: 税盘号
        # @type TerminalCode: String
        # @param LevyMethod: 征收方式。开具差额征税发票时必填2。开具普通征税发票时为空
        # @type LevyMethod: String
        # @param Deduction: 差额征税扣除额（单位为分）
        # @type Deduction: Integer
        # @param Remark: 备注（票面信息）
        # @type Remark: String
        # @param Items: 项目商品明细
        # @type Items: Array
        # @param Profile: 接入环境。沙箱环境填sandbox。
        # @type Profile: String
        # @param UndoPart: 撤销部分商品。0-不撤销，1-撤销
        # @type UndoPart: Integer
        # @param OrderDate: 订单下单时间（格式 YYYYMMDD）
        # @type OrderDate: String
        # @param Discount: 订单级别折扣（单位为分）
        # @type Discount: Integer
        # @param StoreNo: 门店编码
        # @type StoreNo: String
        # @param InvoiceChannel: 开票渠道。0：APP渠道，1：线下渠道，2：小程序渠道。不填默认为APP渠道
        # @type InvoiceChannel: Integer

        attr_accessor :InvoicePlatformId, :TitleType, :BuyerTitle, :OrderId, :AmountHasTax, :TaxAmount, :AmountWithoutTax, :SellerTaxpayerNum, :SellerName, :SellerAddress, :SellerPhone, :SellerBankName, :SellerBankAccount, :BuyerTaxpayerNum, :BuyerAddress, :BuyerBankName, :BuyerBankAccount, :BuyerPhone, :BuyerEmail, :TakerPhone, :InvoiceType, :CallbackUrl, :Drawer, :Payee, :Checker, :TerminalCode, :LevyMethod, :Deduction, :Remark, :Items, :Profile, :UndoPart, :OrderDate, :Discount, :StoreNo, :InvoiceChannel
        
        def initialize(invoiceplatformid=nil, titletype=nil, buyertitle=nil, orderid=nil, amounthastax=nil, taxamount=nil, amountwithouttax=nil, sellertaxpayernum=nil, sellername=nil, selleraddress=nil, sellerphone=nil, sellerbankname=nil, sellerbankaccount=nil, buyertaxpayernum=nil, buyeraddress=nil, buyerbankname=nil, buyerbankaccount=nil, buyerphone=nil, buyeremail=nil, takerphone=nil, invoicetype=nil, callbackurl=nil, drawer=nil, payee=nil, checker=nil, terminalcode=nil, levymethod=nil, deduction=nil, remark=nil, items=nil, profile=nil, undopart=nil, orderdate=nil, discount=nil, storeno=nil, invoicechannel=nil)
          @InvoicePlatformId = invoiceplatformid
          @TitleType = titletype
          @BuyerTitle = buyertitle
          @OrderId = orderid
          @AmountHasTax = amounthastax
          @TaxAmount = taxamount
          @AmountWithoutTax = amountwithouttax
          @SellerTaxpayerNum = sellertaxpayernum
          @SellerName = sellername
          @SellerAddress = selleraddress
          @SellerPhone = sellerphone
          @SellerBankName = sellerbankname
          @SellerBankAccount = sellerbankaccount
          @BuyerTaxpayerNum = buyertaxpayernum
          @BuyerAddress = buyeraddress
          @BuyerBankName = buyerbankname
          @BuyerBankAccount = buyerbankaccount
          @BuyerPhone = buyerphone
          @BuyerEmail = buyeremail
          @TakerPhone = takerphone
          @InvoiceType = invoicetype
          @CallbackUrl = callbackurl
          @Drawer = drawer
          @Payee = payee
          @Checker = checker
          @TerminalCode = terminalcode
          @LevyMethod = levymethod
          @Deduction = deduction
          @Remark = remark
          @Items = items
          @Profile = profile
          @UndoPart = undopart
          @OrderDate = orderdate
          @Discount = discount
          @StoreNo = storeno
          @InvoiceChannel = invoicechannel
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          @TitleType = params['TitleType']
          @BuyerTitle = params['BuyerTitle']
          @OrderId = params['OrderId']
          @AmountHasTax = params['AmountHasTax']
          @TaxAmount = params['TaxAmount']
          @AmountWithoutTax = params['AmountWithoutTax']
          @SellerTaxpayerNum = params['SellerTaxpayerNum']
          @SellerName = params['SellerName']
          @SellerAddress = params['SellerAddress']
          @SellerPhone = params['SellerPhone']
          @SellerBankName = params['SellerBankName']
          @SellerBankAccount = params['SellerBankAccount']
          @BuyerTaxpayerNum = params['BuyerTaxpayerNum']
          @BuyerAddress = params['BuyerAddress']
          @BuyerBankName = params['BuyerBankName']
          @BuyerBankAccount = params['BuyerBankAccount']
          @BuyerPhone = params['BuyerPhone']
          @BuyerEmail = params['BuyerEmail']
          @TakerPhone = params['TakerPhone']
          @InvoiceType = params['InvoiceType']
          @CallbackUrl = params['CallbackUrl']
          @Drawer = params['Drawer']
          @Payee = params['Payee']
          @Checker = params['Checker']
          @TerminalCode = params['TerminalCode']
          @LevyMethod = params['LevyMethod']
          @Deduction = params['Deduction']
          @Remark = params['Remark']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              createinvoiceitem_tmp = CreateInvoiceItem.new
              createinvoiceitem_tmp.deserialize(i)
              @Items << createinvoiceitem_tmp
            end
          end
          @Profile = params['Profile']
          @UndoPart = params['UndoPart']
          @OrderDate = params['OrderDate']
          @Discount = params['Discount']
          @StoreNo = params['StoreNo']
          @InvoiceChannel = params['InvoiceChannel']
        end
      end

      # CreateInvoice返回参数结构体
      class CreateInvoiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 发票开具结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateInvoiceResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateInvoiceResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 发票结果
      class CreateInvoiceResult < TencentCloud::Common::AbstractModel
        # @param Message: 错误消息
        # @type Message: String
        # @param Code: 错误码
        # @type Code: Integer
        # @param Data: 数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.CreateInvoiceResultData`

        attr_accessor :Message, :Code, :Data
        
        def initialize(message=nil, code=nil, data=nil)
          @Message = message
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Message = params['Message']
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = CreateInvoiceResultData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 蓝票结果数据
      class CreateInvoiceResultData < TencentCloud::Common::AbstractModel
        # @param State: 开票状态
        # @type State: Integer
        # @param InvoiceId: 发票ID
        # @type InvoiceId: String
        # @param OrderSn: 业务开票号
        # @type OrderSn: String

        attr_accessor :State, :InvoiceId, :OrderSn
        
        def initialize(state=nil, invoiceid=nil, ordersn=nil)
          @State = state
          @InvoiceId = invoiceid
          @OrderSn = ordersn
        end

        def deserialize(params)
          @State = params['State']
          @InvoiceId = params['InvoiceId']
          @OrderSn = params['OrderSn']
        end
      end

      # 发票结果V2
      class CreateInvoiceResultV2 < TencentCloud::Common::AbstractModel
        # @param InvoiceId: 发票ID
        # @type InvoiceId: String

        attr_accessor :InvoiceId
        
        def initialize(invoiceid=nil)
          @InvoiceId = invoiceid
        end

        def deserialize(params)
          @InvoiceId = params['InvoiceId']
        end
      end

      # CreateInvoiceV2请求参数结构体
      class CreateInvoiceV2Request < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID。0：高灯，1：票易通
        # @type InvoicePlatformId: Integer
        # @param TitleType: 抬头类型：1：个人/政府事业单位；2：企业
        # @type TitleType: Integer
        # @param BuyerTitle: 购方名称
        # @type BuyerTitle: String
        # @param OrderId: 业务开票号
        # @type OrderId: String
        # @param AmountHasTax: 含税总金额（单位为分）
        # @type AmountHasTax: Integer
        # @param TaxAmount: 总税额（单位为分）
        # @type TaxAmount: Integer
        # @param AmountWithoutTax: 不含税总金额（单位为分）。InvoicePlatformId 为1时，传默认值-1
        # @type AmountWithoutTax: Integer
        # @param SellerTaxpayerNum: 销方纳税人识别号
        # @type SellerTaxpayerNum: String
        # @param SellerName: 销方名称。（不填默认读取商户注册时输入的信息）
        # @type SellerName: String
        # @param SellerAddress: 销方地址。（不填默认读取商户注册时输入的信息）
        # @type SellerAddress: String
        # @param SellerPhone: 销方电话。（不填默认读取商户注册时输入的信息）
        # @type SellerPhone: String
        # @param SellerBankName: 销方银行名称。（不填默认读取商户注册时输入的信息）
        # @type SellerBankName: String
        # @param SellerBankAccount: 销方银行账号。（不填默认读取商户注册时输入的信息）
        # @type SellerBankAccount: String
        # @param BuyerTaxpayerNum: 购方纳税人识别号（购方票面信息）,若抬头类型为2时，必传
        # @type BuyerTaxpayerNum: String
        # @param BuyerAddress: 购方地址。开具专用发票时必填
        # @type BuyerAddress: String
        # @param BuyerBankName: 购方银行名称。开具专用发票时必填
        # @type BuyerBankName: String
        # @param BuyerBankAccount: 购方银行账号。开具专用发票时必填
        # @type BuyerBankAccount: String
        # @param BuyerPhone: 购方电话。开具专用发票时必填
        # @type BuyerPhone: String
        # @param BuyerEmail: 收票人邮箱。若填入，会收到发票推送邮件
        # @type BuyerEmail: String
        # @param TakerPhone: 收票人手机号。若填入，会收到发票推送短信
        # @type TakerPhone: String
        # @param InvoiceType: 开票类型：
        # 1：增值税专用发票；
        # 2：增值税普通发票；
        # 3：增值税电子发票；
        # 4：增值税卷式发票；
        # 5：区块链电子发票。
        # 若该字段不填，或值不为1-5，则认为开具”增值税电子发票”
        # @type InvoiceType: Integer
        # @param CallbackUrl: 发票结果回传地址
        # @type CallbackUrl: String
        # @param Drawer: 开票人姓名。（不填默认读取商户注册时输入的信息）
        # @type Drawer: String
        # @param Payee: 收款人姓名。（不填默认读取商户注册时输入的信息）
        # @type Payee: String
        # @param Checker: 复核人姓名。（不填默认读取商户注册时输入的信息）
        # @type Checker: String
        # @param TerminalCode: 税盘号
        # @type TerminalCode: String
        # @param LevyMethod: 征收方式。开具差额征税发票时必填2。开具普通征税发票时为空
        # @type LevyMethod: String
        # @param Deduction: 差额征税扣除额（单位为分）
        # @type Deduction: Integer
        # @param Remark: 备注（票面信息）
        # @type Remark: String
        # @param Items: 项目商品明细
        # @type Items: Array
        # @param Profile: 接入环境。沙箱环境填sandbox。
        # @type Profile: String
        # @param UndoPart: 撤销部分商品。0-不撤销，1-撤销
        # @type UndoPart: Integer
        # @param OrderDate: 订单下单时间（格式 YYYYMMDD）
        # @type OrderDate: String
        # @param Discount: 订单级别折扣（单位为分）
        # @type Discount: Integer
        # @param StoreNo: 门店编码
        # @type StoreNo: String
        # @param InvoiceChannel: 开票渠道。0：APP渠道，1：线下渠道，2：小程序渠道。不填默认为APP渠道
        # @type InvoiceChannel: Integer

        attr_accessor :InvoicePlatformId, :TitleType, :BuyerTitle, :OrderId, :AmountHasTax, :TaxAmount, :AmountWithoutTax, :SellerTaxpayerNum, :SellerName, :SellerAddress, :SellerPhone, :SellerBankName, :SellerBankAccount, :BuyerTaxpayerNum, :BuyerAddress, :BuyerBankName, :BuyerBankAccount, :BuyerPhone, :BuyerEmail, :TakerPhone, :InvoiceType, :CallbackUrl, :Drawer, :Payee, :Checker, :TerminalCode, :LevyMethod, :Deduction, :Remark, :Items, :Profile, :UndoPart, :OrderDate, :Discount, :StoreNo, :InvoiceChannel
        
        def initialize(invoiceplatformid=nil, titletype=nil, buyertitle=nil, orderid=nil, amounthastax=nil, taxamount=nil, amountwithouttax=nil, sellertaxpayernum=nil, sellername=nil, selleraddress=nil, sellerphone=nil, sellerbankname=nil, sellerbankaccount=nil, buyertaxpayernum=nil, buyeraddress=nil, buyerbankname=nil, buyerbankaccount=nil, buyerphone=nil, buyeremail=nil, takerphone=nil, invoicetype=nil, callbackurl=nil, drawer=nil, payee=nil, checker=nil, terminalcode=nil, levymethod=nil, deduction=nil, remark=nil, items=nil, profile=nil, undopart=nil, orderdate=nil, discount=nil, storeno=nil, invoicechannel=nil)
          @InvoicePlatformId = invoiceplatformid
          @TitleType = titletype
          @BuyerTitle = buyertitle
          @OrderId = orderid
          @AmountHasTax = amounthastax
          @TaxAmount = taxamount
          @AmountWithoutTax = amountwithouttax
          @SellerTaxpayerNum = sellertaxpayernum
          @SellerName = sellername
          @SellerAddress = selleraddress
          @SellerPhone = sellerphone
          @SellerBankName = sellerbankname
          @SellerBankAccount = sellerbankaccount
          @BuyerTaxpayerNum = buyertaxpayernum
          @BuyerAddress = buyeraddress
          @BuyerBankName = buyerbankname
          @BuyerBankAccount = buyerbankaccount
          @BuyerPhone = buyerphone
          @BuyerEmail = buyeremail
          @TakerPhone = takerphone
          @InvoiceType = invoicetype
          @CallbackUrl = callbackurl
          @Drawer = drawer
          @Payee = payee
          @Checker = checker
          @TerminalCode = terminalcode
          @LevyMethod = levymethod
          @Deduction = deduction
          @Remark = remark
          @Items = items
          @Profile = profile
          @UndoPart = undopart
          @OrderDate = orderdate
          @Discount = discount
          @StoreNo = storeno
          @InvoiceChannel = invoicechannel
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          @TitleType = params['TitleType']
          @BuyerTitle = params['BuyerTitle']
          @OrderId = params['OrderId']
          @AmountHasTax = params['AmountHasTax']
          @TaxAmount = params['TaxAmount']
          @AmountWithoutTax = params['AmountWithoutTax']
          @SellerTaxpayerNum = params['SellerTaxpayerNum']
          @SellerName = params['SellerName']
          @SellerAddress = params['SellerAddress']
          @SellerPhone = params['SellerPhone']
          @SellerBankName = params['SellerBankName']
          @SellerBankAccount = params['SellerBankAccount']
          @BuyerTaxpayerNum = params['BuyerTaxpayerNum']
          @BuyerAddress = params['BuyerAddress']
          @BuyerBankName = params['BuyerBankName']
          @BuyerBankAccount = params['BuyerBankAccount']
          @BuyerPhone = params['BuyerPhone']
          @BuyerEmail = params['BuyerEmail']
          @TakerPhone = params['TakerPhone']
          @InvoiceType = params['InvoiceType']
          @CallbackUrl = params['CallbackUrl']
          @Drawer = params['Drawer']
          @Payee = params['Payee']
          @Checker = params['Checker']
          @TerminalCode = params['TerminalCode']
          @LevyMethod = params['LevyMethod']
          @Deduction = params['Deduction']
          @Remark = params['Remark']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              createinvoiceitem_tmp = CreateInvoiceItem.new
              createinvoiceitem_tmp.deserialize(i)
              @Items << createinvoiceitem_tmp
            end
          end
          @Profile = params['Profile']
          @UndoPart = params['UndoPart']
          @OrderDate = params['OrderDate']
          @Discount = params['Discount']
          @StoreNo = params['StoreNo']
          @InvoiceChannel = params['InvoiceChannel']
        end
      end

      # CreateInvoiceV2返回参数结构体
      class CreateInvoiceV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 发票开具结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateInvoiceResultV2`
        # @param ErrCode: 错误码
        # @type ErrCode: String
        # @param ErrMessage: 错误消息
        # @type ErrMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrCode, :ErrMessage, :RequestId
        
        def initialize(result=nil, errcode=nil, errmessage=nil, requestid=nil)
          @Result = result
          @ErrCode = errcode
          @ErrMessage = errmessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateInvoiceResultV2.new
            @Result.deserialize(params['Result'])
          end
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @RequestId = params['RequestId']
        end
      end

      # CreateMerchant请求参数结构体
      class CreateMerchantRequest < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID
        # @type InvoicePlatformId: Integer
        # @param TaxpayerName: 企业名称
        # @type TaxpayerName: String
        # @param TaxpayerNum: 销方纳税人识别号
        # @type TaxpayerNum: String
        # @param LegalPersonName: 注册企业法定代表人名称
        # @type LegalPersonName: String
        # @param ContactsName: 联系人
        # @type ContactsName: String
        # @param Phone: 联系人手机号
        # @type Phone: String
        # @param Address: 不包含省市名称的地址
        # @type Address: String
        # @param RegionCode: 地区编码
        # @type RegionCode: Integer
        # @param CityName: 市（地区）名称
        # @type CityName: String
        # @param Drawer: 开票人
        # @type Drawer: String
        # @param TaxRegistrationCertificate: 税务登记证图片（Base64）字符串，需小于 3M
        # @type TaxRegistrationCertificate: String
        # @param Email: 联系人邮箱地址
        # @type Email: String
        # @param BusinessMobile: 企业电话
        # @type BusinessMobile: String
        # @param BankName: 银行名称
        # @type BankName: String
        # @param BankAccount: 银行账号
        # @type BankAccount: String
        # @param Reviewer: 复核人
        # @type Reviewer: String
        # @param Payee: 收款人
        # @type Payee: String
        # @param RegisterCode: 注册邀请码
        # @type RegisterCode: String
        # @param State: 不填默认为1，有效状态
        # 0：表示无效；
        # 1:表示有效；
        # 2:表示禁止开蓝票；
        # 3:表示禁止冲红。
        # @type State: String
        # @param CallbackUrl: 接收推送的消息地址
        # @type CallbackUrl: String
        # @param Profile: 接入环境。沙箱环境填 sandbox。
        # @type Profile: String

        attr_accessor :InvoicePlatformId, :TaxpayerName, :TaxpayerNum, :LegalPersonName, :ContactsName, :Phone, :Address, :RegionCode, :CityName, :Drawer, :TaxRegistrationCertificate, :Email, :BusinessMobile, :BankName, :BankAccount, :Reviewer, :Payee, :RegisterCode, :State, :CallbackUrl, :Profile
        
        def initialize(invoiceplatformid=nil, taxpayername=nil, taxpayernum=nil, legalpersonname=nil, contactsname=nil, phone=nil, address=nil, regioncode=nil, cityname=nil, drawer=nil, taxregistrationcertificate=nil, email=nil, businessmobile=nil, bankname=nil, bankaccount=nil, reviewer=nil, payee=nil, registercode=nil, state=nil, callbackurl=nil, profile=nil)
          @InvoicePlatformId = invoiceplatformid
          @TaxpayerName = taxpayername
          @TaxpayerNum = taxpayernum
          @LegalPersonName = legalpersonname
          @ContactsName = contactsname
          @Phone = phone
          @Address = address
          @RegionCode = regioncode
          @CityName = cityname
          @Drawer = drawer
          @TaxRegistrationCertificate = taxregistrationcertificate
          @Email = email
          @BusinessMobile = businessmobile
          @BankName = bankname
          @BankAccount = bankaccount
          @Reviewer = reviewer
          @Payee = payee
          @RegisterCode = registercode
          @State = state
          @CallbackUrl = callbackurl
          @Profile = profile
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          @TaxpayerName = params['TaxpayerName']
          @TaxpayerNum = params['TaxpayerNum']
          @LegalPersonName = params['LegalPersonName']
          @ContactsName = params['ContactsName']
          @Phone = params['Phone']
          @Address = params['Address']
          @RegionCode = params['RegionCode']
          @CityName = params['CityName']
          @Drawer = params['Drawer']
          @TaxRegistrationCertificate = params['TaxRegistrationCertificate']
          @Email = params['Email']
          @BusinessMobile = params['BusinessMobile']
          @BankName = params['BankName']
          @BankAccount = params['BankAccount']
          @Reviewer = params['Reviewer']
          @Payee = params['Payee']
          @RegisterCode = params['RegisterCode']
          @State = params['State']
          @CallbackUrl = params['CallbackUrl']
          @Profile = params['Profile']
        end
      end

      # CreateMerchant返回参数结构体
      class CreateMerchantResponse < TencentCloud::Common::AbstractModel
        # @param Result: 商户注册结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateMerchantResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateMerchantResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建商户结果
      class CreateMerchantResult < TencentCloud::Common::AbstractModel
        # @param Code: 状态码
        # @type Code: Integer
        # @param Message: 响应消息
        # @type Message: String
        # @param Data: 创建商户结果数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.CreateMerchantResultData`

        attr_accessor :Code, :Message, :Data
        
        def initialize(code=nil, message=nil, data=nil)
          @Code = code
          @Message = message
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Data'].nil?
            @Data = CreateMerchantResultData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 创建商户结果数据
      class CreateMerchantResultData < TencentCloud::Common::AbstractModel
        # @param TaxpayerName: 企业名称
        # @type TaxpayerName: String
        # @param SerialNo: 请求流水号
        # @type SerialNo: String
        # @param TaxpayerNum: 纳税号
        # @type TaxpayerNum: String

        attr_accessor :TaxpayerName, :SerialNo, :TaxpayerNum
        
        def initialize(taxpayername=nil, serialno=nil, taxpayernum=nil)
          @TaxpayerName = taxpayername
          @SerialNo = serialno
          @TaxpayerNum = taxpayernum
        end

        def deserialize(params)
          @TaxpayerName = params['TaxpayerName']
          @SerialNo = params['SerialNo']
          @TaxpayerNum = params['TaxpayerNum']
        end
      end

      # CreateOpenBankExternalSubMerchantRegistration请求参数结构体
      class CreateOpenBankExternalSubMerchantRegistrationRequest < TencentCloud::Common::AbstractModel
        # @param OutRegistrationNo: 外部进件序列号。
        # @type OutRegistrationNo: String
        # @param ChannelMerchantId: 渠道商户ID。
        # @type ChannelMerchantId: String
        # @param OutSubMerchantId: 外部子商户ID,平台侧商户唯一ID。
        # @type OutSubMerchantId: String
        # @param ChannelName: 渠道名称。
        # __TENPAY__: 商企付
        # __WECHAT__: 微信支付
        # __ALIPAY__: 支付宝
        # @type ChannelName: String
        # @param PaymentMethod: 支付方式。
        # __EBANK_PAYMENT__: ebank支付
        # __OPENBANK_PAYMENT__: openbank支付
        # @type PaymentMethod: String
        # @param BusinessLicenseNumber: 社会信用代码。
        # @type BusinessLicenseNumber: String
        # @param OutSubMerchantName: 外部子商户名称。
        # @type OutSubMerchantName: String
        # @param LegalName: 法人姓名。
        # @type LegalName: String
        # @param OutSubMerchantShortName: 外部子商户简称。
        # @type OutSubMerchantShortName: String
        # @param OutSubMerchantDescription: 外部子商户描述。
        # @type OutSubMerchantDescription: String
        # @param ExternalSubMerchantRegistrationData: 第三方子商户进件信息，为JSON格式字符串。详情见附录-复杂类型。
        # @type ExternalSubMerchantRegistrationData: String
        # @param NotifyUrl: 通知地址。
        # @type NotifyUrl: String
        # @param Environment: 环境类型。
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String

        attr_accessor :OutRegistrationNo, :ChannelMerchantId, :OutSubMerchantId, :ChannelName, :PaymentMethod, :BusinessLicenseNumber, :OutSubMerchantName, :LegalName, :OutSubMerchantShortName, :OutSubMerchantDescription, :ExternalSubMerchantRegistrationData, :NotifyUrl, :Environment
        
        def initialize(outregistrationno=nil, channelmerchantid=nil, outsubmerchantid=nil, channelname=nil, paymentmethod=nil, businesslicensenumber=nil, outsubmerchantname=nil, legalname=nil, outsubmerchantshortname=nil, outsubmerchantdescription=nil, externalsubmerchantregistrationdata=nil, notifyurl=nil, environment=nil)
          @OutRegistrationNo = outregistrationno
          @ChannelMerchantId = channelmerchantid
          @OutSubMerchantId = outsubmerchantid
          @ChannelName = channelname
          @PaymentMethod = paymentmethod
          @BusinessLicenseNumber = businesslicensenumber
          @OutSubMerchantName = outsubmerchantname
          @LegalName = legalname
          @OutSubMerchantShortName = outsubmerchantshortname
          @OutSubMerchantDescription = outsubmerchantdescription
          @ExternalSubMerchantRegistrationData = externalsubmerchantregistrationdata
          @NotifyUrl = notifyurl
          @Environment = environment
        end

        def deserialize(params)
          @OutRegistrationNo = params['OutRegistrationNo']
          @ChannelMerchantId = params['ChannelMerchantId']
          @OutSubMerchantId = params['OutSubMerchantId']
          @ChannelName = params['ChannelName']
          @PaymentMethod = params['PaymentMethod']
          @BusinessLicenseNumber = params['BusinessLicenseNumber']
          @OutSubMerchantName = params['OutSubMerchantName']
          @LegalName = params['LegalName']
          @OutSubMerchantShortName = params['OutSubMerchantShortName']
          @OutSubMerchantDescription = params['OutSubMerchantDescription']
          @ExternalSubMerchantRegistrationData = params['ExternalSubMerchantRegistrationData']
          @NotifyUrl = params['NotifyUrl']
          @Environment = params['Environment']
        end
      end

      # CreateOpenBankExternalSubMerchantRegistration返回参数结构体
      class CreateOpenBankExternalSubMerchantRegistrationResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateOpenBankExternalSubMerchantRegistrationResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = CreateOpenBankExternalSubMerchantRegistrationResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 子商户进件返回结果
      class CreateOpenBankExternalSubMerchantRegistrationResult < TencentCloud::Common::AbstractModel
        # @param RegistrationStatus: 进件状态。
        # __SUCCESS__: 进件成功
        # __FAILED__: 进件失败
        # __PROCESSING__: 进件中
        # 注意：若返回进件中，需要再次调用进件结果查询接口，查询结果。
        # @type RegistrationStatus: String
        # @param RegistrationMessage: 进件返回描述, 例如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistrationMessage: String
        # @param ChannelRegistrationNo: 渠道进件序列号。
        # @type ChannelRegistrationNo: String
        # @param ChannelSubMerchantId: 渠道子商户ID。
        # @type ChannelSubMerchantId: String
        # @param ExternalReturnData: 第三方渠道返回信息, 为JSON格式字符串。详情见附录-复杂类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnData: String

        attr_accessor :RegistrationStatus, :RegistrationMessage, :ChannelRegistrationNo, :ChannelSubMerchantId, :ExternalReturnData
        
        def initialize(registrationstatus=nil, registrationmessage=nil, channelregistrationno=nil, channelsubmerchantid=nil, externalreturndata=nil)
          @RegistrationStatus = registrationstatus
          @RegistrationMessage = registrationmessage
          @ChannelRegistrationNo = channelregistrationno
          @ChannelSubMerchantId = channelsubmerchantid
          @ExternalReturnData = externalreturndata
        end

        def deserialize(params)
          @RegistrationStatus = params['RegistrationStatus']
          @RegistrationMessage = params['RegistrationMessage']
          @ChannelRegistrationNo = params['ChannelRegistrationNo']
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @ExternalReturnData = params['ExternalReturnData']
        end
      end

      # CreateOpenBankMerchant请求参数结构体
      class CreateOpenBankMerchantRequest < TencentCloud::Common::AbstractModel
        # @param OutMerchantId: 外部商户ID。
        # @type OutMerchantId: String
        # @param ChannelName: 渠道名称。
        # __TENPAY__: 商企付
        # __WECHAT__: 微信支付
        # __ALIPAY__: 支付宝
        # @type ChannelName: String
        # @param OutMerchantName: 外部商户名称。
        # @type OutMerchantName: String
        # @param ExternalMerchantInfo: 第三方渠道商户信息。详情见附录-复杂类型。
        # @type ExternalMerchantInfo: String
        # @param OutMerchantShortName: 外部商户简称。
        # @type OutMerchantShortName: String
        # @param OutMerchantDescription: 外部商户描述
        # @type OutMerchantDescription: String
        # @param Environment: 环境类型。
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String

        attr_accessor :OutMerchantId, :ChannelName, :OutMerchantName, :ExternalMerchantInfo, :OutMerchantShortName, :OutMerchantDescription, :Environment
        
        def initialize(outmerchantid=nil, channelname=nil, outmerchantname=nil, externalmerchantinfo=nil, outmerchantshortname=nil, outmerchantdescription=nil, environment=nil)
          @OutMerchantId = outmerchantid
          @ChannelName = channelname
          @OutMerchantName = outmerchantname
          @ExternalMerchantInfo = externalmerchantinfo
          @OutMerchantShortName = outmerchantshortname
          @OutMerchantDescription = outmerchantdescription
          @Environment = environment
        end

        def deserialize(params)
          @OutMerchantId = params['OutMerchantId']
          @ChannelName = params['ChannelName']
          @OutMerchantName = params['OutMerchantName']
          @ExternalMerchantInfo = params['ExternalMerchantInfo']
          @OutMerchantShortName = params['OutMerchantShortName']
          @OutMerchantDescription = params['OutMerchantDescription']
          @Environment = params['Environment']
        end
      end

      # CreateOpenBankMerchant返回参数结构体
      class CreateOpenBankMerchantResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateOpenBankMerchantResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = CreateOpenBankMerchantResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建渠道商户返回结果
      class CreateOpenBankMerchantResult < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户ID。
        # @type ChannelMerchantId: String

        attr_accessor :ChannelMerchantId
        
        def initialize(channelmerchantid=nil)
          @ChannelMerchantId = channelmerchantid
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
        end
      end

      # 云企付-支付下单返回响应
      class CreateOpenBankOrderPaymentResult < TencentCloud::Common::AbstractModel
        # @param ChannelOrderId: 云企付平台订单号。
        # @type ChannelOrderId: String
        # @param ThirdPayOrderId: 第三方支付平台返回支付订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThirdPayOrderId: String
        # @param RedirectInfo: 小程序跳转参数
        # 渠道为TENPAY，付款方式为EBANK_PAYMENT时必选。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectInfo: :class:`Tencentcloud::Cpdp.v20190820.models.OpenBankRedirectInfo`
        # @param OutOrderId: 外部商户订单号，只能是数字、大小写字母，且在同一个接入平台下唯一。
        # @type OutOrderId: String

        attr_accessor :ChannelOrderId, :ThirdPayOrderId, :RedirectInfo, :OutOrderId
        
        def initialize(channelorderid=nil, thirdpayorderid=nil, redirectinfo=nil, outorderid=nil)
          @ChannelOrderId = channelorderid
          @ThirdPayOrderId = thirdpayorderid
          @RedirectInfo = redirectinfo
          @OutOrderId = outorderid
        end

        def deserialize(params)
          @ChannelOrderId = params['ChannelOrderId']
          @ThirdPayOrderId = params['ThirdPayOrderId']
          unless params['RedirectInfo'].nil?
            @RedirectInfo = OpenBankRedirectInfo.new
            @RedirectInfo.deserialize(params['RedirectInfo'])
          end
          @OutOrderId = params['OutOrderId']
        end
      end

      # CreateOpenBankPaymentOrder请求参数结构体
      class CreateOpenBankPaymentOrderRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 云企付渠道商户号。外部接入平台入驻云企付平台后下发。
        # @type ChannelMerchantId: String
        # @param ChannelName: 渠道名称。
        # __TENPAY__: 商企付
        # __WECHAT__: 微信支付
        # __ALIPAY__: 支付宝
        # @type ChannelName: String
        # @param PaymentMethod: 付款方式。如
        # __EBANK_PAYMENT__:B2B EBank付款
        # __OPENBANK_PAYMENT__:B2C  openbank付款
        # @type PaymentMethod: String
        # @param PaymentMode: 付款模式。默认直接支付，如
        # __DIRECT__:直接支付
        # __FREEZE__:担保支付
        # @type PaymentMode: String
        # @param OutOrderId: 外部订单号,只能是数字、大小写字母，且在同一个接入平台下唯一，限定长度40位。
        # @type OutOrderId: String
        # @param TotalAmount: 付款金额，单位分。
        # @type TotalAmount: Integer
        # @param Currency: 固定值CNY。
        # @type Currency: String
        # @param PayerInfo: 付款方信息。
        # @type PayerInfo: :class:`Tencentcloud::Cpdp.v20190820.models.OpenBankPayerInfo`
        # @param PayeeInfo: 收款方信息。
        # @type PayeeInfo: :class:`Tencentcloud::Cpdp.v20190820.models.OpenBankPayeeInfo`
        # @param NotifyUrl: 通知地址，如www.test.com。
        # @type NotifyUrl: String
        # @param ExpireTime: 订单过期时间，yyyy-MM-dd HH:mm:ss格式。
        # @type ExpireTime: String
        # @param FrontUrl: 前端成功回调URL。条件可选
        # 当付款方式PaymentMethod为EBANK_PAYMENT时必填
        # @type FrontUrl: String
        # @param RefreshUrl: 前端刷新 URL。条件可选
        # 当付款方式PaymentMethod为EBANK_PAYMENT时必填
        # @type RefreshUrl: String
        # @param SceneInfo: 设备信息，条件可选。
        # @type SceneInfo: :class:`Tencentcloud::Cpdp.v20190820.models.OpenBankSceneInfo`
        # @param GoodsInfo: 商品信息，条件可选。
        # @type GoodsInfo: :class:`Tencentcloud::Cpdp.v20190820.models.OpenBankGoodsInfo`
        # @param Attachment: 附加信息，查询时原样返回。
        # @type Attachment: String
        # @param ProfitShareFlag: 若不上传，即使用默认值无需分润
        # __NO_NEED_SHARE__：无需分润；
        # __SHARE_BY_INFO__：分润时指定金额，此时如果分润信息 ProfitShareInfo为空，只冻结，不分账给其他商户；需要调用解冻接口。
        # __SHARE_BY_API__：后续调用分润接口决定分润金额
        # @type ProfitShareFlag: String
        # @param ProfitShareInfoList: 分润信息，配合ProfitShareFlag使用。
        # @type ProfitShareInfoList: Array
        # @param Remark: 备注信息。
        # @type Remark: String
        # @param Environment: 环境类型
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # 缺省默认为生产环境
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :ChannelName, :PaymentMethod, :PaymentMode, :OutOrderId, :TotalAmount, :Currency, :PayerInfo, :PayeeInfo, :NotifyUrl, :ExpireTime, :FrontUrl, :RefreshUrl, :SceneInfo, :GoodsInfo, :Attachment, :ProfitShareFlag, :ProfitShareInfoList, :Remark, :Environment
        
        def initialize(channelmerchantid=nil, channelname=nil, paymentmethod=nil, paymentmode=nil, outorderid=nil, totalamount=nil, currency=nil, payerinfo=nil, payeeinfo=nil, notifyurl=nil, expiretime=nil, fronturl=nil, refreshurl=nil, sceneinfo=nil, goodsinfo=nil, attachment=nil, profitshareflag=nil, profitshareinfolist=nil, remark=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @ChannelName = channelname
          @PaymentMethod = paymentmethod
          @PaymentMode = paymentmode
          @OutOrderId = outorderid
          @TotalAmount = totalamount
          @Currency = currency
          @PayerInfo = payerinfo
          @PayeeInfo = payeeinfo
          @NotifyUrl = notifyurl
          @ExpireTime = expiretime
          @FrontUrl = fronturl
          @RefreshUrl = refreshurl
          @SceneInfo = sceneinfo
          @GoodsInfo = goodsinfo
          @Attachment = attachment
          @ProfitShareFlag = profitshareflag
          @ProfitShareInfoList = profitshareinfolist
          @Remark = remark
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelName = params['ChannelName']
          @PaymentMethod = params['PaymentMethod']
          @PaymentMode = params['PaymentMode']
          @OutOrderId = params['OutOrderId']
          @TotalAmount = params['TotalAmount']
          @Currency = params['Currency']
          unless params['PayerInfo'].nil?
            @PayerInfo = OpenBankPayerInfo.new
            @PayerInfo.deserialize(params['PayerInfo'])
          end
          unless params['PayeeInfo'].nil?
            @PayeeInfo = OpenBankPayeeInfo.new
            @PayeeInfo.deserialize(params['PayeeInfo'])
          end
          @NotifyUrl = params['NotifyUrl']
          @ExpireTime = params['ExpireTime']
          @FrontUrl = params['FrontUrl']
          @RefreshUrl = params['RefreshUrl']
          unless params['SceneInfo'].nil?
            @SceneInfo = OpenBankSceneInfo.new
            @SceneInfo.deserialize(params['SceneInfo'])
          end
          unless params['GoodsInfo'].nil?
            @GoodsInfo = OpenBankGoodsInfo.new
            @GoodsInfo.deserialize(params['GoodsInfo'])
          end
          @Attachment = params['Attachment']
          @ProfitShareFlag = params['ProfitShareFlag']
          unless params['ProfitShareInfoList'].nil?
            @ProfitShareInfoList = []
            params['ProfitShareInfoList'].each do |i|
              openbankprofitshareinfo_tmp = OpenBankProfitShareInfo.new
              openbankprofitshareinfo_tmp.deserialize(i)
              @ProfitShareInfoList << openbankprofitshareinfo_tmp
            end
          end
          @Remark = params['Remark']
          @Environment = params['Environment']
        end
      end

      # CreateOpenBankPaymentOrder返回参数结构体
      class CreateOpenBankPaymentOrderResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 业务系统返回码，SUCCESS表示成功，其他表示失败。
        # @type ErrCode: String
        # @param ErrMessage: 业务系统返回消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param Result: 统一下单响应对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateOpenBankOrderPaymentResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = CreateOpenBankOrderPaymentResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateOrder请求参数结构体
      class CreateOrderRequest < TencentCloud::Common::AbstractModel
        # @param ChannelCode: 渠道编号。ZSB2B：招商银行B2B。
        # @type ChannelCode: String
        # @param MerchantAppId: 进件成功后返给商户方的 AppId。
        # @type MerchantAppId: String
        # @param Amount: 交易金额。单位：元
        # @type Amount: String
        # @param TraceNo: 商户流水号。商户唯一订单号由字母或数字组成。
        # @type TraceNo: String
        # @param NotifyUrl: 通知地址。商户接收交易结果的通知地址。
        # @type NotifyUrl: String
        # @param ReturnUrl: 返回地址。支付成功后，页面将跳 转返回到商户的该地址。
        # @type ReturnUrl: String

        attr_accessor :ChannelCode, :MerchantAppId, :Amount, :TraceNo, :NotifyUrl, :ReturnUrl
        
        def initialize(channelcode=nil, merchantappid=nil, amount=nil, traceno=nil, notifyurl=nil, returnurl=nil)
          @ChannelCode = channelcode
          @MerchantAppId = merchantappid
          @Amount = amount
          @TraceNo = traceno
          @NotifyUrl = notifyurl
          @ReturnUrl = returnurl
        end

        def deserialize(params)
          @ChannelCode = params['ChannelCode']
          @MerchantAppId = params['MerchantAppId']
          @Amount = params['Amount']
          @TraceNo = params['TraceNo']
          @NotifyUrl = params['NotifyUrl']
          @ReturnUrl = params['ReturnUrl']
        end
      end

      # CreateOrder返回参数结构体
      class CreateOrderResponse < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 进件成功后返给商户方的AppId。
        # @type MerchantAppId: String
        # @param TraceNo: 商户流水号，商户唯一订单号由字母或数字组成。
        # @type TraceNo: String
        # @param OrderNo: 平台流水号，若下单成功则返回。
        # @type OrderNo: String
        # @param PayUrl: 支付页面跳转地址，若下单成功则返回。
        # @type PayUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantAppId, :TraceNo, :OrderNo, :PayUrl, :RequestId
        
        def initialize(merchantappid=nil, traceno=nil, orderno=nil, payurl=nil, requestid=nil)
          @MerchantAppId = merchantappid
          @TraceNo = traceno
          @OrderNo = orderno
          @PayUrl = payurl
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @TraceNo = params['TraceNo']
          @OrderNo = params['OrderNo']
          @PayUrl = params['PayUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreatePayMerchant请求参数结构体
      class CreatePayMerchantRequest < TencentCloud::Common::AbstractModel
        # @param PlatformCode: 平台编号
        # @type PlatformCode: String
        # @param ChannelMerchantNo: 渠道方收款商户编号，由渠道方(银行)提 供。
        # @type ChannelMerchantNo: String
        # @param ChannelCheckFlag: 是否需要向渠道进行 商户信息验证 1:验证
        # 0:不验证
        # @type ChannelCheckFlag: String
        # @param MerchantName: 收款商户名称
        # @type MerchantName: String
        # @param BusinessPayFlag: 是否开通 B2B 支付 1:开通 0:不开通 缺省:1
        # @type BusinessPayFlag: String

        attr_accessor :PlatformCode, :ChannelMerchantNo, :ChannelCheckFlag, :MerchantName, :BusinessPayFlag
        
        def initialize(platformcode=nil, channelmerchantno=nil, channelcheckflag=nil, merchantname=nil, businesspayflag=nil)
          @PlatformCode = platformcode
          @ChannelMerchantNo = channelmerchantno
          @ChannelCheckFlag = channelcheckflag
          @MerchantName = merchantname
          @BusinessPayFlag = businesspayflag
        end

        def deserialize(params)
          @PlatformCode = params['PlatformCode']
          @ChannelMerchantNo = params['ChannelMerchantNo']
          @ChannelCheckFlag = params['ChannelCheckFlag']
          @MerchantName = params['MerchantName']
          @BusinessPayFlag = params['BusinessPayFlag']
        end
      end

      # CreatePayMerchant返回参数结构体
      class CreatePayMerchantResponse < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 分配给商户的 AppId。该 AppId 为后续各项 交易的商户标识。
        # @type MerchantAppId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantAppId, :RequestId
        
        def initialize(merchantappid=nil, requestid=nil)
          @MerchantAppId = merchantappid
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @RequestId = params['RequestId']
        end
      end

      # 创建红票明细
      class CreateRedInvoiceItem < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param CallbackUrl: 发票结果回传地址
        # @type CallbackUrl: String
        # @param OrderSn: 业务开票号
        # @type OrderSn: String
        # @param RedSerialNo: 红字信息表编码
        # @type RedSerialNo: String
        # @param StoreNo: 门店编号
        # @type StoreNo: String

        attr_accessor :OrderId, :CallbackUrl, :OrderSn, :RedSerialNo, :StoreNo
        
        def initialize(orderid=nil, callbackurl=nil, ordersn=nil, redserialno=nil, storeno=nil)
          @OrderId = orderid
          @CallbackUrl = callbackurl
          @OrderSn = ordersn
          @RedSerialNo = redserialno
          @StoreNo = storeno
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @CallbackUrl = params['CallbackUrl']
          @OrderSn = params['OrderSn']
          @RedSerialNo = params['RedSerialNo']
          @StoreNo = params['StoreNo']
        end
      end

      # CreateRedInvoice请求参数结构体
      class CreateRedInvoiceRequest < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID
        # 0 : 高灯
        # 1 : 票易通
        # @type InvoicePlatformId: Integer
        # @param Invoices: 红冲明细
        # @type Invoices: Array
        # @param Profile: 接入环境。沙箱环境填 sandbox。
        # @type Profile: String
        # @param InvoiceChannel: 开票渠道。0：线上渠道，1：线下渠道。不填默认为线上渠道
        # @type InvoiceChannel: Integer

        attr_accessor :InvoicePlatformId, :Invoices, :Profile, :InvoiceChannel
        
        def initialize(invoiceplatformid=nil, invoices=nil, profile=nil, invoicechannel=nil)
          @InvoicePlatformId = invoiceplatformid
          @Invoices = invoices
          @Profile = profile
          @InvoiceChannel = invoicechannel
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          unless params['Invoices'].nil?
            @Invoices = []
            params['Invoices'].each do |i|
              createredinvoiceitem_tmp = CreateRedInvoiceItem.new
              createredinvoiceitem_tmp.deserialize(i)
              @Invoices << createredinvoiceitem_tmp
            end
          end
          @Profile = params['Profile']
          @InvoiceChannel = params['InvoiceChannel']
        end
      end

      # CreateRedInvoice返回参数结构体
      class CreateRedInvoiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 红冲结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateRedInvoiceResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateRedInvoiceResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 红票结果
      class CreateRedInvoiceResult < TencentCloud::Common::AbstractModel
        # @param Message: 错误消息
        # @type Message: String
        # @param Code: 错误码
        # @type Code: Integer
        # @param Data: 红票数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array

        attr_accessor :Message, :Code, :Data
        
        def initialize(message=nil, code=nil, data=nil)
          @Message = message
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Message = params['Message']
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              createredinvoiceresultdata_tmp = CreateRedInvoiceResultData.new
              createredinvoiceresultdata_tmp.deserialize(i)
              @Data << createredinvoiceresultdata_tmp
            end
          end
        end
      end

      # 红票结果数据
      class CreateRedInvoiceResultData < TencentCloud::Common::AbstractModel
        # @param Code: 红冲状态码
        # @type Code: Integer
        # @param Message: 红冲状态消息
        # @type Message: String
        # @param InvoiceId: 发票ID
        # @type InvoiceId: String
        # @param OrderSn: 业务开票号
        # @type OrderSn: String

        attr_accessor :Code, :Message, :InvoiceId, :OrderSn
        
        def initialize(code=nil, message=nil, invoiceid=nil, ordersn=nil)
          @Code = code
          @Message = message
          @InvoiceId = invoiceid
          @OrderSn = ordersn
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @InvoiceId = params['InvoiceId']
          @OrderSn = params['OrderSn']
        end
      end

      # 红票结果V2
      class CreateRedInvoiceResultV2 < TencentCloud::Common::AbstractModel
        # @param InvoiceId: 红票ID
        # @type InvoiceId: String

        attr_accessor :InvoiceId
        
        def initialize(invoiceid=nil)
          @InvoiceId = invoiceid
        end

        def deserialize(params)
          @InvoiceId = params['InvoiceId']
        end
      end

      # CreateRedInvoiceV2请求参数结构体
      class CreateRedInvoiceV2Request < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID
        # 0 : 高灯
        # 1 : 票易通
        # @type InvoicePlatformId: Integer
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param Profile: 接入环境。沙箱环境填 sandbox。
        # @type Profile: String
        # @param InvoiceChannel: 开票渠道。0：线上渠道，1：线下渠道。不填默认为线上渠道
        # @type InvoiceChannel: Integer

        attr_accessor :InvoicePlatformId, :OrderId, :Profile, :InvoiceChannel
        
        def initialize(invoiceplatformid=nil, orderid=nil, profile=nil, invoicechannel=nil)
          @InvoicePlatformId = invoiceplatformid
          @OrderId = orderid
          @Profile = profile
          @InvoiceChannel = invoicechannel
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          @OrderId = params['OrderId']
          @Profile = params['Profile']
          @InvoiceChannel = params['InvoiceChannel']
        end
      end

      # CreateRedInvoiceV2返回参数结构体
      class CreateRedInvoiceV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 红冲结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateRedInvoiceResultV2`
        # @param ErrCode: 错误码
        # @type ErrCode: String
        # @param ErrMessage: 错误消息
        # @type ErrMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrCode, :ErrMessage, :RequestId
        
        def initialize(result=nil, errcode=nil, errmessage=nil, requestid=nil)
          @Result = result
          @ErrCode = errcode
          @ErrMessage = errmessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateRedInvoiceResultV2.new
            @Result.deserialize(params['Result'])
          end
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @RequestId = params['RequestId']
        end
      end

      # CreateSinglePay请求参数结构体
      class CreateSinglePayRequest < TencentCloud::Common::AbstractModel
        # @param SerialNumber: 业务流水号，历史唯一
        # @type SerialNumber: String
        # @param PayAccountNumber: 付方账户号
        # @type PayAccountNumber: String
        # @param PayAccountName: 付方账户名称
        # @type PayAccountName: String
        # @param Amount: 金额
        # @type Amount: Integer
        # @param RecvAccountNumber: 收方账户号
        # @type RecvAccountNumber: String
        # @param RecvAccountName: 收方账户名称
        # @type RecvAccountName: String
        # @param PayBankCnaps: 付方账户CNAPS号
        # @type PayBankCnaps: String
        # @param PayBankType: 付方账户银行大类，PayBankCnaps为空时必传（见常见问题-银企直连银行类型）
        # @type PayBankType: String
        # @param PayBankProvince: 付方账户银行所在省，PayBankCnaps为空时必传（见常见问题-银企直连省份枚举信息）
        # @type PayBankProvince: String
        # @param PayBankCity: 付方账户银行所在地区，PayBankCnaps为空时必传（见常见问题-银企直连城市枚举信息）
        # @type PayBankCity: String
        # @param RecvBankCnaps: 收方账户CNAPS号
        # @type RecvBankCnaps: String
        # @param RecvBankType: 收方账户银行大类，RecvBankCnaps为空时必传（见常见问题-银企直连银行类型）
        # @type RecvBankType: String
        # @param RecvBankProvince: 收方账户银行所在省，RecvBankCnaps为空时必传（见常见问题-银企直连省份枚举信息）
        # @type RecvBankProvince: String
        # @param RecvBankCity: 收方账户银行所在地区，RecvBankCnaps为空时必传（见常见问题-银企直连城市枚举信息）
        # @type RecvBankCity: String
        # @param RecvCertType: 收款方证件类型（见常见问题-银企直连证件类型枚举信息）
        # @type RecvCertType: String
        # @param RecvCertNo: 收款方证件号码
        # @type RecvCertNo: String
        # @param Summary: 摘要信息
        # @type Summary: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :SerialNumber, :PayAccountNumber, :PayAccountName, :Amount, :RecvAccountNumber, :RecvAccountName, :PayBankCnaps, :PayBankType, :PayBankProvince, :PayBankCity, :RecvBankCnaps, :RecvBankType, :RecvBankProvince, :RecvBankCity, :RecvCertType, :RecvCertNo, :Summary, :Profile
        
        def initialize(serialnumber=nil, payaccountnumber=nil, payaccountname=nil, amount=nil, recvaccountnumber=nil, recvaccountname=nil, paybankcnaps=nil, paybanktype=nil, paybankprovince=nil, paybankcity=nil, recvbankcnaps=nil, recvbanktype=nil, recvbankprovince=nil, recvbankcity=nil, recvcerttype=nil, recvcertno=nil, summary=nil, profile=nil)
          @SerialNumber = serialnumber
          @PayAccountNumber = payaccountnumber
          @PayAccountName = payaccountname
          @Amount = amount
          @RecvAccountNumber = recvaccountnumber
          @RecvAccountName = recvaccountname
          @PayBankCnaps = paybankcnaps
          @PayBankType = paybanktype
          @PayBankProvince = paybankprovince
          @PayBankCity = paybankcity
          @RecvBankCnaps = recvbankcnaps
          @RecvBankType = recvbanktype
          @RecvBankProvince = recvbankprovince
          @RecvBankCity = recvbankcity
          @RecvCertType = recvcerttype
          @RecvCertNo = recvcertno
          @Summary = summary
          @Profile = profile
        end

        def deserialize(params)
          @SerialNumber = params['SerialNumber']
          @PayAccountNumber = params['PayAccountNumber']
          @PayAccountName = params['PayAccountName']
          @Amount = params['Amount']
          @RecvAccountNumber = params['RecvAccountNumber']
          @RecvAccountName = params['RecvAccountName']
          @PayBankCnaps = params['PayBankCnaps']
          @PayBankType = params['PayBankType']
          @PayBankProvince = params['PayBankProvince']
          @PayBankCity = params['PayBankCity']
          @RecvBankCnaps = params['RecvBankCnaps']
          @RecvBankType = params['RecvBankType']
          @RecvBankProvince = params['RecvBankProvince']
          @RecvBankCity = params['RecvBankCity']
          @RecvCertType = params['RecvCertType']
          @RecvCertNo = params['RecvCertNo']
          @Summary = params['Summary']
          @Profile = params['Profile']
        end
      end

      # CreateSinglePay返回参数结构体
      class CreateSinglePayResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateSinglePayResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateSinglePayResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 银企直连-单笔支付响应结果
      class CreateSinglePayResult < TencentCloud::Common::AbstractModel
        # @param HandleStatus: 受理状态（S：处理成功；F：处理失败）
        # @type HandleStatus: String
        # @param HandleMsg: 受理状态描述
        # @type HandleMsg: String
        # @param SerialNo: 业务流水号，历史唯一
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerialNo: String
        # @param BankSerialNo: 银行指令流水
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankSerialNo: String
        # @param PayStatus: 付款状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayStatus: String
        # @param BankRetCode: 银行原始返回码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankRetCode: String
        # @param BankRetMsg: 银行原始返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankRetMsg: String

        attr_accessor :HandleStatus, :HandleMsg, :SerialNo, :BankSerialNo, :PayStatus, :BankRetCode, :BankRetMsg
        
        def initialize(handlestatus=nil, handlemsg=nil, serialno=nil, bankserialno=nil, paystatus=nil, bankretcode=nil, bankretmsg=nil)
          @HandleStatus = handlestatus
          @HandleMsg = handlemsg
          @SerialNo = serialno
          @BankSerialNo = bankserialno
          @PayStatus = paystatus
          @BankRetCode = bankretcode
          @BankRetMsg = bankretmsg
        end

        def deserialize(params)
          @HandleStatus = params['HandleStatus']
          @HandleMsg = params['HandleMsg']
          @SerialNo = params['SerialNo']
          @BankSerialNo = params['BankSerialNo']
          @PayStatus = params['PayStatus']
          @BankRetCode = params['BankRetCode']
          @BankRetMsg = params['BankRetMsg']
        end
      end

      # CreateSinglePayment接口返回响应
      class CreateSinglePaymentData < TencentCloud::Common::AbstractModel
        # @param TradeSerialNo: 平台交易流水号，唯一
        # @type TradeSerialNo: String

        attr_accessor :TradeSerialNo
        
        def initialize(tradeserialno=nil)
          @TradeSerialNo = tradeserialno
        end

        def deserialize(params)
          @TradeSerialNo = params['TradeSerialNo']
        end
      end

      # CreateSinglePayment请求参数结构体
      class CreateSinglePaymentRequest < TencentCloud::Common::AbstractModel
        # @param TransferType: 转账类型
        # @type TransferType: Integer
        # @param OrderId: 订单流水号
        # @type OrderId: String
        # @param TransferAmount: 转账金额
        # @type TransferAmount: Integer
        # @param AnchorId: 主播ID（与主播业务ID不能同时为空，两者都填取主播ID）
        # @type AnchorId: String
        # @param ReqReserved: 请求预留字段，原样透传返回
        # @type ReqReserved: String
        # @param Remark: 业务备注
        # @type Remark: String
        # @param AnchorName: 主播名称。如果该字段填入，则会对AnchorName和AnchorId/Uid进行校验。
        # @type AnchorName: String
        # @param Uid: 主播业务ID（与主播ID不能同时为空，两者都填取主播ID）
        # @type Uid: String
        # @param NotifyUrl: 转账结果回调通知URL。若不填，则不进行回调。
        # @type NotifyUrl: String

        attr_accessor :TransferType, :OrderId, :TransferAmount, :AnchorId, :ReqReserved, :Remark, :AnchorName, :Uid, :NotifyUrl
        
        def initialize(transfertype=nil, orderid=nil, transferamount=nil, anchorid=nil, reqreserved=nil, remark=nil, anchorname=nil, uid=nil, notifyurl=nil)
          @TransferType = transfertype
          @OrderId = orderid
          @TransferAmount = transferamount
          @AnchorId = anchorid
          @ReqReserved = reqreserved
          @Remark = remark
          @AnchorName = anchorname
          @Uid = uid
          @NotifyUrl = notifyurl
        end

        def deserialize(params)
          @TransferType = params['TransferType']
          @OrderId = params['OrderId']
          @TransferAmount = params['TransferAmount']
          @AnchorId = params['AnchorId']
          @ReqReserved = params['ReqReserved']
          @Remark = params['Remark']
          @AnchorName = params['AnchorName']
          @Uid = params['Uid']
          @NotifyUrl = params['NotifyUrl']
        end
      end

      # CreateSinglePayment返回参数结构体
      class CreateSinglePaymentResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # @type ErrCode: String
        # @param ErrMessage: 响应消息
        # @type ErrMessage: String
        # @param Result: 返回数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.CreateSinglePaymentData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = CreateSinglePaymentData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTransferBatch请求参数结构体
      class CreateTransferBatchRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号。
        # 示例值：129284394
        # @type MerchantId: String
        # @param TransferDetails: 转账明细列表。
        # 发起批量转账的明细列表，最多三千笔
        # @type TransferDetails: Array
        # @param MerchantAppId: 直连商户appId。
        # 即商户号绑定的appid。
        # 示例值：wxf636efh567hg4356
        # @type MerchantAppId: String
        # @param MerchantBatchNo: 商家批次单号。
        # 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        # 示例值：plfk2020042013
        # @type MerchantBatchNo: String
        # @param BatchName: 批次名称。
        # 批量转账的名称。
        # 示例值：2019年1月深圳分部报销单
        # @type BatchName: String
        # @param BatchRemark: 转账说明。
        # UTF8编码，最多32个字符。
        # 示例值：2019年深圳分部报销单
        # @type BatchRemark: String
        # @param TotalAmount: 转账总金额。
        # 转账金额，单位为分。
        # 示例值：4000000
        # @type TotalAmount: Integer
        # @param TotalNum: 转账总笔数。
        # 一个转账批次最多允许发起三千笔转账。
        # 示例值：200
        # @type TotalNum: Integer
        # @param Profile: 环境名。
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type Profile: String

        attr_accessor :MerchantId, :TransferDetails, :MerchantAppId, :MerchantBatchNo, :BatchName, :BatchRemark, :TotalAmount, :TotalNum, :Profile
        
        def initialize(merchantid=nil, transferdetails=nil, merchantappid=nil, merchantbatchno=nil, batchname=nil, batchremark=nil, totalamount=nil, totalnum=nil, profile=nil)
          @MerchantId = merchantid
          @TransferDetails = transferdetails
          @MerchantAppId = merchantappid
          @MerchantBatchNo = merchantbatchno
          @BatchName = batchname
          @BatchRemark = batchremark
          @TotalAmount = totalamount
          @TotalNum = totalnum
          @Profile = profile
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          unless params['TransferDetails'].nil?
            @TransferDetails = []
            params['TransferDetails'].each do |i|
              transferdetailrequest_tmp = TransferDetailRequest.new
              transferdetailrequest_tmp.deserialize(i)
              @TransferDetails << transferdetailrequest_tmp
            end
          end
          @MerchantAppId = params['MerchantAppId']
          @MerchantBatchNo = params['MerchantBatchNo']
          @BatchName = params['BatchName']
          @BatchRemark = params['BatchRemark']
          @TotalAmount = params['TotalAmount']
          @TotalNum = params['TotalNum']
          @Profile = params['Profile']
        end
      end

      # CreateTransferBatch返回参数结构体
      class CreateTransferBatchResponse < TencentCloud::Common::AbstractModel
        # @param MerchantBatchNo: 商家批次单号。
        # 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        # 示例值：plfk2020042013
        # @type MerchantBatchNo: String
        # @param BatchId: 微信批次单号。
        # 微信商家转账系统返回的唯一标识。
        # 示例值：1030000071100999991182020050700019480001
        # @type BatchId: String
        # @param CreateTime: 批次受理成功时返回，遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        # 示例值：2015-05-20T13:29:35.120+08:00
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantBatchNo, :BatchId, :CreateTime, :RequestId
        
        def initialize(merchantbatchno=nil, batchid=nil, createtime=nil, requestid=nil)
          @MerchantBatchNo = merchantbatchno
          @BatchId = batchid
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantBatchNo = params['MerchantBatchNo']
          @BatchId = params['BatchId']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DeduceQuota请求参数结构体
      class DeduceQuotaRequest < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播ID
        # @type AnchorId: String
        # @param Amount: 提现金额，单位为"分"
        # @type Amount: Integer
        # @param OrderId: 外部业务订单号
        # @type OrderId: String

        attr_accessor :AnchorId, :Amount, :OrderId
        
        def initialize(anchorid=nil, amount=nil, orderid=nil)
          @AnchorId = anchorid
          @Amount = amount
          @OrderId = orderid
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @Amount = params['Amount']
          @OrderId = params['OrderId']
        end
      end

      # DeduceQuota返回参数结构体
      class DeduceQuotaResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMsg: 响应消息
        # @type ErrMsg: String
        # @param Result: 返回响应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.AssignmentData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMsg, :Result, :RequestId
        
        def initialize(errcode=nil, errmsg=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMsg = errmsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['Result'].nil?
            @Result = AssignmentData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAgentTaxPaymentInfo请求参数结构体
      class DeleteAgentTaxPaymentInfoRequest < TencentCloud::Common::AbstractModel
        # @param BatchNum: 批次号
        # @type BatchNum: Integer
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :BatchNum, :Profile
        
        def initialize(batchnum=nil, profile=nil)
          @BatchNum = batchnum
          @Profile = profile
        end

        def deserialize(params)
          @BatchNum = params['BatchNum']
          @Profile = params['Profile']
        end
      end

      # DeleteAgentTaxPaymentInfo返回参数结构体
      class DeleteAgentTaxPaymentInfoResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAgentTaxPaymentInfos请求参数结构体
      class DeleteAgentTaxPaymentInfosRequest < TencentCloud::Common::AbstractModel
        # @param BatchNum: 批次号
        # @type BatchNum: Integer

        attr_accessor :BatchNum
        
        def initialize(batchnum=nil)
          @BatchNum = batchnum
        end

        def deserialize(params)
          @BatchNum = params['BatchNum']
        end
      end

      # DeleteAgentTaxPaymentInfos返回参数结构体
      class DeleteAgentTaxPaymentInfosResponse < TencentCloud::Common::AbstractModel
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

      # DescribeChargeDetail请求参数结构体
      class DescribeChargeDetailRequest < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param MerchantCode: 商户号
        # @type MerchantCode: String
        # @param PayChannel: 支付渠道
        # @type PayChannel: String
        # @param PayChannelSubId: 子渠道
        # @type PayChannelSubId: Integer
        # @param OrderId: 原始交易订单号或者流水号
        # @type OrderId: String
        # @param BankAccountNumber: 父账户账号，资金汇总账号
        # @type BankAccountNumber: String
        # @param AcquiringChannelType: 收单渠道类型
        # @type AcquiringChannelType: String
        # @param PlatformShortNumber: 平台短号(银行分配)
        # @type PlatformShortNumber: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param TransSequenceNumber: 交易流水号
        # @type TransSequenceNumber: String
        # @param MidasEnvironment: Midas环境参数
        # @type MidasEnvironment: String
        # @param ReservedMessage: 保留域
        # @type ReservedMessage: String

        attr_accessor :RequestType, :MerchantCode, :PayChannel, :PayChannelSubId, :OrderId, :BankAccountNumber, :AcquiringChannelType, :PlatformShortNumber, :MidasSecretId, :MidasAppId, :MidasSignature, :TransSequenceNumber, :MidasEnvironment, :ReservedMessage
        
        def initialize(requesttype=nil, merchantcode=nil, paychannel=nil, paychannelsubid=nil, orderid=nil, bankaccountnumber=nil, acquiringchanneltype=nil, platformshortnumber=nil, midassecretid=nil, midasappid=nil, midassignature=nil, transsequencenumber=nil, midasenvironment=nil, reservedmessage=nil)
          @RequestType = requesttype
          @MerchantCode = merchantcode
          @PayChannel = paychannel
          @PayChannelSubId = paychannelsubid
          @OrderId = orderid
          @BankAccountNumber = bankaccountnumber
          @AcquiringChannelType = acquiringchanneltype
          @PlatformShortNumber = platformshortnumber
          @MidasSecretId = midassecretid
          @MidasAppId = midasappid
          @MidasSignature = midassignature
          @TransSequenceNumber = transsequencenumber
          @MidasEnvironment = midasenvironment
          @ReservedMessage = reservedmessage
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @MerchantCode = params['MerchantCode']
          @PayChannel = params['PayChannel']
          @PayChannelSubId = params['PayChannelSubId']
          @OrderId = params['OrderId']
          @BankAccountNumber = params['BankAccountNumber']
          @AcquiringChannelType = params['AcquiringChannelType']
          @PlatformShortNumber = params['PlatformShortNumber']
          @MidasSecretId = params['MidasSecretId']
          @MidasAppId = params['MidasAppId']
          @MidasSignature = params['MidasSignature']
          @TransSequenceNumber = params['TransSequenceNumber']
          @MidasEnvironment = params['MidasEnvironment']
          @ReservedMessage = params['ReservedMessage']
        end
      end

      # DescribeChargeDetail返回参数结构体
      class DescribeChargeDetailResponse < TencentCloud::Common::AbstractModel
        # @param OrderStatus: 交易状态 （0：成功，1：失败，2：异常,3:冲正，5：待处理）
        # @type OrderStatus: String
        # @param OrderAmount: 交易金额
        # @type OrderAmount: String
        # @param CommissionAmount: 佣金费
        # @type CommissionAmount: String
        # @param PayMode: 支付方式  0-冻结支付 1-普通支付
        # @type PayMode: String
        # @param OrderDate: 交易日期
        # @type OrderDate: String
        # @param OrderTime: 交易时间
        # @type OrderTime: String
        # @param OrderActualInSubAccountName: 订单实际转入见证子账户的名称
        # @type OrderActualInSubAccountName: String
        # @param OrderActualInSubAccountNumber: 订单实际转入见证子账户的帐号
        # @type OrderActualInSubAccountNumber: String
        # @param OrderInSubAccountName: 订单实际转入见证子账户的帐号
        # @type OrderInSubAccountName: String
        # @param OrderInSubAccountNumber: 订单转入见证子账户的帐号
        # @type OrderInSubAccountNumber: String
        # @param FrontSequenceNumber: 银行流水号
        # @type FrontSequenceNumber: String
        # @param FailMessage: 当充值失败时，返回交易失败原因
        # @type FailMessage: String
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderStatus, :OrderAmount, :CommissionAmount, :PayMode, :OrderDate, :OrderTime, :OrderActualInSubAccountName, :OrderActualInSubAccountNumber, :OrderInSubAccountName, :OrderInSubAccountNumber, :FrontSequenceNumber, :FailMessage, :RequestType, :RequestId
        
        def initialize(orderstatus=nil, orderamount=nil, commissionamount=nil, paymode=nil, orderdate=nil, ordertime=nil, orderactualinsubaccountname=nil, orderactualinsubaccountnumber=nil, orderinsubaccountname=nil, orderinsubaccountnumber=nil, frontsequencenumber=nil, failmessage=nil, requesttype=nil, requestid=nil)
          @OrderStatus = orderstatus
          @OrderAmount = orderamount
          @CommissionAmount = commissionamount
          @PayMode = paymode
          @OrderDate = orderdate
          @OrderTime = ordertime
          @OrderActualInSubAccountName = orderactualinsubaccountname
          @OrderActualInSubAccountNumber = orderactualinsubaccountnumber
          @OrderInSubAccountName = orderinsubaccountname
          @OrderInSubAccountNumber = orderinsubaccountnumber
          @FrontSequenceNumber = frontsequencenumber
          @FailMessage = failmessage
          @RequestType = requesttype
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderStatus = params['OrderStatus']
          @OrderAmount = params['OrderAmount']
          @CommissionAmount = params['CommissionAmount']
          @PayMode = params['PayMode']
          @OrderDate = params['OrderDate']
          @OrderTime = params['OrderTime']
          @OrderActualInSubAccountName = params['OrderActualInSubAccountName']
          @OrderActualInSubAccountNumber = params['OrderActualInSubAccountNumber']
          @OrderInSubAccountName = params['OrderInSubAccountName']
          @OrderInSubAccountNumber = params['OrderInSubAccountNumber']
          @FrontSequenceNumber = params['FrontSequenceNumber']
          @FailMessage = params['FailMessage']
          @RequestType = params['RequestType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrderStatus请求参数结构体
      class DescribeOrderStatusRequest < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型，此接口固定填：QueryOrderStatusReq
        # @type RequestType: String
        # @param MerchantCode: 商户号
        # @type MerchantCode: String
        # @param PayChannel: 支付渠道
        # @type PayChannel: String
        # @param PayChannelSubId: 子渠道
        # @type PayChannelSubId: Integer
        # @param OrderId: 交易订单号或流水号，提现，充值或会员交易请求时的CnsmrSeqNo值
        # @type OrderId: String
        # @param BankAccountNumber: 父账户账号，资金汇总账号
        # @type BankAccountNumber: String
        # @param PlatformShortNumber: 平台短号(银行分配)
        # @type PlatformShortNumber: String
        # @param QueryType: 功能标志 0：会员间交易 1：提现 2：充值
        # @type QueryType: String
        # @param TransSequenceNumber: 银行流水号
        # @type TransSequenceNumber: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasEnvironment: Midas环境参数
        # @type MidasEnvironment: String
        # @param ReservedMessage: 保留字段
        # @type ReservedMessage: String
        # @param BankSubAccountNumber: 子账户账号 暂未使用
        # @type BankSubAccountNumber: String
        # @param TransDate: 交易日期 暂未使用
        # @type TransDate: String

        attr_accessor :RequestType, :MerchantCode, :PayChannel, :PayChannelSubId, :OrderId, :BankAccountNumber, :PlatformShortNumber, :QueryType, :TransSequenceNumber, :MidasSignature, :MidasAppId, :MidasSecretId, :MidasEnvironment, :ReservedMessage, :BankSubAccountNumber, :TransDate
        
        def initialize(requesttype=nil, merchantcode=nil, paychannel=nil, paychannelsubid=nil, orderid=nil, bankaccountnumber=nil, platformshortnumber=nil, querytype=nil, transsequencenumber=nil, midassignature=nil, midasappid=nil, midassecretid=nil, midasenvironment=nil, reservedmessage=nil, banksubaccountnumber=nil, transdate=nil)
          @RequestType = requesttype
          @MerchantCode = merchantcode
          @PayChannel = paychannel
          @PayChannelSubId = paychannelsubid
          @OrderId = orderid
          @BankAccountNumber = bankaccountnumber
          @PlatformShortNumber = platformshortnumber
          @QueryType = querytype
          @TransSequenceNumber = transsequencenumber
          @MidasSignature = midassignature
          @MidasAppId = midasappid
          @MidasSecretId = midassecretid
          @MidasEnvironment = midasenvironment
          @ReservedMessage = reservedmessage
          @BankSubAccountNumber = banksubaccountnumber
          @TransDate = transdate
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @MerchantCode = params['MerchantCode']
          @PayChannel = params['PayChannel']
          @PayChannelSubId = params['PayChannelSubId']
          @OrderId = params['OrderId']
          @BankAccountNumber = params['BankAccountNumber']
          @PlatformShortNumber = params['PlatformShortNumber']
          @QueryType = params['QueryType']
          @TransSequenceNumber = params['TransSequenceNumber']
          @MidasSignature = params['MidasSignature']
          @MidasAppId = params['MidasAppId']
          @MidasSecretId = params['MidasSecretId']
          @MidasEnvironment = params['MidasEnvironment']
          @ReservedMessage = params['ReservedMessage']
          @BankSubAccountNumber = params['BankSubAccountNumber']
          @TransDate = params['TransDate']
        end
      end

      # DescribeOrderStatus返回参数结构体
      class DescribeOrderStatusResponse < TencentCloud::Common::AbstractModel
        # @param OrderStatus: 交易状态 （0：成功，1：失败，2：待确认, 5：待处理，6：处理中）
        # @type OrderStatus: String
        # @param OrderAmount: 交易金额
        # @type OrderAmount: String
        # @param OrderDate: 交易日期
        # @type OrderDate: String
        # @param OrderTime: 交易时间
        # @type OrderTime: String
        # @param OutSubAccountNumber: 转出子账户账号
        # @type OutSubAccountNumber: String
        # @param InSubAccountNumber: 转入子账户账号
        # @type InSubAccountNumber: String
        # @param BookingFlag: 记账标志（1：登记挂账 2：支付 3：提现 4：清分5:下单预支付 6：确认并付款 7：退款 8：支付到平台 N:其他）
        # @type BookingFlag: String
        # @param FailMessage: 当交易失败时，返回交易失败原因
        # @type FailMessage: String
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderStatus, :OrderAmount, :OrderDate, :OrderTime, :OutSubAccountNumber, :InSubAccountNumber, :BookingFlag, :FailMessage, :RequestType, :RequestId
        
        def initialize(orderstatus=nil, orderamount=nil, orderdate=nil, ordertime=nil, outsubaccountnumber=nil, insubaccountnumber=nil, bookingflag=nil, failmessage=nil, requesttype=nil, requestid=nil)
          @OrderStatus = orderstatus
          @OrderAmount = orderamount
          @OrderDate = orderdate
          @OrderTime = ordertime
          @OutSubAccountNumber = outsubaccountnumber
          @InSubAccountNumber = insubaccountnumber
          @BookingFlag = bookingflag
          @FailMessage = failmessage
          @RequestType = requesttype
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderStatus = params['OrderStatus']
          @OrderAmount = params['OrderAmount']
          @OrderDate = params['OrderDate']
          @OrderTime = params['OrderTime']
          @OutSubAccountNumber = params['OutSubAccountNumber']
          @InSubAccountNumber = params['InSubAccountNumber']
          @BookingFlag = params['BookingFlag']
          @FailMessage = params['FailMessage']
          @RequestType = params['RequestType']
          @RequestId = params['RequestId']
        end
      end

      # DistributeAccreditQuery请求参数结构体
      class DistributeAccreditQueryRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Profile
        
        def initialize(openid=nil, openkey=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Profile = params['Profile']
        end
      end

      # DistributeAccreditQuery返回参数结构体
      class DistributeAccreditQueryResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 查询授权申请结果响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeAccreditQueryResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeAccreditQueryResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 分账授权申请查询响应对象
      class DistributeAccreditQueryResult < TencentCloud::Common::AbstractModel
        # @param Status: 状态（0-未开通，1-已开通，2-商户主动关闭，3-待审核，4-冻结，5-注销，6-待签合同）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ContractUrl: 合同h5地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractUrl: String
        # @param Remark: 说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :Status, :ContractUrl, :Remark
        
        def initialize(status=nil, contracturl=nil, remark=nil)
          @Status = status
          @ContractUrl = contracturl
          @Remark = remark
        end

        def deserialize(params)
          @Status = params['Status']
          @ContractUrl = params['ContractUrl']
          @Remark = params['Remark']
        end
      end

      # 授权申请响应对象
      class DistributeAccreditResult < TencentCloud::Common::AbstractModel
        # @param ContractUrl: 合同h5地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractUrl: String
        # @param MerchantNo: 系统商户号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String

        attr_accessor :ContractUrl, :MerchantNo
        
        def initialize(contracturl=nil, merchantno=nil)
          @ContractUrl = contracturl
          @MerchantNo = merchantno
        end

        def deserialize(params)
          @ContractUrl = params['ContractUrl']
          @MerchantNo = params['MerchantNo']
        end
      end

      # DistributeAccreditTlinx请求参数结构体
      class DistributeAccreditTlinxRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param AuthType: 验证方式，传1手机验证(验证码时效60S)传2结算卡验证(时效6小时)，多种方式用逗号隔开
        # @type AuthType: String
        # @param Percent: 分账比例（500=5%）不传默认百分之10
        # @type Percent: String
        # @param FullName: 营业执照商户全称
        # @type FullName: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :AuthType, :Percent, :FullName, :Profile
        
        def initialize(openid=nil, openkey=nil, authtype=nil, percent=nil, fullname=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @AuthType = authtype
          @Percent = percent
          @FullName = fullname
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @AuthType = params['AuthType']
          @Percent = params['Percent']
          @FullName = params['FullName']
          @Profile = params['Profile']
        end
      end

      # DistributeAccreditTlinx返回参数结构体
      class DistributeAccreditTlinxResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 授权申请响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeAccreditResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeAccreditResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DistributeAddReceiver请求参数结构体
      class DistributeAddReceiverRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param MerchantNo: 商户编号
        # @type MerchantNo: String
        # @param Remark: 备注
        # @type Remark: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :MerchantNo, :Remark, :Profile
        
        def initialize(openid=nil, openkey=nil, merchantno=nil, remark=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @MerchantNo = merchantno
          @Remark = remark
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @MerchantNo = params['MerchantNo']
          @Remark = params['Remark']
          @Profile = params['Profile']
        end
      end

      # DistributeAddReceiver返回参数结构体
      class DistributeAddReceiverResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 添加分账接收方响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeReceiverResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeReceiverResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DistributeApply请求参数结构体
      class DistributeApplyRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param OutDistributeNo: 商户分账单号
        # @type OutDistributeNo: String
        # @param Details: 分账明细
        # @type Details: Array
        # @param DeveloperNo: 商户交易订单号，和OrderNo二者传其一
        # @type DeveloperNo: String
        # @param OrderNo: 平台交易订单号，和DeveloperNo二者传其一
        # @type OrderNo: String
        # @param Remark: 说明
        # @type Remark: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :OutDistributeNo, :Details, :DeveloperNo, :OrderNo, :Remark, :Profile
        
        def initialize(openid=nil, openkey=nil, outdistributeno=nil, details=nil, developerno=nil, orderno=nil, remark=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OutDistributeNo = outdistributeno
          @Details = details
          @DeveloperNo = developerno
          @OrderNo = orderno
          @Remark = remark
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OutDistributeNo = params['OutDistributeNo']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              multiapplydetail_tmp = MultiApplyDetail.new
              multiapplydetail_tmp.deserialize(i)
              @Details << multiapplydetail_tmp
            end
          end
          @DeveloperNo = params['DeveloperNo']
          @OrderNo = params['OrderNo']
          @Remark = params['Remark']
          @Profile = params['Profile']
        end
      end

      # DistributeApply返回参数结构体
      class DistributeApplyResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 分账申请响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeMultiApplyResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeMultiApplyResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DistributeCancel请求参数结构体
      class DistributeCancelRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param OrderNo: 平台交易订单号
        # @type OrderNo: String
        # @param OutDistributeNo: 商户分账单号，type为2时，和DistributeNo二者传其一
        # @type OutDistributeNo: String
        # @param DistributeNo: 平台分账单号，type为2时，和OutDistributeNo二者传其一
        # @type DistributeNo: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :OrderNo, :OutDistributeNo, :DistributeNo, :Profile
        
        def initialize(openid=nil, openkey=nil, orderno=nil, outdistributeno=nil, distributeno=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OrderNo = orderno
          @OutDistributeNo = outdistributeno
          @DistributeNo = distributeno
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OrderNo = params['OrderNo']
          @OutDistributeNo = params['OutDistributeNo']
          @DistributeNo = params['DistributeNo']
          @Profile = params['Profile']
        end
      end

      # DistributeCancel返回参数结构体
      class DistributeCancelResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 分账撤销响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeCancelResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeCancelResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 分账撤销响应对象
      class DistributeCancelResult < TencentCloud::Common::AbstractModel
        # @param Status: 分账订单状态（0初始1成功2失败3撤销）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OrderNo: 平台交易订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: String
        # @param OutDistributeNo: 商户分账单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutDistributeNo: String
        # @param DistributeNo: 平台分账单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributeNo: String

        attr_accessor :Status, :OrderNo, :OutDistributeNo, :DistributeNo
        
        def initialize(status=nil, orderno=nil, outdistributeno=nil, distributeno=nil)
          @Status = status
          @OrderNo = orderno
          @OutDistributeNo = outdistributeno
          @DistributeNo = distributeno
        end

        def deserialize(params)
          @Status = params['Status']
          @OrderNo = params['OrderNo']
          @OutDistributeNo = params['OutDistributeNo']
          @DistributeNo = params['DistributeNo']
        end
      end

      # 分账申请响应对象
      class DistributeMultiApplyResult < TencentCloud::Common::AbstractModel
        # @param Status: 分账状态（0分账初始 1分账成功 2分账失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param DistributeNo: 平台分账单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributeNo: String
        # @param InDate: 入账日期，yyyy-MM-dd格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InDate: String
        # @param Amount: 分账金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Amount: String
        # @param OutDistributeNo: 商户分账单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutDistributeNo: String
        # @param OrderNo: 平台支付单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: String

        attr_accessor :Status, :DistributeNo, :InDate, :Amount, :OutDistributeNo, :OrderNo
        
        def initialize(status=nil, distributeno=nil, indate=nil, amount=nil, outdistributeno=nil, orderno=nil)
          @Status = status
          @DistributeNo = distributeno
          @InDate = indate
          @Amount = amount
          @OutDistributeNo = outdistributeno
          @OrderNo = orderno
        end

        def deserialize(params)
          @Status = params['Status']
          @DistributeNo = params['DistributeNo']
          @InDate = params['InDate']
          @Amount = params['Amount']
          @OutDistributeNo = params['OutDistributeNo']
          @OrderNo = params['OrderNo']
        end
      end

      # DistributeQueryReceiver请求参数结构体
      class DistributeQueryReceiverRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Profile
        
        def initialize(openid=nil, openkey=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Profile = params['Profile']
        end
      end

      # DistributeQueryReceiver返回参数结构体
      class DistributeQueryReceiverResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 查询询已添加分账接收方响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeReceiverResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeReceiverResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DistributeQuery请求参数结构体
      class DistributeQueryRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param Type: 查询类型（1-全部，2-单笔）
        # @type Type: String
        # @param OutDistributeNo: 商户分账单号，type为2时，和DistributeNo二者传其一
        # @type OutDistributeNo: String
        # @param DistributeNo: 平台分账单号，type为2时，和OutDistributeNo二者传其一
        # @type DistributeNo: String
        # @param OrderNo: 平台交易订单号
        # @type OrderNo: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Type, :OutDistributeNo, :DistributeNo, :OrderNo, :Profile
        
        def initialize(openid=nil, openkey=nil, type=nil, outdistributeno=nil, distributeno=nil, orderno=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Type = type
          @OutDistributeNo = outdistributeno
          @DistributeNo = distributeno
          @OrderNo = orderno
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Type = params['Type']
          @OutDistributeNo = params['OutDistributeNo']
          @DistributeNo = params['DistributeNo']
          @OrderNo = params['OrderNo']
          @Profile = params['Profile']
        end
      end

      # DistributeQuery返回参数结构体
      class DistributeQueryResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 分账结果响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeQueryResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeQueryResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 分账结果响应对象
      class DistributeQueryResult < TencentCloud::Common::AbstractModel
        # @param Orders: 分账订单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Orders: Array

        attr_accessor :Orders
        
        def initialize(orders=nil)
          @Orders = orders
        end

        def deserialize(params)
          unless params['Orders'].nil?
            @Orders = []
            params['Orders'].each do |i|
              multiapplyorder_tmp = MultiApplyOrder.new
              multiapplyorder_tmp.deserialize(i)
              @Orders << multiapplyorder_tmp
            end
          end
        end
      end

      # 分账接收方响应对象
      class DistributeReceiverResult < TencentCloud::Common::AbstractModel
        # @param MerchantNo: 商户编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String

        attr_accessor :MerchantNo
        
        def initialize(merchantno=nil)
          @MerchantNo = merchantno
        end

        def deserialize(params)
          @MerchantNo = params['MerchantNo']
        end
      end

      # DistributeRemoveReceiver请求参数结构体
      class DistributeRemoveReceiverRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param MerchantNo: 商户编号
        # @type MerchantNo: String
        # @param Remark: 备注
        # @type Remark: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :MerchantNo, :Remark, :Profile
        
        def initialize(openid=nil, openkey=nil, merchantno=nil, remark=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @MerchantNo = merchantno
          @Remark = remark
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @MerchantNo = params['MerchantNo']
          @Remark = params['Remark']
          @Profile = params['Profile']
        end
      end

      # DistributeRemoveReceiver返回参数结构体
      class DistributeRemoveReceiverResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 解除分账接收方响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DistributeReceiverResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DistributeReceiverResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DownloadBill请求参数结构体
      class DownloadBillRequest < TencentCloud::Common::AbstractModel
        # @param StateDate: 请求下载对账单日期
        # @type StateDate: String
        # @param MidasAppId: 聚鑫分配的MidasAppId
        # @type MidasAppId: String
        # @param MidasSecretId: 聚鑫分配的SecretId
        # @type MidasSecretId: String
        # @param MidasSignature: 使用聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :StateDate, :MidasAppId, :MidasSecretId, :MidasSignature, :MidasEnvironment
        
        def initialize(statedate=nil, midasappid=nil, midassecretid=nil, midassignature=nil, midasenvironment=nil)
          @StateDate = statedate
          @MidasAppId = midasappid
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @StateDate = params['StateDate']
          @MidasAppId = params['MidasAppId']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # DownloadBill返回参数结构体
      class DownloadBillResponse < TencentCloud::Common::AbstractModel
        # @param FileName: 账单文件名
        # @type FileName: String
        # @param FileMD5: 账单文件的MD5值
        # @type FileMD5: String
        # @param DownloadUrl: 账单文件的真实下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileName, :FileMD5, :DownloadUrl, :RequestId
        
        def initialize(filename=nil, filemd5=nil, downloadurl=nil, requestid=nil)
          @FileName = filename
          @FileMD5 = filemd5
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileMD5 = params['FileMD5']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # 上传下载响应对象
      class DownloadFileResult < TencentCloud::Common::AbstractModel
        # @param Content: 文件内容（base64加密的二进制内容）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param Storage: 存储区域（0私密区，1公共区），请严格按文件要求，上传到不同的区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Storage: String

        attr_accessor :Content, :Storage
        
        def initialize(content=nil, storage=nil)
          @Content = content
          @Storage = storage
        end

        def deserialize(params)
          @Content = params['Content']
          @Storage = params['Storage']
        end
      end

      # DownloadOrgFile请求参数结构体
      class DownloadOrgFileRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param Storage: 存储区域（0私密区，1公共区），请严格按文件要求，上传到不同的区域
        # @type Storage: String
        # @param FilePath: 文件路径
        # @type FilePath: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Storage, :FilePath, :Profile
        
        def initialize(openid=nil, openkey=nil, storage=nil, filepath=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Storage = storage
          @FilePath = filepath
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Storage = params['Storage']
          @FilePath = params['FilePath']
          @Profile = params['Profile']
        end
      end

      # DownloadOrgFile返回参数结构体
      class DownloadOrgFileResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 下载机构文件响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.DownloadFileResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = DownloadFileResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DownloadReconciliationUrl请求参数结构体
      class DownloadReconciliationUrlRequest < TencentCloud::Common::AbstractModel
        # @param MainAppId: 平台应用ID
        # @type MainAppId: String
        # @param AppCode: 平台代码
        # @type AppCode: String
        # @param BillDate: 账单日期，yyyy-MM-dd
        # @type BillDate: String
        # @param SubAppId: 商户或者代理商ID
        # @type SubAppId: String

        attr_accessor :MainAppId, :AppCode, :BillDate, :SubAppId
        
        def initialize(mainappid=nil, appcode=nil, billdate=nil, subappid=nil)
          @MainAppId = mainappid
          @AppCode = appcode
          @BillDate = billdate
          @SubAppId = subappid
        end

        def deserialize(params)
          @MainAppId = params['MainAppId']
          @AppCode = params['AppCode']
          @BillDate = params['BillDate']
          @SubAppId = params['SubAppId']
        end
      end

      # DownloadReconciliationUrl返回参数结构体
      class DownloadReconciliationUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param HashType: hash类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HashType: String
        # @param HashValue: hash值
        # @type HashValue: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :HashType, :HashValue, :RequestId
        
        def initialize(downloadurl=nil, hashtype=nil, hashvalue=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @HashType = hashtype
          @HashValue = hashvalue
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @HashType = params['HashType']
          @HashValue = params['HashValue']
          @RequestId = params['RequestId']
        end
      end

      # ExecuteMemberTransaction请求参数结构体
      class ExecuteMemberTransactionRequest < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型此接口固定填：MemberTransactionReq
        # @type RequestType: String
        # @param MerchantCode: 银行注册商户号
        # @type MerchantCode: String
        # @param PayChannel: 支付渠道
        # @type PayChannel: String
        # @param PayChannelSubId: 子渠道
        # @type PayChannelSubId: Integer
        # @param OutTransNetMemberCode: 转出交易网会员代码
        # @type OutTransNetMemberCode: String
        # @param OutSubAccountName: 转出见证子账户的户名
        # @type OutSubAccountName: String
        # @param InSubAccountName: 转入见证子账户的户名
        # @type InSubAccountName: String
        # @param OutSubAccountNumber: 转出子账户账号
        # @type OutSubAccountNumber: String
        # @param InSubAccountNumber: 转入子账户账号
        # @type InSubAccountNumber: String
        # @param BankAccountNumber: 父账户账号，资金汇总账号
        # @type BankAccountNumber: String
        # @param CurrencyUnit: 货币单位 单位，1：元，2：角，3：分
        # @type CurrencyUnit: String
        # @param CurrencyType: 币种
        # @type CurrencyType: String
        # @param CurrencyAmount: 交易金额
        # @type CurrencyAmount: String
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param TransSequenceNumber: 交易流水号
        # 生成方式：用户短号+日期（6位）+ 随机编号（10位）例如：F088722005120904930798
        # 短号：F08872  日期： 200512   随机编号：0904930798
        # @type TransSequenceNumber: String
        # @param InTransNetMemberCode: 转入交易网会员代码
        # @type InTransNetMemberCode: String
        # @param MidasEnvironment: Midas环境标识 release 现网环境 sandbox 沙箱环境
        # development 开发环境
        # @type MidasEnvironment: String
        # @param PlatformShortNumber: 平台短号(银行分配)
        # @type PlatformShortNumber: String
        # @param TransType: 1：下单预支付
        # 2：确认并付款
        # 3：退款
        # 6：直接支付T+1
        # 9：直接支付T+0
        # @type TransType: String
        # @param TransFee: 交易手续费
        # @type TransFee: String
        # @param ReservedMessage: 保留域
        # @type ReservedMessage: String

        attr_accessor :RequestType, :MerchantCode, :PayChannel, :PayChannelSubId, :OutTransNetMemberCode, :OutSubAccountName, :InSubAccountName, :OutSubAccountNumber, :InSubAccountNumber, :BankAccountNumber, :CurrencyUnit, :CurrencyType, :CurrencyAmount, :OrderId, :MidasAppId, :MidasSecretId, :MidasSignature, :TransSequenceNumber, :InTransNetMemberCode, :MidasEnvironment, :PlatformShortNumber, :TransType, :TransFee, :ReservedMessage
        
        def initialize(requesttype=nil, merchantcode=nil, paychannel=nil, paychannelsubid=nil, outtransnetmembercode=nil, outsubaccountname=nil, insubaccountname=nil, outsubaccountnumber=nil, insubaccountnumber=nil, bankaccountnumber=nil, currencyunit=nil, currencytype=nil, currencyamount=nil, orderid=nil, midasappid=nil, midassecretid=nil, midassignature=nil, transsequencenumber=nil, intransnetmembercode=nil, midasenvironment=nil, platformshortnumber=nil, transtype=nil, transfee=nil, reservedmessage=nil)
          @RequestType = requesttype
          @MerchantCode = merchantcode
          @PayChannel = paychannel
          @PayChannelSubId = paychannelsubid
          @OutTransNetMemberCode = outtransnetmembercode
          @OutSubAccountName = outsubaccountname
          @InSubAccountName = insubaccountname
          @OutSubAccountNumber = outsubaccountnumber
          @InSubAccountNumber = insubaccountnumber
          @BankAccountNumber = bankaccountnumber
          @CurrencyUnit = currencyunit
          @CurrencyType = currencytype
          @CurrencyAmount = currencyamount
          @OrderId = orderid
          @MidasAppId = midasappid
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @TransSequenceNumber = transsequencenumber
          @InTransNetMemberCode = intransnetmembercode
          @MidasEnvironment = midasenvironment
          @PlatformShortNumber = platformshortnumber
          @TransType = transtype
          @TransFee = transfee
          @ReservedMessage = reservedmessage
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @MerchantCode = params['MerchantCode']
          @PayChannel = params['PayChannel']
          @PayChannelSubId = params['PayChannelSubId']
          @OutTransNetMemberCode = params['OutTransNetMemberCode']
          @OutSubAccountName = params['OutSubAccountName']
          @InSubAccountName = params['InSubAccountName']
          @OutSubAccountNumber = params['OutSubAccountNumber']
          @InSubAccountNumber = params['InSubAccountNumber']
          @BankAccountNumber = params['BankAccountNumber']
          @CurrencyUnit = params['CurrencyUnit']
          @CurrencyType = params['CurrencyType']
          @CurrencyAmount = params['CurrencyAmount']
          @OrderId = params['OrderId']
          @MidasAppId = params['MidasAppId']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @TransSequenceNumber = params['TransSequenceNumber']
          @InTransNetMemberCode = params['InTransNetMemberCode']
          @MidasEnvironment = params['MidasEnvironment']
          @PlatformShortNumber = params['PlatformShortNumber']
          @TransType = params['TransType']
          @TransFee = params['TransFee']
          @ReservedMessage = params['ReservedMessage']
        end
      end

      # ExecuteMemberTransaction返回参数结构体
      class ExecuteMemberTransactionResponse < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param FrontSequenceNumber: 银行流水号
        # @type FrontSequenceNumber: String
        # @param ReservedMessage: 保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestType, :FrontSequenceNumber, :ReservedMessage, :RequestId
        
        def initialize(requesttype=nil, frontsequencenumber=nil, reservedmessage=nil, requestid=nil)
          @RequestType = requesttype
          @FrontSequenceNumber = frontsequencenumber
          @ReservedMessage = reservedmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @FrontSequenceNumber = params['FrontSequenceNumber']
          @ReservedMessage = params['ReservedMessage']
          @RequestId = params['RequestId']
        end
      end

      # 第三方渠道用户信息
      class ExternalContractUserInfo < TencentCloud::Common::AbstractModel
        # @param ExternalUserType: 第三方用户类型，例如:  WX_OPENID, WX_SUB_OPENID,WX_PAYER_OPENID
        # @type ExternalUserType: String
        # @param ExternalUserId: 第三方用户ID
        # @type ExternalUserId: String

        attr_accessor :ExternalUserType, :ExternalUserId
        
        def initialize(externalusertype=nil, externaluserid=nil)
          @ExternalUserType = externalusertype
          @ExternalUserId = externaluserid
        end

        def deserialize(params)
          @ExternalUserType = params['ExternalUserType']
          @ExternalUserId = params['ExternalUserId']
        end
      end

      # 第三方渠道合约信息
      class ExternalReturnContractInfo < TencentCloud::Common::AbstractModel
        # @param ExternalReturnAgreementId: 第三方渠道协议id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnAgreementId: String
        # @param ExternalReturnContractEffectiveTimestamp: 第三方渠道协议生效时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractEffectiveTimestamp: String
        # @param ExternalReturnContractTerminationTimestamp: 第三方渠道协议解约时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractTerminationTimestamp: String
        # @param ExternalReturnContractStatus: 平台合约状态
        # 协议状态，枚举值：
        # CONTRACT_STATUS_SIGNED：已签约
        # CONTRACT_STATUS_TERMINATED：未签约
        # CONTRACT_STATUS_PENDING：签约进行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractStatus: String
        # @param ExternalReturnRequestId: 第三方渠道请求序列号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnRequestId: String
        # @param ExternalReturnContractSignedTimestamp: 第三方渠道协议签署时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractSignedTimestamp: String
        # @param ExternalReturnContractExpiredTimestamp: 第三方渠道协议到期时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractExpiredTimestamp: String
        # @param ExternalReturnContractData: 第三方渠道返回的合约数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractData: String
        # @param ExternalReturnContractTerminationRemark: 第三方渠道解约备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractTerminationRemark: String
        # @param ExternalReturnContractTerminationMode: 第三方渠道协议解约方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnContractTerminationMode: String

        attr_accessor :ExternalReturnAgreementId, :ExternalReturnContractEffectiveTimestamp, :ExternalReturnContractTerminationTimestamp, :ExternalReturnContractStatus, :ExternalReturnRequestId, :ExternalReturnContractSignedTimestamp, :ExternalReturnContractExpiredTimestamp, :ExternalReturnContractData, :ExternalReturnContractTerminationRemark, :ExternalReturnContractTerminationMode
        
        def initialize(externalreturnagreementid=nil, externalreturncontracteffectivetimestamp=nil, externalreturncontractterminationtimestamp=nil, externalreturncontractstatus=nil, externalreturnrequestid=nil, externalreturncontractsignedtimestamp=nil, externalreturncontractexpiredtimestamp=nil, externalreturncontractdata=nil, externalreturncontractterminationremark=nil, externalreturncontractterminationmode=nil)
          @ExternalReturnAgreementId = externalreturnagreementid
          @ExternalReturnContractEffectiveTimestamp = externalreturncontracteffectivetimestamp
          @ExternalReturnContractTerminationTimestamp = externalreturncontractterminationtimestamp
          @ExternalReturnContractStatus = externalreturncontractstatus
          @ExternalReturnRequestId = externalreturnrequestid
          @ExternalReturnContractSignedTimestamp = externalreturncontractsignedtimestamp
          @ExternalReturnContractExpiredTimestamp = externalreturncontractexpiredtimestamp
          @ExternalReturnContractData = externalreturncontractdata
          @ExternalReturnContractTerminationRemark = externalreturncontractterminationremark
          @ExternalReturnContractTerminationMode = externalreturncontractterminationmode
        end

        def deserialize(params)
          @ExternalReturnAgreementId = params['ExternalReturnAgreementId']
          @ExternalReturnContractEffectiveTimestamp = params['ExternalReturnContractEffectiveTimestamp']
          @ExternalReturnContractTerminationTimestamp = params['ExternalReturnContractTerminationTimestamp']
          @ExternalReturnContractStatus = params['ExternalReturnContractStatus']
          @ExternalReturnRequestId = params['ExternalReturnRequestId']
          @ExternalReturnContractSignedTimestamp = params['ExternalReturnContractSignedTimestamp']
          @ExternalReturnContractExpiredTimestamp = params['ExternalReturnContractExpiredTimestamp']
          @ExternalReturnContractData = params['ExternalReturnContractData']
          @ExternalReturnContractTerminationRemark = params['ExternalReturnContractTerminationRemark']
          @ExternalReturnContractTerminationMode = params['ExternalReturnContractTerminationMode']
        end
      end

      # 对账文件信息
      class FileItem < TencentCloud::Common::AbstractModel
        # @param FileName: STRING(256)，文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param RandomPassword: STRING(120)，随机密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RandomPassword: String
        # @param FilePath: STRING(512)，文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePath: String
        # @param DrawCode: STRING(64)，提取码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrawCode: String

        attr_accessor :FileName, :RandomPassword, :FilePath, :DrawCode
        
        def initialize(filename=nil, randompassword=nil, filepath=nil, drawcode=nil)
          @FileName = filename
          @RandomPassword = randompassword
          @FilePath = filepath
          @DrawCode = drawcode
        end

        def deserialize(params)
          @FileName = params['FileName']
          @RandomPassword = params['RandomPassword']
          @FilePath = params['FilePath']
          @DrawCode = params['DrawCode']
        end
      end

      # 会员资金交易明细信息
      class FundsTransactionItem < TencentCloud::Common::AbstractModel
        # @param TransType: 资金交易类型。
        # __1__：提现/退款
        # __2__：清分/充值
        # @type TransType: String
        # @param BankBookingMessage: 银行记账说明。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankBookingMessage: String
        # @param TranStatus: 交易状态。
        # __0__：成功
        # @type TranStatus: String
        # @param TransNetMemberCode: 业务方会员标识。
        # _平安渠道为交易网会员代码_
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransNetMemberCode: String
        # @param SubAccountNumber: 子账户账号。
        # _平安渠道为见证子账户的账号_
        # @type SubAccountNumber: String
        # @param SubAccountName: 子账户名称。
        # _平安渠道为见证子账户的户名_
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountName: String
        # @param TransAmount: 交易金额。
        # @type TransAmount: String
        # @param TransFee: 交易手续费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransFee: String
        # @param TransDate: 交易日期，格式：yyyyMMdd。
        # @type TransDate: String
        # @param TransTime: 交易时间，格式：HHmmss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransTime: String
        # @param BankSequenceNumber: 银行系统流水号。
        # _平安渠道为见证系统流水号_
        # @type BankSequenceNumber: String
        # @param Remark: 备注。
        # _平安渠道，如果是见证+收单的交易，返回交易订单号_
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :TransType, :BankBookingMessage, :TranStatus, :TransNetMemberCode, :SubAccountNumber, :SubAccountName, :TransAmount, :TransFee, :TransDate, :TransTime, :BankSequenceNumber, :Remark
        
        def initialize(transtype=nil, bankbookingmessage=nil, transtatus=nil, transnetmembercode=nil, subaccountnumber=nil, subaccountname=nil, transamount=nil, transfee=nil, transdate=nil, transtime=nil, banksequencenumber=nil, remark=nil)
          @TransType = transtype
          @BankBookingMessage = bankbookingmessage
          @TranStatus = transtatus
          @TransNetMemberCode = transnetmembercode
          @SubAccountNumber = subaccountnumber
          @SubAccountName = subaccountname
          @TransAmount = transamount
          @TransFee = transfee
          @TransDate = transdate
          @TransTime = transtime
          @BankSequenceNumber = banksequencenumber
          @Remark = remark
        end

        def deserialize(params)
          @TransType = params['TransType']
          @BankBookingMessage = params['BankBookingMessage']
          @TranStatus = params['TranStatus']
          @TransNetMemberCode = params['TransNetMemberCode']
          @SubAccountNumber = params['SubAccountNumber']
          @SubAccountName = params['SubAccountName']
          @TransAmount = params['TransAmount']
          @TransFee = params['TransFee']
          @TransDate = params['TransDate']
          @TransTime = params['TransTime']
          @BankSequenceNumber = params['BankSequenceNumber']
          @Remark = params['Remark']
        end
      end

      # 会员间交易明细信息
      class MemberTransactionItem < TencentCloud::Common::AbstractModel
        # @param TransType: 交易类型。
        # __1__：转出
        # __2__：转入
        # @type TransType: String
        # @param TranStatus: 交易状态。
        # __0__：成功
        # @type TranStatus: String
        # @param TransAmount: 交易金额。
        # @type TransAmount: String
        # @param TransDate: 交易日期，格式：yyyyMMdd。
        # @type TransDate: String
        # @param TransTime: 交易时间，格式：HHmmss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransTime: String
        # @param BankSequenceNumber: 银行系统流水号。
        # _平安渠道为见证系统流水号_
        # @type BankSequenceNumber: String
        # @param BankBookingType: 银行记账类型。
        # _平安渠道为：_
        # _1：会员支付_
        # _2：会员冻结_
        # _3：会员解冻_
        # _4：登记挂账_
        # _6：下单预支付_
        # _7：确认并付款_
        # _8：会员退款_
        # _22：见证+收单平台调账_
        # _23：见证+收单资金冻结_
        # _24：见证+收单资金解冻_
        # _25：会员间交易退款_
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankBookingType: String
        # @param InSubAccountNumber: 转入方子账户账号。
        # _平安渠道为转入见证子账户的账号_
        # @type InSubAccountNumber: String
        # @param OutSubAccountNumber: 转出方子账户账号。
        # _平安渠道为转出见证子账户的账号_
        # @type OutSubAccountNumber: String
        # @param Remark: 备注。
        # _平安渠道，如果是见证+收单的交易，返回交易订单号_
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :TransType, :TranStatus, :TransAmount, :TransDate, :TransTime, :BankSequenceNumber, :BankBookingType, :InSubAccountNumber, :OutSubAccountNumber, :Remark
        
        def initialize(transtype=nil, transtatus=nil, transamount=nil, transdate=nil, transtime=nil, banksequencenumber=nil, bankbookingtype=nil, insubaccountnumber=nil, outsubaccountnumber=nil, remark=nil)
          @TransType = transtype
          @TranStatus = transtatus
          @TransAmount = transamount
          @TransDate = transdate
          @TransTime = transtime
          @BankSequenceNumber = banksequencenumber
          @BankBookingType = bankbookingtype
          @InSubAccountNumber = insubaccountnumber
          @OutSubAccountNumber = outsubaccountnumber
          @Remark = remark
        end

        def deserialize(params)
          @TransType = params['TransType']
          @TranStatus = params['TranStatus']
          @TransAmount = params['TransAmount']
          @TransDate = params['TransDate']
          @TransTime = params['TransTime']
          @BankSequenceNumber = params['BankSequenceNumber']
          @BankBookingType = params['BankBookingType']
          @InSubAccountNumber = params['InSubAccountNumber']
          @OutSubAccountNumber = params['OutSubAccountNumber']
          @Remark = params['Remark']
        end
      end

      # 商户分类
      class MerchantClassificationId < TencentCloud::Common::AbstractModel
        # @param Code: 分类编号
        # @type Code: String
        # @param Name: 分类名称
        # @type Name: String
        # @param Parent: 父级编号（0为一级编号，大于0为父级分类编号）
        # @type Parent: String

        attr_accessor :Code, :Name, :Parent
        
        def initialize(code=nil, name=nil, parent=nil)
          @Code = code
          @Name = name
          @Parent = parent
        end

        def deserialize(params)
          @Code = params['Code']
          @Name = params['Name']
          @Parent = params['Parent']
        end
      end

      # 商户查询管理端列表
      class MerchantManagementList < TencentCloud::Common::AbstractModel
        # @param TaxpayerName: 企业名称。
        # @type TaxpayerName: String
        # @param TaxpayerNum: 纳税人识别号(税号)	。
        # @type TaxpayerNum: String
        # @param SerialNo: 请求流水号。
        # @type SerialNo: String
        # @param InvoicePlatformId: 开票系统ID
        # @type InvoicePlatformId: Integer

        attr_accessor :TaxpayerName, :TaxpayerNum, :SerialNo, :InvoicePlatformId
        
        def initialize(taxpayername=nil, taxpayernum=nil, serialno=nil, invoiceplatformid=nil)
          @TaxpayerName = taxpayername
          @TaxpayerNum = taxpayernum
          @SerialNo = serialno
          @InvoicePlatformId = invoiceplatformid
        end

        def deserialize(params)
          @TaxpayerName = params['TaxpayerName']
          @TaxpayerNum = params['TaxpayerNum']
          @SerialNo = params['SerialNo']
          @InvoicePlatformId = params['InvoicePlatformId']
        end
      end

      # 商户管理端结果
      class MerchantManagementResult < TencentCloud::Common::AbstractModel
        # @param Total: 总数。
        # @type Total: Integer
        # @param List: 商户列表。
        # @type List: Array

        attr_accessor :Total, :List
        
        def initialize(total=nil, list=nil)
          @Total = total
          @List = list
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              merchantmanagementlist_tmp = MerchantManagementList.new
              merchantmanagementlist_tmp.deserialize(i)
              @List << merchantmanagementlist_tmp
            end
          end
        end
      end

      # 商户支付方式数据
      class MerchantPayWayData < TencentCloud::Common::AbstractModel
        # @param PayCurrency: 支付币种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayCurrency: String
        # @param PayIcon: 支付图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayIcon: String
        # @param PayInternalName: 支付名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayInternalName: String
        # @param PayName: 支付简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param PaySplitRefund: 是否支持退款
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaySplitRefund: String
        # @param PayTag: 支付标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayTag: String
        # @param PayTicketIcon: 支付凭证图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayTicketIcon: String
        # @param PayType: 支付类型，逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayType: String
        # @param TicketName: 凭证名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TicketName: String

        attr_accessor :PayCurrency, :PayIcon, :PayInternalName, :PayName, :PaySplitRefund, :PayTag, :PayTicketIcon, :PayType, :TicketName
        
        def initialize(paycurrency=nil, payicon=nil, payinternalname=nil, payname=nil, paysplitrefund=nil, paytag=nil, payticketicon=nil, paytype=nil, ticketname=nil)
          @PayCurrency = paycurrency
          @PayIcon = payicon
          @PayInternalName = payinternalname
          @PayName = payname
          @PaySplitRefund = paysplitrefund
          @PayTag = paytag
          @PayTicketIcon = payticketicon
          @PayType = paytype
          @TicketName = ticketname
        end

        def deserialize(params)
          @PayCurrency = params['PayCurrency']
          @PayIcon = params['PayIcon']
          @PayInternalName = params['PayInternalName']
          @PayName = params['PayName']
          @PaySplitRefund = params['PaySplitRefund']
          @PayTag = params['PayTag']
          @PayTicketIcon = params['PayTicketIcon']
          @PayType = params['PayType']
          @TicketName = params['TicketName']
        end
      end

      # 商户风险信息
      class MerchantRiskInfo < TencentCloud::Common::AbstractModel
        # @param RiskLevel: 恶意注册等级，0-9级，9级最高
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: Integer
        # @param RiskTypes: 恶意注册代码，代码以|分割，如"G001|T002"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskTypes: String

        attr_accessor :RiskLevel, :RiskTypes
        
        def initialize(risklevel=nil, risktypes=nil)
          @RiskLevel = risklevel
          @RiskTypes = risktypes
        end

        def deserialize(params)
          @RiskLevel = params['RiskLevel']
          @RiskTypes = params['RiskTypes']
        end
      end

      # MigrateOrderRefundQuery请求参数结构体
      class MigrateOrderRefundQueryRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param PayChannel: 支付渠道，ALIPAY对应支付宝渠道；UNIONPAY对应银联渠道
        # @type PayChannel: String
        # @param RefundOrderId: 退款订单号，最长64位，仅支持数字、 字母
        # @type RefundOrderId: String
        # @param TradeSerialNo: 退款流水号
        # @type TradeSerialNo: String
        # @param Profile: 接入环境。沙箱环境填 sandbox。
        # @type Profile: String

        attr_accessor :MerchantId, :PayChannel, :RefundOrderId, :TradeSerialNo, :Profile
        
        def initialize(merchantid=nil, paychannel=nil, refundorderid=nil, tradeserialno=nil, profile=nil)
          @MerchantId = merchantid
          @PayChannel = paychannel
          @RefundOrderId = refundorderid
          @TradeSerialNo = tradeserialno
          @Profile = profile
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @PayChannel = params['PayChannel']
          @RefundOrderId = params['RefundOrderId']
          @TradeSerialNo = params['TradeSerialNo']
          @Profile = params['Profile']
        end
      end

      # MigrateOrderRefundQuery返回参数结构体
      class MigrateOrderRefundQueryResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 请求成功状态
        # @type IsSuccess: Boolean
        # @param TradeSerialNo: 交易流水号
        # @type TradeSerialNo: String
        # @param TradeMsg: 交易备注
        # @type TradeMsg: String
        # @param TradeStatus: 交易状态：0=交易待处理；1=交易处理中；2=交易处理成功；3=交易失败；4=状态未知
        # @type TradeStatus: Integer
        # @param ThirdChannelOrderId: 第三方支付机构支付交易号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThirdChannelOrderId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :TradeSerialNo, :TradeMsg, :TradeStatus, :ThirdChannelOrderId, :RequestId
        
        def initialize(issuccess=nil, tradeserialno=nil, trademsg=nil, tradestatus=nil, thirdchannelorderid=nil, requestid=nil)
          @IsSuccess = issuccess
          @TradeSerialNo = tradeserialno
          @TradeMsg = trademsg
          @TradeStatus = tradestatus
          @ThirdChannelOrderId = thirdchannelorderid
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @TradeSerialNo = params['TradeSerialNo']
          @TradeMsg = params['TradeMsg']
          @TradeStatus = params['TradeStatus']
          @ThirdChannelOrderId = params['ThirdChannelOrderId']
          @RequestId = params['RequestId']
        end
      end

      # MigrateOrderRefund请求参数结构体
      class MigrateOrderRefundRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户代码
        # @type MerchantId: String
        # @param PayChannel: 支付渠道，ALIPAY对应支付宝渠道；UNIONPAY对应银联渠道
        # @type PayChannel: String
        # @param PayOrderId: 正向支付商户订单号
        # @type PayOrderId: String
        # @param RefundOrderId: 退款订单号，最长64位，仅支持数字、 字母
        # @type RefundOrderId: String
        # @param RefundAmt: 退款金额，单位：分。备注：改字段必须大于0 和小于10000000000的整数。
        # @type RefundAmt: Integer
        # @param ThirdChannelOrderId: 第三方支付机构支付交易号
        # @type ThirdChannelOrderId: String
        # @param PayAmt: 原始支付金额，单位：分。备注：当该字段为空或者为0 时，系统会默认使用订单当 实付金额作为退款金额
        # @type PayAmt: Integer
        # @param Profile: 接入环境。沙箱环境填 sandbox。
        # @type Profile: String
        # @param RefundReason: 退款原因
        # @type RefundReason: String

        attr_accessor :MerchantId, :PayChannel, :PayOrderId, :RefundOrderId, :RefundAmt, :ThirdChannelOrderId, :PayAmt, :Profile, :RefundReason
        
        def initialize(merchantid=nil, paychannel=nil, payorderid=nil, refundorderid=nil, refundamt=nil, thirdchannelorderid=nil, payamt=nil, profile=nil, refundreason=nil)
          @MerchantId = merchantid
          @PayChannel = paychannel
          @PayOrderId = payorderid
          @RefundOrderId = refundorderid
          @RefundAmt = refundamt
          @ThirdChannelOrderId = thirdchannelorderid
          @PayAmt = payamt
          @Profile = profile
          @RefundReason = refundreason
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @PayChannel = params['PayChannel']
          @PayOrderId = params['PayOrderId']
          @RefundOrderId = params['RefundOrderId']
          @RefundAmt = params['RefundAmt']
          @ThirdChannelOrderId = params['ThirdChannelOrderId']
          @PayAmt = params['PayAmt']
          @Profile = params['Profile']
          @RefundReason = params['RefundReason']
        end
      end

      # MigrateOrderRefund返回参数结构体
      class MigrateOrderRefundResponse < TencentCloud::Common::AbstractModel
        # @param IsSuccess: 请求成功状态
        # @type IsSuccess: Boolean
        # @param TradeSerialNo: 退款流水号
        # @type TradeSerialNo: String
        # @param TradeMsg: 交易备注
        # @type TradeMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSuccess, :TradeSerialNo, :TradeMsg, :RequestId
        
        def initialize(issuccess=nil, tradeserialno=nil, trademsg=nil, requestid=nil)
          @IsSuccess = issuccess
          @TradeSerialNo = tradeserialno
          @TradeMsg = trademsg
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSuccess = params['IsSuccess']
          @TradeSerialNo = params['TradeSerialNo']
          @TradeMsg = params['TradeMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAgentTaxPaymentInfo请求参数结构体
      class ModifyAgentTaxPaymentInfoRequest < TencentCloud::Common::AbstractModel
        # @param BatchNum: 批次号
        # @type BatchNum: Integer
        # @param RawElectronicCertUrl: 新源电子凭证地址
        # @type RawElectronicCertUrl: String
        # @param FileName: 新的文件名
        # @type FileName: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :BatchNum, :RawElectronicCertUrl, :FileName, :Profile
        
        def initialize(batchnum=nil, rawelectroniccerturl=nil, filename=nil, profile=nil)
          @BatchNum = batchnum
          @RawElectronicCertUrl = rawelectroniccerturl
          @FileName = filename
          @Profile = profile
        end

        def deserialize(params)
          @BatchNum = params['BatchNum']
          @RawElectronicCertUrl = params['RawElectronicCertUrl']
          @FileName = params['FileName']
          @Profile = params['Profile']
        end
      end

      # ModifyAgentTaxPaymentInfo返回参数结构体
      class ModifyAgentTaxPaymentInfoResponse < TencentCloud::Common::AbstractModel
        # @param AgentTaxPaymentBatch: 代理商完税证明批次信息
        # @type AgentTaxPaymentBatch: :class:`Tencentcloud::Cpdp.v20190820.models.AgentTaxPaymentBatch`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentTaxPaymentBatch, :RequestId
        
        def initialize(agenttaxpaymentbatch=nil, requestid=nil)
          @AgentTaxPaymentBatch = agenttaxpaymentbatch
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentTaxPaymentBatch'].nil?
            @AgentTaxPaymentBatch = AgentTaxPaymentBatch.new
            @AgentTaxPaymentBatch.deserialize(params['AgentTaxPaymentBatch'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyBindedAccount请求参数结构体
      class ModifyBindedAccountRequest < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播Id
        # @type AnchorId: String
        # @param TransferType: 1 微信企业付款
        # 2 支付宝转账
        # 3 平安银企直连代发转账
        # @type TransferType: Integer
        # @param AccountNo: 收款方标识。
        # 微信为open_id；
        # 支付宝为会员alipay_user_id;
        # 平安为收款方银行账号;
        # @type AccountNo: String
        # @param PhoneNum: 手机号
        # @type PhoneNum: String

        attr_accessor :AnchorId, :TransferType, :AccountNo, :PhoneNum
        
        def initialize(anchorid=nil, transfertype=nil, accountno=nil, phonenum=nil)
          @AnchorId = anchorid
          @TransferType = transfertype
          @AccountNo = accountno
          @PhoneNum = phonenum
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @TransferType = params['TransferType']
          @AccountNo = params['AccountNo']
          @PhoneNum = params['PhoneNum']
        end
      end

      # ModifyBindedAccount返回参数结构体
      class ModifyBindedAccountResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMessage: 响应消息。
        # @type ErrMessage: String
        # @param Result: 该字段为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyMerchant请求参数结构体
      class ModifyMerchantRequest < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 进件成功后返给商户的AppId
        # @type MerchantAppId: String
        # @param MerchantName: 收款商户名称
        # @type MerchantName: String
        # @param BusinessPayFlag: B2B 支付标志。是否开通 B2B支付， 1:开通 0:不开通。
        # @type BusinessPayFlag: String

        attr_accessor :MerchantAppId, :MerchantName, :BusinessPayFlag
        
        def initialize(merchantappid=nil, merchantname=nil, businesspayflag=nil)
          @MerchantAppId = merchantappid
          @MerchantName = merchantname
          @BusinessPayFlag = businesspayflag
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @MerchantName = params['MerchantName']
          @BusinessPayFlag = params['BusinessPayFlag']
        end
      end

      # ModifyMerchant返回参数结构体
      class ModifyMerchantResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMntMbrBindRelateAcctBankCode请求参数结构体
      class ModifyMntMbrBindRelateAcctBankCodeRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param SubAcctNo: STRING(50)，见证子账户的账号
        # @type SubAcctNo: String
        # @param MemberBindAcctNo: STRING(50)，会员绑定账号
        # @type MemberBindAcctNo: String
        # @param AcctOpenBranchName: STRING(150)，开户行名称（若大小额行号不填则送超级网银号对应的银行名称，若填大小额行号则送大小额行号对应的银行名称）
        # @type AcctOpenBranchName: String
        # @param CnapsBranchId: STRING(20)，大小额行号（CnapsBranchId和EiconBankBranchId两者二选一必填）
        # @type CnapsBranchId: String
        # @param EiconBankBranchId: STRING(20)，超级网银行号
        # @type EiconBankBranchId: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :SubAcctNo, :MemberBindAcctNo, :AcctOpenBranchName, :CnapsBranchId, :EiconBankBranchId, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, subacctno=nil, memberbindacctno=nil, acctopenbranchname=nil, cnapsbranchid=nil, eiconbankbranchid=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @SubAcctNo = subacctno
          @MemberBindAcctNo = memberbindacctno
          @AcctOpenBranchName = acctopenbranchname
          @CnapsBranchId = cnapsbranchid
          @EiconBankBranchId = eiconbankbranchid
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @SubAcctNo = params['SubAcctNo']
          @MemberBindAcctNo = params['MemberBindAcctNo']
          @AcctOpenBranchName = params['AcctOpenBranchName']
          @CnapsBranchId = params['CnapsBranchId']
          @EiconBankBranchId = params['EiconBankBranchId']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # ModifyMntMbrBindRelateAcctBankCode返回参数结构体
      class ModifyMntMbrBindRelateAcctBankCodeResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 分账明细
      class MultiApplyDetail < TencentCloud::Common::AbstractModel
        # @param MerchantNo: 商户编号
        # @type MerchantNo: String
        # @param Amount: 分账金额
        # @type Amount: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :MerchantNo, :Amount, :Remark
        
        def initialize(merchantno=nil, amount=nil, remark=nil)
          @MerchantNo = merchantno
          @Amount = amount
          @Remark = remark
        end

        def deserialize(params)
          @MerchantNo = params['MerchantNo']
          @Amount = params['Amount']
          @Remark = params['Remark']
        end
      end

      # 分账订单信息
      class MultiApplyOrder < TencentCloud::Common::AbstractModel
        # @param OutDistributeNo: 商户分账单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutDistributeNo: String
        # @param DistributeNo: 平台分账单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DistributeNo: String
        # @param OrderNo: 平台交易订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: String
        # @param Status: 分账订单状态（0初始1成功2失败3撤销）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param InDate: 入账日期，格式yyyy-MM-dd
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InDate: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Details: 分账明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :OutDistributeNo, :DistributeNo, :OrderNo, :Status, :InDate, :Remark, :Details
        
        def initialize(outdistributeno=nil, distributeno=nil, orderno=nil, status=nil, indate=nil, remark=nil, details=nil)
          @OutDistributeNo = outdistributeno
          @DistributeNo = distributeno
          @OrderNo = orderno
          @Status = status
          @InDate = indate
          @Remark = remark
          @Details = details
        end

        def deserialize(params)
          @OutDistributeNo = params['OutDistributeNo']
          @DistributeNo = params['DistributeNo']
          @OrderNo = params['OrderNo']
          @Status = params['Status']
          @InDate = params['InDate']
          @Remark = params['Remark']
          unless params['Details'].nil?
            @Details = []
            params['Details'].each do |i|
              multiapplydetail_tmp = MultiApplyDetail.new
              multiapplydetail_tmp.deserialize(i)
              @Details << multiapplydetail_tmp
            end
          end
        end
      end

      # 云企付-商品信息
      class OpenBankGoodsInfo < TencentCloud::Common::AbstractModel
        # @param GoodsName: 商品名称，默认值“商品支付”
        # @type GoodsName: String
        # @param GoodsDetail: 商品详细描述（商品列表）
        # @type GoodsDetail: String
        # @param GoodsDescription: 商品简单描述。需传入应用市场上的 APP 名字-实际商品名称，例如：天天爱消除-游戏充值
        # @type GoodsDescription: String

        attr_accessor :GoodsName, :GoodsDetail, :GoodsDescription
        
        def initialize(goodsname=nil, goodsdetail=nil, goodsdescription=nil)
          @GoodsName = goodsname
          @GoodsDetail = goodsdetail
          @GoodsDescription = goodsdescription
        end

        def deserialize(params)
          @GoodsName = params['GoodsName']
          @GoodsDetail = params['GoodsDetail']
          @GoodsDescription = params['GoodsDescription']
        end
      end

      # 云企付-收款人信息
      class OpenBankPayeeInfo < TencentCloud::Common::AbstractModel
        # @param PayeeId: 收款方唯一标识。当渠道为TENPAY，付款方式为EBANK_PAYMENT，必填，上送收款方入驻云企付商户ID；付款方式为OPENBANK_PAYMENT时，非必填，输入外部收款方的标识ID
        # @type PayeeId: String
        # @param PayeeName: 收款方名称。当渠道为TENPAY，付款方式为EBANK_PAYMENT时，上送收款方入驻云企付的商户名称；
        # 渠道为TENPAY，付款方式为OPENBANK_PAYMENT时必选，上送收款方账户名称
        # @type PayeeName: String
        # @param BankAccountNumber: 银行账号。渠道为TENPAY，付款方式为OPENBANK_PAYMENT时必选
        # @type BankAccountNumber: String
        # @param BankBranchName: 支行名称。
        # @type BankBranchName: String
        # @param BankBranchId: 联行号。渠道为TENPAY，付款方式为OPENBANK_PAYMENT时必选
        # @type BankBranchId: String

        attr_accessor :PayeeId, :PayeeName, :BankAccountNumber, :BankBranchName, :BankBranchId
        
        def initialize(payeeid=nil, payeename=nil, bankaccountnumber=nil, bankbranchname=nil, bankbranchid=nil)
          @PayeeId = payeeid
          @PayeeName = payeename
          @BankAccountNumber = bankaccountnumber
          @BankBranchName = bankbranchname
          @BankBranchId = bankbranchid
        end

        def deserialize(params)
          @PayeeId = params['PayeeId']
          @PayeeName = params['PayeeName']
          @BankAccountNumber = params['BankAccountNumber']
          @BankBranchName = params['BankBranchName']
          @BankBranchId = params['BankBranchId']
        end
      end

      # 云企付-付款人信息
      class OpenBankPayerInfo < TencentCloud::Common::AbstractModel
        # @param PayerId: 付款方唯一标识。当TENPAY时，必填上送
        # 付款方入驻云企付商户ID。
        # @type PayerId: String
        # @param PayerName: 付款方名称。当TENPAY上送付款方入驻云企付的商户名称。
        # @type PayerName: String
        # @param BindSerialNo: 付款方付款账户标识，当付款方式为OPENBANK_PAYMENT时，必输表示企业账户ID。
        # @type BindSerialNo: String

        attr_accessor :PayerId, :PayerName, :BindSerialNo
        
        def initialize(payerid=nil, payername=nil, bindserialno=nil)
          @PayerId = payerid
          @PayerName = payername
          @BindSerialNo = bindserialno
        end

        def deserialize(params)
          @PayerId = params['PayerId']
          @PayerName = params['PayerName']
          @BindSerialNo = params['BindSerialNo']
        end
      end

      # 云企付-分润信息
      class OpenBankProfitShareInfo < TencentCloud::Common::AbstractModel
        # @param RecvId: 分润接收方，渠道商户号ID
        # @type RecvId: String
        # @param ProfitShareFee: 分润金额，单位分
        # @type ProfitShareFee: Integer

        attr_accessor :RecvId, :ProfitShareFee
        
        def initialize(recvid=nil, profitsharefee=nil)
          @RecvId = recvid
          @ProfitShareFee = profitsharefee
        end

        def deserialize(params)
          @RecvId = params['RecvId']
          @ProfitShareFee = params['ProfitShareFee']
        end
      end

      # 云企付-跳转参数，用于小程序前端跳转
      class OpenBankRedirectInfo < TencentCloud::Common::AbstractModel
        # @param QRCodeUrl: 生成二维码，引导用户扫码
        # @type QRCodeUrl: String
        # @param QRCodeKey: 二维码凭证
        # @type QRCodeKey: String
        # @param Url: 跳转 URL,用于客户端跳转，订单未支付时返回该参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param ExpireTime: 跳转凭证过期时间,yyyy-MM-dd HH:mm:ss
        # @type ExpireTime: String
        # @param MpAppId: 小程序 appid
        # @type MpAppId: String
        # @param MpPath: 小程序路径
        # @type MpPath: String
        # @param MpUserName: 小程序原始 id
        # @type MpUserName: String

        attr_accessor :QRCodeUrl, :QRCodeKey, :Url, :ExpireTime, :MpAppId, :MpPath, :MpUserName
        
        def initialize(qrcodeurl=nil, qrcodekey=nil, url=nil, expiretime=nil, mpappid=nil, mppath=nil, mpusername=nil)
          @QRCodeUrl = qrcodeurl
          @QRCodeKey = qrcodekey
          @Url = url
          @ExpireTime = expiretime
          @MpAppId = mpappid
          @MpPath = mppath
          @MpUserName = mpusername
        end

        def deserialize(params)
          @QRCodeUrl = params['QRCodeUrl']
          @QRCodeKey = params['QRCodeKey']
          @Url = params['Url']
          @ExpireTime = params['ExpireTime']
          @MpAppId = params['MpAppId']
          @MpPath = params['MpPath']
          @MpUserName = params['MpUserName']
        end
      end

      # 云企付-设备信息
      class OpenBankSceneInfo < TencentCloud::Common::AbstractModel
        # @param PayerClientIp: 用户端实际 ip，示例值：14.17.22.32
        # @type PayerClientIp: String
        # @param PayerUa: 浏览器 User-Agent
        # @type PayerUa: String
        # @param OrderTime: 用户下单时间，若不上送，服务端默认当前时间
        # @type OrderTime: String
        # @param DeviceId: 终端设备号（门店号或收银设备 ID），示例值：POS1:1
        # @type DeviceId: String

        attr_accessor :PayerClientIp, :PayerUa, :OrderTime, :DeviceId
        
        def initialize(payerclientip=nil, payerua=nil, ordertime=nil, deviceid=nil)
          @PayerClientIp = payerclientip
          @PayerUa = payerua
          @OrderTime = ordertime
          @DeviceId = deviceid
        end

        def deserialize(params)
          @PayerClientIp = params['PayerClientIp']
          @PayerUa = params['PayerUa']
          @OrderTime = params['OrderTime']
          @DeviceId = params['DeviceId']
        end
      end

      # 线下查票-订单信息
      class Order < TencentCloud::Common::AbstractModel
        # @param AmountHasTax: 含税金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AmountHasTax: Float
        # @param Discount: 优惠金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float
        # @param SellerName: 销方名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SellerName: String
        # @param InvoiceType: 发票类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvoiceType: Integer
        # @param Name: 默认“”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Amount: 支付金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Amount: Float
        # @param OrderDate: 下单日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderDate: String
        # @param OrderId: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param StoreNo: 门店号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoreNo: String
        # @param Items: 明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :AmountHasTax, :Discount, :SellerName, :InvoiceType, :Name, :Amount, :OrderDate, :OrderId, :StoreNo, :Items
        
        def initialize(amounthastax=nil, discount=nil, sellername=nil, invoicetype=nil, name=nil, amount=nil, orderdate=nil, orderid=nil, storeno=nil, items=nil)
          @AmountHasTax = amounthastax
          @Discount = discount
          @SellerName = sellername
          @InvoiceType = invoicetype
          @Name = name
          @Amount = amount
          @OrderDate = orderdate
          @OrderId = orderid
          @StoreNo = storeno
          @Items = items
        end

        def deserialize(params)
          @AmountHasTax = params['AmountHasTax']
          @Discount = params['Discount']
          @SellerName = params['SellerName']
          @InvoiceType = params['InvoiceType']
          @Name = params['Name']
          @Amount = params['Amount']
          @OrderDate = params['OrderDate']
          @OrderId = params['OrderId']
          @StoreNo = params['StoreNo']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orderitem_tmp = OrderItem.new
              orderitem_tmp.deserialize(i)
              @Items << orderitem_tmp
            end
          end
        end
      end

      # 线下查票-订单明细
      class OrderItem < TencentCloud::Common::AbstractModel
        # @param AmountHasTax: 明细金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AmountHasTax: Float
        # @param Discount: 优惠金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Float
        # @param Name: 商品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Models: 型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Models: String
        # @param Total: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Unit: 数量单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Unit: String
        # @param Status: 默认“0”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Price: 单价
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Price: Float
        # @param TaxCode: 商品编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaxCode: String

        attr_accessor :AmountHasTax, :Discount, :Name, :Models, :Total, :Unit, :Status, :Price, :TaxCode
        
        def initialize(amounthastax=nil, discount=nil, name=nil, models=nil, total=nil, unit=nil, status=nil, price=nil, taxcode=nil)
          @AmountHasTax = amounthastax
          @Discount = discount
          @Name = name
          @Models = models
          @Total = total
          @Unit = unit
          @Status = status
          @Price = price
          @TaxCode = taxcode
        end

        def deserialize(params)
          @AmountHasTax = params['AmountHasTax']
          @Discount = params['Discount']
          @Name = params['Name']
          @Models = params['Models']
          @Total = params['Total']
          @Unit = params['Unit']
          @Status = params['Status']
          @Price = params['Price']
          @TaxCode = params['TaxCode']
        end
      end

      # 公司信息
      class OrganizationInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationName: 公司名称，个体工商户必输
        # @type OrganizationName: String
        # @param OrganizationType: 公司证件类型，个体工商户必输，证件类型仅支持73
        # @type OrganizationType: String
        # @param OrganizationCode: 公司证件号码，个体工商户必输
        # @type OrganizationCode: String
        # @param LegalPersonName: 法人名称，如果SubMchName不是法人，需要另外送入法人信息（企业必输）
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type LegalPersonName: String
        # @param LegalPersonIdType: 法人证件类型，如果SubMchName不是法人，需要另外送入法人信息（企业必输）
        # @type LegalPersonIdType: String
        # @param LegalPersonIdCode: 法人证件号码，如果SubMchName不是法人，需要另外送入法人信息（企业必输）
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type LegalPersonIdCode: String

        attr_accessor :OrganizationName, :OrganizationType, :OrganizationCode, :LegalPersonName, :LegalPersonIdType, :LegalPersonIdCode
        
        def initialize(organizationname=nil, organizationtype=nil, organizationcode=nil, legalpersonname=nil, legalpersonidtype=nil, legalpersonidcode=nil)
          @OrganizationName = organizationname
          @OrganizationType = organizationtype
          @OrganizationCode = organizationcode
          @LegalPersonName = legalpersonname
          @LegalPersonIdType = legalpersonidtype
          @LegalPersonIdCode = legalpersonidcode
        end

        def deserialize(params)
          @OrganizationName = params['OrganizationName']
          @OrganizationType = params['OrganizationType']
          @OrganizationCode = params['OrganizationCode']
          @LegalPersonName = params['LegalPersonName']
          @LegalPersonIdType = params['LegalPersonIdType']
          @LegalPersonIdCode = params['LegalPersonIdCode']
        end
      end

      # 分页参数
      class Paging < TencentCloud::Common::AbstractModel
        # @param Index: 页码
        # @type Index: Integer
        # @param Count: 页长
        # @type Count: Integer

        attr_accessor :Index, :Count
        
        def initialize(index=nil, count=nil)
          @Index = index
          @Count = count
        end

        def deserialize(params)
          @Index = params['Index']
          @Count = params['Count']
        end
      end

      # pay支付方式json数据
      class PayDataResult < TencentCloud::Common::AbstractModel
        # @param PaymentTag: 支付标签（唯一性）
        # @type PaymentTag: String
        # @param PaymentOptionHide: 添加合同时需要隐藏的选项（多个以小写逗号分开）
        # @type PaymentOptionHide: String
        # @param PaymentIcon: 支付方式图片url路径
        # @type PaymentIcon: String
        # @param PaymentOptionSix: 合同选项名称6
        # @type PaymentOptionSix: String
        # @param PaymentName: 付款方式名称
        # @type PaymentName: String
        # @param PaymentOptionSeven: 合同选项名称7
        # @type PaymentOptionSeven: String
        # @param PaymentOptionOther: 合同选项名称8
        # @type PaymentOptionOther: String
        # @param PaymentOptionTwo: 合同选项名称2
        # @type PaymentOptionTwo: String
        # @param PaymentOptionOne: 合同选项名称1
        # @type PaymentOptionOne: String
        # @param PaymentDiscountFee: 是否开启智能扣率（1是，0否）
        # @type PaymentDiscountFee: String
        # @param PaymentType: 支持的交易类型（多个以小写逗号分开，0现金，1刷卡，2主扫，3被扫，4JSPAY，5预授权）
        # @type PaymentType: String
        # @param PaymentOptionFive: 合同选项名称5
        # @type PaymentOptionFive: String
        # @param PaymentOptionNine: 合同选项名称9
        # @type PaymentOptionNine: String
        # @param PaymentId: 支付方式编号
        # @type PaymentId: String
        # @param PaymentOptionThree: 合同选项名称3
        # @type PaymentOptionThree: String
        # @param PaymentInternalName: 付款方式名称（内部名称）
        # @type PaymentInternalName: String
        # @param PaymentOptionFour: 合同选项名称4
        # @type PaymentOptionFour: String
        # @param PaymentOptionTen: 合同选项名称10
        # @type PaymentOptionTen: String

        attr_accessor :PaymentTag, :PaymentOptionHide, :PaymentIcon, :PaymentOptionSix, :PaymentName, :PaymentOptionSeven, :PaymentOptionOther, :PaymentOptionTwo, :PaymentOptionOne, :PaymentDiscountFee, :PaymentType, :PaymentOptionFive, :PaymentOptionNine, :PaymentId, :PaymentOptionThree, :PaymentInternalName, :PaymentOptionFour, :PaymentOptionTen
        
        def initialize(paymenttag=nil, paymentoptionhide=nil, paymenticon=nil, paymentoptionsix=nil, paymentname=nil, paymentoptionseven=nil, paymentoptionother=nil, paymentoptiontwo=nil, paymentoptionone=nil, paymentdiscountfee=nil, paymenttype=nil, paymentoptionfive=nil, paymentoptionnine=nil, paymentid=nil, paymentoptionthree=nil, paymentinternalname=nil, paymentoptionfour=nil, paymentoptionten=nil)
          @PaymentTag = paymenttag
          @PaymentOptionHide = paymentoptionhide
          @PaymentIcon = paymenticon
          @PaymentOptionSix = paymentoptionsix
          @PaymentName = paymentname
          @PaymentOptionSeven = paymentoptionseven
          @PaymentOptionOther = paymentoptionother
          @PaymentOptionTwo = paymentoptiontwo
          @PaymentOptionOne = paymentoptionone
          @PaymentDiscountFee = paymentdiscountfee
          @PaymentType = paymenttype
          @PaymentOptionFive = paymentoptionfive
          @PaymentOptionNine = paymentoptionnine
          @PaymentId = paymentid
          @PaymentOptionThree = paymentoptionthree
          @PaymentInternalName = paymentinternalname
          @PaymentOptionFour = paymentoptionfour
          @PaymentOptionTen = paymentoptionten
        end

        def deserialize(params)
          @PaymentTag = params['PaymentTag']
          @PaymentOptionHide = params['PaymentOptionHide']
          @PaymentIcon = params['PaymentIcon']
          @PaymentOptionSix = params['PaymentOptionSix']
          @PaymentName = params['PaymentName']
          @PaymentOptionSeven = params['PaymentOptionSeven']
          @PaymentOptionOther = params['PaymentOptionOther']
          @PaymentOptionTwo = params['PaymentOptionTwo']
          @PaymentOptionOne = params['PaymentOptionOne']
          @PaymentDiscountFee = params['PaymentDiscountFee']
          @PaymentType = params['PaymentType']
          @PaymentOptionFive = params['PaymentOptionFive']
          @PaymentOptionNine = params['PaymentOptionNine']
          @PaymentId = params['PaymentId']
          @PaymentOptionThree = params['PaymentOptionThree']
          @PaymentInternalName = params['PaymentInternalName']
          @PaymentOptionFour = params['PaymentOptionFour']
          @PaymentOptionTen = params['PaymentOptionTen']
        end
      end

      # pay_fee支付方式行业分类费率json数据
      class PayFeeDataResult < TencentCloud::Common::AbstractModel
        # @param OrganizationFee: 机构的分佣扣率扣率
        # @type OrganizationFee: String
        # @param PaymentClassificationLimit: 商户手续费封顶值，0为不限封顶
        # @type PaymentClassificationLimit: String
        # @param OrganizationFeeType: 机构的分佣扣率类型(1按签约扣率，2按收单收益)
        # @type OrganizationFeeType: String
        # @param PaymentClassificationMaxFee: 商户扣率最大值
        # @type PaymentClassificationMaxFee: String
        # @param PaymentClassificationMinFee: 商户扣率最小值
        # @type PaymentClassificationMinFee: String
        # @param PaymentClassificationId: 行业会类编号
        # @type PaymentClassificationId: String
        # @param PaymentClassificationName: 行业分类名称
        # @type PaymentClassificationName: String

        attr_accessor :OrganizationFee, :PaymentClassificationLimit, :OrganizationFeeType, :PaymentClassificationMaxFee, :PaymentClassificationMinFee, :PaymentClassificationId, :PaymentClassificationName
        
        def initialize(organizationfee=nil, paymentclassificationlimit=nil, organizationfeetype=nil, paymentclassificationmaxfee=nil, paymentclassificationminfee=nil, paymentclassificationid=nil, paymentclassificationname=nil)
          @OrganizationFee = organizationfee
          @PaymentClassificationLimit = paymentclassificationlimit
          @OrganizationFeeType = organizationfeetype
          @PaymentClassificationMaxFee = paymentclassificationmaxfee
          @PaymentClassificationMinFee = paymentclassificationminfee
          @PaymentClassificationId = paymentclassificationid
          @PaymentClassificationName = paymentclassificationname
        end

        def deserialize(params)
          @OrganizationFee = params['OrganizationFee']
          @PaymentClassificationLimit = params['PaymentClassificationLimit']
          @OrganizationFeeType = params['OrganizationFeeType']
          @PaymentClassificationMaxFee = params['PaymentClassificationMaxFee']
          @PaymentClassificationMinFee = params['PaymentClassificationMinFee']
          @PaymentClassificationId = params['PaymentClassificationId']
          @PaymentClassificationName = params['PaymentClassificationName']
        end
      end

      # 订单支付响应对象
      class PayOrderResult < TencentCloud::Common::AbstractModel
        # @param OrderNo: 付款订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: String
        # @param DeveloperNo: 开发者流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeveloperNo: String
        # @param TradeDiscountAmount: 交易优惠金额（免充值券）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeDiscountAmount: String
        # @param PayName: 付款方式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param OrderMerchantId: 商户流水号（从1开始自增长不重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderMerchantId: String
        # @param TradeAccount: 交易帐号（银行卡号、支付宝帐号、微信帐号等，某些收单机构没有此数据）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeAccount: String
        # @param TradeAmount: 实际交易金额（以分为单位，没有小数点）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeAmount: String
        # @param CurrencySign: 币种签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrencySign: String
        # @param TradePayTime: 付款完成时间（以收单机构为准）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradePayTime: String
        # @param ShopOrderId: 门店流水号（从1开始自增长不重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopOrderId: String
        # @param PayTag: 支付标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayTag: String
        # @param Status: 订单状态（1交易成功，2待支付，4已取消，9等待用户输入密码确认
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OrderCurrency: 币种代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderCurrency: String
        # @param TradeQrcode: 二维码字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeQrcode: String
        # @param WechatAppId: 微信返回调起小程序/原生JS支付的appid参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatAppId: String
        # @param WechatTimeStamp: 微信返回调起小程序/原生JS支付的timeStamp参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatTimeStamp: String
        # @param WechatNonceStr: 微信返回调起小程序/原生JS支付的nonceStr参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatNonceStr: String
        # @param WechatSignType: 微信返回调起小程序/原生JS支付的signType参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatSignType: String
        # @param WechatPackage: 微信返回调起小程序/原生JS支付的package参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatPackage: String
        # @param WechatPaySign: 微信返回调起小程序/原生JS支付的paySign参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatPaySign: String

        attr_accessor :OrderNo, :DeveloperNo, :TradeDiscountAmount, :PayName, :OrderMerchantId, :TradeAccount, :TradeAmount, :CurrencySign, :TradePayTime, :ShopOrderId, :PayTag, :Status, :OrderCurrency, :TradeQrcode, :WechatAppId, :WechatTimeStamp, :WechatNonceStr, :WechatSignType, :WechatPackage, :WechatPaySign
        
        def initialize(orderno=nil, developerno=nil, tradediscountamount=nil, payname=nil, ordermerchantid=nil, tradeaccount=nil, tradeamount=nil, currencysign=nil, tradepaytime=nil, shoporderid=nil, paytag=nil, status=nil, ordercurrency=nil, tradeqrcode=nil, wechatappid=nil, wechattimestamp=nil, wechatnoncestr=nil, wechatsigntype=nil, wechatpackage=nil, wechatpaysign=nil)
          @OrderNo = orderno
          @DeveloperNo = developerno
          @TradeDiscountAmount = tradediscountamount
          @PayName = payname
          @OrderMerchantId = ordermerchantid
          @TradeAccount = tradeaccount
          @TradeAmount = tradeamount
          @CurrencySign = currencysign
          @TradePayTime = tradepaytime
          @ShopOrderId = shoporderid
          @PayTag = paytag
          @Status = status
          @OrderCurrency = ordercurrency
          @TradeQrcode = tradeqrcode
          @WechatAppId = wechatappid
          @WechatTimeStamp = wechattimestamp
          @WechatNonceStr = wechatnoncestr
          @WechatSignType = wechatsigntype
          @WechatPackage = wechatpackage
          @WechatPaySign = wechatpaysign
        end

        def deserialize(params)
          @OrderNo = params['OrderNo']
          @DeveloperNo = params['DeveloperNo']
          @TradeDiscountAmount = params['TradeDiscountAmount']
          @PayName = params['PayName']
          @OrderMerchantId = params['OrderMerchantId']
          @TradeAccount = params['TradeAccount']
          @TradeAmount = params['TradeAmount']
          @CurrencySign = params['CurrencySign']
          @TradePayTime = params['TradePayTime']
          @ShopOrderId = params['ShopOrderId']
          @PayTag = params['PayTag']
          @Status = params['Status']
          @OrderCurrency = params['OrderCurrency']
          @TradeQrcode = params['TradeQrcode']
          @WechatAppId = params['WechatAppId']
          @WechatTimeStamp = params['WechatTimeStamp']
          @WechatNonceStr = params['WechatNonceStr']
          @WechatSignType = params['WechatSignType']
          @WechatPackage = params['WechatPackage']
          @WechatPaySign = params['WechatPaySign']
        end
      end

      # QueryAcctBinding请求参数结构体
      class QueryAcctBindingRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param MidasSecretId: 由平台客服提供的计费密钥Id
        # @type MidasSecretId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :SubAppId, :MidasSecretId, :MidasSignature, :EncryptType, :MidasEnvironment
        
        def initialize(midasappid=nil, subappid=nil, midassecretid=nil, midassignature=nil, encrypttype=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @SubAppId = subappid
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @EncryptType = encrypttype
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubAppId = params['SubAppId']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @EncryptType = params['EncryptType']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryAcctBinding返回参数结构体
      class QueryAcctBindingResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总行数
        # @type TotalCount: Integer
        # @param BankCardItems: 银行卡信息列表
        # @type BankCardItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BankCardItems, :RequestId
        
        def initialize(totalcount=nil, bankcarditems=nil, requestid=nil)
          @TotalCount = totalcount
          @BankCardItems = bankcarditems
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BankCardItems'].nil?
            @BankCardItems = []
            params['BankCardItems'].each do |i|
              bankcarditem_tmp = BankCardItem.new
              bankcarditem_tmp.deserialize(i)
              @BankCardItems << bankcarditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryAcctInfoList请求参数结构体
      class QueryAcctInfoListRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param QueryAcctBeginTime: 查询开始时间(以开户时间为准)
        # @type QueryAcctBeginTime: String
        # @param QueryAcctEndTime: 查询结束时间(以开户时间为准)
        # @type QueryAcctEndTime: String
        # @param PageOffset: 分页号,  起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照开户时间的先后
        # @type PageOffset: String
        # @param MidasSecretId: 由平台客服提供的计费密钥Id
        # @type MidasSecretId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :QueryAcctBeginTime, :QueryAcctEndTime, :PageOffset, :MidasSecretId, :MidasSignature, :EncryptType, :MidasEnvironment
        
        def initialize(midasappid=nil, queryacctbegintime=nil, queryacctendtime=nil, pageoffset=nil, midassecretid=nil, midassignature=nil, encrypttype=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @QueryAcctBeginTime = queryacctbegintime
          @QueryAcctEndTime = queryacctendtime
          @PageOffset = pageoffset
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @EncryptType = encrypttype
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @QueryAcctBeginTime = params['QueryAcctBeginTime']
          @QueryAcctEndTime = params['QueryAcctEndTime']
          @PageOffset = params['PageOffset']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @EncryptType = params['EncryptType']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryAcctInfoList返回参数结构体
      class QueryAcctInfoListResponse < TencentCloud::Common::AbstractModel
        # @param ResultCount: 本次交易返回查询结果记录数
        # @type ResultCount: Integer
        # @param TotalCount: 符合业务查询条件的记录总数
        # @type TotalCount: Integer
        # @param QueryAcctItems: 查询结果项 [object,object]
        # @type QueryAcctItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCount, :TotalCount, :QueryAcctItems, :RequestId
        
        def initialize(resultcount=nil, totalcount=nil, queryacctitems=nil, requestid=nil)
          @ResultCount = resultcount
          @TotalCount = totalcount
          @QueryAcctItems = queryacctitems
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCount = params['ResultCount']
          @TotalCount = params['TotalCount']
          unless params['QueryAcctItems'].nil?
            @QueryAcctItems = []
            params['QueryAcctItems'].each do |i|
              queryacctitem_tmp = QueryAcctItem.new
              queryacctitem_tmp.deserialize(i)
              @QueryAcctItems << queryacctitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryAcctInfo请求参数结构体
      class QueryAcctInfoRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫平台分配的支付MidasAppId
        # @type MidasAppId: String
        # @param SubMchId: 业务平台的子商户Id，唯一
        # @type SubMchId: String
        # @param MidasSecretId: 由平台客服提供的计费密钥Id
        # @type MidasSecretId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :SubMchId, :MidasSecretId, :MidasSignature, :EncryptType, :MidasEnvironment
        
        def initialize(midasappid=nil, submchid=nil, midassecretid=nil, midassignature=nil, encrypttype=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @SubMchId = submchid
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @EncryptType = encrypttype
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubMchId = params['SubMchId']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @EncryptType = params['EncryptType']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryAcctInfo返回参数结构体
      class QueryAcctInfoResponse < TencentCloud::Common::AbstractModel
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SubMchName: 子商户名称
        # @type SubMchName: String
        # @param SubMchType: 子商户类型：
        # 个人: personal
        # 企业：enterprise
        # 缺省： enterprise
        # @type SubMchType: String
        # @param ShortName: 不填则默认子商户名称
        # @type ShortName: String
        # @param Address: 子商户地址
        # @type Address: String
        # @param Contact: 子商户联系人子商户联系人
        # <敏感信息>
        # @type Contact: String
        # @param Mobile: 联系人手机号
        # <敏感信息>
        # @type Mobile: String
        # @param Email: 邮箱
        # <敏感信息>
        # @type Email: String
        # @param SubMchId: 子商户id
        # @type SubMchId: String
        # @param SubAcctNo: 子账户
        # @type SubAcctNo: String
        # @param SubMerchantMemberType: 子商户会员类型：
        # general:普通子账户
        # merchant:商户子账户
        # 缺省： general
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubMerchantMemberType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAppId, :SubMchName, :SubMchType, :ShortName, :Address, :Contact, :Mobile, :Email, :SubMchId, :SubAcctNo, :SubMerchantMemberType, :RequestId
        
        def initialize(subappid=nil, submchname=nil, submchtype=nil, shortname=nil, address=nil, contact=nil, mobile=nil, email=nil, submchid=nil, subacctno=nil, submerchantmembertype=nil, requestid=nil)
          @SubAppId = subappid
          @SubMchName = submchname
          @SubMchType = submchtype
          @ShortName = shortname
          @Address = address
          @Contact = contact
          @Mobile = mobile
          @Email = email
          @SubMchId = submchid
          @SubAcctNo = subacctno
          @SubMerchantMemberType = submerchantmembertype
          @RequestId = requestid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @SubMchName = params['SubMchName']
          @SubMchType = params['SubMchType']
          @ShortName = params['ShortName']
          @Address = params['Address']
          @Contact = params['Contact']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @SubMchId = params['SubMchId']
          @SubAcctNo = params['SubAcctNo']
          @SubMerchantMemberType = params['SubMerchantMemberType']
          @RequestId = params['RequestId']
        end
      end

      # 查询账户列表接口
      class QueryAcctItem < TencentCloud::Common::AbstractModel
        # @param SubMchType: 子商户类型：
        # 个人: personal
        # 企业：enterprise
        # 缺省： enterprise
        # @type SubMchType: String
        # @param SubMchName: 子商户名称
        # @type SubMchName: String
        # @param SubAcctNo: 子账号号
        # @type SubAcctNo: String
        # @param ShortName: 不填则默认子商户名称
        # @type ShortName: String
        # @param SubMchId: 业务平台的子商户Id，唯一
        # @type SubMchId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param Contact: 子商户联系人
        # <敏感信息>
        # @type Contact: String
        # @param Address: 子商户地址
        # @type Address: String
        # @param Mobile: 联系人手机号
        # <敏感信息>
        # @type Mobile: String
        # @param Email: 邮箱
        # <敏感信息>
        # @type Email: String
        # @param SubMerchantMemberType: 子商户会员类型：
        # general:普通子账户
        # merchant:商户子账户
        # 缺省： general
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubMerchantMemberType: String

        attr_accessor :SubMchType, :SubMchName, :SubAcctNo, :ShortName, :SubMchId, :SubAppId, :Contact, :Address, :Mobile, :Email, :SubMerchantMemberType
        
        def initialize(submchtype=nil, submchname=nil, subacctno=nil, shortname=nil, submchid=nil, subappid=nil, contact=nil, address=nil, mobile=nil, email=nil, submerchantmembertype=nil)
          @SubMchType = submchtype
          @SubMchName = submchname
          @SubAcctNo = subacctno
          @ShortName = shortname
          @SubMchId = submchid
          @SubAppId = subappid
          @Contact = contact
          @Address = address
          @Mobile = mobile
          @Email = email
          @SubMerchantMemberType = submerchantmembertype
        end

        def deserialize(params)
          @SubMchType = params['SubMchType']
          @SubMchName = params['SubMchName']
          @SubAcctNo = params['SubAcctNo']
          @ShortName = params['ShortName']
          @SubMchId = params['SubMchId']
          @SubAppId = params['SubAppId']
          @Contact = params['Contact']
          @Address = params['Address']
          @Mobile = params['Mobile']
          @Email = params['Email']
          @SubMerchantMemberType = params['SubMerchantMemberType']
        end
      end

      # QueryAgentStatements请求参数结构体
      class QueryAgentStatementsRequest < TencentCloud::Common::AbstractModel
        # @param Date: 结算单日期，月结算单填每月1日
        # @type Date: String
        # @param Type: 日结算单:daily
        # 月结算单:monthly
        # @type Type: String

        attr_accessor :Date, :Type
        
        def initialize(date=nil, type=nil)
          @Date = date
          @Type = type
        end

        def deserialize(params)
          @Date = params['Date']
          @Type = params['Type']
        end
      end

      # QueryAgentStatements返回参数结构体
      class QueryAgentStatementsResponse < TencentCloud::Common::AbstractModel
        # @param FileUrl: 文件下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileUrl, :RequestId
        
        def initialize(fileurl=nil, requestid=nil)
          @FileUrl = fileurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FileUrl = params['FileUrl']
          @RequestId = params['RequestId']
        end
      end

      # QueryAgentTaxPaymentBatch请求参数结构体
      class QueryAgentTaxPaymentBatchRequest < TencentCloud::Common::AbstractModel
        # @param BatchNum: 批次号
        # @type BatchNum: Integer
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :BatchNum, :Profile
        
        def initialize(batchnum=nil, profile=nil)
          @BatchNum = batchnum
          @Profile = profile
        end

        def deserialize(params)
          @BatchNum = params['BatchNum']
          @Profile = params['Profile']
        end
      end

      # QueryAgentTaxPaymentBatch返回参数结构体
      class QueryAgentTaxPaymentBatchResponse < TencentCloud::Common::AbstractModel
        # @param AgentTaxPaymentBatch: 代理商完税证明批次信息
        # @type AgentTaxPaymentBatch: :class:`Tencentcloud::Cpdp.v20190820.models.AgentTaxPaymentBatch`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AgentTaxPaymentBatch, :RequestId
        
        def initialize(agenttaxpaymentbatch=nil, requestid=nil)
          @AgentTaxPaymentBatch = agenttaxpaymentbatch
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AgentTaxPaymentBatch'].nil?
            @AgentTaxPaymentBatch = AgentTaxPaymentBatch.new
            @AgentTaxPaymentBatch.deserialize(params['AgentTaxPaymentBatch'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryAnchorContractInfo请求参数结构体
      class QueryAnchorContractInfoRequest < TencentCloud::Common::AbstractModel
        # @param BeginTime: 起始时间，格式为yyyy-MM-dd
        # @type BeginTime: String
        # @param EndTime: 起始时间，格式为yyyy-MM-dd
        # @type EndTime: String

        attr_accessor :BeginTime, :EndTime
        
        def initialize(begintime=nil, endtime=nil)
          @BeginTime = begintime
          @EndTime = endtime
        end

        def deserialize(params)
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
        end
      end

      # QueryAnchorContractInfo返回参数结构体
      class QueryAnchorContractInfoResponse < TencentCloud::Common::AbstractModel
        # @param AnchorContractInfoList: 签约主播数据
        # @type AnchorContractInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AnchorContractInfoList, :RequestId
        
        def initialize(anchorcontractinfolist=nil, requestid=nil)
          @AnchorContractInfoList = anchorcontractinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AnchorContractInfoList'].nil?
            @AnchorContractInfoList = []
            params['AnchorContractInfoList'].each do |i|
              anchorcontractinfo_tmp = AnchorContractInfo.new
              anchorcontractinfo_tmp.deserialize(i)
              @AnchorContractInfoList << anchorcontractinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryApplicationMaterial请求参数结构体
      class QueryApplicationMaterialRequest < TencentCloud::Common::AbstractModel
        # @param DeclareId: 申报流水号
        # @type DeclareId: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :DeclareId, :Profile
        
        def initialize(declareid=nil, profile=nil)
          @DeclareId = declareid
          @Profile = profile
        end

        def deserialize(params)
          @DeclareId = params['DeclareId']
          @Profile = params['Profile']
        end
      end

      # QueryApplicationMaterial返回参数结构体
      class QueryApplicationMaterialResponse < TencentCloud::Common::AbstractModel
        # @param Result: 成功申报材料查询结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryDeclareResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryDeclareResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryAssignment请求参数结构体
      class QueryAssignmentRequest < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播ID
        # @type AnchorId: String

        attr_accessor :AnchorId
        
        def initialize(anchorid=nil)
          @AnchorId = anchorid
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
        end
      end

      # QueryAssignment返回参数结构体
      class QueryAssignmentResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMsg: 响应消息
        # @type ErrMsg: String
        # @param Result: 返回响应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.AssignmentData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMsg, :Result, :RequestId
        
        def initialize(errcode=nil, errmsg=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMsg = errmsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['Result'].nil?
            @Result = AssignmentData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryBalance请求参数结构体
      class QueryBalanceRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param QueryFlag: 2：普通会员子账号
        # 3：功能子账号
        # @type QueryFlag: String
        # @param PageOffset: 起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后
        # @type PageOffset: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :SubAppId, :QueryFlag, :PageOffset, :MidasSecretId, :MidasSignature, :MidasEnvironment
        
        def initialize(midasappid=nil, subappid=nil, queryflag=nil, pageoffset=nil, midassecretid=nil, midassignature=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @SubAppId = subappid
          @QueryFlag = queryflag
          @PageOffset = pageoffset
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubAppId = params['SubAppId']
          @QueryFlag = params['QueryFlag']
          @PageOffset = params['PageOffset']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryBalance返回参数结构体
      class QueryBalanceResponse < TencentCloud::Common::AbstractModel
        # @param ResultCount: 本次交易返回查询结果记录数
        # @type ResultCount: String
        # @param StartRecordOffset: 起始记录号
        # @type StartRecordOffset: String
        # @param EndFlag: 结束标志
        # @type EndFlag: String
        # @param TotalCount: 符合业务查询条件的记录总数
        # @type TotalCount: String
        # @param QueryItems: 查询结果项
        # @type QueryItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCount, :StartRecordOffset, :EndFlag, :TotalCount, :QueryItems, :RequestId
        
        def initialize(resultcount=nil, startrecordoffset=nil, endflag=nil, totalcount=nil, queryitems=nil, requestid=nil)
          @ResultCount = resultcount
          @StartRecordOffset = startrecordoffset
          @EndFlag = endflag
          @TotalCount = totalcount
          @QueryItems = queryitems
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCount = params['ResultCount']
          @StartRecordOffset = params['StartRecordOffset']
          @EndFlag = params['EndFlag']
          @TotalCount = params['TotalCount']
          unless params['QueryItems'].nil?
            @QueryItems = []
            params['QueryItems'].each do |i|
              queryitem_tmp = QueryItem.new
              queryitem_tmp.deserialize(i)
              @QueryItems << queryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryBankClear请求参数结构体
      class QueryBankClearRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param FunctionFlag: STRING(2)，功能标志（1: 全部; 2: 指定时间段）
        # @type FunctionFlag: String
        # @param PageNum: STRING (10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        # @type PageNum: String
        # @param StartDate: STRING(8)，开始日期（若是指定时间段查询，则必输，当查询全部时，不起作用。格式: 20190101）
        # @type StartDate: String
        # @param EndDate: STRING(8)，终止日期（若是指定时间段查询，则必输，当查询全部时，不起作用。格式：20190101）
        # @type EndDate: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FunctionFlag, :PageNum, :StartDate, :EndDate, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, functionflag=nil, pagenum=nil, startdate=nil, enddate=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @FunctionFlag = functionflag
          @PageNum = pagenum
          @StartDate = startdate
          @EndDate = enddate
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FunctionFlag = params['FunctionFlag']
          @PageNum = params['PageNum']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QueryBankClear返回参数结构体
      class QueryBankClearResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ResultNum: STRING (10)，本次交易返回查询结果记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNum: String
        # @param StartRecordNo: STRING(30)，起始记录号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRecordNo: String
        # @param EndFlag: STRING(2)，结束标志（0: 否; 1: 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TotalNum: STRING (10)，符合业务查询条件的记录总数（重复次数, 一次最多返回20条记录）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: String
        # @param TranItemArray: 交易信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ResultNum, :StartRecordNo, :EndFlag, :TotalNum, :TranItemArray, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, resultnum=nil, startrecordno=nil, endflag=nil, totalnum=nil, tranitemarray=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ResultNum = resultnum
          @StartRecordNo = startrecordno
          @EndFlag = endflag
          @TotalNum = totalnum
          @TranItemArray = tranitemarray
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ResultNum = params['ResultNum']
          @StartRecordNo = params['StartRecordNo']
          @EndFlag = params['EndFlag']
          @TotalNum = params['TotalNum']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              clearitem_tmp = ClearItem.new
              clearitem_tmp.deserialize(i)
              @TranItemArray << clearitem_tmp
            end
          end
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # QueryBankTransactionDetails请求参数结构体
      class QueryBankTransactionDetailsRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param FunctionFlag: STRING(2)，功能标志（1: 当日; 2: 历史）
        # @type FunctionFlag: String
        # @param SubAcctNo: STRING(50)，见证子帐户的帐号
        # @type SubAcctNo: String
        # @param QueryFlag: STRING(4)，查询标志（1: 全部; 2: 转出; 3: 转入 ）
        # @type QueryFlag: String
        # @param PageNum: STRING(10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        # @type PageNum: String
        # @param StartDate: STRING(8)，开始日期（若是历史查询，则必输，当日查询时，不起作用。格式：20190101）
        # @type StartDate: String
        # @param EndDate: STRING(8)，终止日期（若是历史查询，则必输，当日查询时，不起作用。格式：20190101）
        # @type EndDate: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FunctionFlag, :SubAcctNo, :QueryFlag, :PageNum, :StartDate, :EndDate, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, functionflag=nil, subacctno=nil, queryflag=nil, pagenum=nil, startdate=nil, enddate=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @FunctionFlag = functionflag
          @SubAcctNo = subacctno
          @QueryFlag = queryflag
          @PageNum = pagenum
          @StartDate = startdate
          @EndDate = enddate
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FunctionFlag = params['FunctionFlag']
          @SubAcctNo = params['SubAcctNo']
          @QueryFlag = params['QueryFlag']
          @PageNum = params['PageNum']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QueryBankTransactionDetails返回参数结构体
      class QueryBankTransactionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ResultNum: STRING(10)，本次交易返回查询结果记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNum: String
        # @param StartRecordNo: STRING(30)，起始记录号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRecordNo: String
        # @param EndFlag: STRING(2)，结束标志（0: 否; 1: 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TotalNum: STRING(10)，符合业务查询条件的记录总数（重复次数，一次最多返回20条记录）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: String
        # @param TranItemArray: 交易信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ResultNum, :StartRecordNo, :EndFlag, :TotalNum, :TranItemArray, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, resultnum=nil, startrecordno=nil, endflag=nil, totalnum=nil, tranitemarray=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ResultNum = resultnum
          @StartRecordNo = startrecordno
          @EndFlag = endflag
          @TotalNum = totalnum
          @TranItemArray = tranitemarray
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ResultNum = params['ResultNum']
          @StartRecordNo = params['StartRecordNo']
          @EndFlag = params['EndFlag']
          @TotalNum = params['TotalNum']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              transactionitem_tmp = TransactionItem.new
              transactionitem_tmp.deserialize(i)
              @TranItemArray << transactionitem_tmp
            end
          end
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # QueryBankWithdrawCashDetails请求参数结构体
      class QueryBankWithdrawCashDetailsRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param FunctionFlag: STRING(2)，功能标志（1: 当日; 2: 历史）
        # @type FunctionFlag: String
        # @param SubAcctNo: STRING(50)，见证子帐户的帐号
        # @type SubAcctNo: String
        # @param QueryFlag: STRING(4)，查询标志（2: 提现; 3: 清分）
        # @type QueryFlag: String
        # @param PageNum: STRING(10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        # @type PageNum: String
        # @param BeginDate: STRING(8)，开始日期（若是历史查询，则必输，当日查询时，不起作用。格式：20190101）
        # @type BeginDate: String
        # @param EndDate: STRING(8)，结束日期（若是历史查询，则必输，当日查询时，不起作用。格式：20190101）
        # @type EndDate: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FunctionFlag, :SubAcctNo, :QueryFlag, :PageNum, :BeginDate, :EndDate, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, functionflag=nil, subacctno=nil, queryflag=nil, pagenum=nil, begindate=nil, enddate=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @FunctionFlag = functionflag
          @SubAcctNo = subacctno
          @QueryFlag = queryflag
          @PageNum = pagenum
          @BeginDate = begindate
          @EndDate = enddate
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FunctionFlag = params['FunctionFlag']
          @SubAcctNo = params['SubAcctNo']
          @QueryFlag = params['QueryFlag']
          @PageNum = params['PageNum']
          @BeginDate = params['BeginDate']
          @EndDate = params['EndDate']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QueryBankWithdrawCashDetails返回参数结构体
      class QueryBankWithdrawCashDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ResultNum: STRING(10)，本次交易返回查询结果记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNum: String
        # @param StartRecordNo: STRING(30)，起始记录号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRecordNo: String
        # @param EndFlag: STRING(2)，结束标志（0:否; 1:是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TotalNum: STRING(10)，符合业务查询条件的记录总数（重复次数，一次最多返回20条记录）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: String
        # @param TranItemArray: 交易信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ResultNum, :StartRecordNo, :EndFlag, :TotalNum, :TranItemArray, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, resultnum=nil, startrecordno=nil, endflag=nil, totalnum=nil, tranitemarray=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ResultNum = resultnum
          @StartRecordNo = startrecordno
          @EndFlag = endflag
          @TotalNum = totalnum
          @TranItemArray = tranitemarray
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ResultNum = params['ResultNum']
          @StartRecordNo = params['StartRecordNo']
          @EndFlag = params['EndFlag']
          @TotalNum = params['TotalNum']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              withdrawitem_tmp = WithdrawItem.new
              withdrawitem_tmp.deserialize(i)
              @TranItemArray << withdrawitem_tmp
            end
          end
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # QueryBatchPaymentResult接口返回响应
      class QueryBatchPaymentResultData < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchId: String
        # @param TotalAmount: 批次总额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalAmount: Integer
        # @param TotalCount: 批次总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ReqReserved: 批次预留字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReqReserved: String
        # @param Remark: 批次备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param TransferType: 渠道类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferType: Integer
        # @param TransferInfoList: 转账明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferInfoList: Array

        attr_accessor :BatchId, :TotalAmount, :TotalCount, :ReqReserved, :Remark, :TransferType, :TransferInfoList
        
        def initialize(batchid=nil, totalamount=nil, totalcount=nil, reqreserved=nil, remark=nil, transfertype=nil, transferinfolist=nil)
          @BatchId = batchid
          @TotalAmount = totalamount
          @TotalCount = totalcount
          @ReqReserved = reqreserved
          @Remark = remark
          @TransferType = transfertype
          @TransferInfoList = transferinfolist
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TotalAmount = params['TotalAmount']
          @TotalCount = params['TotalCount']
          @ReqReserved = params['ReqReserved']
          @Remark = params['Remark']
          @TransferType = params['TransferType']
          unless params['TransferInfoList'].nil?
            @TransferInfoList = []
            params['TransferInfoList'].each do |i|
              querybatchpaymentresultdatainfo_tmp = QueryBatchPaymentResultDataInfo.new
              querybatchpaymentresultdatainfo_tmp.deserialize(i)
              @TransferInfoList << querybatchpaymentresultdatainfo_tmp
            end
          end
        end
      end

      # QueryBatchPaymentResultData复杂类型中的TransferInfoList
      class QueryBatchPaymentResultDataInfo < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param AgentId: 代理商ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param AgentName: 代理商名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String
        # @param Status: 交易状态。
        # 0 处理中
        # 1 预占成功
        # 2 交易成功
        # 3 交易失败
        # 4 未知渠道异常
        # 5 预占额度失败
        # 6 提交成功
        # 7 提交失败
        # 8 订单重复提交
        # 99 未知系统异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusDesc: 状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param TransferAmount: 转账金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferAmount: Integer

        attr_accessor :OrderId, :AgentId, :AgentName, :Status, :StatusDesc, :TransferAmount
        
        def initialize(orderid=nil, agentid=nil, agentname=nil, status=nil, statusdesc=nil, transferamount=nil)
          @OrderId = orderid
          @AgentId = agentid
          @AgentName = agentname
          @Status = status
          @StatusDesc = statusdesc
          @TransferAmount = transferamount
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @TransferAmount = params['TransferAmount']
        end
      end

      # QueryBatchPaymentResult请求参数结构体
      class QueryBatchPaymentResultRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次号
        # @type BatchId: String

        attr_accessor :BatchId
        
        def initialize(batchid=nil)
          @BatchId = batchid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
        end
      end

      # QueryBatchPaymentResult返回参数结构体
      class QueryBatchPaymentResultResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMessage: 响应消息。
        # @type ErrMessage: String
        # @param Result: 返回响应
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryBatchPaymentResultData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryBatchPaymentResultData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 智能代发-单笔代发转账对账单返回数据
      class QueryBillDownloadURLData < TencentCloud::Common::AbstractModel
        # @param BillDownloadURL: 统一对账单下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillDownloadURL: String
        # @param OriginalBillDownloadURL: 渠道原始对账单下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalBillDownloadURL: String

        attr_accessor :BillDownloadURL, :OriginalBillDownloadURL
        
        def initialize(billdownloadurl=nil, originalbilldownloadurl=nil)
          @BillDownloadURL = billdownloadurl
          @OriginalBillDownloadURL = originalbilldownloadurl
        end

        def deserialize(params)
          @BillDownloadURL = params['BillDownloadURL']
          @OriginalBillDownloadURL = params['OriginalBillDownloadURL']
        end
      end

      # QueryBillDownloadURL请求参数结构体
      class QueryBillDownloadURLRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param TransferType: 代发类型：
        # 1、 微信企业付款
        # 2、 支付宝转账
        # 3、 平安银企直联代发转账
        # @type TransferType: Integer
        # @param BillDate: 账单日期，格式yyyy-MM-dd
        # @type BillDate: String

        attr_accessor :MerchantId, :TransferType, :BillDate
        
        def initialize(merchantid=nil, transfertype=nil, billdate=nil)
          @MerchantId = merchantid
          @TransferType = transfertype
          @BillDate = billdate
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @TransferType = params['TransferType']
          @BillDate = params['BillDate']
        end
      end

      # QueryBillDownloadURL返回参数结构体
      class QueryBillDownloadURLResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功
        # @type ErrCode: String
        # @param ErrMessage: 响应消息
        # @type ErrMessage: String
        # @param Result: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryBillDownloadURLData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryBillDownloadURLData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCityCode请求参数结构体
      class QueryCityCodeRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Profile
        
        def initialize(openid=nil, openkey=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Profile = params['Profile']
        end
      end

      # QueryCityCode返回参数结构体
      class QueryCityCodeResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 查询城市编码响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              citycoderesult_tmp = CityCodeResult.new
              citycoderesult_tmp.deserialize(i)
              @Result << citycoderesult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryCommonTransferRecharge请求参数结构体
      class QueryCommonTransferRechargeRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param FunctionFlag: STRING(2)，功能标志（1为查询当日数据，0查询历史数据）
        # @type FunctionFlag: String
        # @param StartDate: STRING(8)，开始日期（格式：20190101）
        # @type StartDate: String
        # @param EndDate: STRING(8)，终止日期（格式：20190101）
        # @type EndDate: String
        # @param PageNum: STRING(10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        # @type PageNum: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FunctionFlag, :StartDate, :EndDate, :PageNum, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, functionflag=nil, startdate=nil, enddate=nil, pagenum=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @FunctionFlag = functionflag
          @StartDate = startdate
          @EndDate = enddate
          @PageNum = pagenum
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FunctionFlag = params['FunctionFlag']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @PageNum = params['PageNum']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QueryCommonTransferRecharge返回参数结构体
      class QueryCommonTransferRechargeResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ResultNum: STRING(10)，本次交易返回查询结果记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNum: String
        # @param StartRecordNo: STRING(30)，起始记录号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRecordNo: String
        # @param EndFlag: STRING(2)，结束标志（0: 否; 1: 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TotalNum: STRING(10)，符合业务查询条件的记录总数（重复次数，一次最多返回20条记录）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: String
        # @param TranItemArray: 交易信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ResultNum, :StartRecordNo, :EndFlag, :TotalNum, :TranItemArray, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, resultnum=nil, startrecordno=nil, endflag=nil, totalnum=nil, tranitemarray=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ResultNum = resultnum
          @StartRecordNo = startrecordno
          @EndFlag = endflag
          @TotalNum = totalnum
          @TranItemArray = tranitemarray
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ResultNum = params['ResultNum']
          @StartRecordNo = params['StartRecordNo']
          @EndFlag = params['EndFlag']
          @TotalNum = params['TotalNum']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              transferitem_tmp = TransferItem.new
              transferitem_tmp.deserialize(i)
              @TranItemArray << transferitem_tmp
            end
          end
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # QueryContractPayFee请求参数结构体
      class QueryContractPayFeeRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param PaymentId: 支付方式编号
        # @type PaymentId: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :PaymentId, :Profile
        
        def initialize(openid=nil, openkey=nil, paymentid=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @PaymentId = paymentid
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @PaymentId = params['PaymentId']
          @Profile = params['Profile']
        end
      end

      # QueryContractPayFee返回参数结构体
      class QueryContractPayFeeResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码，0表示成功，其他表示失败。
        # @type ErrCode: String
        # @param Result: 查询支付方式费率及自定义表单项响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryContractPayFeeResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = QueryContractPayFeeResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 支付方式费率及自定义表单项
      class QueryContractPayFeeResult < TencentCloud::Common::AbstractModel
        # @param Pay: pay支付方式json数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pay: :class:`Tencentcloud::Cpdp.v20190820.models.PayDataResult`
        # @param ExtraInput: 合同扩展自定义字段
        # @type ExtraInput: Array
        # @param PayFee: pay_fee支付方式行业分类费率json数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayFee: Array

        attr_accessor :Pay, :ExtraInput, :PayFee
        
        def initialize(pay=nil, extrainput=nil, payfee=nil)
          @Pay = pay
          @ExtraInput = extrainput
          @PayFee = payfee
        end

        def deserialize(params)
          unless params['Pay'].nil?
            @Pay = PayDataResult.new
            @Pay.deserialize(params['Pay'])
          end
          @ExtraInput = params['ExtraInput']
          unless params['PayFee'].nil?
            @PayFee = []
            params['PayFee'].each do |i|
              payfeedataresult_tmp = PayFeeDataResult.new
              payfeedataresult_tmp.deserialize(i)
              @PayFee << payfeedataresult_tmp
            end
          end
        end
      end

      # QueryContractPayWayList请求参数结构体
      class QueryContractPayWayListRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Profile
        
        def initialize(openid=nil, openkey=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Profile = params['Profile']
        end
      end

      # QueryContractPayWayList返回参数结构体
      class QueryContractPayWayListResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 查询合同支付方式响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              contractpaylistresult_tmp = ContractPayListResult.new
              contractpaylistresult_tmp.deserialize(i)
              @Result << contractpaylistresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryContractRelateShop请求参数结构体
      class QueryContractRelateShopRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param ContractId: 合同主键
        # @type ContractId: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :ContractId, :Profile
        
        def initialize(openid=nil, openkey=nil, contractid=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @ContractId = contractid
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @ContractId = params['ContractId']
          @Profile = params['Profile']
        end
      end

      # QueryContractRelateShop返回参数结构体
      class QueryContractRelateShopResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 查询合同可关联门店响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              querycontractrelateshopresult_tmp = QueryContractRelateShopResult.new
              querycontractrelateshopresult_tmp.deserialize(i)
              @Result << querycontractrelateshopresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 合同可关联门店响应对象
      class QueryContractRelateShopResult < TencentCloud::Common::AbstractModel
        # @param Province: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param CityId: 城市编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityId: String
        # @param ShopName: 门店简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopName: String
        # @param TerminalCount: 终端数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminalCount: String
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param ShopStatus: 门店状态（0未审核，1已审核，2审核未通过，3待审核，4已删除，5初审通过）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopStatus: String
        # @param AliPayOnline: 若是支付宝合同，支付宝上线状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliPayOnline: String
        # @param ShopNo: 门店编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopNo: String
        # @param Country: 县/区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: String
        # @param AliPayStatus: 若是支付宝合同，支付宝审核状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliPayStatus: String
        # @param IsChecked: 为空或者0表示未关联，大于0表示已关联
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsChecked: String
        # @param Address: 详细地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param AliPayDesc: 若是支付宝合同，支付宝审核描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliPayDesc: String

        attr_accessor :Province, :CityId, :ShopName, :TerminalCount, :City, :ShopStatus, :AliPayOnline, :ShopNo, :Country, :AliPayStatus, :IsChecked, :Address, :AliPayDesc
        
        def initialize(province=nil, cityid=nil, shopname=nil, terminalcount=nil, city=nil, shopstatus=nil, alipayonline=nil, shopno=nil, country=nil, alipaystatus=nil, ischecked=nil, address=nil, alipaydesc=nil)
          @Province = province
          @CityId = cityid
          @ShopName = shopname
          @TerminalCount = terminalcount
          @City = city
          @ShopStatus = shopstatus
          @AliPayOnline = alipayonline
          @ShopNo = shopno
          @Country = country
          @AliPayStatus = alipaystatus
          @IsChecked = ischecked
          @Address = address
          @AliPayDesc = alipaydesc
        end

        def deserialize(params)
          @Province = params['Province']
          @CityId = params['CityId']
          @ShopName = params['ShopName']
          @TerminalCount = params['TerminalCount']
          @City = params['City']
          @ShopStatus = params['ShopStatus']
          @AliPayOnline = params['AliPayOnline']
          @ShopNo = params['ShopNo']
          @Country = params['Country']
          @AliPayStatus = params['AliPayStatus']
          @IsChecked = params['IsChecked']
          @Address = params['Address']
          @AliPayDesc = params['AliPayDesc']
        end
      end

      # QueryContract请求参数结构体
      class QueryContractRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param UserId: 用户ID，长度不小于5位，仅支持字母和数字的组合
        # @type UserId: String
        # @param Channel: 指定渠道：  wechat：微信支付  qqwallet：QQ钱包
        #  bank：网银支付  只有一个渠道时需要指定
        # @type Channel: String
        # @param ContractQueryMode: 枚举值：
        # CONTRACT_QUERY_MODE_BY_OUT_CONTRACT_CODE：按 OutContractCode + ContractSceneId 查询
        # CONTRACT_QUERY_MODE_BY_CHANNEL_CONTRACT_CODE：按ChannelContractCode查询
        # @type ContractQueryMode: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param OutContractCode: 业务签约合同协议号 当 ContractQueryMode=CONTRACT_QUERY_MODE_BY_OUT_CONTRACT_CODE 时 ，必填
        # @type OutContractCode: String
        # @param ContractSceneId: 签约场景ID，当 ContractQueryMode=CONTRACT_QUERY_MODE_BY_OUT_CONTRACT_CODE 时 必填，在米大师侧托管后生成
        # @type ContractSceneId: String
        # @param ChannelContractCode: 米大师生成的协议号 ，当 ContractQueryMode=CONTRACT_QUERY_MODE_BY_CHANNEL_CONTRACT_CODE 时必填
        # @type ChannelContractCode: String
        # @param ExternalContractData: 第三方渠道合约数据，为json字符串，与特定渠道有关
        # @type ExternalContractData: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param UserType: USER_ID: 用户ID
        # ANONYMOUS: 匿名类型 USER_ID
        # 默认值为 USER_ID
        # @type UserType: String
        # @param MigrateMode: 签约代扣穿透查询存量数据迁移模式
        # @type MigrateMode: String
        # @param ContractMethod: 签约方式
        # @type ContractMethod: String

        attr_accessor :MidasAppId, :UserId, :Channel, :ContractQueryMode, :MidasSignature, :MidasSecretId, :SubAppId, :OutContractCode, :ContractSceneId, :ChannelContractCode, :ExternalContractData, :MidasEnvironment, :UserType, :MigrateMode, :ContractMethod
        
        def initialize(midasappid=nil, userid=nil, channel=nil, contractquerymode=nil, midassignature=nil, midassecretid=nil, subappid=nil, outcontractcode=nil, contractsceneid=nil, channelcontractcode=nil, externalcontractdata=nil, midasenvironment=nil, usertype=nil, migratemode=nil, contractmethod=nil)
          @MidasAppId = midasappid
          @UserId = userid
          @Channel = channel
          @ContractQueryMode = contractquerymode
          @MidasSignature = midassignature
          @MidasSecretId = midassecretid
          @SubAppId = subappid
          @OutContractCode = outcontractcode
          @ContractSceneId = contractsceneid
          @ChannelContractCode = channelcontractcode
          @ExternalContractData = externalcontractdata
          @MidasEnvironment = midasenvironment
          @UserType = usertype
          @MigrateMode = migratemode
          @ContractMethod = contractmethod
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @UserId = params['UserId']
          @Channel = params['Channel']
          @ContractQueryMode = params['ContractQueryMode']
          @MidasSignature = params['MidasSignature']
          @MidasSecretId = params['MidasSecretId']
          @SubAppId = params['SubAppId']
          @OutContractCode = params['OutContractCode']
          @ContractSceneId = params['ContractSceneId']
          @ChannelContractCode = params['ChannelContractCode']
          @ExternalContractData = params['ExternalContractData']
          @MidasEnvironment = params['MidasEnvironment']
          @UserType = params['UserType']
          @MigrateMode = params['MigrateMode']
          @ContractMethod = params['ContractMethod']
        end
      end

      # QueryContract返回参数结构体
      class QueryContractResponse < TencentCloud::Common::AbstractModel
        # @param ContractData: 签约数据
        # @type ContractData: :class:`Tencentcloud::Cpdp.v20190820.models.ResponseQueryContract`
        # @param Msg: 请求处理信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContractData, :Msg, :RequestId
        
        def initialize(contractdata=nil, msg=nil, requestid=nil)
          @ContractData = contractdata
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContractData'].nil?
            @ContractData = ResponseQueryContract.new
            @ContractData.deserialize(params['ContractData'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # QueryCustAcctIdBalance请求参数结构体
      class QueryCustAcctIdBalanceRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param QueryFlag: STRING(4)，查询标志（2: 普通会员子账号; 3: 功能子账号）
        # @type QueryFlag: String
        # @param PageNum: STRING(10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        # @type PageNum: String
        # @param SubAcctNo: STRING(50)，见证子账户的账号（若SelectFlag为2时，子账号必输）
        # @type SubAcctNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :QueryFlag, :PageNum, :SubAcctNo, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, queryflag=nil, pagenum=nil, subacctno=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @QueryFlag = queryflag
          @PageNum = pagenum
          @SubAcctNo = subacctno
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @QueryFlag = params['QueryFlag']
          @PageNum = params['PageNum']
          @SubAcctNo = params['SubAcctNo']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QueryCustAcctIdBalance返回参数结构体
      class QueryCustAcctIdBalanceResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ResultNum: STRING(10)，本次交易返回查询结果记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNum: String
        # @param StartRecordNo: STRING(30)，起始记录号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRecordNo: String
        # @param EndFlag: STRING(2)，结束标志（0: 否; 1: 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TotalNum: STRING(10)，符合业务查询条件的记录总数（重复次数，一次最多返回20条记录）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: String
        # @param AcctArray: 账户信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AcctArray: Array
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ResultNum, :StartRecordNo, :EndFlag, :TotalNum, :AcctArray, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, resultnum=nil, startrecordno=nil, endflag=nil, totalnum=nil, acctarray=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ResultNum = resultnum
          @StartRecordNo = startrecordno
          @EndFlag = endflag
          @TotalNum = totalnum
          @AcctArray = acctarray
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ResultNum = params['ResultNum']
          @StartRecordNo = params['StartRecordNo']
          @EndFlag = params['EndFlag']
          @TotalNum = params['TotalNum']
          unless params['AcctArray'].nil?
            @AcctArray = []
            params['AcctArray'].each do |i|
              acct_tmp = Acct.new
              acct_tmp.deserialize(i)
              @AcctArray << acct_tmp
            end
          end
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 成功申报材料查询数据
      class QueryDeclareData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param TransactionId: 对接方汇出指令编号
        # @type TransactionId: String
        # @param DeclareId: 申报流水号
        # @type DeclareId: String
        # @param OriginalDeclareId: 原申报流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalDeclareId: String
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param SourceCurrency: 源币种
        # @type SourceCurrency: String
        # @param SourceAmount: 源金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceAmount: String
        # @param TargetCurrency: 目的币种
        # @type TargetCurrency: String
        # @param TargetAmount: 目的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetAmount: String
        # @param TradeCode: 交易编码
        # @type TradeCode: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :MerchantId, :TransactionId, :DeclareId, :OriginalDeclareId, :PayerId, :SourceCurrency, :SourceAmount, :TargetCurrency, :TargetAmount, :TradeCode, :Status
        
        def initialize(merchantid=nil, transactionid=nil, declareid=nil, originaldeclareid=nil, payerid=nil, sourcecurrency=nil, sourceamount=nil, targetcurrency=nil, targetamount=nil, tradecode=nil, status=nil)
          @MerchantId = merchantid
          @TransactionId = transactionid
          @DeclareId = declareid
          @OriginalDeclareId = originaldeclareid
          @PayerId = payerid
          @SourceCurrency = sourcecurrency
          @SourceAmount = sourceamount
          @TargetCurrency = targetcurrency
          @TargetAmount = targetamount
          @TradeCode = tradecode
          @Status = status
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @TransactionId = params['TransactionId']
          @DeclareId = params['DeclareId']
          @OriginalDeclareId = params['OriginalDeclareId']
          @PayerId = params['PayerId']
          @SourceCurrency = params['SourceCurrency']
          @SourceAmount = params['SourceAmount']
          @TargetCurrency = params['TargetCurrency']
          @TargetAmount = params['TargetAmount']
          @TradeCode = params['TradeCode']
          @Status = params['Status']
        end
      end

      # 成功申报材料查询结果
      class QueryDeclareResult < TencentCloud::Common::AbstractModel
        # @param Data: 成功申报材料查询数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.QueryDeclareData`
        # @param Code: 错误码
        # @type Code: String

        attr_accessor :Data, :Code
        
        def initialize(data=nil, code=nil)
          @Data = data
          @Code = code
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QueryDeclareData.new
            @Data.deserialize(params['Data'])
          end
          @Code = params['Code']
        end
      end

      # QueryDownloadBillURL请求参数结构体
      class QueryDownloadBillURLRequest < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 分配给商户的AppId。进件成功后返给商户方的AppId。
        # @type MerchantAppId: String
        # @param ChannelCode: 渠道编号。固定值：ZSB2B
        # @type ChannelCode: String
        # @param BillDate: 对账单日期，格式yyyyMMdd
        # @type BillDate: String

        attr_accessor :MerchantAppId, :ChannelCode, :BillDate
        
        def initialize(merchantappid=nil, channelcode=nil, billdate=nil)
          @MerchantAppId = merchantappid
          @ChannelCode = channelcode
          @BillDate = billdate
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @ChannelCode = params['ChannelCode']
          @BillDate = params['BillDate']
        end
      end

      # QueryDownloadBillURL返回参数结构体
      class QueryDownloadBillURLResponse < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 分配给商户的AppId。进件成功后返给商户方的AppId。
        # @type MerchantAppId: String
        # @param DownloadUrl: 对账单下载地址。
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantAppId, :DownloadUrl, :RequestId
        
        def initialize(merchantappid=nil, downloadurl=nil, requestid=nil)
          @MerchantAppId = merchantappid
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # 超额信息数据
      class QueryExceedingInfoData < TencentCloud::Common::AbstractModel
        # @param AgentId: 代理商ID。
        # @type AgentId: String
        # @param AgentName: 代理商名称。
        # @type AgentName: String
        # @param AnchorId: 主播ID。当入参Dimension为ANCHOR或ORDER时，该字段才会有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnchorId: String
        # @param AnchorName: 主播名称。当入参Dimension为ANCHOR或ORDER时，该字段才会有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnchorName: String
        # @param OrderId: 订单号。当入参Dimension为ORDER时，该字段才会有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param ExceedingType: 超额类型。目前支持 AGENT_EXCEED_100 和 ANCHOR_EXCEED_100_12 两种类型。
        # @type ExceedingType: String

        attr_accessor :AgentId, :AgentName, :AnchorId, :AnchorName, :OrderId, :ExceedingType
        
        def initialize(agentid=nil, agentname=nil, anchorid=nil, anchorname=nil, orderid=nil, exceedingtype=nil)
          @AgentId = agentid
          @AgentName = agentname
          @AnchorId = anchorid
          @AnchorName = anchorname
          @OrderId = orderid
          @ExceedingType = exceedingtype
        end

        def deserialize(params)
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @AnchorId = params['AnchorId']
          @AnchorName = params['AnchorName']
          @OrderId = params['OrderId']
          @ExceedingType = params['ExceedingType']
        end
      end

      # QueryExceedingInfo请求参数结构体
      class QueryExceedingInfoRequest < TencentCloud::Common::AbstractModel
        # @param TimeStr: 超额日期。格式为yyyy-MM-dd。
        # @type TimeStr: String
        # @param Dimension: 维度。目前支持三个维度: AGENT, ANCHOR, ORDER。不填默认使用AGENT维度。
        # @type Dimension: String
        # @param PageNumber: 分页信息。不填默认Index为1，Count为100。
        # @type PageNumber: :class:`Tencentcloud::Cpdp.v20190820.models.Paging`

        attr_accessor :TimeStr, :Dimension, :PageNumber
        
        def initialize(timestr=nil, dimension=nil, pagenumber=nil)
          @TimeStr = timestr
          @Dimension = dimension
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @TimeStr = params['TimeStr']
          @Dimension = params['Dimension']
          unless params['PageNumber'].nil?
            @PageNumber = Paging.new
            @PageNumber.deserialize(params['PageNumber'])
          end
        end
      end

      # QueryExceedingInfo返回参数结构体
      class QueryExceedingInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 超额信息结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryExceedingInfoResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryExceedingInfoResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 超额信息结果
      class QueryExceedingInfoResult < TencentCloud::Common::AbstractModel
        # @param Count: 记录总数。
        # @type Count: Integer
        # @param Data: 超额信息数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array

        attr_accessor :Count, :Data
        
        def initialize(count=nil, data=nil)
          @Count = count
          @Data = data
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              queryexceedinginfodata_tmp = QueryExceedingInfoData.new
              queryexceedinginfodata_tmp.deserialize(i)
              @Data << queryexceedinginfodata_tmp
            end
          end
        end
      end

      # QueryExchangeRate请求参数结构体
      class QueryExchangeRateRequest < TencentCloud::Common::AbstractModel
        # @param SourceCurrency: 源币种 (默认CNY)
        # @type SourceCurrency: String
        # @param TargetCurrency: 目的币种 (见常见问题-汇出币种)
        # @type TargetCurrency: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :SourceCurrency, :TargetCurrency, :Profile
        
        def initialize(sourcecurrency=nil, targetcurrency=nil, profile=nil)
          @SourceCurrency = sourcecurrency
          @TargetCurrency = targetcurrency
          @Profile = profile
        end

        def deserialize(params)
          @SourceCurrency = params['SourceCurrency']
          @TargetCurrency = params['TargetCurrency']
          @Profile = params['Profile']
        end
      end

      # QueryExchangeRate返回参数结构体
      class QueryExchangeRateResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询汇率结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryExchangerateResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryExchangerateResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询汇率数据
      class QueryExchangerateData < TencentCloud::Common::AbstractModel
        # @param Rate: 汇率
        # @type Rate: String
        # @param SourceCurrency: 源币种
        # @type SourceCurrency: String
        # @param TargetCurrency: 目的币种
        # @type TargetCurrency: String
        # @param RateTime: 汇率时间
        # @type RateTime: String
        # @param BaseCurrency: 基准币种
        # @type BaseCurrency: String

        attr_accessor :Rate, :SourceCurrency, :TargetCurrency, :RateTime, :BaseCurrency
        
        def initialize(rate=nil, sourcecurrency=nil, targetcurrency=nil, ratetime=nil, basecurrency=nil)
          @Rate = rate
          @SourceCurrency = sourcecurrency
          @TargetCurrency = targetcurrency
          @RateTime = ratetime
          @BaseCurrency = basecurrency
        end

        def deserialize(params)
          @Rate = params['Rate']
          @SourceCurrency = params['SourceCurrency']
          @TargetCurrency = params['TargetCurrency']
          @RateTime = params['RateTime']
          @BaseCurrency = params['BaseCurrency']
        end
      end

      # 查询汇率结果
      class QueryExchangerateResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Data: 查询汇率数据数组
        # @type Data: Array

        attr_accessor :Code, :Data
        
        def initialize(code=nil, data=nil)
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              queryexchangeratedata_tmp = QueryExchangerateData.new
              queryexchangeratedata_tmp.deserialize(i)
              @Data << queryexchangeratedata_tmp
            end
          end
        end
      end

      # QueryFundsTransactionDetails请求参数结构体
      class QueryFundsTransactionDetailsRequest < TencentCloud::Common::AbstractModel
        # @param QueryDateType: 查询的交易发生时间类型。
        # __1__：当日
        # __2__：历史
        # @type QueryDateType: String
        # @param QueryTranType: 查询的交易类型。
        # __2__：提现/退款
        # __3__：清分/充值
        # @type QueryTranType: String
        # @param BankAccountNumber: 父账户账号。
        # _平安渠道为资金汇总账号_
        # @type BankAccountNumber: String
        # @param SubAccountNumber: 子账户账号。
        # _平安渠道为见证子账户的账号_
        # @type SubAccountNumber: String
        # @param PageOffSet: 分页号, 起始值为1。
        # @type PageOffSet: String
        # @param QueryStartDate: 查询开始日期，格式：yyyyMMdd。
        # __若是历史查询，则必输，当日查询时，不起作用；开始日期不能超过当前日期__
        # @type QueryStartDate: String
        # @param QueryEndDate: 查询终止日期，格式：yyyyMMdd。
        # __若是历史查询，则必输，当日查询时，不起作用；终止日期不能超过当前日期__
        # @type QueryEndDate: String
        # @param MidasEnvironment: 环境名。
        # __release__: 现网环境
        # __sandbox__: 沙箱环境
        # __development__: 开发环境
        # _缺省: release_
        # @type MidasEnvironment: String

        attr_accessor :QueryDateType, :QueryTranType, :BankAccountNumber, :SubAccountNumber, :PageOffSet, :QueryStartDate, :QueryEndDate, :MidasEnvironment
        
        def initialize(querydatetype=nil, querytrantype=nil, bankaccountnumber=nil, subaccountnumber=nil, pageoffset=nil, querystartdate=nil, queryenddate=nil, midasenvironment=nil)
          @QueryDateType = querydatetype
          @QueryTranType = querytrantype
          @BankAccountNumber = bankaccountnumber
          @SubAccountNumber = subaccountnumber
          @PageOffSet = pageoffset
          @QueryStartDate = querystartdate
          @QueryEndDate = queryenddate
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @QueryDateType = params['QueryDateType']
          @QueryTranType = params['QueryTranType']
          @BankAccountNumber = params['BankAccountNumber']
          @SubAccountNumber = params['SubAccountNumber']
          @PageOffSet = params['PageOffSet']
          @QueryStartDate = params['QueryStartDate']
          @QueryEndDate = params['QueryEndDate']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryFundsTransactionDetails返回参数结构体
      class QueryFundsTransactionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryFundsTransactionDetailsResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryFundsTransactionDetailsResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询会员资金交易信息列表结果
      class QueryFundsTransactionDetailsResult < TencentCloud::Common::AbstractModel
        # @param ResultCount: 本次交易返回查询结果记录数。
        # @type ResultCount: Integer
        # @param TotalCount: 符合业务查询条件的记录总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param EndFlag: 结束标志。
        # __0__：否
        # __1__：是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TranItemArray: 会员资金交易信息数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array

        attr_accessor :ResultCount, :TotalCount, :EndFlag, :TranItemArray
        
        def initialize(resultcount=nil, totalcount=nil, endflag=nil, tranitemarray=nil)
          @ResultCount = resultcount
          @TotalCount = totalcount
          @EndFlag = endflag
          @TranItemArray = tranitemarray
        end

        def deserialize(params)
          @ResultCount = params['ResultCount']
          @TotalCount = params['TotalCount']
          @EndFlag = params['EndFlag']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              fundstransactionitem_tmp = FundsTransactionItem.new
              fundstransactionitem_tmp.deserialize(i)
              @TranItemArray << fundstransactionitem_tmp
            end
          end
        end
      end

      # QueryInvoice请求参数结构体
      class QueryInvoiceRequest < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID
        # 0 : 高灯
        # 1 : 票易通
        # @type InvoicePlatformId: Integer
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param OrderSn: 业务开票号
        # @type OrderSn: String
        # @param IsRed: 发票种类：
        # 0：蓝票
        # 1：红票【该字段默认为0， 如果需要查询红票信息，本字段必须传1，否则可能查询不到需要的发票信息】。
        # @type IsRed: Integer
        # @param Profile: 接入环境。沙箱环境填sandbox。
        # @type Profile: String
        # @param InvoiceChannel: 开票渠道。0：线上渠道，1：线下渠道。不填默认为线上渠道
        # @type InvoiceChannel: Integer
        # @param SellerTaxpayerNum: 当渠道为线下渠道时，必填
        # @type SellerTaxpayerNum: String

        attr_accessor :InvoicePlatformId, :OrderId, :OrderSn, :IsRed, :Profile, :InvoiceChannel, :SellerTaxpayerNum
        
        def initialize(invoiceplatformid=nil, orderid=nil, ordersn=nil, isred=nil, profile=nil, invoicechannel=nil, sellertaxpayernum=nil)
          @InvoicePlatformId = invoiceplatformid
          @OrderId = orderid
          @OrderSn = ordersn
          @IsRed = isred
          @Profile = profile
          @InvoiceChannel = invoicechannel
          @SellerTaxpayerNum = sellertaxpayernum
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          @OrderId = params['OrderId']
          @OrderSn = params['OrderSn']
          @IsRed = params['IsRed']
          @Profile = params['Profile']
          @InvoiceChannel = params['InvoiceChannel']
          @SellerTaxpayerNum = params['SellerTaxpayerNum']
        end
      end

      # QueryInvoice返回参数结构体
      class QueryInvoiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 发票查询结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryInvoiceResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryInvoiceResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询发票结果
      class QueryInvoiceResult < TencentCloud::Common::AbstractModel
        # @param Message: 错误消息
        # @type Message: String
        # @param Code: 错误码
        # @type Code: Integer
        # @param Data: 查询发票数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.QueryInvoiceResultData`
        # @param Order: 订单数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: :class:`Tencentcloud::Cpdp.v20190820.models.Order`

        attr_accessor :Message, :Code, :Data, :Order
        
        def initialize(message=nil, code=nil, data=nil, order=nil)
          @Message = message
          @Code = code
          @Data = data
          @Order = order
        end

        def deserialize(params)
          @Message = params['Message']
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = QueryInvoiceResultData.new
            @Data.deserialize(params['Data'])
          end
          unless params['Order'].nil?
            @Order = Order.new
            @Order.deserialize(params['Order'])
          end
        end
      end

      # 查询发票结果数据
      class QueryInvoiceResultData < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param OrderSn: 业务开票号
        # @type OrderSn: String
        # @param Status: 发票状态
        # @type Status: Integer
        # @param Message: 开票描述
        # @type Message: String
        # @param TicketDate: 开票日期
        # @type TicketDate: String
        # @param TicketSn: 发票号码
        # @type TicketSn: String
        # @param TicketCode: 发票代码
        # @type TicketCode: String
        # @param CheckCode: 检验码
        # @type CheckCode: String
        # @param AmountWithTax: 含税金额(元)
        # @type AmountWithTax: String
        # @param AmountWithoutTax: 不含税金额(元)
        # @type AmountWithoutTax: String
        # @param TaxAmount: 税额(元)
        # @type TaxAmount: String
        # @param IsRedWashed: 是否被红冲
        # @type IsRedWashed: Integer
        # @param PdfUrl: pdf地址
        # @type PdfUrl: String
        # @param ImageUrl: png地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: String

        attr_accessor :OrderId, :OrderSn, :Status, :Message, :TicketDate, :TicketSn, :TicketCode, :CheckCode, :AmountWithTax, :AmountWithoutTax, :TaxAmount, :IsRedWashed, :PdfUrl, :ImageUrl
        
        def initialize(orderid=nil, ordersn=nil, status=nil, message=nil, ticketdate=nil, ticketsn=nil, ticketcode=nil, checkcode=nil, amountwithtax=nil, amountwithouttax=nil, taxamount=nil, isredwashed=nil, pdfurl=nil, imageurl=nil)
          @OrderId = orderid
          @OrderSn = ordersn
          @Status = status
          @Message = message
          @TicketDate = ticketdate
          @TicketSn = ticketsn
          @TicketCode = ticketcode
          @CheckCode = checkcode
          @AmountWithTax = amountwithtax
          @AmountWithoutTax = amountwithouttax
          @TaxAmount = taxamount
          @IsRedWashed = isredwashed
          @PdfUrl = pdfurl
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @OrderSn = params['OrderSn']
          @Status = params['Status']
          @Message = params['Message']
          @TicketDate = params['TicketDate']
          @TicketSn = params['TicketSn']
          @TicketCode = params['TicketCode']
          @CheckCode = params['CheckCode']
          @AmountWithTax = params['AmountWithTax']
          @AmountWithoutTax = params['AmountWithoutTax']
          @TaxAmount = params['TaxAmount']
          @IsRedWashed = params['IsRedWashed']
          @PdfUrl = params['PdfUrl']
          @ImageUrl = params['ImageUrl']
        end
      end

      # QueryInvoiceV2请求参数结构体
      class QueryInvoiceV2Request < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID
        # 0 : 高灯
        # 1 : 票易通
        # @type InvoicePlatformId: Integer
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param IsRed: 发票种类：
        # 0：蓝票
        # 1：红票【该字段默认为0， 如果需要查询红票信息，本字段必须传1，否则可能查询不到需要的发票信息】。
        # @type IsRed: Integer
        # @param Profile: 接入环境。沙箱环境填sandbox。
        # @type Profile: String
        # @param InvoiceChannel: 开票渠道。0：线上渠道，1：线下渠道。不填默认为线上渠道
        # @type InvoiceChannel: Integer
        # @param SellerTaxpayerNum: 当渠道为线下渠道时，必填
        # @type SellerTaxpayerNum: String

        attr_accessor :InvoicePlatformId, :OrderId, :IsRed, :Profile, :InvoiceChannel, :SellerTaxpayerNum
        
        def initialize(invoiceplatformid=nil, orderid=nil, isred=nil, profile=nil, invoicechannel=nil, sellertaxpayernum=nil)
          @InvoicePlatformId = invoiceplatformid
          @OrderId = orderid
          @IsRed = isred
          @Profile = profile
          @InvoiceChannel = invoicechannel
          @SellerTaxpayerNum = sellertaxpayernum
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          @OrderId = params['OrderId']
          @IsRed = params['IsRed']
          @Profile = params['Profile']
          @InvoiceChannel = params['InvoiceChannel']
          @SellerTaxpayerNum = params['SellerTaxpayerNum']
        end
      end

      # QueryInvoiceV2返回参数结构体
      class QueryInvoiceV2Response < TencentCloud::Common::AbstractModel
        # @param Result: 发票查询结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryInvoiceResultData`
        # @param ErrCode: 错误码
        # @type ErrCode: String
        # @param ErrMessage: 错误消息
        # @type ErrMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrCode, :ErrMessage, :RequestId
        
        def initialize(result=nil, errcode=nil, errmessage=nil, requestid=nil)
          @Result = result
          @ErrCode = errcode
          @ErrMessage = errmessage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryInvoiceResultData.new
            @Result.deserialize(params['Result'])
          end
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @RequestId = params['RequestId']
        end
      end

      # 聚鑫商户余额查询输出项
      class QueryItem < TencentCloud::Common::AbstractModel
        # @param SubAcctNo: 子商户账户
        # @type SubAcctNo: String
        # @param SubAcctProperty: 子账户属性
        # 1：普通会员子账号
        # 2：挂账子账号
        # 3：手续费子账号
        # 4：利息子账号
        # 5：平台担保子账号
        # @type SubAcctProperty: String
        # @param SubMchId: 业务平台的子商户Id，唯一
        # @type SubMchId: String
        # @param SubAcctName: 子账户名称
        # @type SubAcctName: String
        # @param AcctAvailBal: 账户可用余额
        # @type AcctAvailBal: String
        # @param CashAmt: 可提现金额
        # @type CashAmt: String
        # @param MaintenanceDate: 维护日期 开户日期或修改日期
        # @type MaintenanceDate: String

        attr_accessor :SubAcctNo, :SubAcctProperty, :SubMchId, :SubAcctName, :AcctAvailBal, :CashAmt, :MaintenanceDate
        
        def initialize(subacctno=nil, subacctproperty=nil, submchid=nil, subacctname=nil, acctavailbal=nil, cashamt=nil, maintenancedate=nil)
          @SubAcctNo = subacctno
          @SubAcctProperty = subacctproperty
          @SubMchId = submchid
          @SubAcctName = subacctname
          @AcctAvailBal = acctavailbal
          @CashAmt = cashamt
          @MaintenanceDate = maintenancedate
        end

        def deserialize(params)
          @SubAcctNo = params['SubAcctNo']
          @SubAcctProperty = params['SubAcctProperty']
          @SubMchId = params['SubMchId']
          @SubAcctName = params['SubAcctName']
          @AcctAvailBal = params['AcctAvailBal']
          @CashAmt = params['CashAmt']
          @MaintenanceDate = params['MaintenanceDate']
        end
      end

      # QueryMaliciousRegistration请求参数结构体
      class QueryMaliciousRegistrationRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户ID，调用方使用的商户号信息，与商户主体一一对应
        # @type MerchantId: String
        # @param MerchantName: 商户名称
        # @type MerchantName: String
        # @param CompanyName: 企业工商注册标准名称
        # @type CompanyName: String
        # @param RegAddress: 注册地址
        # @type RegAddress: String
        # @param RegTime: 商户进件Unix时间，单位秒（非企业注册工商时间)
        # @type RegTime: Integer
        # @param USCI: 统一社会信用代码
        # @type USCI: String
        # @param RegNumber: 工商注册码，匹配优先级为Usci>RegNumber>CompanyName
        # @type RegNumber: String
        # @param EncryptedPhoneNumber: 手机号码32位MD5加密结果，全大写，格式为0086-13812345678
        # @type EncryptedPhoneNumber: String
        # @param EncryptedEmailAddress: 邮箱32位MD5加密结果，全大写
        # @type EncryptedEmailAddress: String
        # @param EncryptedPersonId: 身份证MD5加密结果，最后一位x大写
        # @type EncryptedPersonId: String
        # @param Ip: 填写信息设备的IP地址
        # @type Ip: String
        # @param Channel: 进件渠道号，客户自行编码即可
        # @type Channel: String

        attr_accessor :MerchantId, :MerchantName, :CompanyName, :RegAddress, :RegTime, :USCI, :RegNumber, :EncryptedPhoneNumber, :EncryptedEmailAddress, :EncryptedPersonId, :Ip, :Channel
        
        def initialize(merchantid=nil, merchantname=nil, companyname=nil, regaddress=nil, regtime=nil, usci=nil, regnumber=nil, encryptedphonenumber=nil, encryptedemailaddress=nil, encryptedpersonid=nil, ip=nil, channel=nil)
          @MerchantId = merchantid
          @MerchantName = merchantname
          @CompanyName = companyname
          @RegAddress = regaddress
          @RegTime = regtime
          @USCI = usci
          @RegNumber = regnumber
          @EncryptedPhoneNumber = encryptedphonenumber
          @EncryptedEmailAddress = encryptedemailaddress
          @EncryptedPersonId = encryptedpersonid
          @Ip = ip
          @Channel = channel
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @MerchantName = params['MerchantName']
          @CompanyName = params['CompanyName']
          @RegAddress = params['RegAddress']
          @RegTime = params['RegTime']
          @USCI = params['USCI']
          @RegNumber = params['RegNumber']
          @EncryptedPhoneNumber = params['EncryptedPhoneNumber']
          @EncryptedEmailAddress = params['EncryptedEmailAddress']
          @EncryptedPersonId = params['EncryptedPersonId']
          @Ip = params['Ip']
          @Channel = params['Channel']
        end
      end

      # QueryMaliciousRegistration返回参数结构体
      class QueryMaliciousRegistrationResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # @type ErrCode: String
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param Result: 商户风险信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.MerchantRiskInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMsg, :Result, :RequestId
        
        def initialize(errcode=nil, errmsg=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMsg = errmsg
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['Result'].nil?
            @Result = MerchantRiskInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryMemberBind请求参数结构体
      class QueryMemberBindRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param QueryFlag: STRING(4)，查询标志（1: 全部会员; 2: 单个会员; 3: 单个会员的证件信息）
        # @type QueryFlag: String
        # @param PageNum: STRING (10)，页码（起始值为1，每次最多返回20条记录，第二页返回的记录数为第21至40条记录，第三页为41至60条记录，顺序均按照建立时间的先后）
        # @type PageNum: String
        # @param SubAcctNo: STRING(50)，见证子账户的账号（若SelectFlag为2或3时，子账户账号必输）
        # @type SubAcctNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :QueryFlag, :PageNum, :SubAcctNo, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, queryflag=nil, pagenum=nil, subacctno=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @QueryFlag = queryflag
          @PageNum = pagenum
          @SubAcctNo = subacctno
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @QueryFlag = params['QueryFlag']
          @PageNum = params['PageNum']
          @SubAcctNo = params['SubAcctNo']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QueryMemberBind返回参数结构体
      class QueryMemberBindResponse < TencentCloud::Common::AbstractModel
        # @param ResultNum: STRING (10)，本次交易返回查询结果记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNum: String
        # @param StartRecordNo: STRING(30)，起始记录号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartRecordNo: String
        # @param EndFlag: STRING(2)，结束标志（0: 否; 1: 是）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TotalNum: STRING (10)，符合业务查询条件的记录总数（重复次数，一次最多返回20条记录）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: String
        # @param TranItemArray: 交易信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultNum, :StartRecordNo, :EndFlag, :TotalNum, :TranItemArray, :ReservedMsg, :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :RequestId
        
        def initialize(resultnum=nil, startrecordno=nil, endflag=nil, totalnum=nil, tranitemarray=nil, reservedmsg=nil, txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, requestid=nil)
          @ResultNum = resultnum
          @StartRecordNo = startrecordno
          @EndFlag = endflag
          @TotalNum = totalnum
          @TranItemArray = tranitemarray
          @ReservedMsg = reservedmsg
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultNum = params['ResultNum']
          @StartRecordNo = params['StartRecordNo']
          @EndFlag = params['EndFlag']
          @TotalNum = params['TotalNum']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              tranitem_tmp = TranItem.new
              tranitem_tmp.deserialize(i)
              @TranItemArray << tranitem_tmp
            end
          end
          @ReservedMsg = params['ReservedMsg']
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @RequestId = params['RequestId']
        end
      end

      # QueryMemberTransactionDetails请求参数结构体
      class QueryMemberTransactionDetailsRequest < TencentCloud::Common::AbstractModel
        # @param QueryDateType: 查询的交易发生时间类型。
        # __1__：当日
        # __2__：历史
        # @type QueryDateType: String
        # @param QueryTranType: 查询的交易类型。
        # __1__：全部
        # __2__：转出
        # __3__：转入
        # @type QueryTranType: String
        # @param BankAccountNumber: 父账户账号。
        # _平安渠道为资金汇总账号_
        # @type BankAccountNumber: String
        # @param SubAccountNumber: 子账户账号。
        # _平安渠道为见证子账户的账号_
        # @type SubAccountNumber: String
        # @param PageOffSet: 分页号, 起始值为1。
        # @type PageOffSet: String
        # @param QueryStartDate: 查询开始日期，格式：yyyyMMdd。
        # __若是历史查询，则必输，当日查询时，不起作用；开始日期不能超过当前日期__
        # @type QueryStartDate: String
        # @param QueryEndDate: 查询终止日期，格式：yyyyMMdd。
        # __若是历史查询，则必输，当日查询时，不起作用；终止日期不能超过当前日期__
        # @type QueryEndDate: String
        # @param MidasEnvironment: 环境名。
        # __release__: 现网环境
        # __sandbox__: 沙箱环境
        # __development__: 开发环境
        # _缺省: release_
        # @type MidasEnvironment: String

        attr_accessor :QueryDateType, :QueryTranType, :BankAccountNumber, :SubAccountNumber, :PageOffSet, :QueryStartDate, :QueryEndDate, :MidasEnvironment
        
        def initialize(querydatetype=nil, querytrantype=nil, bankaccountnumber=nil, subaccountnumber=nil, pageoffset=nil, querystartdate=nil, queryenddate=nil, midasenvironment=nil)
          @QueryDateType = querydatetype
          @QueryTranType = querytrantype
          @BankAccountNumber = bankaccountnumber
          @SubAccountNumber = subaccountnumber
          @PageOffSet = pageoffset
          @QueryStartDate = querystartdate
          @QueryEndDate = queryenddate
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @QueryDateType = params['QueryDateType']
          @QueryTranType = params['QueryTranType']
          @BankAccountNumber = params['BankAccountNumber']
          @SubAccountNumber = params['SubAccountNumber']
          @PageOffSet = params['PageOffSet']
          @QueryStartDate = params['QueryStartDate']
          @QueryEndDate = params['QueryEndDate']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryMemberTransactionDetails返回参数结构体
      class QueryMemberTransactionDetailsResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryMemberTransactionDetailsResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryMemberTransactionDetailsResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 聚鑫-查询会员间交易信息列表结果
      class QueryMemberTransactionDetailsResult < TencentCloud::Common::AbstractModel
        # @param ResultCount: 本次交易返回查询结果记录数。
        # @type ResultCount: Integer
        # @param TotalCount: 符合业务查询条件的记录总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param EndFlag: 结束标志。
        # __0__：否
        # __1__：是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndFlag: String
        # @param TranItemArray: 会员间交易信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array

        attr_accessor :ResultCount, :TotalCount, :EndFlag, :TranItemArray
        
        def initialize(resultcount=nil, totalcount=nil, endflag=nil, tranitemarray=nil)
          @ResultCount = resultcount
          @TotalCount = totalcount
          @EndFlag = endflag
          @TranItemArray = tranitemarray
        end

        def deserialize(params)
          @ResultCount = params['ResultCount']
          @TotalCount = params['TotalCount']
          @EndFlag = params['EndFlag']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              membertransactionitem_tmp = MemberTransactionItem.new
              membertransactionitem_tmp.deserialize(i)
              @TranItemArray << membertransactionitem_tmp
            end
          end
        end
      end

      # QueryMemberTransaction请求参数结构体
      class QueryMemberTransactionRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param FunctionFlag: STRING(2)，功能标志（1: 下单预支付; 2: 确认并付款; 3: 退款; 6: 直接支付T+1; 9: 直接支付T+0）
        # @type FunctionFlag: String
        # @param OutSubAcctNo: STRING(50)，转出方的见证子账户的账号（付款方）
        # @type OutSubAcctNo: String
        # @param OutMemberCode: STRING(32)，转出方的交易网会员代码
        # @type OutMemberCode: String
        # @param OutSubAcctName: STRING(150)，转出方的见证子账户的户名（户名是绑卡时上送的账户名称，如果未绑卡，就送OpenCustAcctId接口上送的用户昵称UserNickname）
        # @type OutSubAcctName: String
        # @param InSubAcctNo: STRING(50)，转入方的见证子账户的账号（收款方）
        # @type InSubAcctNo: String
        # @param InMemberCode: STRING(32)，转入方的交易网会员代码
        # @type InMemberCode: String
        # @param InSubAcctName: STRING(150)，转入方的见证子账户的户名（户名是绑卡时上送的账户名称，如果未绑卡，就送OpenCustAcctId接口上送的用户昵称UserNickname）
        # @type InSubAcctName: String
        # @param TranAmt: STRING(20)，交易金额
        # @type TranAmt: String
        # @param TranFee: STRING(20)，交易费用（平台收取交易费用）
        # @type TranFee: String
        # @param TranType: STRING(20)，交易类型（01: 普通交易）
        # @type TranType: String
        # @param Ccy: STRING(3)，币种（默认: RMB）
        # @type Ccy: String
        # @param OrderNo: STRING(50)，订单号（功能标志为1,2,3时必输）
        # @type OrderNo: String
        # @param OrderContent: STRING(500)，订单内容
        # @type OrderContent: String
        # @param Remark: STRING(300)，备注（建议可送订单号，可在对账文件的备注字段获取到）
        # @type Remark: String
        # @param ReservedMsg: STRING(1027)，保留域（若需短信验证码则此项必输短信指令号）
        # @type ReservedMsg: String
        # @param WebSign: STRING(300)，网银签名（若需短信验证码则此项必输）
        # @type WebSign: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FunctionFlag, :OutSubAcctNo, :OutMemberCode, :OutSubAcctName, :InSubAcctNo, :InMemberCode, :InSubAcctName, :TranAmt, :TranFee, :TranType, :Ccy, :OrderNo, :OrderContent, :Remark, :ReservedMsg, :WebSign, :Profile
        
        def initialize(mrchcode=nil, functionflag=nil, outsubacctno=nil, outmembercode=nil, outsubacctname=nil, insubacctno=nil, inmembercode=nil, insubacctname=nil, tranamt=nil, tranfee=nil, trantype=nil, ccy=nil, orderno=nil, ordercontent=nil, remark=nil, reservedmsg=nil, websign=nil, profile=nil)
          @MrchCode = mrchcode
          @FunctionFlag = functionflag
          @OutSubAcctNo = outsubacctno
          @OutMemberCode = outmembercode
          @OutSubAcctName = outsubacctname
          @InSubAcctNo = insubacctno
          @InMemberCode = inmembercode
          @InSubAcctName = insubacctname
          @TranAmt = tranamt
          @TranFee = tranfee
          @TranType = trantype
          @Ccy = ccy
          @OrderNo = orderno
          @OrderContent = ordercontent
          @Remark = remark
          @ReservedMsg = reservedmsg
          @WebSign = websign
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FunctionFlag = params['FunctionFlag']
          @OutSubAcctNo = params['OutSubAcctNo']
          @OutMemberCode = params['OutMemberCode']
          @OutSubAcctName = params['OutSubAcctName']
          @InSubAcctNo = params['InSubAcctNo']
          @InMemberCode = params['InMemberCode']
          @InSubAcctName = params['InSubAcctName']
          @TranAmt = params['TranAmt']
          @TranFee = params['TranFee']
          @TranType = params['TranType']
          @Ccy = params['Ccy']
          @OrderNo = params['OrderNo']
          @OrderContent = params['OrderContent']
          @Remark = params['Remark']
          @ReservedMsg = params['ReservedMsg']
          @WebSign = params['WebSign']
          @Profile = params['Profile']
        end
      end

      # QueryMemberTransaction返回参数结构体
      class QueryMemberTransactionResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号（即电商见证宝系统生成的流水号，可关联具体一笔请求）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :FrontSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, frontseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @FrontSeqNo = frontseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @FrontSeqNo = params['FrontSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 对接账户余额查询数据
      class QueryMerchantBalanceData < TencentCloud::Common::AbstractModel
        # @param Currency: 余额币种
        # @type Currency: String
        # @param Balance: 账户余额
        # @type Balance: String
        # @param MerchantId: 商户ID
        # @type MerchantId: String

        attr_accessor :Currency, :Balance, :MerchantId
        
        def initialize(currency=nil, balance=nil, merchantid=nil)
          @Currency = currency
          @Balance = balance
          @MerchantId = merchantid
        end

        def deserialize(params)
          @Currency = params['Currency']
          @Balance = params['Balance']
          @MerchantId = params['MerchantId']
        end
      end

      # QueryMerchantBalance请求参数结构体
      class QueryMerchantBalanceRequest < TencentCloud::Common::AbstractModel
        # @param Currency: 余额币种
        # @type Currency: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :Currency, :Profile
        
        def initialize(currency=nil, profile=nil)
          @Currency = currency
          @Profile = profile
        end

        def deserialize(params)
          @Currency = params['Currency']
          @Profile = params['Profile']
        end
      end

      # QueryMerchantBalance返回参数结构体
      class QueryMerchantBalanceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 对接方账户余额查询结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryMerchantBalanceResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryMerchantBalanceResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 对接账户余额查询结果
      class QueryMerchantBalanceResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Data: 对接账户余额查询数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.QueryMerchantBalanceData`

        attr_accessor :Code, :Data
        
        def initialize(code=nil, data=nil)
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = QueryMerchantBalanceData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # QueryMerchantClassification请求参数结构体
      class QueryMerchantClassificationRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Profile
        
        def initialize(openid=nil, openkey=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Profile = params['Profile']
        end
      end

      # QueryMerchantClassification返回参数结构体
      class QueryMerchantClassificationResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 查询商户分类响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              merchantclassificationid_tmp = MerchantClassificationId.new
              merchantclassificationid_tmp.deserialize(i)
              @Result << merchantclassificationid_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryMerchantInfoForManagement请求参数结构体
      class QueryMerchantInfoForManagementRequest < TencentCloud::Common::AbstractModel
        # @param InvoicePlatformId: 开票平台ID
        # @type InvoicePlatformId: Integer
        # @param Offset: 页码
        # @type Offset: Integer
        # @param Limit: 页大小
        # @type Limit: Integer
        # @param Profile: 接入环境。沙箱环境填sandbox。
        # @type Profile: String

        attr_accessor :InvoicePlatformId, :Offset, :Limit, :Profile
        
        def initialize(invoiceplatformid=nil, offset=nil, limit=nil, profile=nil)
          @InvoicePlatformId = invoiceplatformid
          @Offset = offset
          @Limit = limit
          @Profile = profile
        end

        def deserialize(params)
          @InvoicePlatformId = params['InvoicePlatformId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Profile = params['Profile']
        end
      end

      # QueryMerchantInfoForManagement返回参数结构体
      class QueryMerchantInfoForManagementResponse < TencentCloud::Common::AbstractModel
        # @param Result: 商户结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.MerchantManagementResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = MerchantManagementResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryMerchantOrder请求参数结构体
      class QueryMerchantOrderRequest < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 进件成功后返给商户方的AppId。
        # @type MerchantAppId: String
        # @param OrderNo: 平台流水号。平台唯一订单号。
        # @type OrderNo: String

        attr_accessor :MerchantAppId, :OrderNo
        
        def initialize(merchantappid=nil, orderno=nil)
          @MerchantAppId = merchantappid
          @OrderNo = orderno
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @OrderNo = params['OrderNo']
        end
      end

      # QueryMerchantOrder返回参数结构体
      class QueryMerchantOrderResponse < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 进件成功后返给商户方的AppId。
        # @type MerchantAppId: String
        # @param OrderNo: 平台流水号。平台唯一订单号。
        # @type OrderNo: String
        # @param Status: 订单支付状态。0-下单失败 1-下单成功未支付 2-支付成功 3-支付失败 4-退款中 5-退款成功 6-退款失败 7-待付款 8-待确认。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantAppId, :OrderNo, :Status, :RequestId
        
        def initialize(merchantappid=nil, orderno=nil, status=nil, requestid=nil)
          @MerchantAppId = merchantappid
          @OrderNo = orderno
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @OrderNo = params['OrderNo']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # QueryMerchantPayWayList请求参数结构体
      class QueryMerchantPayWayListRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param PayType: 支付类型，逗号分隔。1-现金，2-主扫，3-被扫，4-JSAPI。
        # @type PayType: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :PayType, :Profile
        
        def initialize(openid=nil, openkey=nil, paytype=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @PayType = paytype
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @PayType = params['PayType']
          @Profile = params['Profile']
        end
      end

      # QueryMerchantPayWayList返回参数结构体
      class QueryMerchantPayWayListResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 业务系统返回码，0表示成功，其他表示失败。
        # @type ErrCode: String
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param Result: 查询商户支付方式列表结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              merchantpaywaydata_tmp = MerchantPayWayData.new
              merchantpaywaydata_tmp.deserialize(i)
              @Result << merchantpaywaydata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryMerchant请求参数结构体
      class QueryMerchantRequest < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 进件成功后返给商户方的 AppId
        # @type MerchantAppId: String

        attr_accessor :MerchantAppId
        
        def initialize(merchantappid=nil)
          @MerchantAppId = merchantappid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
        end
      end

      # QueryMerchant返回参数结构体
      class QueryMerchantResponse < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 分配给商户的 AppId，该 AppId 为后续各项 交易的商户标识。
        # @type MerchantAppId: String
        # @param MerchantName: 收款商户名称。
        # @type MerchantName: String
        # @param BusinessPayFlag: B2B 支付标志。是否开通 B2B 支付， 1:开通 0:不开通。
        # @type BusinessPayFlag: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantAppId, :MerchantName, :BusinessPayFlag, :RequestId
        
        def initialize(merchantappid=nil, merchantname=nil, businesspayflag=nil, requestid=nil)
          @MerchantAppId = merchantappid
          @MerchantName = merchantname
          @BusinessPayFlag = businesspayflag
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @MerchantName = params['MerchantName']
          @BusinessPayFlag = params['BusinessPayFlag']
          @RequestId = params['RequestId']
        end
      end

      # QueryOpenBankBindExternalSubMerchantBankAccount请求参数结构体
      class QueryOpenBankBindExternalSubMerchantBankAccountRequest < TencentCloud::Common::AbstractModel
        # @param ChannelSubMerchantId: 渠道子商户ID。
        # @type ChannelSubMerchantId: String
        # @param ChannelMerchantId: 渠道商户ID。
        # @type ChannelMerchantId: String
        # @param ChannelApplyId: 渠道申请编号，与外部申请编号二者选填其一。
        # @type ChannelApplyId: String
        # @param Environment: 环境类型。
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String
        # @param OutApplyId: 外部申请编号，与渠道申请编号二者选填其一。
        # @type OutApplyId: String

        attr_accessor :ChannelSubMerchantId, :ChannelMerchantId, :ChannelApplyId, :Environment, :OutApplyId
        
        def initialize(channelsubmerchantid=nil, channelmerchantid=nil, channelapplyid=nil, environment=nil, outapplyid=nil)
          @ChannelSubMerchantId = channelsubmerchantid
          @ChannelMerchantId = channelmerchantid
          @ChannelApplyId = channelapplyid
          @Environment = environment
          @OutApplyId = outapplyid
        end

        def deserialize(params)
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelApplyId = params['ChannelApplyId']
          @Environment = params['Environment']
          @OutApplyId = params['OutApplyId']
        end
      end

      # QueryOpenBankBindExternalSubMerchantBankAccount返回参数结构体
      class QueryOpenBankBindExternalSubMerchantBankAccountResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOpenBankBindExternalSubMerchantBankAccountResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryOpenBankBindExternalSubMerchantBankAccountResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 子商户银行卡绑定结果查询返回结果
      class QueryOpenBankBindExternalSubMerchantBankAccountResult < TencentCloud::Common::AbstractModel
        # @param ExternalSubMerchantBankAccountReturnData: 渠道子商户收款方银行卡信息, 为JSON格式字符串（绑定成功状态下返回）。详情见附录-复杂类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalSubMerchantBankAccountReturnData: String
        # @param ChannelApplyId: 渠道申请编号。
        # @type ChannelApplyId: String
        # @param BindStatus: 绑定状态。
        # __SUCCESS__: 绑定成功
        # __FAILED__: 绑定失败
        # __PROCESSING__: 绑定中
        # @type BindStatus: String
        # @param BindMessage: 绑定返回描述, 例如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindMessage: String
        # @param BindSerialNo: 绑卡序列号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindSerialNo: String

        attr_accessor :ExternalSubMerchantBankAccountReturnData, :ChannelApplyId, :BindStatus, :BindMessage, :BindSerialNo
        
        def initialize(externalsubmerchantbankaccountreturndata=nil, channelapplyid=nil, bindstatus=nil, bindmessage=nil, bindserialno=nil)
          @ExternalSubMerchantBankAccountReturnData = externalsubmerchantbankaccountreturndata
          @ChannelApplyId = channelapplyid
          @BindStatus = bindstatus
          @BindMessage = bindmessage
          @BindSerialNo = bindserialno
        end

        def deserialize(params)
          @ExternalSubMerchantBankAccountReturnData = params['ExternalSubMerchantBankAccountReturnData']
          @ChannelApplyId = params['ChannelApplyId']
          @BindStatus = params['BindStatus']
          @BindMessage = params['BindMessage']
          @BindSerialNo = params['BindSerialNo']
        end
      end

      # QueryOpenBankDownLoadUrl请求参数结构体
      class QueryOpenBankDownLoadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户号，外部接入平台方入驻云企付平台后下发。
        # @type ChannelMerchantId: String
        # @param BillDate: 账单日期,yyyy-MM-dd。
        # @type BillDate: String
        # @param BillType: 账单类型，默认交易账单。
        # @type BillType: String
        # @param Environment: 接入环境。沙箱环境填 sandbox。缺省默认调用生产环境。
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :BillDate, :BillType, :Environment
        
        def initialize(channelmerchantid=nil, billdate=nil, billtype=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @BillDate = billdate
          @BillType = billtype
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @BillDate = params['BillDate']
          @BillType = params['BillType']
          @Environment = params['Environment']
        end
      end

      # QueryOpenBankDownLoadUrl返回参数结构体
      class QueryOpenBankDownLoadUrlResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 业务系统返回码，SUCCESS表示成功，其他表示失败。
        # @type ErrCode: String
        # @param ErrMessage: 业务系统返回消息。
        # @type ErrMessage: String
        # @param Result: 查询对账文件下载响应对象。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOpenBankDownLoadUrlResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryOpenBankDownLoadUrlResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云企付-查询对账单文件下载url
      class QueryOpenBankDownLoadUrlResult < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 供下一步请求账单文件的下载地址。
        # @type DownloadUrl: String
        # @param HashValue: 从 download_url 下载的文件的哈希值，用于校验文件的完整性。
        # @type HashValue: String
        # @param HashType: 从 download_url 下载的文件的哈希类型，用于校验文件的完整性。
        # @type HashType: String

        attr_accessor :DownloadUrl, :HashValue, :HashType
        
        def initialize(downloadurl=nil, hashvalue=nil, hashtype=nil)
          @DownloadUrl = downloadurl
          @HashValue = hashvalue
          @HashType = hashtype
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @HashValue = params['HashValue']
          @HashType = params['HashType']
        end
      end

      # 第三方子商户银行卡列表查询返回数据
      class QueryOpenBankExternalSubMerchantBankAccountData < TencentCloud::Common::AbstractModel
        # @param AccountBank: 开户银行。
        # @type AccountBank: String
        # @param BindSerialNo: 绑卡序列号。
        # @type BindSerialNo: String
        # @param AccountType: 账号类型。
        # __COLLECT_MONEY__: 收款卡
        # __PAYMENT__: 付款卡
        # @type AccountType: String
        # @param BankBranchId: 支行号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankBranchId: String
        # @param AccountNumberLastFour: 银行卡卡后四位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountNumberLastFour: String

        attr_accessor :AccountBank, :BindSerialNo, :AccountType, :BankBranchId, :AccountNumberLastFour
        
        def initialize(accountbank=nil, bindserialno=nil, accounttype=nil, bankbranchid=nil, accountnumberlastfour=nil)
          @AccountBank = accountbank
          @BindSerialNo = bindserialno
          @AccountType = accounttype
          @BankBranchId = bankbranchid
          @AccountNumberLastFour = accountnumberlastfour
        end

        def deserialize(params)
          @AccountBank = params['AccountBank']
          @BindSerialNo = params['BindSerialNo']
          @AccountType = params['AccountType']
          @BankBranchId = params['BankBranchId']
          @AccountNumberLastFour = params['AccountNumberLastFour']
        end
      end

      # QueryOpenBankExternalSubMerchantBankAccount请求参数结构体
      class QueryOpenBankExternalSubMerchantBankAccountRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户ID。
        # @type ChannelMerchantId: String
        # @param ChannelSubMerchantId: 渠道子商户ID。
        # @type ChannelSubMerchantId: String
        # @param ChannelName: 渠道名称。
        # __TENPAY__: 商企付
        # __WECHAT__: 微信支付
        # __ALIPAY__: 支付宝
        # @type ChannelName: String
        # @param PaymentMethod: 支付方式。
        # __EBANK_PAYMENT__: ebank支付
        # __OPENBANK_PAYMENT__: openbank支付
        # @type PaymentMethod: String
        # @param Environment: 环境类型。
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :ChannelSubMerchantId, :ChannelName, :PaymentMethod, :Environment
        
        def initialize(channelmerchantid=nil, channelsubmerchantid=nil, channelname=nil, paymentmethod=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @ChannelSubMerchantId = channelsubmerchantid
          @ChannelName = channelname
          @PaymentMethod = paymentmethod
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @ChannelName = params['ChannelName']
          @PaymentMethod = params['PaymentMethod']
          @Environment = params['Environment']
        end
      end

      # QueryOpenBankExternalSubMerchantBankAccount返回参数结构体
      class QueryOpenBankExternalSubMerchantBankAccountResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOpenBankExternalSubMerchantBankAccountResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryOpenBankExternalSubMerchantBankAccountResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 第三方子商户银行卡列表查询返回结果
      class QueryOpenBankExternalSubMerchantBankAccountResult < TencentCloud::Common::AbstractModel
        # @param AccountList: 第三方渠道子商户查询银行账户返回。
        # @type AccountList: Array

        attr_accessor :AccountList
        
        def initialize(accountlist=nil)
          @AccountList = accountlist
        end

        def deserialize(params)
          unless params['AccountList'].nil?
            @AccountList = []
            params['AccountList'].each do |i|
              queryopenbankexternalsubmerchantbankaccountdata_tmp = QueryOpenBankExternalSubMerchantBankAccountData.new
              queryopenbankexternalsubmerchantbankaccountdata_tmp.deserialize(i)
              @AccountList << queryopenbankexternalsubmerchantbankaccountdata_tmp
            end
          end
        end
      end

      # QueryOpenBankExternalSubMerchantRegistration请求参数结构体
      class QueryOpenBankExternalSubMerchantRegistrationRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户号。
        # @type ChannelMerchantId: String
        # @param ChannelRegistrationNo: 渠道进件号，与外部进件号二者选填其一。
        # @type ChannelRegistrationNo: String
        # @param OutRegistrationNo: 外部进件号，与渠道进件号二者选填其一。
        # @type OutRegistrationNo: String
        # @param Environment: 环境类型
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :ChannelRegistrationNo, :OutRegistrationNo, :Environment
        
        def initialize(channelmerchantid=nil, channelregistrationno=nil, outregistrationno=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @ChannelRegistrationNo = channelregistrationno
          @OutRegistrationNo = outregistrationno
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelRegistrationNo = params['ChannelRegistrationNo']
          @OutRegistrationNo = params['OutRegistrationNo']
          @Environment = params['Environment']
        end
      end

      # QueryOpenBankExternalSubMerchantRegistration返回参数结构体
      class QueryOpenBankExternalSubMerchantRegistrationResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOpenBankExternalSubMerchantRegistrationResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryOpenBankExternalSubMerchantRegistrationResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 第三方子商户进件结果查询返回结果
      class QueryOpenBankExternalSubMerchantRegistrationResult < TencentCloud::Common::AbstractModel
        # @param RegistrationStatus: 进件状态。
        # __SUCCESS__: 进件成功
        # __FAILED__: 进件失败
        # __PROCESSING__: 进件中
        # @type RegistrationStatus: String
        # @param RegistrationMessage: 进件返回描述, 例如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistrationMessage: String
        # @param ChannelRegistrationNo: 渠道进件号。
        # @type ChannelRegistrationNo: String
        # @param ChannelSubMerchantId: 渠道子商户ID（进件成功返回）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelSubMerchantId: String
        # @param OutSubMerchantName: 外部子商户名称（进件成功返回）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutSubMerchantName: String
        # @param ChannelName: 渠道名称（进件成功返回）。
        # __TENPAY__: 商企付
        # __WECHAT__: 微信支付
        # __ALIPAY__: 支付宝
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelName: String
        # @param PaymentMethod: 支付方式（进件成功返回）。
        # __EBANK_PAYMENT__: ebank支付
        # __OPENBANK_PAYMENT__: openbank支付
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentMethod: String
        # @param BusinessLicenseNumber: 社会信用代码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessLicenseNumber: String
        # @param LegalName: 法人姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LegalName: String
        # @param ExternalReturnData: 第三方渠道查询进件返回数据。详情见附录-复杂类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnData: String

        attr_accessor :RegistrationStatus, :RegistrationMessage, :ChannelRegistrationNo, :ChannelSubMerchantId, :OutSubMerchantName, :ChannelName, :PaymentMethod, :BusinessLicenseNumber, :LegalName, :ExternalReturnData
        
        def initialize(registrationstatus=nil, registrationmessage=nil, channelregistrationno=nil, channelsubmerchantid=nil, outsubmerchantname=nil, channelname=nil, paymentmethod=nil, businesslicensenumber=nil, legalname=nil, externalreturndata=nil)
          @RegistrationStatus = registrationstatus
          @RegistrationMessage = registrationmessage
          @ChannelRegistrationNo = channelregistrationno
          @ChannelSubMerchantId = channelsubmerchantid
          @OutSubMerchantName = outsubmerchantname
          @ChannelName = channelname
          @PaymentMethod = paymentmethod
          @BusinessLicenseNumber = businesslicensenumber
          @LegalName = legalname
          @ExternalReturnData = externalreturndata
        end

        def deserialize(params)
          @RegistrationStatus = params['RegistrationStatus']
          @RegistrationMessage = params['RegistrationMessage']
          @ChannelRegistrationNo = params['ChannelRegistrationNo']
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @OutSubMerchantName = params['OutSubMerchantName']
          @ChannelName = params['ChannelName']
          @PaymentMethod = params['PaymentMethod']
          @BusinessLicenseNumber = params['BusinessLicenseNumber']
          @LegalName = params['LegalName']
          @ExternalReturnData = params['ExternalReturnData']
        end
      end

      # QueryOpenBankPaymentOrder请求参数结构体
      class QueryOpenBankPaymentOrderRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户号。外部接入平台入驻云企付平台下发。
        # @type ChannelMerchantId: String
        # @param OutOrderId: 外部商户订单号。与ChannelOrderId不能同时为空字符串。
        # @type OutOrderId: String
        # @param ChannelOrderId: 云平台订单号。与OutOrderId不能同时为空字符串。
        # @type ChannelOrderId: String
        # @param Environment: 接入环境。沙箱环境填 sandbox。缺省默认调用生产环境。
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :OutOrderId, :ChannelOrderId, :Environment
        
        def initialize(channelmerchantid=nil, outorderid=nil, channelorderid=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @OutOrderId = outorderid
          @ChannelOrderId = channelorderid
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @OutOrderId = params['OutOrderId']
          @ChannelOrderId = params['ChannelOrderId']
          @Environment = params['Environment']
        end
      end

      # QueryOpenBankPaymentOrder返回参数结构体
      class QueryOpenBankPaymentOrderResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 业务系统返回码，SUCCESS表示成功，其他表示失败。
        # @type ErrCode: String
        # @param ErrMessage: 业务系统返回消息。
        # @type ErrMessage: String
        # @param Result: 查询支付结果响应对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOpenBankPaymentOrderResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryOpenBankPaymentOrderResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 云企付-查询订单支付结果
      class QueryOpenBankPaymentOrderResult < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户号。外部接入平台入驻云企付平台下发
        # @type ChannelMerchantId: String
        # @param OutOrderId: 外部商户订单号
        # @type OutOrderId: String
        # @param ChannelOrderId: 云企付平台订单号
        # @type ChannelOrderId: String
        # @param ThirdPayOrderId: 第三方支付平台订单号
        # @type ThirdPayOrderId: String
        # @param OrderStatus: INIT：初始化
        # PAYING：支付中
        # DEDUCTED：扣款成功
        # ACCEPTED：支付受理成功
        # SUCCESS：支付成功
        # CLOSED：关单
        # PAY_FAIL：支付失败
        # REVOKE：退票
        # @type OrderStatus: String
        # @param ChannelName: 支付渠道名称，如TENPAY
        # @type ChannelName: String
        # @param PaymentMethod: 付款方式。如EBANK_PAYMENT
        # OPENBANK_PAYMENT
        # @type PaymentMethod: String
        # @param TotalAmount: 订单金额。单位分
        # @type TotalAmount: Integer
        # @param PayAmount: 实际支付金额。单位分，支付成功时返回
        # @type PayAmount: Integer
        # @param FailReason: 失败原因，若失败的返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param Attachment: 附加信息，查询时原样透传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attachment: String
        # @param RedirectInfo: 重定向参数，用于客户端跳转，订单未支付时返回该参数
        # 渠道为TENPAY，付款方式为EBANK_PAYMENT时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RedirectInfo: :class:`Tencentcloud::Cpdp.v20190820.models.OpenBankRedirectInfo`
        # @param ExternalReturnData: 第三方渠道返回信息，见渠道特殊说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnData: String

        attr_accessor :ChannelMerchantId, :OutOrderId, :ChannelOrderId, :ThirdPayOrderId, :OrderStatus, :ChannelName, :PaymentMethod, :TotalAmount, :PayAmount, :FailReason, :Attachment, :RedirectInfo, :ExternalReturnData
        
        def initialize(channelmerchantid=nil, outorderid=nil, channelorderid=nil, thirdpayorderid=nil, orderstatus=nil, channelname=nil, paymentmethod=nil, totalamount=nil, payamount=nil, failreason=nil, attachment=nil, redirectinfo=nil, externalreturndata=nil)
          @ChannelMerchantId = channelmerchantid
          @OutOrderId = outorderid
          @ChannelOrderId = channelorderid
          @ThirdPayOrderId = thirdpayorderid
          @OrderStatus = orderstatus
          @ChannelName = channelname
          @PaymentMethod = paymentmethod
          @TotalAmount = totalamount
          @PayAmount = payamount
          @FailReason = failreason
          @Attachment = attachment
          @RedirectInfo = redirectinfo
          @ExternalReturnData = externalreturndata
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @OutOrderId = params['OutOrderId']
          @ChannelOrderId = params['ChannelOrderId']
          @ThirdPayOrderId = params['ThirdPayOrderId']
          @OrderStatus = params['OrderStatus']
          @ChannelName = params['ChannelName']
          @PaymentMethod = params['PaymentMethod']
          @TotalAmount = params['TotalAmount']
          @PayAmount = params['PayAmount']
          @FailReason = params['FailReason']
          @Attachment = params['Attachment']
          unless params['RedirectInfo'].nil?
            @RedirectInfo = OpenBankRedirectInfo.new
            @RedirectInfo.deserialize(params['RedirectInfo'])
          end
          @ExternalReturnData = params['ExternalReturnData']
        end
      end

      # QueryOpenBankUnbindExternalSubMerchantBankAccount请求参数结构体
      class QueryOpenBankUnbindExternalSubMerchantBankAccountRequest < TencentCloud::Common::AbstractModel
        # @param ChannelSubMerchantId: 渠道子商户ID。
        # @type ChannelSubMerchantId: String
        # @param ChannelMerchantId: 渠道商户ID。
        # @type ChannelMerchantId: String
        # @param ChannelApplyId: 渠道申请编号，与外部申请编号二者选填其一。
        # @type ChannelApplyId: String
        # @param Environment: 环境类型。
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String
        # @param OutApplyId: 外部申请编号，与渠道申请编号二者选填其一。
        # @type OutApplyId: String

        attr_accessor :ChannelSubMerchantId, :ChannelMerchantId, :ChannelApplyId, :Environment, :OutApplyId
        
        def initialize(channelsubmerchantid=nil, channelmerchantid=nil, channelapplyid=nil, environment=nil, outapplyid=nil)
          @ChannelSubMerchantId = channelsubmerchantid
          @ChannelMerchantId = channelmerchantid
          @ChannelApplyId = channelapplyid
          @Environment = environment
          @OutApplyId = outapplyid
        end

        def deserialize(params)
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelApplyId = params['ChannelApplyId']
          @Environment = params['Environment']
          @OutApplyId = params['OutApplyId']
        end
      end

      # QueryOpenBankUnbindExternalSubMerchantBankAccount返回参数结构体
      class QueryOpenBankUnbindExternalSubMerchantBankAccountResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOpenBankUnbindExternalSubMerchantBankAccountResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryOpenBankUnbindExternalSubMerchantBankAccountResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 第三方子商户银行卡解绑结果查询返回结果
      class QueryOpenBankUnbindExternalSubMerchantBankAccountResult < TencentCloud::Common::AbstractModel
        # @param ChannelApplyId: 渠道申请编号。
        # @type ChannelApplyId: String
        # @param UnbindStatus: 解绑状态。
        # __SUCCESS__: 解绑成功
        # __FAILED__: 解绑失败
        # __PROCESSING__: 解绑中
        # @type UnbindStatus: String
        # @param UnbindMessage: 解绑返回描述, 例如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnbindMessage: String

        attr_accessor :ChannelApplyId, :UnbindStatus, :UnbindMessage
        
        def initialize(channelapplyid=nil, unbindstatus=nil, unbindmessage=nil)
          @ChannelApplyId = channelapplyid
          @UnbindStatus = unbindstatus
          @UnbindMessage = unbindmessage
        end

        def deserialize(params)
          @ChannelApplyId = params['ChannelApplyId']
          @UnbindStatus = params['UnbindStatus']
          @UnbindMessage = params['UnbindMessage']
        end
      end

      # 查询订单接口的出参，订单列表
      class QueryOrderOutOrderList < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param Amt: 支付金额，单位：分
        # @type Amt: Integer
        # @param UserId: 用户Id
        # @type UserId: String
        # @param CashAmt: 现金支付金额
        # @type CashAmt: String
        # @param Metadata: 发货标识，由业务在调用聚鑫下单 接口的时候下发
        # @type Metadata: String
        # @param PayTime: 支付时间unix时间戳
        # @type PayTime: String
        # @param CouponAmt: 抵扣券金额
        # @type CouponAmt: String
        # @param OrderTime: 下单时间unix时间戳
        # @type OrderTime: String
        # @param ProductId: 物品id
        # @type ProductId: String
        # @param SceneInfo: 高速场景信息
        # @type SceneInfo: String
        # @param OrderState: 当前订单的订单状态
        # 0：初始状态，获取聚鑫交易订单成功；
        # 1：拉起聚鑫支付页面成功，用户未 支付；
        # 2：用户支付成功，正在发货；
        # 3：用户支付成功，发货失败；
        # 4：用户支付成功，发货成功；
        # 5：聚鑫支付页面正在失效中；
        # 6：聚鑫支付页面已经失效；
        # @type OrderState: String
        # @param Channel: 支付渠道：wechat：微信支付;
        # qqwallet：QQ钱包;
        # bank：网银
        # @type Channel: String
        # @param RefundFlag: 是否曾退款
        # @type RefundFlag: String
        # @param OutTradeNo: 务支付订单号
        # @type OutTradeNo: String
        # @param ProductName: 商品名称
        # @type ProductName: String
        # @param CallBackTime: 支付回调时间，unix时间戳
        # @type CallBackTime: String
        # @param CurrencyType: ISO 货币代码，CNY
        # @type CurrencyType: String
        # @param AcctSubAppId: 微校场景账户Id
        # @type AcctSubAppId: String
        # @param TransactionId: 调用下单接口获取的聚鑫交易订单
        # @type TransactionId: String
        # @param ChannelOrderId: 聚鑫内部渠道订单号
        # @type ChannelOrderId: String
        # @param SubOrderList: 调用下单接口传进来的 SubOutTradeNoList
        # @type SubOrderList: Array
        # @param ChannelExternalOrderId: 支付机构订单号
        # @type ChannelExternalOrderId: String

        attr_accessor :MidasAppId, :Amt, :UserId, :CashAmt, :Metadata, :PayTime, :CouponAmt, :OrderTime, :ProductId, :SceneInfo, :OrderState, :Channel, :RefundFlag, :OutTradeNo, :ProductName, :CallBackTime, :CurrencyType, :AcctSubAppId, :TransactionId, :ChannelOrderId, :SubOrderList, :ChannelExternalOrderId
        
        def initialize(midasappid=nil, amt=nil, userid=nil, cashamt=nil, metadata=nil, paytime=nil, couponamt=nil, ordertime=nil, productid=nil, sceneinfo=nil, orderstate=nil, channel=nil, refundflag=nil, outtradeno=nil, productname=nil, callbacktime=nil, currencytype=nil, acctsubappid=nil, transactionid=nil, channelorderid=nil, suborderlist=nil, channelexternalorderid=nil)
          @MidasAppId = midasappid
          @Amt = amt
          @UserId = userid
          @CashAmt = cashamt
          @Metadata = metadata
          @PayTime = paytime
          @CouponAmt = couponamt
          @OrderTime = ordertime
          @ProductId = productid
          @SceneInfo = sceneinfo
          @OrderState = orderstate
          @Channel = channel
          @RefundFlag = refundflag
          @OutTradeNo = outtradeno
          @ProductName = productname
          @CallBackTime = callbacktime
          @CurrencyType = currencytype
          @AcctSubAppId = acctsubappid
          @TransactionId = transactionid
          @ChannelOrderId = channelorderid
          @SubOrderList = suborderlist
          @ChannelExternalOrderId = channelexternalorderid
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @Amt = params['Amt']
          @UserId = params['UserId']
          @CashAmt = params['CashAmt']
          @Metadata = params['Metadata']
          @PayTime = params['PayTime']
          @CouponAmt = params['CouponAmt']
          @OrderTime = params['OrderTime']
          @ProductId = params['ProductId']
          @SceneInfo = params['SceneInfo']
          @OrderState = params['OrderState']
          @Channel = params['Channel']
          @RefundFlag = params['RefundFlag']
          @OutTradeNo = params['OutTradeNo']
          @ProductName = params['ProductName']
          @CallBackTime = params['CallBackTime']
          @CurrencyType = params['CurrencyType']
          @AcctSubAppId = params['AcctSubAppId']
          @TransactionId = params['TransactionId']
          @ChannelOrderId = params['ChannelOrderId']
          unless params['SubOrderList'].nil?
            @SubOrderList = []
            params['SubOrderList'].each do |i|
              queryorderoutsuborderlist_tmp = QueryOrderOutSubOrderList.new
              queryorderoutsuborderlist_tmp.deserialize(i)
              @SubOrderList << queryorderoutsuborderlist_tmp
            end
          end
          @ChannelExternalOrderId = params['ChannelExternalOrderId']
        end
      end

      # 子订单列表
      class QueryOrderOutSubOrderList < TencentCloud::Common::AbstractModel
        # @param Amt: 子订单支付金额
        # @type Amt: Integer
        # @param SubMchIncome: 子订单结算应收金额，单位：分
        # @type SubMchIncome: Integer
        # @param Metadata: 发货标识，由业务在调用Midas下单接口的时候下发。
        # @type Metadata: String
        # @param OriginalAmt: 子订单原始金额
        # @type OriginalAmt: Integer
        # @param PlatformIncome: 子订单平台应收金额，单位：分
        # @type PlatformIncome: Integer
        # @param ProductDetail: 子订单商品详情
        # @type ProductDetail: String
        # @param ProductName: 子订单商品名称
        # @type ProductName: String
        # @param SettleCheck: 核销状态，1表示核销，0表示未核销
        # @type SettleCheck: Integer
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SubOutTradeNo: 子订单号
        # @type SubOutTradeNo: String

        attr_accessor :Amt, :SubMchIncome, :Metadata, :OriginalAmt, :PlatformIncome, :ProductDetail, :ProductName, :SettleCheck, :SubAppId, :SubOutTradeNo
        
        def initialize(amt=nil, submchincome=nil, metadata=nil, originalamt=nil, platformincome=nil, productdetail=nil, productname=nil, settlecheck=nil, subappid=nil, subouttradeno=nil)
          @Amt = amt
          @SubMchIncome = submchincome
          @Metadata = metadata
          @OriginalAmt = originalamt
          @PlatformIncome = platformincome
          @ProductDetail = productdetail
          @ProductName = productname
          @SettleCheck = settlecheck
          @SubAppId = subappid
          @SubOutTradeNo = subouttradeno
        end

        def deserialize(params)
          @Amt = params['Amt']
          @SubMchIncome = params['SubMchIncome']
          @Metadata = params['Metadata']
          @OriginalAmt = params['OriginalAmt']
          @PlatformIncome = params['PlatformIncome']
          @ProductDetail = params['ProductDetail']
          @ProductName = params['ProductName']
          @SettleCheck = params['SettleCheck']
          @SubAppId = params['SubAppId']
          @SubOutTradeNo = params['SubOutTradeNo']
        end
      end

      # QueryOrder请求参数结构体
      class QueryOrderRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主 MidasAppId
        # @type MidasAppId: String
        # @param UserId: 用户ID，长度不小于5位， 仅支持字母和数字的组合
        # @type UserId: String
        # @param Type: type=by_order根据订单号 查订单；
        # type=by_user根据用户id 查订单 。
        # @type Type: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param Count: 每页返回的记录数。根据用户 号码查询订单列表时需要传。 用于分页展示。Type=by_order时必填
        # @type Count: Integer
        # @param Offset: 记录数偏移量，默认从0开 始。根据用户号码查询订单列 表时需要传。用于分页展示。Type=by_order时必填
        # @type Offset: Integer
        # @param StartTime: 查询开始时间，Unix时间戳。Type=by_order时必填
        # @type StartTime: String
        # @param EndTime: 查询结束时间，Unix时间戳。Type=by_order时必填
        # @type EndTime: String
        # @param OutTradeNo: 业务订单号，OutTradeNo与 TransactionId不能同时为 空，都传优先使用 OutTradeNo
        # @type OutTradeNo: String
        # @param TransactionId: 聚鑫订单号，OutTradeNo与 TransactionId不能同时为 空，都传优先使用 OutTradeNo
        # @type TransactionId: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :UserId, :Type, :MidasSecretId, :MidasSignature, :Count, :Offset, :StartTime, :EndTime, :OutTradeNo, :TransactionId, :MidasEnvironment
        
        def initialize(midasappid=nil, userid=nil, type=nil, midassecretid=nil, midassignature=nil, count=nil, offset=nil, starttime=nil, endtime=nil, outtradeno=nil, transactionid=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @UserId = userid
          @Type = type
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @Count = count
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
          @OutTradeNo = outtradeno
          @TransactionId = transactionid
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @UserId = params['UserId']
          @Type = params['Type']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @Count = params['Count']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @OutTradeNo = params['OutTradeNo']
          @TransactionId = params['TransactionId']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryOrder返回参数结构体
      class QueryOrderResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 返回订单数
        # @type TotalNum: Integer
        # @param OrderList: 查询结果的订单列表
        # @type OrderList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :OrderList, :RequestId
        
        def initialize(totalnum=nil, orderlist=nil, requestid=nil)
          @TotalNum = totalnum
          @OrderList = orderlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          unless params['OrderList'].nil?
            @OrderList = []
            params['OrderList'].each do |i|
              queryorderoutorderlist_tmp = QueryOrderOutOrderList.new
              queryorderoutorderlist_tmp.deserialize(i)
              @OrderList << queryorderoutorderlist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # QueryOrderStatus请求参数结构体
      class QueryOrderStatusRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param DeveloperNo: 开发者流水号
        # @type DeveloperNo: String
        # @param OrderNo: 付款订单号
        # @type OrderNo: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :DeveloperNo, :OrderNo, :Profile
        
        def initialize(openid=nil, openkey=nil, developerno=nil, orderno=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @DeveloperNo = developerno
          @OrderNo = orderno
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @DeveloperNo = params['DeveloperNo']
          @OrderNo = params['OrderNo']
          @Profile = params['Profile']
        end
      end

      # QueryOrderStatus返回参数结构体
      class QueryOrderStatusResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 业务系统返回码，0表示成功，其他表示失败。
        # @type ErrCode: String
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param Result: 查询订单付款状态结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOrderStatusResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryOrderStatusResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询订单付款状态响应对象
      class QueryOrderStatusResult < TencentCloud::Common::AbstractModel
        # @param OrderNo: 付款订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: String
        # @param DeveloperNo: 开发者流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeveloperNo: String
        # @param TradeDiscountAmount: 交易优惠金额（免充值券）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeDiscountAmount: String
        # @param PayName: 付款方式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param OrderMerchantId: 商户流水号（从1开始自增长不重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderMerchantId: String
        # @param TradeAccount: 交易帐号（银行卡号、支付宝帐号、微信帐号等，某些收单机构没有此数据）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeAccount: String
        # @param TradeAmount: 实际交易金额（以分为单位，没有小数点）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeAmount: String
        # @param CurrencySign: 币种签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrencySign: String
        # @param TradePayTime: 付款完成时间（以收单机构为准）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradePayTime: String
        # @param ShopOrderId: 门店流水号（从1开始自增长不重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopOrderId: String
        # @param PayTag: 支付标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayTag: String
        # @param Status: 订单状态（1交易成功，2待支付，4已取消，9等待用户输入密码确认
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OrderCurrency: 币种代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderCurrency: String
        # @param TradeQrcode: 二维码字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeQrcode: String
        # @param TradeTime: 开始交易时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeTime: String
        # @param DiscountAmount: 折扣金额（以分为单位，没有小数点）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountAmount: String
        # @param MerchantNo: 商户号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String
        # @param Remark: 订单备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param OrderName: 订单标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderName: String
        # @param OriginalAmount: 原始金额（以分为单位，没有小数点）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalAmount: String
        # @param ShopNo: 门店编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopNo: String
        # @param TradeResult: 收单机构原始交易数据，如果返回非标准json数据，请自行转换
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeResult: String
        # @param OrderId: 订单流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param OrderType: 订单类型（1消费，2辙单）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderType: String
        # @param TradeNo: 收单机构交易号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeNo: String
        # @param OriginalOrderNo: 原始订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalOrderNo: String
        # @param Tag: 订单标记，订单附加数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param AddTime: 下单时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param CashierId: 收银员编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashierId: String
        # @param CashierRealName: 收银员名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CashierRealName: String
        # @param ShopFullName: 店铺全称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopFullName: String
        # @param ShopName: 店铺名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopName: String

        attr_accessor :OrderNo, :DeveloperNo, :TradeDiscountAmount, :PayName, :OrderMerchantId, :TradeAccount, :TradeAmount, :CurrencySign, :TradePayTime, :ShopOrderId, :PayTag, :Status, :OrderCurrency, :TradeQrcode, :TradeTime, :DiscountAmount, :MerchantNo, :Remark, :OrderName, :OriginalAmount, :ShopNo, :TradeResult, :OrderId, :OrderType, :TradeNo, :OriginalOrderNo, :Tag, :AddTime, :CashierId, :CashierRealName, :ShopFullName, :ShopName
        
        def initialize(orderno=nil, developerno=nil, tradediscountamount=nil, payname=nil, ordermerchantid=nil, tradeaccount=nil, tradeamount=nil, currencysign=nil, tradepaytime=nil, shoporderid=nil, paytag=nil, status=nil, ordercurrency=nil, tradeqrcode=nil, tradetime=nil, discountamount=nil, merchantno=nil, remark=nil, ordername=nil, originalamount=nil, shopno=nil, traderesult=nil, orderid=nil, ordertype=nil, tradeno=nil, originalorderno=nil, tag=nil, addtime=nil, cashierid=nil, cashierrealname=nil, shopfullname=nil, shopname=nil)
          @OrderNo = orderno
          @DeveloperNo = developerno
          @TradeDiscountAmount = tradediscountamount
          @PayName = payname
          @OrderMerchantId = ordermerchantid
          @TradeAccount = tradeaccount
          @TradeAmount = tradeamount
          @CurrencySign = currencysign
          @TradePayTime = tradepaytime
          @ShopOrderId = shoporderid
          @PayTag = paytag
          @Status = status
          @OrderCurrency = ordercurrency
          @TradeQrcode = tradeqrcode
          @TradeTime = tradetime
          @DiscountAmount = discountamount
          @MerchantNo = merchantno
          @Remark = remark
          @OrderName = ordername
          @OriginalAmount = originalamount
          @ShopNo = shopno
          @TradeResult = traderesult
          @OrderId = orderid
          @OrderType = ordertype
          @TradeNo = tradeno
          @OriginalOrderNo = originalorderno
          @Tag = tag
          @AddTime = addtime
          @CashierId = cashierid
          @CashierRealName = cashierrealname
          @ShopFullName = shopfullname
          @ShopName = shopname
        end

        def deserialize(params)
          @OrderNo = params['OrderNo']
          @DeveloperNo = params['DeveloperNo']
          @TradeDiscountAmount = params['TradeDiscountAmount']
          @PayName = params['PayName']
          @OrderMerchantId = params['OrderMerchantId']
          @TradeAccount = params['TradeAccount']
          @TradeAmount = params['TradeAmount']
          @CurrencySign = params['CurrencySign']
          @TradePayTime = params['TradePayTime']
          @ShopOrderId = params['ShopOrderId']
          @PayTag = params['PayTag']
          @Status = params['Status']
          @OrderCurrency = params['OrderCurrency']
          @TradeQrcode = params['TradeQrcode']
          @TradeTime = params['TradeTime']
          @DiscountAmount = params['DiscountAmount']
          @MerchantNo = params['MerchantNo']
          @Remark = params['Remark']
          @OrderName = params['OrderName']
          @OriginalAmount = params['OriginalAmount']
          @ShopNo = params['ShopNo']
          @TradeResult = params['TradeResult']
          @OrderId = params['OrderId']
          @OrderType = params['OrderType']
          @TradeNo = params['TradeNo']
          @OriginalOrderNo = params['OriginalOrderNo']
          @Tag = params['Tag']
          @AddTime = params['AddTime']
          @CashierId = params['CashierId']
          @CashierRealName = params['CashierRealName']
          @ShopFullName = params['ShopFullName']
          @ShopName = params['ShopName']
        end
      end

      # 查询汇出数据
      class QueryOutwardOrderData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param TransactionId: 对接方汇出指令编号
        # @type TransactionId: String
        # @param AcctDate: 财务日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AcctDate: String
        # @param PricingCurrency: 定价币种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PricingCurrency: String
        # @param SourceCurrency: 源币种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceCurrency: String
        # @param SourceAmount: 源金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceAmount: String
        # @param TargetCurrency: 目的币种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetCurrency: String
        # @param TargetAmount: 目的金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetAmount: String
        # @param FxRate: 汇率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FxRate: String
        # @param Status: 指令状态
        # @type Status: String
        # @param FailReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param RefundAmount: 退汇金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefundAmount: String
        # @param RefundCurrency: 退汇币种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefundCurrency: String

        attr_accessor :MerchantId, :TransactionId, :AcctDate, :PricingCurrency, :SourceCurrency, :SourceAmount, :TargetCurrency, :TargetAmount, :FxRate, :Status, :FailReason, :RefundAmount, :RefundCurrency
        
        def initialize(merchantid=nil, transactionid=nil, acctdate=nil, pricingcurrency=nil, sourcecurrency=nil, sourceamount=nil, targetcurrency=nil, targetamount=nil, fxrate=nil, status=nil, failreason=nil, refundamount=nil, refundcurrency=nil)
          @MerchantId = merchantid
          @TransactionId = transactionid
          @AcctDate = acctdate
          @PricingCurrency = pricingcurrency
          @SourceCurrency = sourcecurrency
          @SourceAmount = sourceamount
          @TargetCurrency = targetcurrency
          @TargetAmount = targetamount
          @FxRate = fxrate
          @Status = status
          @FailReason = failreason
          @RefundAmount = refundamount
          @RefundCurrency = refundcurrency
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @TransactionId = params['TransactionId']
          @AcctDate = params['AcctDate']
          @PricingCurrency = params['PricingCurrency']
          @SourceCurrency = params['SourceCurrency']
          @SourceAmount = params['SourceAmount']
          @TargetCurrency = params['TargetCurrency']
          @TargetAmount = params['TargetAmount']
          @FxRate = params['FxRate']
          @Status = params['Status']
          @FailReason = params['FailReason']
          @RefundAmount = params['RefundAmount']
          @RefundCurrency = params['RefundCurrency']
        end
      end

      # QueryOutwardOrder请求参数结构体
      class QueryOutwardOrderRequest < TencentCloud::Common::AbstractModel
        # @param TransactionId: 对接方汇出指令编号
        # @type TransactionId: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :TransactionId, :Profile
        
        def initialize(transactionid=nil, profile=nil)
          @TransactionId = transactionid
          @Profile = profile
        end

        def deserialize(params)
          @TransactionId = params['TransactionId']
          @Profile = params['Profile']
        end
      end

      # QueryOutwardOrder返回参数结构体
      class QueryOutwardOrderResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询汇出结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOutwardOrderResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryOutwardOrderResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询汇出结果
      class QueryOutwardOrderResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Data: 查询汇出数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.QueryOutwardOrderData`

        attr_accessor :Code, :Data
        
        def initialize(code=nil, data=nil)
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = QueryOutwardOrderData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # QueryPayerInfo请求参数结构体
      class QueryPayerInfoRequest < TencentCloud::Common::AbstractModel
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :PayerId, :Profile
        
        def initialize(payerid=nil, profile=nil)
          @PayerId = payerid
          @Profile = profile
        end

        def deserialize(params)
          @PayerId = params['PayerId']
          @Profile = params['Profile']
        end
      end

      # QueryPayerInfo返回参数结构体
      class QueryPayerInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 付款人查询结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryPayerinfoResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryPayerinfoResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 付款人查询数据
      class QueryPayerinfoData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param Status: 审核状态
        # @type Status: String
        # @param FailReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param PayerType: 付款人类型
        # @type PayerType: String
        # @param PayerName: 付款人姓名
        # @type PayerName: String
        # @param PayerIdType: 付款人证件类型
        # @type PayerIdType: String
        # @param PayerIdNo: 付款人证件号
        # @type PayerIdNo: String
        # @param PayerContactNumber: 付款人联系电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerContactNumber: String
        # @param PayerEmailAddress: 付款人联系邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerEmailAddress: String
        # @param PayerCountryCode: 付款人常驻国家或地区编码
        # @type PayerCountryCode: String
        # @param PayerContactName: 付款人联系名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayerContactName: String

        attr_accessor :MerchantId, :PayerId, :Status, :FailReason, :PayerType, :PayerName, :PayerIdType, :PayerIdNo, :PayerContactNumber, :PayerEmailAddress, :PayerCountryCode, :PayerContactName
        
        def initialize(merchantid=nil, payerid=nil, status=nil, failreason=nil, payertype=nil, payername=nil, payeridtype=nil, payeridno=nil, payercontactnumber=nil, payeremailaddress=nil, payercountrycode=nil, payercontactname=nil)
          @MerchantId = merchantid
          @PayerId = payerid
          @Status = status
          @FailReason = failreason
          @PayerType = payertype
          @PayerName = payername
          @PayerIdType = payeridtype
          @PayerIdNo = payeridno
          @PayerContactNumber = payercontactnumber
          @PayerEmailAddress = payeremailaddress
          @PayerCountryCode = payercountrycode
          @PayerContactName = payercontactname
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @PayerId = params['PayerId']
          @Status = params['Status']
          @FailReason = params['FailReason']
          @PayerType = params['PayerType']
          @PayerName = params['PayerName']
          @PayerIdType = params['PayerIdType']
          @PayerIdNo = params['PayerIdNo']
          @PayerContactNumber = params['PayerContactNumber']
          @PayerEmailAddress = params['PayerEmailAddress']
          @PayerCountryCode = params['PayerCountryCode']
          @PayerContactName = params['PayerContactName']
        end
      end

      # 付款人查询结果
      class QueryPayerinfoResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Data: 付款人查询数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.QueryPayerinfoData`

        attr_accessor :Code, :Data
        
        def initialize(code=nil, data=nil)
          @Code = code
          @Data = data
        end

        def deserialize(params)
          @Code = params['Code']
          unless params['Data'].nil?
            @Data = QueryPayerinfoData.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # QueryReconciliationDocument请求参数结构体
      class QueryReconciliationDocumentRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号
        # @type MrchCode: String
        # @param FileType: STRING(10)，文件类型（充值文件-CZ; 提现文件-TX; 交易文件-JY; 余额文件-YE; 合约文件-HY）
        # @type FileType: String
        # @param FileDate: STRING(8)，文件日期（格式：20190101）
        # @type FileDate: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FileType, :FileDate, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, filetype=nil, filedate=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @FileType = filetype
          @FileDate = filedate
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FileType = params['FileType']
          @FileDate = params['FileDate']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QueryReconciliationDocument返回参数结构体
      class QueryReconciliationDocumentResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ResultNum: STRING(10)，本次交易返回查询结果记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultNum: String
        # @param TranItemArray: 交易信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranItemArray: Array
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ResultNum, :TranItemArray, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, resultnum=nil, tranitemarray=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ResultNum = resultnum
          @TranItemArray = tranitemarray
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ResultNum = params['ResultNum']
          unless params['TranItemArray'].nil?
            @TranItemArray = []
            params['TranItemArray'].each do |i|
              fileitem_tmp = FileItem.new
              fileitem_tmp.deserialize(i)
              @TranItemArray << fileitem_tmp
            end
          end
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # QueryReconciliationFileApplyInfo请求参数结构体
      class QueryReconciliationFileApplyInfoRequest < TencentCloud::Common::AbstractModel
        # @param ApplyFileId: 申请对账文件的任务ID。
        # @type ApplyFileId: String
        # @param MidasEnvironment: 环境名。
        # __release__: 现网环境
        # __sandbox__: 沙箱环境
        # __development__: 开发环境
        # _缺省: release_
        # @type MidasEnvironment: String

        attr_accessor :ApplyFileId, :MidasEnvironment
        
        def initialize(applyfileid=nil, midasenvironment=nil)
          @ApplyFileId = applyfileid
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @ApplyFileId = params['ApplyFileId']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryReconciliationFileApplyInfo返回参数结构体
      class QueryReconciliationFileApplyInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryReconciliationFileApplyInfoResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryReconciliationFileApplyInfoResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询对账文件申请结果
      class QueryReconciliationFileApplyInfoResult < TencentCloud::Common::AbstractModel
        # @param ApplyFileId: 申请对账文件的任务ID。
        # @type ApplyFileId: String
        # @param ApplyStatus: 对账文件申请状态。
        # __I__：申请中
        # __S__：申请成功
        # __F__：申请失败
        # @type ApplyStatus: String
        # @param ApplyMessage: 申请结果描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplyMessage: String
        # @param FileUrlArray: 对账文件下载地址列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileUrlArray: Array

        attr_accessor :ApplyFileId, :ApplyStatus, :ApplyMessage, :FileUrlArray
        
        def initialize(applyfileid=nil, applystatus=nil, applymessage=nil, fileurlarray=nil)
          @ApplyFileId = applyfileid
          @ApplyStatus = applystatus
          @ApplyMessage = applymessage
          @FileUrlArray = fileurlarray
        end

        def deserialize(params)
          @ApplyFileId = params['ApplyFileId']
          @ApplyStatus = params['ApplyStatus']
          @ApplyMessage = params['ApplyMessage']
          @FileUrlArray = params['FileUrlArray']
        end
      end

      # QueryRefund请求参数结构体
      class QueryRefundRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID，长度不小于5位，仅支持字母和数字的组合。
        # @type UserId: String
        # @param RefundId: 退款订单号，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合。
        # @type RefundId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :UserId, :RefundId, :MidasAppId, :MidasSecretId, :MidasSignature, :MidasEnvironment
        
        def initialize(userid=nil, refundid=nil, midasappid=nil, midassecretid=nil, midassignature=nil, midasenvironment=nil)
          @UserId = userid
          @RefundId = refundid
          @MidasAppId = midasappid
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RefundId = params['RefundId']
          @MidasAppId = params['MidasAppId']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # QueryRefund返回参数结构体
      class QueryRefundResponse < TencentCloud::Common::AbstractModel
        # @param State: 退款状态码，退款提交成功后返回  1：退款中；  2：退款成功；  3：退款失败。
        # @type State: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :State, :RequestId
        
        def initialize(state=nil, requestid=nil)
          @State = state
          @RequestId = requestid
        end

        def deserialize(params)
          @State = params['State']
          @RequestId = params['RequestId']
        end
      end

      # QueryShopOpenId请求参数结构体
      class QueryShopOpenIdRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param ShopNo: 门店编号
        # @type ShopNo: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :ShopNo, :Profile
        
        def initialize(openid=nil, openkey=nil, shopno=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @ShopNo = shopno
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @ShopNo = params['ShopNo']
          @Profile = params['Profile']
        end
      end

      # QueryShopOpenId返回参数结构体
      class QueryShopOpenIdResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 获取门店OpenId响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryShopOpenIdResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = QueryShopOpenIdResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取门店OpenId响应对象
      class QueryShopOpenIdResult < TencentCloud::Common::AbstractModel
        # @param Province: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param ShopName: 门店简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopName: String
        # @param MerchantNo: 商户编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String
        # @param CityId: 城市编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityId: String
        # @param OpenId: open_id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param Telephone: 门店电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Telephone: String
        # @param ShopNo: 门店编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopNo: String
        # @param County: 县/区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type County: String
        # @param ShopFullName: 门店全称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopFullName: String
        # @param BrandName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandName: String
        # @param Address: 详细地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param OpenKey: open_key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenKey: String
        # @param MerchantName: 商户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantName: String

        attr_accessor :Province, :City, :ShopName, :MerchantNo, :CityId, :OpenId, :Telephone, :ShopNo, :County, :ShopFullName, :BrandName, :Address, :OpenKey, :MerchantName
        
        def initialize(province=nil, city=nil, shopname=nil, merchantno=nil, cityid=nil, openid=nil, telephone=nil, shopno=nil, county=nil, shopfullname=nil, brandname=nil, address=nil, openkey=nil, merchantname=nil)
          @Province = province
          @City = city
          @ShopName = shopname
          @MerchantNo = merchantno
          @CityId = cityid
          @OpenId = openid
          @Telephone = telephone
          @ShopNo = shopno
          @County = county
          @ShopFullName = shopfullname
          @BrandName = brandname
          @Address = address
          @OpenKey = openkey
          @MerchantName = merchantname
        end

        def deserialize(params)
          @Province = params['Province']
          @City = params['City']
          @ShopName = params['ShopName']
          @MerchantNo = params['MerchantNo']
          @CityId = params['CityId']
          @OpenId = params['OpenId']
          @Telephone = params['Telephone']
          @ShopNo = params['ShopNo']
          @County = params['County']
          @ShopFullName = params['ShopFullName']
          @BrandName = params['BrandName']
          @Address = params['Address']
          @OpenKey = params['OpenKey']
          @MerchantName = params['MerchantName']
        end
      end

      # 银企直连-查询单笔支付状态条目
      class QuerySinglePayItem < TencentCloud::Common::AbstractModel
        # @param PayStatus: 付款状态（S：支付成功；P：支付处理中；F：支付失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayStatus: String
        # @param PlatformMsg: 平台信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlatformMsg: String
        # @param BankRetCode: 银行原始返回码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankRetCode: String
        # @param BankRetMsg: 银行原始返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankRetMsg: String

        attr_accessor :PayStatus, :PlatformMsg, :BankRetCode, :BankRetMsg
        
        def initialize(paystatus=nil, platformmsg=nil, bankretcode=nil, bankretmsg=nil)
          @PayStatus = paystatus
          @PlatformMsg = platformmsg
          @BankRetCode = bankretcode
          @BankRetMsg = bankretmsg
        end

        def deserialize(params)
          @PayStatus = params['PayStatus']
          @PlatformMsg = params['PlatformMsg']
          @BankRetCode = params['BankRetCode']
          @BankRetMsg = params['BankRetMsg']
        end
      end

      # QuerySinglePay请求参数结构体
      class QuerySinglePayRequest < TencentCloud::Common::AbstractModel
        # @param SerialNumber: 业务流水号
        # @type SerialNumber: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :SerialNumber, :Profile
        
        def initialize(serialnumber=nil, profile=nil)
          @SerialNumber = serialnumber
          @Profile = profile
        end

        def deserialize(params)
          @SerialNumber = params['SerialNumber']
          @Profile = params['Profile']
        end
      end

      # QuerySinglePay返回参数结构体
      class QuerySinglePayResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QuerySinglePayResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QuerySinglePayResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 银企直连-查询单笔支付状态结果
      class QuerySinglePayResult < TencentCloud::Common::AbstractModel
        # @param HandleStatus: 受理状态（S：处理成功；F：处理失败）
        # @type HandleStatus: String
        # @param HandleMsg: 受理状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HandleMsg: String
        # @param SerialNo: 业务流水号
        # @type SerialNo: String
        # @param Items: 支付明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :HandleStatus, :HandleMsg, :SerialNo, :Items
        
        def initialize(handlestatus=nil, handlemsg=nil, serialno=nil, items=nil)
          @HandleStatus = handlestatus
          @HandleMsg = handlemsg
          @SerialNo = serialno
          @Items = items
        end

        def deserialize(params)
          @HandleStatus = params['HandleStatus']
          @HandleMsg = params['HandleMsg']
          @SerialNo = params['SerialNo']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              querysinglepayitem_tmp = QuerySinglePayItem.new
              querysinglepayitem_tmp.deserialize(i)
              @Items << querysinglepayitem_tmp
            end
          end
        end
      end

      # QuerySinglePaymentResult接口返回响应
      class QuerySinglePaymentResultData < TencentCloud::Common::AbstractModel
        # @param TradeSerialNo: 平台交易流水号，唯一
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeSerialNo: String
        # @param OrderId: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param TradeStatus: 交易状态。
        # 0 处理中
        # 1 预占成功
        # 2 交易成功
        # 3 交易失败
        # 4 未知渠道异常
        # 5 预占额度失败
        # 6 提交成功
        # 7 提交失败
        # 8 订单重复提交
        # 99 未知系统异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeStatus: Integer
        # @param Remark: 业务备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param AgentId: 代理商ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentId: String
        # @param AgentName: 代理商名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String
        # @param TradeStatusDesc: 交易状态描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeStatusDesc: String

        attr_accessor :TradeSerialNo, :OrderId, :TradeStatus, :Remark, :AgentId, :AgentName, :TradeStatusDesc
        
        def initialize(tradeserialno=nil, orderid=nil, tradestatus=nil, remark=nil, agentid=nil, agentname=nil, tradestatusdesc=nil)
          @TradeSerialNo = tradeserialno
          @OrderId = orderid
          @TradeStatus = tradestatus
          @Remark = remark
          @AgentId = agentid
          @AgentName = agentname
          @TradeStatusDesc = tradestatusdesc
        end

        def deserialize(params)
          @TradeSerialNo = params['TradeSerialNo']
          @OrderId = params['OrderId']
          @TradeStatus = params['TradeStatus']
          @Remark = params['Remark']
          @AgentId = params['AgentId']
          @AgentName = params['AgentName']
          @TradeStatusDesc = params['TradeStatusDesc']
        end
      end

      # QuerySinglePaymentResult请求参数结构体
      class QuerySinglePaymentResultRequest < TencentCloud::Common::AbstractModel
        # @param TransferType: 转账类型
        # @type TransferType: Integer
        # @param TradeSerialNo: 交易流水流水号，唯一
        # @type TradeSerialNo: String
        # @param OrderId: 订单号，与TradeSerialNo不能同时为空
        # @type OrderId: String

        attr_accessor :TransferType, :TradeSerialNo, :OrderId
        
        def initialize(transfertype=nil, tradeserialno=nil, orderid=nil)
          @TransferType = transfertype
          @TradeSerialNo = tradeserialno
          @OrderId = orderid
        end

        def deserialize(params)
          @TransferType = params['TransferType']
          @TradeSerialNo = params['TradeSerialNo']
          @OrderId = params['OrderId']
        end
      end

      # QuerySinglePaymentResult返回参数结构体
      class QuerySinglePaymentResultResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功
        # @type ErrCode: String
        # @param ErrMessage: 响应消息。
        # @type ErrMessage: String
        # @param Result: 返回响应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QuerySinglePaymentResultData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QuerySinglePaymentResultData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # QuerySingleTransactionStatus请求参数结构体
      class QuerySingleTransactionStatusRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param FunctionFlag: STRING(2)，功能标志（2: 会员间交易; 3: 提现; 4: 充值）
        # @type FunctionFlag: String
        # @param TranNetSeqNo: STRING(52)，交易网流水号（提现，充值或会员交易请求时的CnsmrSeqNo值）
        # @type TranNetSeqNo: String
        # @param SubAcctNo: STRING(50)，见证子帐户的帐号（未启用）
        # @type SubAcctNo: String
        # @param TranDate: STRING(8)，交易日期（未启用）
        # @type TranDate: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FunctionFlag, :TranNetSeqNo, :SubAcctNo, :TranDate, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, functionflag=nil, trannetseqno=nil, subacctno=nil, trandate=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @FunctionFlag = functionflag
          @TranNetSeqNo = trannetseqno
          @SubAcctNo = subacctno
          @TranDate = trandate
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FunctionFlag = params['FunctionFlag']
          @TranNetSeqNo = params['TranNetSeqNo']
          @SubAcctNo = params['SubAcctNo']
          @TranDate = params['TranDate']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QuerySingleTransactionStatus返回参数结构体
      class QuerySingleTransactionStatusResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param BookingFlag: STRING(2)，记账标志（记账标志。1: 登记挂账; 2: 支付; 3: 提现; 4: 清分; 5: 下单预支付; 6: 确认并付款; 7: 退款; 8: 支付到平台; N: 其他）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BookingFlag: String
        # @param TranStatus: STRING(32)，交易状态（0: 成功; 1: 失败; 2: 待确认; 5: 待处理; 6: 处理中。0和1是终态，2、5、6是中间态，其中2是特指提现后待确认提现是否成功，5是银行收到交易等待处理，6是交易正在处理）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: String
        # @param TranAmt: STRING(20)，交易金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranAmt: String
        # @param TranDate: STRING(8)，交易日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranDate: String
        # @param TranTime: STRING(20)，交易时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranTime: String
        # @param InSubAcctNo: STRING(50)，转入子账户账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InSubAcctNo: String
        # @param OutSubAcctNo: STRING(50)，转出子账户账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutSubAcctNo: String
        # @param FailMsg: STRING(300)，失败信息（当提现失败时，返回交易失败原因）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailMsg: String
        # @param OldTranFrontSeqNo: STRING(50)，原前置流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldTranFrontSeqNo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :BookingFlag, :TranStatus, :TranAmt, :TranDate, :TranTime, :InSubAcctNo, :OutSubAcctNo, :FailMsg, :OldTranFrontSeqNo, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, bookingflag=nil, transtatus=nil, tranamt=nil, trandate=nil, trantime=nil, insubacctno=nil, outsubacctno=nil, failmsg=nil, oldtranfrontseqno=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @BookingFlag = bookingflag
          @TranStatus = transtatus
          @TranAmt = tranamt
          @TranDate = trandate
          @TranTime = trantime
          @InSubAcctNo = insubacctno
          @OutSubAcctNo = outsubacctno
          @FailMsg = failmsg
          @OldTranFrontSeqNo = oldtranfrontseqno
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @BookingFlag = params['BookingFlag']
          @TranStatus = params['TranStatus']
          @TranAmt = params['TranAmt']
          @TranDate = params['TranDate']
          @TranTime = params['TranTime']
          @InSubAcctNo = params['InSubAcctNo']
          @OutSubAcctNo = params['OutSubAcctNo']
          @FailMsg = params['FailMsg']
          @OldTranFrontSeqNo = params['OldTranFrontSeqNo']
          @RequestId = params['RequestId']
        end
      end

      # QuerySmallAmountTransfer请求参数结构体
      class QuerySmallAmountTransferRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param OldTranSeqNo: STRING(52)，原交易流水号（小额鉴权交易请求时的CnsmrSeqNo值）
        # @type OldTranSeqNo: String
        # @param TranDate: STRING(8)，交易日期（格式：20190101）
        # @type TranDate: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :OldTranSeqNo, :TranDate, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, oldtranseqno=nil, trandate=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @OldTranSeqNo = oldtranseqno
          @TranDate = trandate
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @OldTranSeqNo = params['OldTranSeqNo']
          @TranDate = params['TranDate']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # QuerySmallAmountTransfer返回参数结构体
      class QuerySmallAmountTransferResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ReturnStatus: STRING(10)，返回状态（0: 成功; 1: 失败; 2: 待确认）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnStatus: String
        # @param ReturnMsg: STRING(512)，返回信息（失败返回具体信息）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnMsg: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ReturnStatus, :ReturnMsg, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, returnstatus=nil, returnmsg=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ReturnStatus = returnstatus
          @ReturnMsg = returnmsg
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ReturnStatus = params['ReturnStatus']
          @ReturnMsg = params['ReturnMsg']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 贸易材料明细查询数据
      class QueryTradeData < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param TradeFileId: 贸易材料流水号
        # @type TradeFileId: String
        # @param TradeOrderId: 贸易材料订单号
        # @type TradeOrderId: String
        # @param Status: 审核状态
        # @type Status: String
        # @param FailReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param PayerId: 付款人ID
        # @type PayerId: String
        # @param PayeeName: 收款人姓名
        # @type PayeeName: String
        # @param PayeeCountryCode: 收款人常驻国家或地区编码
        # @type PayeeCountryCode: String
        # @param TradeType: 交易类型
        # @type TradeType: String
        # @param TradeTime: 交易日期
        # @type TradeTime: String
        # @param TradeCurrency: 交易币种
        # @type TradeCurrency: String
        # @param TradeAmount: 交易金额
        # @type TradeAmount: String
        # @param TradeName: 交易名称
        # @type TradeName: String
        # @param TradeCount: 交易数量
        # @type TradeCount: Integer
        # @param GoodsCarrier: 货贸承运人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GoodsCarrier: String
        # @param ServiceDetail: 服贸交易细节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDetail: String
        # @param ServiceTime: 服贸服务时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTime: String

        attr_accessor :MerchantId, :TradeFileId, :TradeOrderId, :Status, :FailReason, :PayerId, :PayeeName, :PayeeCountryCode, :TradeType, :TradeTime, :TradeCurrency, :TradeAmount, :TradeName, :TradeCount, :GoodsCarrier, :ServiceDetail, :ServiceTime
        
        def initialize(merchantid=nil, tradefileid=nil, tradeorderid=nil, status=nil, failreason=nil, payerid=nil, payeename=nil, payeecountrycode=nil, tradetype=nil, tradetime=nil, tradecurrency=nil, tradeamount=nil, tradename=nil, tradecount=nil, goodscarrier=nil, servicedetail=nil, servicetime=nil)
          @MerchantId = merchantid
          @TradeFileId = tradefileid
          @TradeOrderId = tradeorderid
          @Status = status
          @FailReason = failreason
          @PayerId = payerid
          @PayeeName = payeename
          @PayeeCountryCode = payeecountrycode
          @TradeType = tradetype
          @TradeTime = tradetime
          @TradeCurrency = tradecurrency
          @TradeAmount = tradeamount
          @TradeName = tradename
          @TradeCount = tradecount
          @GoodsCarrier = goodscarrier
          @ServiceDetail = servicedetail
          @ServiceTime = servicetime
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @TradeFileId = params['TradeFileId']
          @TradeOrderId = params['TradeOrderId']
          @Status = params['Status']
          @FailReason = params['FailReason']
          @PayerId = params['PayerId']
          @PayeeName = params['PayeeName']
          @PayeeCountryCode = params['PayeeCountryCode']
          @TradeType = params['TradeType']
          @TradeTime = params['TradeTime']
          @TradeCurrency = params['TradeCurrency']
          @TradeAmount = params['TradeAmount']
          @TradeName = params['TradeName']
          @TradeCount = params['TradeCount']
          @GoodsCarrier = params['GoodsCarrier']
          @ServiceDetail = params['ServiceDetail']
          @ServiceTime = params['ServiceTime']
        end
      end

      # QueryTrade请求参数结构体
      class QueryTradeRequest < TencentCloud::Common::AbstractModel
        # @param TradeFileId: 贸易材料流水号
        # @type TradeFileId: String
        # @param Profile: 接入环境。沙箱环境填sandbox
        # @type Profile: String

        attr_accessor :TradeFileId, :Profile
        
        def initialize(tradefileid=nil, profile=nil)
          @TradeFileId = tradefileid
          @Profile = profile
        end

        def deserialize(params)
          @TradeFileId = params['TradeFileId']
          @Profile = params['Profile']
        end
      end

      # QueryTrade返回参数结构体
      class QueryTradeResponse < TencentCloud::Common::AbstractModel
        # @param Result: 贸易材料明细查询结果
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryTradeResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = QueryTradeResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 贸易材料明细查询结果
      class QueryTradeResult < TencentCloud::Common::AbstractModel
        # @param Data: 贸易材料明细查询数据
        # @type Data: :class:`Tencentcloud::Cpdp.v20190820.models.QueryTradeData`
        # @param Code: 错误码
        # @type Code: String

        attr_accessor :Data, :Code
        
        def initialize(data=nil, code=nil)
          @Data = data
          @Code = code
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = QueryTradeData.new
            @Data.deserialize(params['Data'])
          end
          @Code = params['Code']
        end
      end

      # QueryTransferBatch请求参数结构体
      class QueryTransferBatchRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号。
        # 示例值：129284394
        # @type MerchantId: String
        # @param NeedQueryDetail: 微信明细单号。
        # 微信区分明细单返回的唯一标识。
        # 示例值：1030000071100999991182020050700019480101
        # @type NeedQueryDetail: Boolean
        # @param MerchantBatchNo: 商家批次单号。
        # 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        # 示例值：plfk2020042013
        # @type MerchantBatchNo: String
        # @param BatchId: 是否查询账单明细。
        # true-是；
        # false-否，默认否。
        # 商户可选择是否查询指定状态的转账明细单，当转账批次单状态为“FINISHED”（已完成）时，才会返回满足条件的转账明细单。
        # 示例值：true
        # @type BatchId: String
        # @param Profile: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type Profile: String
        # @param Offset: 请求资源起始位置。
        # 从0开始，默认值为0。
        # 示例值：20
        # @type Offset: Integer
        # @param Limit: 最大资源条数。
        # 该次请求可返回的最大资源（转账明细单）条数，最小20条，最大100条，不传则默认20条。不足20条按实际条数返回
        # 示例值：20
        # @type Limit: Integer
        # @param DetailStatus: 明细状态。
        # ALL：全部，需要同时查询转账成功喝失败的明细单；
        # SUCCESS：转账成功，只查询成功的明细单；
        # FAIL：转账失败，只查询转账失败的明细单。
        # 示例值：FAIL
        # @type DetailStatus: String

        attr_accessor :MerchantId, :NeedQueryDetail, :MerchantBatchNo, :BatchId, :Profile, :Offset, :Limit, :DetailStatus
        
        def initialize(merchantid=nil, needquerydetail=nil, merchantbatchno=nil, batchid=nil, profile=nil, offset=nil, limit=nil, detailstatus=nil)
          @MerchantId = merchantid
          @NeedQueryDetail = needquerydetail
          @MerchantBatchNo = merchantbatchno
          @BatchId = batchid
          @Profile = profile
          @Offset = offset
          @Limit = limit
          @DetailStatus = detailstatus
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @NeedQueryDetail = params['NeedQueryDetail']
          @MerchantBatchNo = params['MerchantBatchNo']
          @BatchId = params['BatchId']
          @Profile = params['Profile']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DetailStatus = params['DetailStatus']
        end
      end

      # QueryTransferBatch返回参数结构体
      class QueryTransferBatchResponse < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号。
        # 示例值：19300009329
        # @type MerchantId: String
        # @param MerchantBatchNo: 商家批次单号。
        # 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        # 示例值：plfk2020042013
        # @type MerchantBatchNo: String
        # @param BatchId: 微信批次单号。
        # 微信商家转账系统返回的唯一标识。
        # 示例值：1030000071100999991182020050700019480001
        # @type BatchId: String
        # @param MerchantAppId: 直连商户appId。
        # 商户号绑定的appid。
        # 示例值：wxf636efh567hg4356
        # @type MerchantAppId: String
        # @param BatchStatus: 批次状态。
        # ACCEPTED:已受理，批次已受理成功，若发起批量转账的30分钟后，转账批次单仍处于该状态，可能原因是商户账户余额不足等。商户可查询账户资金流水，若该笔转账批次单的扣款已经发生，则表示批次已经进入转账中，请再次查单确认；
        # PROCESSING:转账中，已开始处理批次内的转账明细单；
        # FINISHED:已完成，批次内的所有转账明细单都已处理完成；
        # CLOSED:已关闭，可查询具体的批次关闭原因确认；
        # 示例值：ACCEPTED
        # @type BatchStatus: String
        # @param CloseReason: 批次关闭原因。
        # 如果批次单状态为“CLOSED”（已关闭），则有关闭原因；
        # MERCHANT_REVOCATION：商户主动撤销；
        # OVERDUE_CLOSE：系统超时关闭。
        # 示例值：OVERDUE_CLOSE
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CloseReason: String
        # @param TotalAmount: 转账总金额。
        # 转账金额，单位为分。
        # 示例值：4000000
        # @type TotalAmount: Integer
        # @param TotalNum: 转账总笔数。
        # 一个转账批次最多允许发起三千笔转账。
        # 示例值：200
        # @type TotalNum: Integer
        # @param CreateTime: 批次受理成功时返回，遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        # 示例值：2015-05-20T13:29:35.120+08:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 批次最近一次更新时间，遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        # 示例值：2015-05-20T13:29:35.120+08:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param SuccessAmount: 转账成功金额。
        # 转账成功的金额，单位为分，可能随时变化。
        # 示例值：4000000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessAmount: Integer
        # @param SuccessNum: 转账成功的笔数。
        # 可能随时变化。
        # 示例值：200
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessNum: Integer
        # @param FailAmount: 转账失败金额。
        # 转账失败的金额，单位为分，可能随时变化。
        # 示例值：4000000
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailAmount: Integer
        # @param FailNum: 转账失败笔数。
        # 可能随时变化。
        # 示例值：200
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailNum: Integer
        # @param TransferDetails: 转账明细列表。
        # 返回明细详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferDetails: Array
        # @param BatchType: 批次类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchType: String
        # @param BatchName: 批次名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchName: String
        # @param BatchRemark: 批次标注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchRemark: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantId, :MerchantBatchNo, :BatchId, :MerchantAppId, :BatchStatus, :CloseReason, :TotalAmount, :TotalNum, :CreateTime, :UpdateTime, :SuccessAmount, :SuccessNum, :FailAmount, :FailNum, :TransferDetails, :BatchType, :BatchName, :BatchRemark, :RequestId
        
        def initialize(merchantid=nil, merchantbatchno=nil, batchid=nil, merchantappid=nil, batchstatus=nil, closereason=nil, totalamount=nil, totalnum=nil, createtime=nil, updatetime=nil, successamount=nil, successnum=nil, failamount=nil, failnum=nil, transferdetails=nil, batchtype=nil, batchname=nil, batchremark=nil, requestid=nil)
          @MerchantId = merchantid
          @MerchantBatchNo = merchantbatchno
          @BatchId = batchid
          @MerchantAppId = merchantappid
          @BatchStatus = batchstatus
          @CloseReason = closereason
          @TotalAmount = totalamount
          @TotalNum = totalnum
          @CreateTime = createtime
          @UpdateTime = updatetime
          @SuccessAmount = successamount
          @SuccessNum = successnum
          @FailAmount = failamount
          @FailNum = failnum
          @TransferDetails = transferdetails
          @BatchType = batchtype
          @BatchName = batchname
          @BatchRemark = batchremark
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @MerchantBatchNo = params['MerchantBatchNo']
          @BatchId = params['BatchId']
          @MerchantAppId = params['MerchantAppId']
          @BatchStatus = params['BatchStatus']
          @CloseReason = params['CloseReason']
          @TotalAmount = params['TotalAmount']
          @TotalNum = params['TotalNum']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @SuccessAmount = params['SuccessAmount']
          @SuccessNum = params['SuccessNum']
          @FailAmount = params['FailAmount']
          @FailNum = params['FailNum']
          unless params['TransferDetails'].nil?
            @TransferDetails = []
            params['TransferDetails'].each do |i|
              transferdetailresponse_tmp = TransferDetailResponse.new
              transferdetailresponse_tmp.deserialize(i)
              @TransferDetails << transferdetailresponse_tmp
            end
          end
          @BatchType = params['BatchType']
          @BatchName = params['BatchName']
          @BatchRemark = params['BatchRemark']
          @RequestId = params['RequestId']
        end
      end

      # QueryTransferDetail请求参数结构体
      class QueryTransferDetailRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号。
        # 示例值：129284394
        # @type MerchantId: String
        # @param MerchantBatchNo: 商家批次单号。
        # 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        # 示例值：plfk2020042013
        # @type MerchantBatchNo: String
        # @param MerchantDetailNo: 商家明细单号。
        # 商户系统内部的商家明细单号
        # 示例值：plfk2020042013
        # @type MerchantDetailNo: String
        # @param BatchId: 微信批次单号。
        # 微信商家转账系统返回的唯一标识。
        # 商家单号（包含批次号和明细单号）和微信单号（包含批次号和明细单号）二者必填其一。
        # 示例值：1030000071100999991182020050700019480001
        # @type BatchId: String
        # @param DetailId: 微信明细单号。
        # 微信区分明细单返回的唯一标识。
        # 示例值：1030000071100999991182020050700019480001
        # @type DetailId: String
        # @param Profile: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type Profile: String

        attr_accessor :MerchantId, :MerchantBatchNo, :MerchantDetailNo, :BatchId, :DetailId, :Profile
        
        def initialize(merchantid=nil, merchantbatchno=nil, merchantdetailno=nil, batchid=nil, detailid=nil, profile=nil)
          @MerchantId = merchantid
          @MerchantBatchNo = merchantbatchno
          @MerchantDetailNo = merchantdetailno
          @BatchId = batchid
          @DetailId = detailid
          @Profile = profile
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @MerchantBatchNo = params['MerchantBatchNo']
          @MerchantDetailNo = params['MerchantDetailNo']
          @BatchId = params['BatchId']
          @DetailId = params['DetailId']
          @Profile = params['Profile']
        end
      end

      # QueryTransferDetail返回参数结构体
      class QueryTransferDetailResponse < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号。
        # 示例值：19300009329
        # @type MerchantId: String
        # @param MerchantBatchNo: 商家批次单号。
        # 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        # 示例值：plfk2020042013
        # @type MerchantBatchNo: String
        # @param BatchId: 微信批次单号。
        # 微信商家转账系统返回的唯一标识。
        # 示例值：1030000071100999991182020050700019480001
        # @type BatchId: String
        # @param MerchantDetailNo: 商家明细单号。
        # 商户系统内部的商家明细单号
        # 示例值：plfk2020042013
        # @type MerchantDetailNo: String
        # @param DetailId: 微信明细单号。
        # 微信区分明细单返回的唯一标识。
        # 示例值：1030000071100999991182020050700019480001
        # @type DetailId: String
        # @param DetailStatus: 明细状态。
        # PROCESSING：转账中，正在处理，结果未明；
        # SUCCESS：转账成功；
        # FAIL：转账失败，需要确认失败原因以后，再决定是否重新发起地该笔明细的转账。
        # 示例值：SUCCESS
        # @type DetailStatus: String
        # @param TransferAmount: 转账金额。
        # 单位为分。
        # 示例值：200
        # @type TransferAmount: Integer
        # @param FailReason: 失败原因。
        # 如果转账失败则有失败原因
        # ACCOUNT_FROZEN：账户冻结
        # REAL_NAME_CHECK_FAIL：用户未实名
        # NAME_NOT_CORRECT：用户姓名校验失败
        # OPENID_INVALID：Openid校验失败
        # TRANSFER_QUOTA_EXCEED：超过用户单笔收款额度
        # DAY_RECEIVED_QUOTA_EXCEED：超过用户单日收款额度
        # MONTH_RECEIVED_QUOTA_EXCEED：超过用户单月收款额度
        # DAY_RECEIVED_COUNT_EXCEED：超过用户单日收款次数
        # PRODUCT_AUTH_CHECK_FAIL：产品权限校验失败
        # OVERDUE_CLOSE：转账关闭
        # ID_CARD_NOT_CORRECT：用户身份证校验失败
        # ACCOUNT_NOT_EXIST：用户账户不存在
        # TRANSFER_RISK：转账存在风险
        # 示例值：ACCOUNT_FROZEN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailReason: String
        # @param InitiateTime: 转账发起时间。
        # 遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        # 示例值：2015-05-20T13:29:35.120+08:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InitiateTime: String
        # @param UpdateTime: 转账更新时间。
        # 遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        # 示例值：2015-05-20T13:29:35.120+08:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param UserName: 用户名。
        # 示例值：张三
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param TransferRemark: 转账备注。
        # 单条转账备注（微信用户会收到该备注）。UTF8编码，最多32字符。
        # 示例值：2020年4月报销
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferRemark: String
        # @param MerchantAppId: 商家绑定公众号APPID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantAppId: String
        # @param OpenId: 用户openId。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantId, :MerchantBatchNo, :BatchId, :MerchantDetailNo, :DetailId, :DetailStatus, :TransferAmount, :FailReason, :InitiateTime, :UpdateTime, :UserName, :TransferRemark, :MerchantAppId, :OpenId, :RequestId
        
        def initialize(merchantid=nil, merchantbatchno=nil, batchid=nil, merchantdetailno=nil, detailid=nil, detailstatus=nil, transferamount=nil, failreason=nil, initiatetime=nil, updatetime=nil, username=nil, transferremark=nil, merchantappid=nil, openid=nil, requestid=nil)
          @MerchantId = merchantid
          @MerchantBatchNo = merchantbatchno
          @BatchId = batchid
          @MerchantDetailNo = merchantdetailno
          @DetailId = detailid
          @DetailStatus = detailstatus
          @TransferAmount = transferamount
          @FailReason = failreason
          @InitiateTime = initiatetime
          @UpdateTime = updatetime
          @UserName = username
          @TransferRemark = transferremark
          @MerchantAppId = merchantappid
          @OpenId = openid
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @MerchantBatchNo = params['MerchantBatchNo']
          @BatchId = params['BatchId']
          @MerchantDetailNo = params['MerchantDetailNo']
          @DetailId = params['DetailId']
          @DetailStatus = params['DetailStatus']
          @TransferAmount = params['TransferAmount']
          @FailReason = params['FailReason']
          @InitiateTime = params['InitiateTime']
          @UpdateTime = params['UpdateTime']
          @UserName = params['UserName']
          @TransferRemark = params['TransferRemark']
          @MerchantAppId = params['MerchantAppId']
          @OpenId = params['OpenId']
          @RequestId = params['RequestId']
        end
      end

      # 智能代发-单笔代发转账查询接口返回内容
      class QueryTransferResultData < TencentCloud::Common::AbstractModel
        # @param TradeSerialNo: 平台交易流水号
        # @type TradeSerialNo: String
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param TradeStatus: 交易状态。
        # 0 处理中
        # 1 提交成功
        # 2 交易成功
        # 3 交易失败
        # 4 未知渠道异常
        # 99 未知系统异常
        # @type TradeStatus: Integer
        # @param Remark: 业务备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :TradeSerialNo, :OrderId, :TradeStatus, :Remark
        
        def initialize(tradeserialno=nil, orderid=nil, tradestatus=nil, remark=nil)
          @TradeSerialNo = tradeserialno
          @OrderId = orderid
          @TradeStatus = tradestatus
          @Remark = remark
        end

        def deserialize(params)
          @TradeSerialNo = params['TradeSerialNo']
          @OrderId = params['OrderId']
          @TradeStatus = params['TradeStatus']
          @Remark = params['Remark']
        end
      end

      # QueryTransferResult请求参数结构体
      class QueryTransferResultRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param MerchantAppId: 申请商户号的appid或者商户号绑定的appid
        # @type MerchantAppId: String
        # @param TransferType: 1、 微信企业付款
        # 2、 支付宝转账
        # 3、 平安银企直联代发转账
        # @type TransferType: Integer
        # @param TradeSerialNo: 交易流水流水号（与 OrderId 不能同时为空）
        # @type TradeSerialNo: String
        # @param OrderId: 订单号（与 TradeSerialNo 不能同时为空）
        # @type OrderId: String
        # @param Profile: 接入环境。沙箱环境填sandbox。
        # @type Profile: String

        attr_accessor :MerchantId, :MerchantAppId, :TransferType, :TradeSerialNo, :OrderId, :Profile
        
        def initialize(merchantid=nil, merchantappid=nil, transfertype=nil, tradeserialno=nil, orderid=nil, profile=nil)
          @MerchantId = merchantid
          @MerchantAppId = merchantappid
          @TransferType = transfertype
          @TradeSerialNo = tradeserialno
          @OrderId = orderid
          @Profile = profile
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @MerchantAppId = params['MerchantAppId']
          @TransferType = params['TransferType']
          @TradeSerialNo = params['TradeSerialNo']
          @OrderId = params['OrderId']
          @Profile = params['Profile']
        end
      end

      # QueryTransferResult返回参数结构体
      class QueryTransferResultResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功
        # @type ErrCode: String
        # @param ErrMessage: 响应消息
        # @type ErrMessage: String
        # @param Result: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.QueryTransferResultData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = QueryTransferResultData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RechargeByThirdPay请求参数结构体
      class RechargeByThirdPayRequest < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型 此接口固定填：MemberRechargeThirdPayReq
        # @type RequestType: String
        # @param MerchantCode: 商户号
        # @type MerchantCode: String
        # @param PayChannel: 支付渠道
        # @type PayChannel: String
        # @param PayChannelSubId: 子渠道
        # @type PayChannelSubId: Integer
        # @param OrderId: 交易订单号
        # @type OrderId: String
        # @param BankAccountNumber: 父账户账号，资金汇总账号
        # @type BankAccountNumber: String
        # @param PlatformShortNumber: 平台短号(银行分配)
        # @type PlatformShortNumber: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param TransSequenceNumber: 交易流水号
        # @type TransSequenceNumber: String
        # @param BankSubAccountNumber: 子账户账号
        # @type BankSubAccountNumber: String
        # @param TransFee: 交易手续费，以元为单位
        # @type TransFee: String
        # @param ThirdPayChannel: 第三方支付渠道类型 0001-微信 0002-支付宝 0003-京东支付
        # @type ThirdPayChannel: String
        # @param ThirdPayChannelMerchantCode: 第三方渠道商户号
        # @type ThirdPayChannelMerchantCode: String
        # @param ThirdPayChannelOrderId: 第三方渠道订单号或流水号
        # @type ThirdPayChannelOrderId: String
        # @param CurrencyAmount: 交易金额
        # @type CurrencyAmount: String
        # @param CurrencyUnit: 单位，1：元，2：角，3：分
        # @type CurrencyUnit: String
        # @param CurrencyType: 币种
        # @type CurrencyType: String
        # @param TransNetMemberCode: 交易网会员代码
        # @type TransNetMemberCode: String
        # @param MidasEnvironment: midas环境参数
        # @type MidasEnvironment: String
        # @param ReservedMessage: 保留域
        # @type ReservedMessage: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :RequestType, :MerchantCode, :PayChannel, :PayChannelSubId, :OrderId, :BankAccountNumber, :PlatformShortNumber, :MidasSecretId, :MidasAppId, :MidasSignature, :TransSequenceNumber, :BankSubAccountNumber, :TransFee, :ThirdPayChannel, :ThirdPayChannelMerchantCode, :ThirdPayChannelOrderId, :CurrencyAmount, :CurrencyUnit, :CurrencyType, :TransNetMemberCode, :MidasEnvironment, :ReservedMessage, :Remark
        
        def initialize(requesttype=nil, merchantcode=nil, paychannel=nil, paychannelsubid=nil, orderid=nil, bankaccountnumber=nil, platformshortnumber=nil, midassecretid=nil, midasappid=nil, midassignature=nil, transsequencenumber=nil, banksubaccountnumber=nil, transfee=nil, thirdpaychannel=nil, thirdpaychannelmerchantcode=nil, thirdpaychannelorderid=nil, currencyamount=nil, currencyunit=nil, currencytype=nil, transnetmembercode=nil, midasenvironment=nil, reservedmessage=nil, remark=nil)
          @RequestType = requesttype
          @MerchantCode = merchantcode
          @PayChannel = paychannel
          @PayChannelSubId = paychannelsubid
          @OrderId = orderid
          @BankAccountNumber = bankaccountnumber
          @PlatformShortNumber = platformshortnumber
          @MidasSecretId = midassecretid
          @MidasAppId = midasappid
          @MidasSignature = midassignature
          @TransSequenceNumber = transsequencenumber
          @BankSubAccountNumber = banksubaccountnumber
          @TransFee = transfee
          @ThirdPayChannel = thirdpaychannel
          @ThirdPayChannelMerchantCode = thirdpaychannelmerchantcode
          @ThirdPayChannelOrderId = thirdpaychannelorderid
          @CurrencyAmount = currencyamount
          @CurrencyUnit = currencyunit
          @CurrencyType = currencytype
          @TransNetMemberCode = transnetmembercode
          @MidasEnvironment = midasenvironment
          @ReservedMessage = reservedmessage
          @Remark = remark
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @MerchantCode = params['MerchantCode']
          @PayChannel = params['PayChannel']
          @PayChannelSubId = params['PayChannelSubId']
          @OrderId = params['OrderId']
          @BankAccountNumber = params['BankAccountNumber']
          @PlatformShortNumber = params['PlatformShortNumber']
          @MidasSecretId = params['MidasSecretId']
          @MidasAppId = params['MidasAppId']
          @MidasSignature = params['MidasSignature']
          @TransSequenceNumber = params['TransSequenceNumber']
          @BankSubAccountNumber = params['BankSubAccountNumber']
          @TransFee = params['TransFee']
          @ThirdPayChannel = params['ThirdPayChannel']
          @ThirdPayChannelMerchantCode = params['ThirdPayChannelMerchantCode']
          @ThirdPayChannelOrderId = params['ThirdPayChannelOrderId']
          @CurrencyAmount = params['CurrencyAmount']
          @CurrencyUnit = params['CurrencyUnit']
          @CurrencyType = params['CurrencyType']
          @TransNetMemberCode = params['TransNetMemberCode']
          @MidasEnvironment = params['MidasEnvironment']
          @ReservedMessage = params['ReservedMessage']
          @Remark = params['Remark']
        end
      end

      # RechargeByThirdPay返回参数结构体
      class RechargeByThirdPayResponse < TencentCloud::Common::AbstractModel
        # @param ReservedMessage: 保留字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMessage: String
        # @param FrontSequenceNumber: 银行流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSequenceNumber: String
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReservedMessage, :FrontSequenceNumber, :RequestType, :RequestId
        
        def initialize(reservedmessage=nil, frontsequencenumber=nil, requesttype=nil, requestid=nil)
          @ReservedMessage = reservedmessage
          @FrontSequenceNumber = frontsequencenumber
          @RequestType = requesttype
          @RequestId = requestid
        end

        def deserialize(params)
          @ReservedMessage = params['ReservedMessage']
          @FrontSequenceNumber = params['FrontSequenceNumber']
          @RequestType = params['RequestType']
          @RequestId = params['RequestId']
        end
      end

      # RechargeMemberThirdPay请求参数结构体
      class RechargeMemberThirdPayRequest < TencentCloud::Common::AbstractModel
        # @param TranNetMemberCode: STRING(32)，交易网会代码
        # @type TranNetMemberCode: String
        # @param MemberFillAmt: STRING(20)，会员充值金额
        # @type MemberFillAmt: String
        # @param Commission: STRING(20)，手续费金额
        # @type Commission: String
        # @param Ccy: STRING(3)，币种。如RMB
        # @type Ccy: String
        # @param PayChannelType: STRING(20)，支付渠道类型。
        # 0001-微信
        # 0002-支付宝
        # 0003-京东支付
        # @type PayChannelType: String
        # @param PayChannelAssignMerNo: STRING(50)，支付渠道所分配的商户号
        # @type PayChannelAssignMerNo: String
        # @param PayChannelTranSeqNo: STRING(52)，支付渠道交易流水号
        # @type PayChannelTranSeqNo: String
        # @param EjzbOrderNo: STRING(52)，电商见证宝订单号
        # @type EjzbOrderNo: String
        # @param MrchCode: String(22)，商户号
        # @type MrchCode: String
        # @param EjzbOrderContent: STRING(500)，电商见证宝订单内容
        # @type EjzbOrderContent: String
        # @param Remark: STRING(300)，备注
        # @type Remark: String
        # @param ReservedMsgOne: STRING(300)，保留域1
        # @type ReservedMsgOne: String
        # @param ReservedMsgTwo: STRING(300)，保留域2
        # @type ReservedMsgTwo: String
        # @param ReservedMsgThree: STRING(300)，保留域3
        # @type ReservedMsgThree: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :TranNetMemberCode, :MemberFillAmt, :Commission, :Ccy, :PayChannelType, :PayChannelAssignMerNo, :PayChannelTranSeqNo, :EjzbOrderNo, :MrchCode, :EjzbOrderContent, :Remark, :ReservedMsgOne, :ReservedMsgTwo, :ReservedMsgThree, :Profile
        
        def initialize(trannetmembercode=nil, memberfillamt=nil, commission=nil, ccy=nil, paychanneltype=nil, paychannelassignmerno=nil, paychanneltranseqno=nil, ejzborderno=nil, mrchcode=nil, ejzbordercontent=nil, remark=nil, reservedmsgone=nil, reservedmsgtwo=nil, reservedmsgthree=nil, profile=nil)
          @TranNetMemberCode = trannetmembercode
          @MemberFillAmt = memberfillamt
          @Commission = commission
          @Ccy = ccy
          @PayChannelType = paychanneltype
          @PayChannelAssignMerNo = paychannelassignmerno
          @PayChannelTranSeqNo = paychanneltranseqno
          @EjzbOrderNo = ejzborderno
          @MrchCode = mrchcode
          @EjzbOrderContent = ejzbordercontent
          @Remark = remark
          @ReservedMsgOne = reservedmsgone
          @ReservedMsgTwo = reservedmsgtwo
          @ReservedMsgThree = reservedmsgthree
          @Profile = profile
        end

        def deserialize(params)
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberFillAmt = params['MemberFillAmt']
          @Commission = params['Commission']
          @Ccy = params['Ccy']
          @PayChannelType = params['PayChannelType']
          @PayChannelAssignMerNo = params['PayChannelAssignMerNo']
          @PayChannelTranSeqNo = params['PayChannelTranSeqNo']
          @EjzbOrderNo = params['EjzbOrderNo']
          @MrchCode = params['MrchCode']
          @EjzbOrderContent = params['EjzbOrderContent']
          @Remark = params['Remark']
          @ReservedMsgOne = params['ReservedMsgOne']
          @ReservedMsgTwo = params['ReservedMsgTwo']
          @ReservedMsgThree = params['ReservedMsgThree']
          @Profile = params['Profile']
        end
      end

      # RechargeMemberThirdPay返回参数结构体
      class RechargeMemberThirdPayResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param FrontSeqNo: STRING(52)，前置流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param MemberSubAcctPreAvailBal: STRING(20)，会员子账户交易前可用余额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberSubAcctPreAvailBal: String
        # @param ReservedMsgOne: STRING(300)，保留域1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsgOne: String
        # @param ReservedMsgTwo: STRING(300)，保留域2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsgTwo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :FrontSeqNo, :MemberSubAcctPreAvailBal, :ReservedMsgOne, :ReservedMsgTwo, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, frontseqno=nil, membersubacctpreavailbal=nil, reservedmsgone=nil, reservedmsgtwo=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @FrontSeqNo = frontseqno
          @MemberSubAcctPreAvailBal = membersubacctpreavailbal
          @ReservedMsgOne = reservedmsgone
          @ReservedMsgTwo = reservedmsgtwo
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @FrontSeqNo = params['FrontSeqNo']
          @MemberSubAcctPreAvailBal = params['MemberSubAcctPreAvailBal']
          @ReservedMsgOne = params['ReservedMsgOne']
          @ReservedMsgTwo = params['ReservedMsgTwo']
          @RequestId = params['RequestId']
        end
      end

      # RefundMemberTransaction请求参数结构体
      class RefundMemberTransactionRequest < TencentCloud::Common::AbstractModel
        # @param OutSubAccountName: 转出见证子账户的户名
        # @type OutSubAccountName: String
        # @param InSubAccountName: 转入见证子账户的户名
        # @type InSubAccountName: String
        # @param PayChannelSubId: 子渠道
        # @type PayChannelSubId: Integer
        # @param OutSubAccountNumber: 转出见证子账户账号
        # @type OutSubAccountNumber: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param InSubAccountNumber: 转入见证子账户账号
        # @type InSubAccountNumber: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param BankAccountNumber: 父账户账号，资金汇总账号
        # @type BankAccountNumber: String
        # @param OldTransSequenceNumber: 原老订单流水号
        # @type OldTransSequenceNumber: String
        # @param MerchantCode: 银行注册商户号
        # @type MerchantCode: String
        # @param RequestType: 请求类型，固定为MemberTransactionRefundReq
        # @type RequestType: String
        # @param CurrencyAmount: 交易金额
        # @type CurrencyAmount: String
        # @param TransSequenceNumber: 交易流水号
        # @type TransSequenceNumber: String
        # @param PayChannel: 渠道
        # @type PayChannel: String
        # @param OldOrderId: 原订单号
        # @type OldOrderId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param OrderId: 订单号
        # @type OrderId: String
        # @param MidasEnvironment: Midas环境标识 release 现网环境 sandbox 沙箱环境
        # development 开发环境
        # @type MidasEnvironment: String
        # @param OutTransNetMemberCode: 转出子账户交易网会员代码
        # @type OutTransNetMemberCode: String
        # @param InTransNetMemberCode: 转入子账户交易网会员代码
        # @type InTransNetMemberCode: String
        # @param ReservedMessage: 保留域
        # @type ReservedMessage: String
        # @param PlatformShortNumber: 平台短号(银行分配)
        # @type PlatformShortNumber: String
        # @param TransType: 0-登记挂账，1-撤销挂账
        # @type TransType: String
        # @param TransFee: 交易手续费
        # @type TransFee: String

        attr_accessor :OutSubAccountName, :InSubAccountName, :PayChannelSubId, :OutSubAccountNumber, :MidasSignature, :InSubAccountNumber, :MidasSecretId, :BankAccountNumber, :OldTransSequenceNumber, :MerchantCode, :RequestType, :CurrencyAmount, :TransSequenceNumber, :PayChannel, :OldOrderId, :MidasAppId, :OrderId, :MidasEnvironment, :OutTransNetMemberCode, :InTransNetMemberCode, :ReservedMessage, :PlatformShortNumber, :TransType, :TransFee
        
        def initialize(outsubaccountname=nil, insubaccountname=nil, paychannelsubid=nil, outsubaccountnumber=nil, midassignature=nil, insubaccountnumber=nil, midassecretid=nil, bankaccountnumber=nil, oldtranssequencenumber=nil, merchantcode=nil, requesttype=nil, currencyamount=nil, transsequencenumber=nil, paychannel=nil, oldorderid=nil, midasappid=nil, orderid=nil, midasenvironment=nil, outtransnetmembercode=nil, intransnetmembercode=nil, reservedmessage=nil, platformshortnumber=nil, transtype=nil, transfee=nil)
          @OutSubAccountName = outsubaccountname
          @InSubAccountName = insubaccountname
          @PayChannelSubId = paychannelsubid
          @OutSubAccountNumber = outsubaccountnumber
          @MidasSignature = midassignature
          @InSubAccountNumber = insubaccountnumber
          @MidasSecretId = midassecretid
          @BankAccountNumber = bankaccountnumber
          @OldTransSequenceNumber = oldtranssequencenumber
          @MerchantCode = merchantcode
          @RequestType = requesttype
          @CurrencyAmount = currencyamount
          @TransSequenceNumber = transsequencenumber
          @PayChannel = paychannel
          @OldOrderId = oldorderid
          @MidasAppId = midasappid
          @OrderId = orderid
          @MidasEnvironment = midasenvironment
          @OutTransNetMemberCode = outtransnetmembercode
          @InTransNetMemberCode = intransnetmembercode
          @ReservedMessage = reservedmessage
          @PlatformShortNumber = platformshortnumber
          @TransType = transtype
          @TransFee = transfee
        end

        def deserialize(params)
          @OutSubAccountName = params['OutSubAccountName']
          @InSubAccountName = params['InSubAccountName']
          @PayChannelSubId = params['PayChannelSubId']
          @OutSubAccountNumber = params['OutSubAccountNumber']
          @MidasSignature = params['MidasSignature']
          @InSubAccountNumber = params['InSubAccountNumber']
          @MidasSecretId = params['MidasSecretId']
          @BankAccountNumber = params['BankAccountNumber']
          @OldTransSequenceNumber = params['OldTransSequenceNumber']
          @MerchantCode = params['MerchantCode']
          @RequestType = params['RequestType']
          @CurrencyAmount = params['CurrencyAmount']
          @TransSequenceNumber = params['TransSequenceNumber']
          @PayChannel = params['PayChannel']
          @OldOrderId = params['OldOrderId']
          @MidasAppId = params['MidasAppId']
          @OrderId = params['OrderId']
          @MidasEnvironment = params['MidasEnvironment']
          @OutTransNetMemberCode = params['OutTransNetMemberCode']
          @InTransNetMemberCode = params['InTransNetMemberCode']
          @ReservedMessage = params['ReservedMessage']
          @PlatformShortNumber = params['PlatformShortNumber']
          @TransType = params['TransType']
          @TransFee = params['TransFee']
        end
      end

      # RefundMemberTransaction返回参数结构体
      class RefundMemberTransactionResponse < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param FrontSequenceNumber: 银行流水号
        # @type FrontSequenceNumber: String
        # @param ReservedMessage: 保留域
        # @type ReservedMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestType, :FrontSequenceNumber, :ReservedMessage, :RequestId
        
        def initialize(requesttype=nil, frontsequencenumber=nil, reservedmessage=nil, requestid=nil)
          @RequestType = requesttype
          @FrontSequenceNumber = frontsequencenumber
          @ReservedMessage = reservedmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @FrontSequenceNumber = params['FrontSequenceNumber']
          @ReservedMessage = params['ReservedMessage']
          @RequestId = params['RequestId']
        end
      end

      # RefundOrder请求参数结构体
      class RefundOrderRequest < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 进件成功后返给商户方的AppId
        # @type MerchantAppId: String
        # @param OrderNo: 平台流水号。消费订单发起成功后，返回的平台唯一订单号。
        # @type OrderNo: String

        attr_accessor :MerchantAppId, :OrderNo
        
        def initialize(merchantappid=nil, orderno=nil)
          @MerchantAppId = merchantappid
          @OrderNo = orderno
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @OrderNo = params['OrderNo']
        end
      end

      # RefundOrder返回参数结构体
      class RefundOrderResponse < TencentCloud::Common::AbstractModel
        # @param MerchantAppId: 进件成功后返给商户方的AppId
        # @type MerchantAppId: String
        # @param OrderNo: 平台流水号。消费订单发起成功后，返回的平台唯一订单号。
        # @type OrderNo: String
        # @param Status: 订单退款状态。0-退款失败
        # 1-退款成功
        # 2-可疑状态
        # @type Status: String
        # @param Description: 订单退款状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MerchantAppId, :OrderNo, :Status, :Description, :RequestId
        
        def initialize(merchantappid=nil, orderno=nil, status=nil, description=nil, requestid=nil)
          @MerchantAppId = merchantappid
          @OrderNo = orderno
          @Status = status
          @Description = description
          @RequestId = requestid
        end

        def deserialize(params)
          @MerchantAppId = params['MerchantAppId']
          @OrderNo = params['OrderNo']
          @Status = params['Status']
          @Description = params['Description']
          @RequestId = params['RequestId']
        end
      end

      # 订单退款响应对象
      class RefundOrderResult < TencentCloud::Common::AbstractModel
        # @param OrderNo: 付款订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderNo: String
        # @param DeveloperNo: 开发者流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeveloperNo: String
        # @param TradeDiscountAmount: 交易优惠金额（免充值券）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeDiscountAmount: String
        # @param PayName: 付款方式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param OrderMerchantId: 商户流水号（从1开始自增长不重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderMerchantId: String
        # @param TradeAmount: 实际交易金额（以分为单位，没有小数点）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeAmount: String
        # @param CurrencySign: 币种签名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrencySign: String
        # @param TradePayTime: 付款完成时间（以收单机构为准）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradePayTime: String
        # @param ShopOrderId: 门店流水号（从1开始自增长不重复）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopOrderId: String
        # @param PayTag: 支付标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayTag: String
        # @param Status: 订单状态（1交易成功，2待支付，4已取消，9等待用户输入密码确认
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OrderCurrency: 币种代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderCurrency: String
        # @param TradeTime: 开始交易时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeTime: String
        # @param DiscountAmount: 折扣金额（以分为单位，没有小数点）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountAmount: String
        # @param OriginalOrderNo: 原始订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalOrderNo: String

        attr_accessor :OrderNo, :DeveloperNo, :TradeDiscountAmount, :PayName, :OrderMerchantId, :TradeAmount, :CurrencySign, :TradePayTime, :ShopOrderId, :PayTag, :Status, :OrderCurrency, :TradeTime, :DiscountAmount, :OriginalOrderNo
        
        def initialize(orderno=nil, developerno=nil, tradediscountamount=nil, payname=nil, ordermerchantid=nil, tradeamount=nil, currencysign=nil, tradepaytime=nil, shoporderid=nil, paytag=nil, status=nil, ordercurrency=nil, tradetime=nil, discountamount=nil, originalorderno=nil)
          @OrderNo = orderno
          @DeveloperNo = developerno
          @TradeDiscountAmount = tradediscountamount
          @PayName = payname
          @OrderMerchantId = ordermerchantid
          @TradeAmount = tradeamount
          @CurrencySign = currencysign
          @TradePayTime = tradepaytime
          @ShopOrderId = shoporderid
          @PayTag = paytag
          @Status = status
          @OrderCurrency = ordercurrency
          @TradeTime = tradetime
          @DiscountAmount = discountamount
          @OriginalOrderNo = originalorderno
        end

        def deserialize(params)
          @OrderNo = params['OrderNo']
          @DeveloperNo = params['DeveloperNo']
          @TradeDiscountAmount = params['TradeDiscountAmount']
          @PayName = params['PayName']
          @OrderMerchantId = params['OrderMerchantId']
          @TradeAmount = params['TradeAmount']
          @CurrencySign = params['CurrencySign']
          @TradePayTime = params['TradePayTime']
          @ShopOrderId = params['ShopOrderId']
          @PayTag = params['PayTag']
          @Status = params['Status']
          @OrderCurrency = params['OrderCurrency']
          @TradeTime = params['TradeTime']
          @DiscountAmount = params['DiscountAmount']
          @OriginalOrderNo = params['OriginalOrderNo']
        end
      end

      # 退款子订单列表
      class RefundOutSubOrderRefundList < TencentCloud::Common::AbstractModel
        # @param PlatformRefundAmt: 平台应退金额
        # @type PlatformRefundAmt: Integer
        # @param RefundAmt: 子订单退款金额
        # @type RefundAmt: Integer
        # @param SubMchRefundAmt: 商家应退金额
        # @type SubMchRefundAmt: Integer
        # @param SubOutTradeNo: 子订单号
        # @type SubOutTradeNo: String
        # @param SubRefundId: 子退款单号，调用方需要保证 全局唯一性
        # @type SubRefundId: String

        attr_accessor :PlatformRefundAmt, :RefundAmt, :SubMchRefundAmt, :SubOutTradeNo, :SubRefundId
        
        def initialize(platformrefundamt=nil, refundamt=nil, submchrefundamt=nil, subouttradeno=nil, subrefundid=nil)
          @PlatformRefundAmt = platformrefundamt
          @RefundAmt = refundamt
          @SubMchRefundAmt = submchrefundamt
          @SubOutTradeNo = subouttradeno
          @SubRefundId = subrefundid
        end

        def deserialize(params)
          @PlatformRefundAmt = params['PlatformRefundAmt']
          @RefundAmt = params['RefundAmt']
          @SubMchRefundAmt = params['SubMchRefundAmt']
          @SubOutTradeNo = params['SubOutTradeNo']
          @SubRefundId = params['SubRefundId']
        end
      end

      # Refund请求参数结构体
      class RefundRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID，长度不小于5位， 仅支持字母和数字的组合
        # @type UserId: String
        # @param RefundId: 退款订单号，仅支持数字、 字母、下划线（_）、横杠字 符（-）、点（.）的组合
        # @type RefundId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param TotalRefundAmt: 退款金额，单位：分。备注：当该字段为空或者为0 时，系统会默认使用订单当 实付金额作为退款金额
        # @type TotalRefundAmt: Integer
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param OutTradeNo: 商品订单，仅支持数字、字 母、下划线（_）、横杠字符 （-）、点（.）的组合。  OutTradeNo ,TransactionId 二选一,不能都为空,优先使用 OutTradeNo
        # @type OutTradeNo: String
        # @param MchRefundAmt: 结算应收金额，单位：分
        # @type MchRefundAmt: Integer
        # @param TransactionId: 调用下单接口获取的聚鑫交 易订单。  OutTradeNo ,TransactionId 二选一,不能都为空,优先使用 OutTradeNo
        # @type TransactionId: String
        # @param PlatformRefundAmt: 平台应收金额，单位：分
        # @type PlatformRefundAmt: Integer
        # @param SubOrderRefundList: 支持多个子订单批量退款单 个子订单退款支持传 SubOutTradeNo ，也支持传 SubOutTradeNoList ，都传的时候以 SubOutTradeNoList 为准。  如果传了子单退款细节，外 部不需要再传退款金额，平 台应退，商户应退金额，我 们可以直接根据子单退款算出来总和。
        # @type SubOrderRefundList: Array
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :UserId, :RefundId, :MidasAppId, :TotalRefundAmt, :MidasSecretId, :MidasSignature, :OutTradeNo, :MchRefundAmt, :TransactionId, :PlatformRefundAmt, :SubOrderRefundList, :MidasEnvironment
        
        def initialize(userid=nil, refundid=nil, midasappid=nil, totalrefundamt=nil, midassecretid=nil, midassignature=nil, outtradeno=nil, mchrefundamt=nil, transactionid=nil, platformrefundamt=nil, suborderrefundlist=nil, midasenvironment=nil)
          @UserId = userid
          @RefundId = refundid
          @MidasAppId = midasappid
          @TotalRefundAmt = totalrefundamt
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @OutTradeNo = outtradeno
          @MchRefundAmt = mchrefundamt
          @TransactionId = transactionid
          @PlatformRefundAmt = platformrefundamt
          @SubOrderRefundList = suborderrefundlist
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RefundId = params['RefundId']
          @MidasAppId = params['MidasAppId']
          @TotalRefundAmt = params['TotalRefundAmt']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @OutTradeNo = params['OutTradeNo']
          @MchRefundAmt = params['MchRefundAmt']
          @TransactionId = params['TransactionId']
          @PlatformRefundAmt = params['PlatformRefundAmt']
          unless params['SubOrderRefundList'].nil?
            @SubOrderRefundList = []
            params['SubOrderRefundList'].each do |i|
              refundoutsuborderrefundlist_tmp = RefundOutSubOrderRefundList.new
              refundoutsuborderrefundlist_tmp.deserialize(i)
              @SubOrderRefundList << refundoutsuborderrefundlist_tmp
            end
          end
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # Refund返回参数结构体
      class RefundResponse < TencentCloud::Common::AbstractModel
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

      # RefundTlinxOrder请求参数结构体
      class RefundTlinxOrderRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param DeveloperNo: 原始订单的开发者交易流水号
        # @type DeveloperNo: String
        # @param RefundOutNo: 新退款订单的开发者流水号，同一门店内唯一
        # @type RefundOutNo: String
        # @param RefundOrderName: 退款订单名称，可以为空
        # @type RefundOrderName: String
        # @param RefundAmount: 退款金额（以分为单位，没有小数点）
        # @type RefundAmount: String
        # @param ShopPassword: 主管密码，对密码进行SHA-1加密，默认为123456
        # @type ShopPassword: String
        # @param Remark: 退款备注
        # @type Remark: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :DeveloperNo, :RefundOutNo, :RefundOrderName, :RefundAmount, :ShopPassword, :Remark, :Profile
        
        def initialize(openid=nil, openkey=nil, developerno=nil, refundoutno=nil, refundordername=nil, refundamount=nil, shoppassword=nil, remark=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @DeveloperNo = developerno
          @RefundOutNo = refundoutno
          @RefundOrderName = refundordername
          @RefundAmount = refundamount
          @ShopPassword = shoppassword
          @Remark = remark
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @DeveloperNo = params['DeveloperNo']
          @RefundOutNo = params['RefundOutNo']
          @RefundOrderName = params['RefundOrderName']
          @RefundAmount = params['RefundAmount']
          @ShopPassword = params['ShopPassword']
          @Remark = params['Remark']
          @Profile = params['Profile']
        end
      end

      # RefundTlinxOrder返回参数结构体
      class RefundTlinxOrderResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 业务系统返回码，0表示成功，其他表示失败。
        # @type ErrCode: String
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param Result: 退款响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.RefundOrderResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = RefundOrderResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RegisterBehavior请求参数结构体
      class RegisterBehaviorRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param FunctionFlag: 功能标志
        # 1：登记行为记录信息
        # 2：查询补录信息
        # @type FunctionFlag: Integer
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param OperationClickTime: 操作点击时间
        # yyyyMMddHHmmss
        # 功能标志FunctionFlag=1时必输
        # @type OperationClickTime: String
        # @param IpAddress: IP地址
        # 功能标志FunctionFlag=1时必输
        # @type IpAddress: String
        # @param MacAddress: MAC地址
        # 功能标志FunctionFlag=1时必输
        # @type MacAddress: String
        # @param SignChannel: 签约渠道
        # 1:  App
        # 2:  平台H5网页
        # 3：公众号
        # 4：小程序
        # 功能标志FunctionFlag=1时必输
        # @type SignChannel: Integer

        attr_accessor :MidasAppId, :SubAppId, :MidasSecretId, :MidasSignature, :FunctionFlag, :MidasEnvironment, :OperationClickTime, :IpAddress, :MacAddress, :SignChannel
        
        def initialize(midasappid=nil, subappid=nil, midassecretid=nil, midassignature=nil, functionflag=nil, midasenvironment=nil, operationclicktime=nil, ipaddress=nil, macaddress=nil, signchannel=nil)
          @MidasAppId = midasappid
          @SubAppId = subappid
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @FunctionFlag = functionflag
          @MidasEnvironment = midasenvironment
          @OperationClickTime = operationclicktime
          @IpAddress = ipaddress
          @MacAddress = macaddress
          @SignChannel = signchannel
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubAppId = params['SubAppId']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @FunctionFlag = params['FunctionFlag']
          @MidasEnvironment = params['MidasEnvironment']
          @OperationClickTime = params['OperationClickTime']
          @IpAddress = params['IpAddress']
          @MacAddress = params['MacAddress']
          @SignChannel = params['SignChannel']
        end
      end

      # RegisterBehavior返回参数结构体
      class RegisterBehaviorResponse < TencentCloud::Common::AbstractModel
        # @param ReplenishSuccessFlag: 补录是否成功标志
        # 功能标志为2时存在。
        # S：成功
        # F：失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplenishSuccessFlag: String
        # @param RegisterInfo: 签约信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisterInfo: :class:`Tencentcloud::Cpdp.v20190820.models.RegisterInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReplenishSuccessFlag, :RegisterInfo, :RequestId
        
        def initialize(replenishsuccessflag=nil, registerinfo=nil, requestid=nil)
          @ReplenishSuccessFlag = replenishsuccessflag
          @RegisterInfo = registerinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @ReplenishSuccessFlag = params['ReplenishSuccessFlag']
          unless params['RegisterInfo'].nil?
            @RegisterInfo = RegisterInfo.new
            @RegisterInfo.deserialize(params['RegisterInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RegisterBill请求参数结构体
      class RegisterBillRequest < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型此接口固定填：RegBillSupportWithdrawReq
        # @type RequestType: String
        # @param MerchantCode: 商户号
        # @type MerchantCode: String
        # @param PayChannel: 支付渠道
        # @type PayChannel: String
        # @param PayChannelSubId: 子渠道
        # @type PayChannelSubId: Integer
        # @param OrderId: 交易订单号
        # @type OrderId: String
        # @param BankAccountNo: 父账户账号，资金汇总账号
        # @type BankAccountNo: String
        # @param PlatformShortNo: 平台短号(银行分配)
        # @type PlatformShortNo: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param TransSeqNo: 交易流水号
        # @type TransSeqNo: String
        # @param TranFee: 暂未使用，默认传0.0
        # @type TranFee: String
        # @param OrderAmt: 挂账金额，以元为单位
        # @type OrderAmt: String
        # @param BankSubAccountNo: 子账户账号
        # @type BankSubAccountNo: String
        # @param TranNetMemberCode: 交易网会员代码
        # @type TranNetMemberCode: String
        # @param TranType: 0,登记挂账，1，撤销挂账
        # @type TranType: String
        # @param ReservedMessage: 保留域
        # @type ReservedMessage: String
        # @param Remark: 备注
        # @type Remark: String
        # @param MidasEnvironment: Midas环境参数
        # @type MidasEnvironment: String

        attr_accessor :RequestType, :MerchantCode, :PayChannel, :PayChannelSubId, :OrderId, :BankAccountNo, :PlatformShortNo, :MidasSecretId, :MidasAppId, :MidasSignature, :TransSeqNo, :TranFee, :OrderAmt, :BankSubAccountNo, :TranNetMemberCode, :TranType, :ReservedMessage, :Remark, :MidasEnvironment
        
        def initialize(requesttype=nil, merchantcode=nil, paychannel=nil, paychannelsubid=nil, orderid=nil, bankaccountno=nil, platformshortno=nil, midassecretid=nil, midasappid=nil, midassignature=nil, transseqno=nil, tranfee=nil, orderamt=nil, banksubaccountno=nil, trannetmembercode=nil, trantype=nil, reservedmessage=nil, remark=nil, midasenvironment=nil)
          @RequestType = requesttype
          @MerchantCode = merchantcode
          @PayChannel = paychannel
          @PayChannelSubId = paychannelsubid
          @OrderId = orderid
          @BankAccountNo = bankaccountno
          @PlatformShortNo = platformshortno
          @MidasSecretId = midassecretid
          @MidasAppId = midasappid
          @MidasSignature = midassignature
          @TransSeqNo = transseqno
          @TranFee = tranfee
          @OrderAmt = orderamt
          @BankSubAccountNo = banksubaccountno
          @TranNetMemberCode = trannetmembercode
          @TranType = trantype
          @ReservedMessage = reservedmessage
          @Remark = remark
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @MerchantCode = params['MerchantCode']
          @PayChannel = params['PayChannel']
          @PayChannelSubId = params['PayChannelSubId']
          @OrderId = params['OrderId']
          @BankAccountNo = params['BankAccountNo']
          @PlatformShortNo = params['PlatformShortNo']
          @MidasSecretId = params['MidasSecretId']
          @MidasAppId = params['MidasAppId']
          @MidasSignature = params['MidasSignature']
          @TransSeqNo = params['TransSeqNo']
          @TranFee = params['TranFee']
          @OrderAmt = params['OrderAmt']
          @BankSubAccountNo = params['BankSubAccountNo']
          @TranNetMemberCode = params['TranNetMemberCode']
          @TranType = params['TranType']
          @ReservedMessage = params['ReservedMessage']
          @Remark = params['Remark']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # RegisterBill返回参数结构体
      class RegisterBillResponse < TencentCloud::Common::AbstractModel
        # @param FrontSeqNo: 银行流水号
        # @type FrontSeqNo: String
        # @param ReservedMessage: 保留字段
        # @type ReservedMessage: String
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrontSeqNo, :ReservedMessage, :RequestType, :RequestId
        
        def initialize(frontseqno=nil, reservedmessage=nil, requesttype=nil, requestid=nil)
          @FrontSeqNo = frontseqno
          @ReservedMessage = reservedmessage
          @RequestType = requesttype
          @RequestId = requestid
        end

        def deserialize(params)
          @FrontSeqNo = params['FrontSeqNo']
          @ReservedMessage = params['ReservedMessage']
          @RequestType = params['RequestType']
          @RequestId = params['RequestId']
        end
      end

      # RegisterBillSupportWithdraw请求参数结构体
      class RegisterBillSupportWithdrawRequest < TencentCloud::Common::AbstractModel
        # @param TranNetMemberCode: STRING(32)，交易网会员代码
        # @type TranNetMemberCode: String
        # @param OrderNo: STRING(50)，订单号
        # @type OrderNo: String
        # @param SuspendAmt: STRING(20)，挂账金额（包含交易费用）
        # @type SuspendAmt: String
        # @param TranFee: STRING(20)，交易费用（暂未使用，默认传0.0）
        # @type TranFee: String
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param Remark: STRING(300)，备注
        # @type Remark: String
        # @param ReservedMsgOne: STRING(300)，保留域1
        # @type ReservedMsgOne: String
        # @param ReservedMsgTwo: STRING(300)，保留域2
        # @type ReservedMsgTwo: String
        # @param ReservedMsgThree: STRING(300)，保留域3
        # @type ReservedMsgThree: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :TranNetMemberCode, :OrderNo, :SuspendAmt, :TranFee, :MrchCode, :Remark, :ReservedMsgOne, :ReservedMsgTwo, :ReservedMsgThree, :Profile
        
        def initialize(trannetmembercode=nil, orderno=nil, suspendamt=nil, tranfee=nil, mrchcode=nil, remark=nil, reservedmsgone=nil, reservedmsgtwo=nil, reservedmsgthree=nil, profile=nil)
          @TranNetMemberCode = trannetmembercode
          @OrderNo = orderno
          @SuspendAmt = suspendamt
          @TranFee = tranfee
          @MrchCode = mrchcode
          @Remark = remark
          @ReservedMsgOne = reservedmsgone
          @ReservedMsgTwo = reservedmsgtwo
          @ReservedMsgThree = reservedmsgthree
          @Profile = profile
        end

        def deserialize(params)
          @TranNetMemberCode = params['TranNetMemberCode']
          @OrderNo = params['OrderNo']
          @SuspendAmt = params['SuspendAmt']
          @TranFee = params['TranFee']
          @MrchCode = params['MrchCode']
          @Remark = params['Remark']
          @ReservedMsgOne = params['ReservedMsgOne']
          @ReservedMsgTwo = params['ReservedMsgTwo']
          @ReservedMsgThree = params['ReservedMsgThree']
          @Profile = params['Profile']
        end
      end

      # RegisterBillSupportWithdraw返回参数结构体
      class RegisterBillSupportWithdrawResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnsmrSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :FrontSeqNo, :CnsmrSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, frontseqno=nil, cnsmrseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @FrontSeqNo = frontseqno
          @CnsmrSeqNo = cnsmrseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @FrontSeqNo = params['FrontSeqNo']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 签约信息
      class RegisterInfo < TencentCloud::Common::AbstractModel
        # @param LegalPersonIdCode: 法人证件号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LegalPersonIdCode: String
        # @param LegalPersonIdType: 法人证件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LegalPersonIdType: String
        # @param LegalPersonName: 法人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LegalPersonName: String
        # @param OrganizationCode: 公司证件号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCode: String
        # @param OrganizationName: 公司名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationName: String
        # @param OrganizationType: 公司证件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationType: String

        attr_accessor :LegalPersonIdCode, :LegalPersonIdType, :LegalPersonName, :OrganizationCode, :OrganizationName, :OrganizationType
        
        def initialize(legalpersonidcode=nil, legalpersonidtype=nil, legalpersonname=nil, organizationcode=nil, organizationname=nil, organizationtype=nil)
          @LegalPersonIdCode = legalpersonidcode
          @LegalPersonIdType = legalpersonidtype
          @LegalPersonName = legalpersonname
          @OrganizationCode = organizationcode
          @OrganizationName = organizationname
          @OrganizationType = organizationtype
        end

        def deserialize(params)
          @LegalPersonIdCode = params['LegalPersonIdCode']
          @LegalPersonIdType = params['LegalPersonIdType']
          @LegalPersonName = params['LegalPersonName']
          @OrganizationCode = params['OrganizationCode']
          @OrganizationName = params['OrganizationName']
          @OrganizationType = params['OrganizationType']
        end
      end

      # 签约数据
      class ResponseQueryContract < TencentCloud::Common::AbstractModel
        # @param ExternalReturnCode: 第三方渠道错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnCode: String
        # @param ExternalReturnMessage: 第三方渠道错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnMessage: String
        # @param ExternalReturnData: 第三方渠道返回的原始数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnData: String
        # @param ChannelMerchantId: 米大师内部商户号
        # @type ChannelMerchantId: String
        # @param ChannelSubMerchantId: 米大师内部子商户号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelSubMerchantId: String
        # @param ChannelAppId: 米大师内部应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelAppId: String
        # @param ChannelSubAppId: 米大师内部子应用ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelSubAppId: String
        # @param ChannelName: 渠道名称
        # @type ChannelName: String
        # @param ReturnContractInfo: 返回的合约信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnContractInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ReturnContractInfo`
        # @param NotifyUrl: 签约通知地址
        # @type NotifyUrl: String

        attr_accessor :ExternalReturnCode, :ExternalReturnMessage, :ExternalReturnData, :ChannelMerchantId, :ChannelSubMerchantId, :ChannelAppId, :ChannelSubAppId, :ChannelName, :ReturnContractInfo, :NotifyUrl
        
        def initialize(externalreturncode=nil, externalreturnmessage=nil, externalreturndata=nil, channelmerchantid=nil, channelsubmerchantid=nil, channelappid=nil, channelsubappid=nil, channelname=nil, returncontractinfo=nil, notifyurl=nil)
          @ExternalReturnCode = externalreturncode
          @ExternalReturnMessage = externalreturnmessage
          @ExternalReturnData = externalreturndata
          @ChannelMerchantId = channelmerchantid
          @ChannelSubMerchantId = channelsubmerchantid
          @ChannelAppId = channelappid
          @ChannelSubAppId = channelsubappid
          @ChannelName = channelname
          @ReturnContractInfo = returncontractinfo
          @NotifyUrl = notifyurl
        end

        def deserialize(params)
          @ExternalReturnCode = params['ExternalReturnCode']
          @ExternalReturnMessage = params['ExternalReturnMessage']
          @ExternalReturnData = params['ExternalReturnData']
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @ChannelAppId = params['ChannelAppId']
          @ChannelSubAppId = params['ChannelSubAppId']
          @ChannelName = params['ChannelName']
          unless params['ReturnContractInfo'].nil?
            @ReturnContractInfo = ReturnContractInfo.new
            @ReturnContractInfo.deserialize(params['ReturnContractInfo'])
          end
          @NotifyUrl = params['NotifyUrl']
        end
      end

      # 解约数据
      class ResponseTerminateContract < TencentCloud::Common::AbstractModel
        # @param ExternalReturnCode: 第三方渠道错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnCode: String
        # @param ExternalReturnMessage: 第三方渠道错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnMessage: String
        # @param ExternalReturnData: 第三方渠道返回的原始数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalReturnData: String

        attr_accessor :ExternalReturnCode, :ExternalReturnMessage, :ExternalReturnData
        
        def initialize(externalreturncode=nil, externalreturnmessage=nil, externalreturndata=nil)
          @ExternalReturnCode = externalreturncode
          @ExternalReturnMessage = externalreturnmessage
          @ExternalReturnData = externalreturndata
        end

        def deserialize(params)
          @ExternalReturnCode = params['ExternalReturnCode']
          @ExternalReturnMessage = params['ExternalReturnMessage']
          @ExternalReturnData = params['ExternalReturnData']
        end
      end

      # 返回的合约信息
      class ReturnContractInfo < TencentCloud::Common::AbstractModel
        # @param ContractInfo: 合约信息
        # @type ContractInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ContractInfo`
        # @param ChannelReturnContractInfo: 米大师内部生成的合约信息
        # @type ChannelReturnContractInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ChannelReturnContractInfo`
        # @param ExternalReturnContractInfo: 第三方渠道合约信息
        # @type ExternalReturnContractInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ExternalReturnContractInfo`

        attr_accessor :ContractInfo, :ChannelReturnContractInfo, :ExternalReturnContractInfo
        
        def initialize(contractinfo=nil, channelreturncontractinfo=nil, externalreturncontractinfo=nil)
          @ContractInfo = contractinfo
          @ChannelReturnContractInfo = channelreturncontractinfo
          @ExternalReturnContractInfo = externalreturncontractinfo
        end

        def deserialize(params)
          unless params['ContractInfo'].nil?
            @ContractInfo = ContractInfo.new
            @ContractInfo.deserialize(params['ContractInfo'])
          end
          unless params['ChannelReturnContractInfo'].nil?
            @ChannelReturnContractInfo = ChannelReturnContractInfo.new
            @ChannelReturnContractInfo.deserialize(params['ChannelReturnContractInfo'])
          end
          unless params['ExternalReturnContractInfo'].nil?
            @ExternalReturnContractInfo = ExternalReturnContractInfo.new
            @ExternalReturnContractInfo.deserialize(params['ExternalReturnContractInfo'])
          end
        end
      end

      # RevResigterBillSupportWithdraw请求参数结构体
      class RevResigterBillSupportWithdrawRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码
        # @type TranNetMemberCode: String
        # @param OldOrderNo: STRING(30)，原订单号（RegisterBillSupportWithdraw接口中的订单号）
        # @type OldOrderNo: String
        # @param CancelAmt: STRING(20)，撤销金额（支持部分撤销，不能大于原订单可用金额，包含交易费用）
        # @type CancelAmt: String
        # @param TranFee: STRING(20)，交易费用（暂未使用，默认传0.0）
        # @type TranFee: String
        # @param Remark: STRING(300)，备注
        # @type Remark: String
        # @param ReservedMsgOne: STRING(300)，保留域1
        # @type ReservedMsgOne: String
        # @param ReservedMsgTwo: STRING(300)，保留域2
        # @type ReservedMsgTwo: String
        # @param ReservedMsgThree: STRING(300)，保留域3
        # @type ReservedMsgThree: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :TranNetMemberCode, :OldOrderNo, :CancelAmt, :TranFee, :Remark, :ReservedMsgOne, :ReservedMsgTwo, :ReservedMsgThree, :Profile
        
        def initialize(mrchcode=nil, trannetmembercode=nil, oldorderno=nil, cancelamt=nil, tranfee=nil, remark=nil, reservedmsgone=nil, reservedmsgtwo=nil, reservedmsgthree=nil, profile=nil)
          @MrchCode = mrchcode
          @TranNetMemberCode = trannetmembercode
          @OldOrderNo = oldorderno
          @CancelAmt = cancelamt
          @TranFee = tranfee
          @Remark = remark
          @ReservedMsgOne = reservedmsgone
          @ReservedMsgTwo = reservedmsgtwo
          @ReservedMsgThree = reservedmsgthree
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @TranNetMemberCode = params['TranNetMemberCode']
          @OldOrderNo = params['OldOrderNo']
          @CancelAmt = params['CancelAmt']
          @TranFee = params['TranFee']
          @Remark = params['Remark']
          @ReservedMsgOne = params['ReservedMsgOne']
          @ReservedMsgTwo = params['ReservedMsgTwo']
          @ReservedMsgThree = params['ReservedMsgThree']
          @Profile = params['Profile']
        end
      end

      # RevResigterBillSupportWithdraw返回参数结构体
      class RevResigterBillSupportWithdrawResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :FrontSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, frontseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @FrontSeqNo = frontseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @FrontSeqNo = params['FrontSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # ReviseMbrProperty请求参数结构体
      class ReviseMbrPropertyRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param SubAcctNo: STRING(50)，见证子账户的账号
        # @type SubAcctNo: String
        # @param MemberProperty: STRING(10)，会员属性（00-普通子账号; SH-商户子账户。暂时只支持00-普通子账号改为SH-商户子账户）
        # @type MemberProperty: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :SubAcctNo, :MemberProperty, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, subacctno=nil, memberproperty=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @SubAcctNo = subacctno
          @MemberProperty = memberproperty
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @SubAcctNo = params['SubAcctNo']
          @MemberProperty = params['MemberProperty']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # ReviseMbrProperty返回参数结构体
      class ReviseMbrPropertyResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # RevokeMemberRechargeThirdPay请求参数结构体
      class RevokeMemberRechargeThirdPayRequest < TencentCloud::Common::AbstractModel
        # @param OldFillFrontSeqNo: STRING(52)，原充值的前置流水号
        # @type OldFillFrontSeqNo: String
        # @param OldFillPayChannelType: STRING(20)，原充值的支付渠道类型
        # @type OldFillPayChannelType: String
        # @param OldPayChannelTranSeqNo: STRING(52)，原充值的支付渠道交易流水号
        # @type OldPayChannelTranSeqNo: String
        # @param OldFillEjzbOrderNo: STRING(52)，原充值的电商见证宝订单号
        # @type OldFillEjzbOrderNo: String
        # @param ApplyCancelMemberAmt: STRING(20)，申请撤销的会员金额
        # @type ApplyCancelMemberAmt: String
        # @param ApplyCancelCommission: STRING(20)，申请撤销的手续费金额
        # @type ApplyCancelCommission: String
        # @param MrchCode: String(22)，商户号
        # @type MrchCode: String
        # @param Remark: STRING(300)，备注
        # @type Remark: String
        # @param ReservedMsgOne: STRING(300)，保留域1
        # @type ReservedMsgOne: String
        # @param ReservedMsgTwo: STRING(300)，保留域2
        # @type ReservedMsgTwo: String
        # @param ReservedMsgThree: STRING(300)，保留域3
        # @type ReservedMsgThree: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :OldFillFrontSeqNo, :OldFillPayChannelType, :OldPayChannelTranSeqNo, :OldFillEjzbOrderNo, :ApplyCancelMemberAmt, :ApplyCancelCommission, :MrchCode, :Remark, :ReservedMsgOne, :ReservedMsgTwo, :ReservedMsgThree, :Profile
        
        def initialize(oldfillfrontseqno=nil, oldfillpaychanneltype=nil, oldpaychanneltranseqno=nil, oldfillejzborderno=nil, applycancelmemberamt=nil, applycancelcommission=nil, mrchcode=nil, remark=nil, reservedmsgone=nil, reservedmsgtwo=nil, reservedmsgthree=nil, profile=nil)
          @OldFillFrontSeqNo = oldfillfrontseqno
          @OldFillPayChannelType = oldfillpaychanneltype
          @OldPayChannelTranSeqNo = oldpaychanneltranseqno
          @OldFillEjzbOrderNo = oldfillejzborderno
          @ApplyCancelMemberAmt = applycancelmemberamt
          @ApplyCancelCommission = applycancelcommission
          @MrchCode = mrchcode
          @Remark = remark
          @ReservedMsgOne = reservedmsgone
          @ReservedMsgTwo = reservedmsgtwo
          @ReservedMsgThree = reservedmsgthree
          @Profile = profile
        end

        def deserialize(params)
          @OldFillFrontSeqNo = params['OldFillFrontSeqNo']
          @OldFillPayChannelType = params['OldFillPayChannelType']
          @OldPayChannelTranSeqNo = params['OldPayChannelTranSeqNo']
          @OldFillEjzbOrderNo = params['OldFillEjzbOrderNo']
          @ApplyCancelMemberAmt = params['ApplyCancelMemberAmt']
          @ApplyCancelCommission = params['ApplyCancelCommission']
          @MrchCode = params['MrchCode']
          @Remark = params['Remark']
          @ReservedMsgOne = params['ReservedMsgOne']
          @ReservedMsgTwo = params['ReservedMsgTwo']
          @ReservedMsgThree = params['ReservedMsgThree']
          @Profile = params['Profile']
        end
      end

      # RevokeMemberRechargeThirdPay返回参数结构体
      class RevokeMemberRechargeThirdPayResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param FrontSeqNo: STRING(52)，前置流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param ReservedMsgOne: STRING(300)，保留域1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsgOne: String
        # @param ReservedMsgTwo: STRING(300)，保留域2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsgTwo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :FrontSeqNo, :ReservedMsgOne, :ReservedMsgTwo, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, frontseqno=nil, reservedmsgone=nil, reservedmsgtwo=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @FrontSeqNo = frontseqno
          @ReservedMsgOne = reservedmsgone
          @ReservedMsgTwo = reservedmsgtwo
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @FrontSeqNo = params['FrontSeqNo']
          @ReservedMsgOne = params['ReservedMsgOne']
          @ReservedMsgTwo = params['ReservedMsgTwo']
          @RequestId = params['RequestId']
        end
      end

      # RevokeRechargeByThirdPay请求参数结构体
      class RevokeRechargeByThirdPayRequest < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型此接口固定填：RevokeMemberRechargeThirdPayReq
        # @type RequestType: String
        # @param MerchantCode: 商户号
        # @type MerchantCode: String
        # @param PayChannel: 支付渠道
        # @type PayChannel: String
        # @param PayChannelSubId: 子渠道
        # @type PayChannelSubId: Integer
        # @param OrderId: 原始充值交易订单号
        # @type OrderId: String
        # @param BankAccountNumber: 父账户账号，资金汇总账号
        # @type BankAccountNumber: String
        # @param PlatformShortNumber: 平台短号(银行分配)
        # @type PlatformShortNumber: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param MidasSignature: 计费签名
        # @type MidasSignature: String
        # @param TransSequenceNumber: 交易流水号
        # @type TransSequenceNumber: String
        # @param TransFee: 申请撤销的手续费金额,以元为单位
        # @type TransFee: String
        # @param ThirdPayChannel: 第三方支付渠道类型 0001-微信 0002-支付宝 0003-京东支付
        # @type ThirdPayChannel: String
        # @param ThirdPayChannelOrderId: 第三方渠道订单号或流水号
        # @type ThirdPayChannelOrderId: String
        # @param OldFrontSequenceNumber: 充值接口银行返回的流水号(FrontSeqNo)
        # @type OldFrontSequenceNumber: String
        # @param CurrencyAmount: 申请撤销的金额
        # @type CurrencyAmount: String
        # @param CurrencyUnit: 单位，1：元，2：角，3：分 目前固定填1
        # @type CurrencyUnit: String
        # @param CurrencyType: 币种 目前固定填RMB
        # @type CurrencyType: String
        # @param MidasEnvironment: Midas环境标识
        # @type MidasEnvironment: String
        # @param ReservedMessage: 保留域
        # @type ReservedMessage: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :RequestType, :MerchantCode, :PayChannel, :PayChannelSubId, :OrderId, :BankAccountNumber, :PlatformShortNumber, :MidasSecretId, :MidasAppId, :MidasSignature, :TransSequenceNumber, :TransFee, :ThirdPayChannel, :ThirdPayChannelOrderId, :OldFrontSequenceNumber, :CurrencyAmount, :CurrencyUnit, :CurrencyType, :MidasEnvironment, :ReservedMessage, :Remark
        
        def initialize(requesttype=nil, merchantcode=nil, paychannel=nil, paychannelsubid=nil, orderid=nil, bankaccountnumber=nil, platformshortnumber=nil, midassecretid=nil, midasappid=nil, midassignature=nil, transsequencenumber=nil, transfee=nil, thirdpaychannel=nil, thirdpaychannelorderid=nil, oldfrontsequencenumber=nil, currencyamount=nil, currencyunit=nil, currencytype=nil, midasenvironment=nil, reservedmessage=nil, remark=nil)
          @RequestType = requesttype
          @MerchantCode = merchantcode
          @PayChannel = paychannel
          @PayChannelSubId = paychannelsubid
          @OrderId = orderid
          @BankAccountNumber = bankaccountnumber
          @PlatformShortNumber = platformshortnumber
          @MidasSecretId = midassecretid
          @MidasAppId = midasappid
          @MidasSignature = midassignature
          @TransSequenceNumber = transsequencenumber
          @TransFee = transfee
          @ThirdPayChannel = thirdpaychannel
          @ThirdPayChannelOrderId = thirdpaychannelorderid
          @OldFrontSequenceNumber = oldfrontsequencenumber
          @CurrencyAmount = currencyamount
          @CurrencyUnit = currencyunit
          @CurrencyType = currencytype
          @MidasEnvironment = midasenvironment
          @ReservedMessage = reservedmessage
          @Remark = remark
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @MerchantCode = params['MerchantCode']
          @PayChannel = params['PayChannel']
          @PayChannelSubId = params['PayChannelSubId']
          @OrderId = params['OrderId']
          @BankAccountNumber = params['BankAccountNumber']
          @PlatformShortNumber = params['PlatformShortNumber']
          @MidasSecretId = params['MidasSecretId']
          @MidasAppId = params['MidasAppId']
          @MidasSignature = params['MidasSignature']
          @TransSequenceNumber = params['TransSequenceNumber']
          @TransFee = params['TransFee']
          @ThirdPayChannel = params['ThirdPayChannel']
          @ThirdPayChannelOrderId = params['ThirdPayChannelOrderId']
          @OldFrontSequenceNumber = params['OldFrontSequenceNumber']
          @CurrencyAmount = params['CurrencyAmount']
          @CurrencyUnit = params['CurrencyUnit']
          @CurrencyType = params['CurrencyType']
          @MidasEnvironment = params['MidasEnvironment']
          @ReservedMessage = params['ReservedMessage']
          @Remark = params['Remark']
        end
      end

      # RevokeRechargeByThirdPay返回参数结构体
      class RevokeRechargeByThirdPayResponse < TencentCloud::Common::AbstractModel
        # @param RequestType: 请求类型
        # @type RequestType: String
        # @param ReservedMessage: 保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMessage: String
        # @param FrontSequenceNumber: 银行流水号
        # @type FrontSequenceNumber: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestType, :ReservedMessage, :FrontSequenceNumber, :RequestId
        
        def initialize(requesttype=nil, reservedmessage=nil, frontsequencenumber=nil, requestid=nil)
          @RequestType = requesttype
          @ReservedMessage = reservedmessage
          @FrontSequenceNumber = frontsequencenumber
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestType = params['RequestType']
          @ReservedMessage = params['ReservedMessage']
          @FrontSequenceNumber = params['FrontSequenceNumber']
          @RequestId = params['RequestId']
        end
      end

      # 场景信息
      class SceneInfo < TencentCloud::Common::AbstractModel
        # @param LocaleCode: 语言代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocaleCode: String
        # @param RegionCode: 地区代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegionCode: String
        # @param UserClientIp: 用户IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserClientIp: String

        attr_accessor :LocaleCode, :RegionCode, :UserClientIp
        
        def initialize(localecode=nil, regioncode=nil, userclientip=nil)
          @LocaleCode = localecode
          @RegionCode = regioncode
          @UserClientIp = userclientip
        end

        def deserialize(params)
          @LocaleCode = params['LocaleCode']
          @RegionCode = params['RegionCode']
          @UserClientIp = params['UserClientIp']
        end
      end

      # SyncContractData请求参数结构体
      class SyncContractDataRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param UserId: 用户ID，长度不小于5位，仅支持字母和数字的组合
        # @type UserId: String
        # @param Channel: 签约使用的渠道
        # @type Channel: String
        # @param OutContractCode: 业务签约合同协议号
        # @type OutContractCode: String
        # @param ContractStatus: 签约状态，枚举值
        # CONTRACT_STATUS_INVALID=无效状态
        # CONTRACT_STATUS_SIGNED=已签约
        # CONTRACT_STATUS_TERMINATED=已解约
        # CONTRACT_STATUS_PENDING=签约进行中
        # @type ContractStatus: String
        # @param ContractSyncInfo: 签约同步信息
        # @type ContractSyncInfo: :class:`Tencentcloud::Cpdp.v20190820.models.ContractSyncInfo`
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param UserType: 用户类型，枚举值
        # USER_ID: 用户ID
        # ANONYMOUS: 匿名类型 USER_ID
        # 默认值为 USER_ID
        # @type UserType: String
        # @param SceneInfo: 场景信息
        # @type SceneInfo: :class:`Tencentcloud::Cpdp.v20190820.models.SceneInfo`
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :UserId, :Channel, :OutContractCode, :ContractStatus, :ContractSyncInfo, :MidasSignature, :MidasSecretId, :SubAppId, :UserType, :SceneInfo, :MidasEnvironment
        
        def initialize(midasappid=nil, userid=nil, channel=nil, outcontractcode=nil, contractstatus=nil, contractsyncinfo=nil, midassignature=nil, midassecretid=nil, subappid=nil, usertype=nil, sceneinfo=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @UserId = userid
          @Channel = channel
          @OutContractCode = outcontractcode
          @ContractStatus = contractstatus
          @ContractSyncInfo = contractsyncinfo
          @MidasSignature = midassignature
          @MidasSecretId = midassecretid
          @SubAppId = subappid
          @UserType = usertype
          @SceneInfo = sceneinfo
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @UserId = params['UserId']
          @Channel = params['Channel']
          @OutContractCode = params['OutContractCode']
          @ContractStatus = params['ContractStatus']
          unless params['ContractSyncInfo'].nil?
            @ContractSyncInfo = ContractSyncInfo.new
            @ContractSyncInfo.deserialize(params['ContractSyncInfo'])
          end
          @MidasSignature = params['MidasSignature']
          @MidasSecretId = params['MidasSecretId']
          @SubAppId = params['SubAppId']
          @UserType = params['UserType']
          unless params['SceneInfo'].nil?
            @SceneInfo = SceneInfo.new
            @SceneInfo.deserialize(params['SceneInfo'])
          end
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # SyncContractData返回参数结构体
      class SyncContractDataResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 请求处理信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # TerminateContract请求参数结构体
      class TerminateContractRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param UserId: 用户ID，长度不小于5位，仅支持字母和数字的组合
        # @type UserId: String
        # @param Channel: 指定渠道：  wechat：微信支付  qqwallet：QQ钱包
        #  bank：网银支付  只有一个渠道时需要指定
        # @type Channel: String
        # @param TerminateMode: 枚举值：
        # CONTRACT_TERMINATION_MODE_BY_OUT_CONTRACT_CODE: 按OutContractCode+ContractSceneId解约
        # CONTRACT_TERMINATION_MODE_BY_CHANNEL_CONTRACT_CODE：按ChannelContractCode解约
        # @type TerminateMode: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param OutContractCode: 业务签约合同协议号 当TerminateMode=CONTRACT_TERMINATION_MODE_BY_OUT_CONTRACT_CODE 时 必填
        # @type OutContractCode: String
        # @param ContractSceneId: 签约场景ID，当 TerminateMode=CONTRACT_TERMINATION_MODE_BY_OUT_CONTRACT_CODE 时 必填，在米大师侧托管后生成
        # @type ContractSceneId: String
        # @param ChannelContractCode: 米大师生成的协议号 当 TerminateMode=CONTRACT_TERMINATION_MODE_BY_CHANNEL_CONTRACT_CODE 时 必填
        # @type ChannelContractCode: String
        # @param ExternalContractData: 第三方渠道合约数据，json字符串，与特定渠道有关
        # @type ExternalContractData: String
        # @param TerminationReason: 终止合约原因
        # @type TerminationReason: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param UserType: USER_ID: 用户ID
        # ANONYMOUS: 匿名类型 USER_ID
        # 默认值为 USER_ID
        # @type UserType: String
        # @param ContractMethod: 签约方式
        # @type ContractMethod: String
        # @param MigrateMode: 签约代扣穿透查询存量数据迁移模式
        # @type MigrateMode: String

        attr_accessor :MidasAppId, :UserId, :Channel, :TerminateMode, :MidasSecretId, :MidasSignature, :SubAppId, :OutContractCode, :ContractSceneId, :ChannelContractCode, :ExternalContractData, :TerminationReason, :MidasEnvironment, :UserType, :ContractMethod, :MigrateMode
        
        def initialize(midasappid=nil, userid=nil, channel=nil, terminatemode=nil, midassecretid=nil, midassignature=nil, subappid=nil, outcontractcode=nil, contractsceneid=nil, channelcontractcode=nil, externalcontractdata=nil, terminationreason=nil, midasenvironment=nil, usertype=nil, contractmethod=nil, migratemode=nil)
          @MidasAppId = midasappid
          @UserId = userid
          @Channel = channel
          @TerminateMode = terminatemode
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @SubAppId = subappid
          @OutContractCode = outcontractcode
          @ContractSceneId = contractsceneid
          @ChannelContractCode = channelcontractcode
          @ExternalContractData = externalcontractdata
          @TerminationReason = terminationreason
          @MidasEnvironment = midasenvironment
          @UserType = usertype
          @ContractMethod = contractmethod
          @MigrateMode = migratemode
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @UserId = params['UserId']
          @Channel = params['Channel']
          @TerminateMode = params['TerminateMode']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @SubAppId = params['SubAppId']
          @OutContractCode = params['OutContractCode']
          @ContractSceneId = params['ContractSceneId']
          @ChannelContractCode = params['ChannelContractCode']
          @ExternalContractData = params['ExternalContractData']
          @TerminationReason = params['TerminationReason']
          @MidasEnvironment = params['MidasEnvironment']
          @UserType = params['UserType']
          @ContractMethod = params['ContractMethod']
          @MigrateMode = params['MigrateMode']
        end
      end

      # TerminateContract返回参数结构体
      class TerminateContractResponse < TencentCloud::Common::AbstractModel
        # @param ContractTerminateData: 解约数据
        # @type ContractTerminateData: :class:`Tencentcloud::Cpdp.v20190820.models.ResponseTerminateContract`
        # @param Msg: 请求处理信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContractTerminateData, :Msg, :RequestId
        
        def initialize(contractterminatedata=nil, msg=nil, requestid=nil)
          @ContractTerminateData = contractterminatedata
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContractTerminateData'].nil?
            @ContractTerminateData = ResponseTerminateContract.new
            @ContractTerminateData.deserialize(params['ContractTerminateData'])
          end
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 交易信息
      class TranItem < TencentCloud::Common::AbstractModel
        # @param FundSummaryAcctNo: STRING(50)，资金汇总账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FundSummaryAcctNo: String
        # @param SubAcctNo: STRING(50)，见证子账户的账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctNo: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranNetMemberCode: String
        # @param MemberName: STRING(150)，会员名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberName: String
        # @param MemberGlobalType: STRING(5)，会员证件类型（详情见“常见问题”）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberGlobalType: String
        # @param MemberGlobalId: STRING(32)，会员证件号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberGlobalId: String
        # @param MemberAcctNo: STRING(50)，会员绑定账户的账号（提现的银行卡）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberAcctNo: String
        # @param BankType: STRING(10)，会员绑定账户的本他行类型（1: 本行; 2: 他行）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankType: String
        # @param AcctOpenBranchName: STRING(150)，会员绑定账户的开户行名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AcctOpenBranchName: String
        # @param CnapsBranchId: STRING(20)，会员绑定账户的开户行的联行号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CnapsBranchId: String
        # @param EiconBankBranchId: STRING(20)，会员绑定账户的开户行的超级网银行号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EiconBankBranchId: String
        # @param Mobile: STRING(30)，会员的手机号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mobile: String

        attr_accessor :FundSummaryAcctNo, :SubAcctNo, :TranNetMemberCode, :MemberName, :MemberGlobalType, :MemberGlobalId, :MemberAcctNo, :BankType, :AcctOpenBranchName, :CnapsBranchId, :EiconBankBranchId, :Mobile
        
        def initialize(fundsummaryacctno=nil, subacctno=nil, trannetmembercode=nil, membername=nil, memberglobaltype=nil, memberglobalid=nil, memberacctno=nil, banktype=nil, acctopenbranchname=nil, cnapsbranchid=nil, eiconbankbranchid=nil, mobile=nil)
          @FundSummaryAcctNo = fundsummaryacctno
          @SubAcctNo = subacctno
          @TranNetMemberCode = trannetmembercode
          @MemberName = membername
          @MemberGlobalType = memberglobaltype
          @MemberGlobalId = memberglobalid
          @MemberAcctNo = memberacctno
          @BankType = banktype
          @AcctOpenBranchName = acctopenbranchname
          @CnapsBranchId = cnapsbranchid
          @EiconBankBranchId = eiconbankbranchid
          @Mobile = mobile
        end

        def deserialize(params)
          @FundSummaryAcctNo = params['FundSummaryAcctNo']
          @SubAcctNo = params['SubAcctNo']
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberName = params['MemberName']
          @MemberGlobalType = params['MemberGlobalType']
          @MemberGlobalId = params['MemberGlobalId']
          @MemberAcctNo = params['MemberAcctNo']
          @BankType = params['BankType']
          @AcctOpenBranchName = params['AcctOpenBranchName']
          @CnapsBranchId = params['CnapsBranchId']
          @EiconBankBranchId = params['EiconBankBranchId']
          @Mobile = params['Mobile']
        end
      end

      # 交易明细信息
      class TransactionItem < TencentCloud::Common::AbstractModel
        # @param BookingFlag: STRING(2)，记账标志（1: 转出; 2: 转入）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BookingFlag: String
        # @param TranStatus: STRING(32)，交易状态（0: 成功）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: String
        # @param TranAmt: STRING(20)，交易金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranAmt: String
        # @param TranDate: STRING(8)，交易日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranDate: String
        # @param TranTime: STRING(20)，交易时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranTime: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param BookingType: STRING(20)，记账类型（详情见“常见问题”）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BookingType: String
        # @param InSubAcctNo: STRING(50)，转入见证子账户的帐号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InSubAcctNo: String
        # @param OutSubAcctNo: STRING(50)，转出见证子账户的帐号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutSubAcctNo: String
        # @param Remark: STRING(300)，备注（返回交易订单号）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :BookingFlag, :TranStatus, :TranAmt, :TranDate, :TranTime, :FrontSeqNo, :BookingType, :InSubAcctNo, :OutSubAcctNo, :Remark
        
        def initialize(bookingflag=nil, transtatus=nil, tranamt=nil, trandate=nil, trantime=nil, frontseqno=nil, bookingtype=nil, insubacctno=nil, outsubacctno=nil, remark=nil)
          @BookingFlag = bookingflag
          @TranStatus = transtatus
          @TranAmt = tranamt
          @TranDate = trandate
          @TranTime = trantime
          @FrontSeqNo = frontseqno
          @BookingType = bookingtype
          @InSubAcctNo = insubacctno
          @OutSubAcctNo = outsubacctno
          @Remark = remark
        end

        def deserialize(params)
          @BookingFlag = params['BookingFlag']
          @TranStatus = params['TranStatus']
          @TranAmt = params['TranAmt']
          @TranDate = params['TranDate']
          @TranTime = params['TranTime']
          @FrontSeqNo = params['FrontSeqNo']
          @BookingType = params['BookingType']
          @InSubAcctNo = params['InSubAcctNo']
          @OutSubAcctNo = params['OutSubAcctNo']
          @Remark = params['Remark']
        end
      end

      # 批量转账明细实体
      class TransferDetailRequest < TencentCloud::Common::AbstractModel
        # @param MerchantDetailNo: 商家明细单号。
        # 商户系统内部区分转账批次单下不同转账明细单的唯一标识，要求此参数只能由数字、大小写字母组成。
        # 示例值：x23zy545Bd5436
        # @type MerchantDetailNo: String
        # @param TransferAmount: 转账金额。
        # 转账金额单位为分。
        # 示例值：200000
        # @type TransferAmount: Integer
        # @param TransferRemark: 转账备注。
        # 单条转账备注（微信用户会收到该备注）。UTF8编码，最多32字符。
        # 示例值：2020年4月报销
        # @type TransferRemark: String
        # @param OpenId: 用户在直连商户下的唯一标识。
        # 示例值：o-MYE42l80oelYMDE34nYD456Xoy
        # @type OpenId: String
        # @param UserName: 收款用户姓名。
        # 收款方姓名。
        # 示例值：张三
        # @type UserName: String

        attr_accessor :MerchantDetailNo, :TransferAmount, :TransferRemark, :OpenId, :UserName
        
        def initialize(merchantdetailno=nil, transferamount=nil, transferremark=nil, openid=nil, username=nil)
          @MerchantDetailNo = merchantdetailno
          @TransferAmount = transferamount
          @TransferRemark = transferremark
          @OpenId = openid
          @UserName = username
        end

        def deserialize(params)
          @MerchantDetailNo = params['MerchantDetailNo']
          @TransferAmount = params['TransferAmount']
          @TransferRemark = params['TransferRemark']
          @OpenId = params['OpenId']
          @UserName = params['UserName']
        end
      end

      # 批量转账查询返回批次明细实体
      class TransferDetailResponse < TencentCloud::Common::AbstractModel
        # @param MerchantDetailNo: 商家明细单号。
        # 商户系统内部的商家明细单号
        # 示例值：plfk2020042013
        # @type MerchantDetailNo: String
        # @param DetailId: 微信明细单号。
        # 微信区分明细单返回的唯一标识。
        # 示例值：1030000071100999991182020050700019480001
        # @type DetailId: String
        # @param DetailStatus: 明细状态。
        # PROCESSING：转账中，正在处理，结果未明；
        # SUCCESS：转账成功；
        # FAIL：转账失败，需要确认失败原因以后，再决定是否重新发起地该笔明细的转账。
        # 示例值：SUCCESS
        # @type DetailStatus: String

        attr_accessor :MerchantDetailNo, :DetailId, :DetailStatus
        
        def initialize(merchantdetailno=nil, detailid=nil, detailstatus=nil)
          @MerchantDetailNo = merchantdetailno
          @DetailId = detailid
          @DetailStatus = detailstatus
        end

        def deserialize(params)
          @MerchantDetailNo = params['MerchantDetailNo']
          @DetailId = params['DetailId']
          @DetailStatus = params['DetailStatus']
        end
      end

      # 转账充值明细信息
      class TransferItem < TencentCloud::Common::AbstractModel
        # @param InAcctType: STRING(10)，入账类型（02: 会员充值; 03: 资金挂账）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InAcctType: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranNetMemberCode: String
        # @param SubAcctNo: STRING(50)，见证子帐户的帐号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctNo: String
        # @param TranAmt: STRING(20)，入金金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranAmt: String
        # @param InAcctNo: STRING(50)，入金账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InAcctNo: String
        # @param InAcctName: STRING(150)，入金账户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InAcctName: String
        # @param Ccy: STRING(3)，币种
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ccy: String
        # @param AccountingDate: STRING(8)，会计日期（即银行主机记账日期）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountingDate: String
        # @param BankName: STRING(150)，银行名称（付款账户银行名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankName: String
        # @param Remark: STRING(300)，转账备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String

        attr_accessor :InAcctType, :TranNetMemberCode, :SubAcctNo, :TranAmt, :InAcctNo, :InAcctName, :Ccy, :AccountingDate, :BankName, :Remark, :FrontSeqNo
        
        def initialize(inaccttype=nil, trannetmembercode=nil, subacctno=nil, tranamt=nil, inacctno=nil, inacctname=nil, ccy=nil, accountingdate=nil, bankname=nil, remark=nil, frontseqno=nil)
          @InAcctType = inaccttype
          @TranNetMemberCode = trannetmembercode
          @SubAcctNo = subacctno
          @TranAmt = tranamt
          @InAcctNo = inacctno
          @InAcctName = inacctname
          @Ccy = ccy
          @AccountingDate = accountingdate
          @BankName = bankname
          @Remark = remark
          @FrontSeqNo = frontseqno
        end

        def deserialize(params)
          @InAcctType = params['InAcctType']
          @TranNetMemberCode = params['TranNetMemberCode']
          @SubAcctNo = params['SubAcctNo']
          @TranAmt = params['TranAmt']
          @InAcctNo = params['InAcctNo']
          @InAcctName = params['InAcctName']
          @Ccy = params['Ccy']
          @AccountingDate = params['AccountingDate']
          @BankName = params['BankName']
          @Remark = params['Remark']
          @FrontSeqNo = params['FrontSeqNo']
        end
      end

      # 智能代发-单笔代发转账接口返回数据
      class TransferSinglePayData < TencentCloud::Common::AbstractModel
        # @param TradeSerialNo: 平台交易流水号，唯一
        # @type TradeSerialNo: String

        attr_accessor :TradeSerialNo
        
        def initialize(tradeserialno=nil)
          @TradeSerialNo = tradeserialno
        end

        def deserialize(params)
          @TradeSerialNo = params['TradeSerialNo']
        end
      end

      # TransferSinglePay请求参数结构体
      class TransferSinglePayRequest < TencentCloud::Common::AbstractModel
        # @param MerchantId: 商户号
        # @type MerchantId: String
        # @param MerchantAppId: 微信申请商户号的appid或者商户号绑定的appid
        # 支付宝、平安填入MerchantId
        # @type MerchantAppId: String
        # @param TransferType: 1、 微信企业付款
        # 2、 支付宝转账
        # 3、 平安银企直联代发转账
        # @type TransferType: Integer
        # @param OrderId: 订单流水号，唯一，不能包含特殊字符，长度最大限制64位，推荐使用字母，数字组合，"_","-"组合
        # @type OrderId: String
        # @param TransferAmount: 转账金额，单位分
        # @type TransferAmount: Integer
        # @param PayeeId: 收款方标识。
        # 微信为open_id；
        # 支付宝为会员alipay_user_id;
        # 平安为收款方银行账号
        # @type PayeeId: String
        # @param PayeeName: 收款方姓名。支付宝可选；微信，平安模式下必传
        # @type PayeeName: String
        # @param PayeeExtends: 收款方附加信息，平安接入使用。需要以JSON格式提供以下字段：
        # PayeeBankName：收款人开户行名称
        #  CcyCode：货币类型（RMB-人民币）
        #  UnionFlag：行内跨行标志（1：行内转账，0：跨行转账）。
        # @type PayeeExtends: String
        # @param ReqReserved: 请求预留字段，原样透传返回
        # @type ReqReserved: String
        # @param Remark: 业务备注
        # @type Remark: String
        # @param NotifyUrl: 转账结果回调通知URL。若不填，则不进行回调。
        # @type NotifyUrl: String
        # @param Profile: 接入环境。沙箱环境填sandbox。
        # @type Profile: String

        attr_accessor :MerchantId, :MerchantAppId, :TransferType, :OrderId, :TransferAmount, :PayeeId, :PayeeName, :PayeeExtends, :ReqReserved, :Remark, :NotifyUrl, :Profile
        
        def initialize(merchantid=nil, merchantappid=nil, transfertype=nil, orderid=nil, transferamount=nil, payeeid=nil, payeename=nil, payeeextends=nil, reqreserved=nil, remark=nil, notifyurl=nil, profile=nil)
          @MerchantId = merchantid
          @MerchantAppId = merchantappid
          @TransferType = transfertype
          @OrderId = orderid
          @TransferAmount = transferamount
          @PayeeId = payeeid
          @PayeeName = payeename
          @PayeeExtends = payeeextends
          @ReqReserved = reqreserved
          @Remark = remark
          @NotifyUrl = notifyurl
          @Profile = profile
        end

        def deserialize(params)
          @MerchantId = params['MerchantId']
          @MerchantAppId = params['MerchantAppId']
          @TransferType = params['TransferType']
          @OrderId = params['OrderId']
          @TransferAmount = params['TransferAmount']
          @PayeeId = params['PayeeId']
          @PayeeName = params['PayeeName']
          @PayeeExtends = params['PayeeExtends']
          @ReqReserved = params['ReqReserved']
          @Remark = params['Remark']
          @NotifyUrl = params['NotifyUrl']
          @Profile = params['Profile']
        end
      end

      # TransferSinglePay返回参数结构体
      class TransferSinglePayResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功
        # @type ErrCode: String
        # @param ErrMessage: 响应消息
        # @type ErrMessage: String
        # @param Result: 返回结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.TransferSinglePayData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = TransferSinglePayData.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UnBindAcct请求参数结构体
      class UnBindAcctRequest < TencentCloud::Common::AbstractModel
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SettleAcctNo: 用于提现
        # <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        # @type SettleAcctNo: String
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param EncryptType: 敏感信息加密类型:
        # RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        # AES: aes对称加密，使用AES256-CBC-PCKS7padding
        # 缺省: RSA
        # @type EncryptType: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String

        attr_accessor :MidasAppId, :SubAppId, :SettleAcctNo, :MidasSecretId, :MidasSignature, :EncryptType, :MidasEnvironment
        
        def initialize(midasappid=nil, subappid=nil, settleacctno=nil, midassecretid=nil, midassignature=nil, encrypttype=nil, midasenvironment=nil)
          @MidasAppId = midasappid
          @SubAppId = subappid
          @SettleAcctNo = settleacctno
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @EncryptType = encrypttype
          @MidasEnvironment = midasenvironment
        end

        def deserialize(params)
          @MidasAppId = params['MidasAppId']
          @SubAppId = params['SubAppId']
          @SettleAcctNo = params['SettleAcctNo']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @EncryptType = params['EncryptType']
          @MidasEnvironment = params['MidasEnvironment']
        end
      end

      # UnBindAcct返回参数结构体
      class UnBindAcctResponse < TencentCloud::Common::AbstractModel
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

      # UnbindOpenBankExternalSubMerchantBankAccount请求参数结构体
      class UnbindOpenBankExternalSubMerchantBankAccountRequest < TencentCloud::Common::AbstractModel
        # @param ChannelMerchantId: 渠道商户ID。
        # @type ChannelMerchantId: String
        # @param ChannelSubMerchantId: 渠道子商户ID。
        # @type ChannelSubMerchantId: String
        # @param ChannelName: 渠道名称。
        # __TENPAY__: 商企付
        # __WECHAT__: 微信支付
        # __ALIPAY__: 支付宝
        # @type ChannelName: String
        # @param PaymentMethod: 支付方式。
        # __EBANK_PAYMENT__: ebank支付
        # __OPENBANK_PAYMENT__: openbank支付
        # @type PaymentMethod: String
        # @param BindSerialNo: 绑卡序列号。
        # @type BindSerialNo: String
        # @param OutApplyId: 外部申请编号。
        # @type OutApplyId: String
        # @param NotifyUrl: 通知地址。
        # @type NotifyUrl: String
        # @param Environment: 环境类型。
        # __release__:生产环境
        # __sandbox__:沙箱环境
        # _不填默认为生产环境_
        # @type Environment: String

        attr_accessor :ChannelMerchantId, :ChannelSubMerchantId, :ChannelName, :PaymentMethod, :BindSerialNo, :OutApplyId, :NotifyUrl, :Environment
        
        def initialize(channelmerchantid=nil, channelsubmerchantid=nil, channelname=nil, paymentmethod=nil, bindserialno=nil, outapplyid=nil, notifyurl=nil, environment=nil)
          @ChannelMerchantId = channelmerchantid
          @ChannelSubMerchantId = channelsubmerchantid
          @ChannelName = channelname
          @PaymentMethod = paymentmethod
          @BindSerialNo = bindserialno
          @OutApplyId = outapplyid
          @NotifyUrl = notifyurl
          @Environment = environment
        end

        def deserialize(params)
          @ChannelMerchantId = params['ChannelMerchantId']
          @ChannelSubMerchantId = params['ChannelSubMerchantId']
          @ChannelName = params['ChannelName']
          @PaymentMethod = params['PaymentMethod']
          @BindSerialNo = params['BindSerialNo']
          @OutApplyId = params['OutApplyId']
          @NotifyUrl = params['NotifyUrl']
          @Environment = params['Environment']
        end
      end

      # UnbindOpenBankExternalSubMerchantBankAccount返回参数结构体
      class UnbindOpenBankExternalSubMerchantBankAccountResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。
        # __SUCCESS__: 成功
        # __其他__: 见附录-错误码表
        # @type ErrCode: String
        # @param ErrMessage: 错误消息。
        # @type ErrMessage: String
        # @param Result: 返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.UnbindOpenBankExternalSubMerchantBankAccountResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          unless params['Result'].nil?
            @Result = UnbindOpenBankExternalSubMerchantBankAccountResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 第三方子商户银行卡解绑返回结果
      class UnbindOpenBankExternalSubMerchantBankAccountResult < TencentCloud::Common::AbstractModel
        # @param ChannelApplyId: 渠道申请编号。
        # @type ChannelApplyId: String
        # @param UnbindStatus: 解绑状态。
        # __SUCCESS__: 解绑成功
        # __FAILED__: 解绑失败
        # __PROCESSING__: 解绑中
        # 注意：若返回解绑中，需要再次调用解绑结果查询接口查询结果。
        # @type UnbindStatus: String
        # @param UnbindMessage: 解绑返回描述, 例如失败原因等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnbindMessage: String

        attr_accessor :ChannelApplyId, :UnbindStatus, :UnbindMessage
        
        def initialize(channelapplyid=nil, unbindstatus=nil, unbindmessage=nil)
          @ChannelApplyId = channelapplyid
          @UnbindStatus = unbindstatus
          @UnbindMessage = unbindmessage
        end

        def deserialize(params)
          @ChannelApplyId = params['ChannelApplyId']
          @UnbindStatus = params['UnbindStatus']
          @UnbindMessage = params['UnbindMessage']
        end
      end

      # UnbindRelateAcct请求参数结构体
      class UnbindRelateAcctRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param FunctionFlag: STRING(2)，功能标志（1: 解绑）
        # @type FunctionFlag: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码（若需要把一个待绑定账户关联到两个会员名下，此字段可上送两个会员的交易网代码，并且须用“|::|”(右侧)进行分隔）
        # @type TranNetMemberCode: String
        # @param MemberAcctNo: STRING(50)，待解绑的提现账户的账号（提现账号）
        # @type MemberAcctNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :FunctionFlag, :TranNetMemberCode, :MemberAcctNo, :ReservedMsg, :Profile
        
        def initialize(mrchcode=nil, functionflag=nil, trannetmembercode=nil, memberacctno=nil, reservedmsg=nil, profile=nil)
          @MrchCode = mrchcode
          @FunctionFlag = functionflag
          @TranNetMemberCode = trannetmembercode
          @MemberAcctNo = memberacctno
          @ReservedMsg = reservedmsg
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @FunctionFlag = params['FunctionFlag']
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberAcctNo = params['MemberAcctNo']
          @ReservedMsg = params['ReservedMsg']
          @Profile = params['Profile']
        end
      end

      # UnbindRelateAcct返回参数结构体
      class UnbindRelateAcctResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号（即电商见证宝系统生成的流水号，可关联具体一笔请求）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :FrontSeqNo, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, frontseqno=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @FrontSeqNo = frontseqno
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @FrontSeqNo = params['FrontSeqNo']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 子订单列表
      class UnifiedOrderInSubOrderList < TencentCloud::Common::AbstractModel
        # @param SubMchIncome: 子订单结算应收金额，单位： 分
        # @type SubMchIncome: Integer
        # @param PlatformIncome: 子订单平台应收金额，单位：分
        # @type PlatformIncome: Integer
        # @param ProductDetail: 子订单商品详情
        # @type ProductDetail: String
        # @param ProductName: 子订单商品名称
        # @type ProductName: String
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SubOutTradeNo: 子订单号
        # @type SubOutTradeNo: String
        # @param Amt: 子订单支付金额
        # @type Amt: Integer
        # @param Metadata: 发货标识，由业务在调用聚鑫下单接口的 时候下发
        # @type Metadata: String
        # @param OriginalAmt: 子订单原始金额
        # @type OriginalAmt: Integer

        attr_accessor :SubMchIncome, :PlatformIncome, :ProductDetail, :ProductName, :SubAppId, :SubOutTradeNo, :Amt, :Metadata, :OriginalAmt
        
        def initialize(submchincome=nil, platformincome=nil, productdetail=nil, productname=nil, subappid=nil, subouttradeno=nil, amt=nil, metadata=nil, originalamt=nil)
          @SubMchIncome = submchincome
          @PlatformIncome = platformincome
          @ProductDetail = productdetail
          @ProductName = productname
          @SubAppId = subappid
          @SubOutTradeNo = subouttradeno
          @Amt = amt
          @Metadata = metadata
          @OriginalAmt = originalamt
        end

        def deserialize(params)
          @SubMchIncome = params['SubMchIncome']
          @PlatformIncome = params['PlatformIncome']
          @ProductDetail = params['ProductDetail']
          @ProductName = params['ProductName']
          @SubAppId = params['SubAppId']
          @SubOutTradeNo = params['SubOutTradeNo']
          @Amt = params['Amt']
          @Metadata = params['Metadata']
          @OriginalAmt = params['OriginalAmt']
        end
      end

      # UnifiedOrder请求参数结构体
      class UnifiedOrderRequest < TencentCloud::Common::AbstractModel
        # @param CurrencyType: ISO 货币代码，CNY
        # @type CurrencyType: String
        # @param MidasAppId: 聚鑫分配的支付主MidasAppId
        # @type MidasAppId: String
        # @param OutTradeNo: 支付订单号，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        # @type OutTradeNo: String
        # @param ProductDetail: 商品详情，需要URL编码
        # @type ProductDetail: String
        # @param ProductId: 商品ID，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        # @type ProductId: String
        # @param ProductName: 商品名称，需要URL编码
        # @type ProductName: String
        # @param TotalAmt: 支付金额，单位： 分
        # @type TotalAmt: Integer
        # @param UserId: 用户ID，长度不小于5位，仅支持字母和数字的组合
        # @type UserId: String
        # @param RealChannel: 银行真实渠道.如:bank_pingan
        # @type RealChannel: String
        # @param OriginalAmt: 原始金额
        # @type OriginalAmt: Integer
        # @param MidasSecretId: 聚鑫分配的安全ID
        # @type MidasSecretId: String
        # @param MidasSignature: 按照聚鑫安全密钥计算的签名
        # @type MidasSignature: String
        # @param CallbackUrl: Web端回调地址
        # @type CallbackUrl: String
        # @param Channel: 指定支付渠道：  wechat：微信支付  qqwallet：QQ钱包
        #  bank：网银支付  只有一个渠道时需要指定
        # @type Channel: String
        # @param Metadata: 透传字段，支付成功回调透传给应用，用于业务透传自定义内容
        # @type Metadata: String
        # @param Quantity: 购买数量，不传默认为1
        # @type Quantity: Integer
        # @param SubAppId: 聚鑫计费SubAppId，代表子商户
        # @type SubAppId: String
        # @param SubOrderList: 子订单信息列表，格式：子订单号、子应用ID、金额。 压缩后最长不可超过65535字节(去除空格，换行，制表符等无意义字符)
        # 注：接入银行或其他支付渠道服务商模式下，必传
        # @type SubOrderList: Array
        # @param TotalMchIncome: 结算应收金额，单位：分
        # @type TotalMchIncome: Integer
        # @param TotalPlatformIncome: 平台应收金额，单位：分
        # @type TotalPlatformIncome: Integer
        # @param WxOpenId: 微信公众号/小程序支付时为必选，需要传微信下的openid
        # @type WxOpenId: String
        # @param WxSubOpenId: 在服务商模式下，微信公众号/小程序支付时wx_sub_openid和wx_openid二选一
        # @type WxSubOpenId: String
        # @param MidasEnvironment: 环境名:
        # release: 现网环境
        # sandbox: 沙箱环境
        # development: 开发环境
        # 缺省: release
        # @type MidasEnvironment: String
        # @param WxAppId: 微信商户应用ID
        # @type WxAppId: String
        # @param WxSubAppId: 微信商户子应用ID
        # @type WxSubAppId: String
        # @param PaymentNotifyUrl: 支付通知地址
        # @type PaymentNotifyUrl: String

        attr_accessor :CurrencyType, :MidasAppId, :OutTradeNo, :ProductDetail, :ProductId, :ProductName, :TotalAmt, :UserId, :RealChannel, :OriginalAmt, :MidasSecretId, :MidasSignature, :CallbackUrl, :Channel, :Metadata, :Quantity, :SubAppId, :SubOrderList, :TotalMchIncome, :TotalPlatformIncome, :WxOpenId, :WxSubOpenId, :MidasEnvironment, :WxAppId, :WxSubAppId, :PaymentNotifyUrl
        
        def initialize(currencytype=nil, midasappid=nil, outtradeno=nil, productdetail=nil, productid=nil, productname=nil, totalamt=nil, userid=nil, realchannel=nil, originalamt=nil, midassecretid=nil, midassignature=nil, callbackurl=nil, channel=nil, metadata=nil, quantity=nil, subappid=nil, suborderlist=nil, totalmchincome=nil, totalplatformincome=nil, wxopenid=nil, wxsubopenid=nil, midasenvironment=nil, wxappid=nil, wxsubappid=nil, paymentnotifyurl=nil)
          @CurrencyType = currencytype
          @MidasAppId = midasappid
          @OutTradeNo = outtradeno
          @ProductDetail = productdetail
          @ProductId = productid
          @ProductName = productname
          @TotalAmt = totalamt
          @UserId = userid
          @RealChannel = realchannel
          @OriginalAmt = originalamt
          @MidasSecretId = midassecretid
          @MidasSignature = midassignature
          @CallbackUrl = callbackurl
          @Channel = channel
          @Metadata = metadata
          @Quantity = quantity
          @SubAppId = subappid
          @SubOrderList = suborderlist
          @TotalMchIncome = totalmchincome
          @TotalPlatformIncome = totalplatformincome
          @WxOpenId = wxopenid
          @WxSubOpenId = wxsubopenid
          @MidasEnvironment = midasenvironment
          @WxAppId = wxappid
          @WxSubAppId = wxsubappid
          @PaymentNotifyUrl = paymentnotifyurl
        end

        def deserialize(params)
          @CurrencyType = params['CurrencyType']
          @MidasAppId = params['MidasAppId']
          @OutTradeNo = params['OutTradeNo']
          @ProductDetail = params['ProductDetail']
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @TotalAmt = params['TotalAmt']
          @UserId = params['UserId']
          @RealChannel = params['RealChannel']
          @OriginalAmt = params['OriginalAmt']
          @MidasSecretId = params['MidasSecretId']
          @MidasSignature = params['MidasSignature']
          @CallbackUrl = params['CallbackUrl']
          @Channel = params['Channel']
          @Metadata = params['Metadata']
          @Quantity = params['Quantity']
          @SubAppId = params['SubAppId']
          unless params['SubOrderList'].nil?
            @SubOrderList = []
            params['SubOrderList'].each do |i|
              unifiedorderinsuborderlist_tmp = UnifiedOrderInSubOrderList.new
              unifiedorderinsuborderlist_tmp.deserialize(i)
              @SubOrderList << unifiedorderinsuborderlist_tmp
            end
          end
          @TotalMchIncome = params['TotalMchIncome']
          @TotalPlatformIncome = params['TotalPlatformIncome']
          @WxOpenId = params['WxOpenId']
          @WxSubOpenId = params['WxSubOpenId']
          @MidasEnvironment = params['MidasEnvironment']
          @WxAppId = params['WxAppId']
          @WxSubAppId = params['WxSubAppId']
          @PaymentNotifyUrl = params['PaymentNotifyUrl']
        end
      end

      # UnifiedOrder返回参数结构体
      class UnifiedOrderResponse < TencentCloud::Common::AbstractModel
        # @param TotalAmt: 支付金额，单位： 分
        # @type TotalAmt: Integer
        # @param OutTradeNo: 应用支付订单号
        # @type OutTradeNo: String
        # @param PayInfo: 支付参数透传给聚鑫SDK（原文透传给SDK即可，不需要解码）
        # @type PayInfo: String
        # @param TransactionId: 聚鑫的交易订单
        # @type TransactionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalAmt, :OutTradeNo, :PayInfo, :TransactionId, :RequestId
        
        def initialize(totalamt=nil, outtradeno=nil, payinfo=nil, transactionid=nil, requestid=nil)
          @TotalAmt = totalamt
          @OutTradeNo = outtradeno
          @PayInfo = payinfo
          @TransactionId = transactionid
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalAmt = params['TotalAmt']
          @OutTradeNo = params['OutTradeNo']
          @PayInfo = params['PayInfo']
          @TransactionId = params['TransactionId']
          @RequestId = params['RequestId']
        end
      end

      # UnifiedTlinxOrder请求参数结构体
      class UnifiedTlinxOrderRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 使用门店OpenId
        # @type OpenId: String
        # @param OpenKey: 使用门店OpenKey
        # @type OpenKey: String
        # @param DeveloperNo: 开发者流水号
        # @type DeveloperNo: String
        # @param PayTag: 支付标签
        # @type PayTag: String
        # @param TradeAmount: 实际交易金额（以分为单位，没有小数点）
        # @type TradeAmount: String
        # @param NotifyUrl: 交易结果异步通知url地址
        # @type NotifyUrl: String
        # @param PayName: 付款方式名称(当PayTag为Diy时，PayName不能为空)
        # @type PayName: String
        # @param JumpUrl: 公众号支付时，支付成功后跳转url地址
        # @type JumpUrl: String
        # @param OrderName: 订单名称（描述）
        # @type OrderName: String
        # @param OriginalAmount: 原始交易金额（以分为单位，没有小数点）
        # @type OriginalAmount: String
        # @param IgnoreAmount: 抹零金额（以分为单位，没有小数点）
        # @type IgnoreAmount: String
        # @param DiscountAmount: 折扣金额（以分为单位，没有小数点）
        # @type DiscountAmount: String
        # @param TradeAccount: 交易帐号（银行卡号）
        # @type TradeAccount: String
        # @param TradeNo: 交易号（收单机构交易号）
        # @type TradeNo: String
        # @param AuthCode: 条码支付的授权码（条码抢扫手机扫到的一串数字）
        # @type AuthCode: String
        # @param Tag: 订单标记，订单附加数据。
        # @type Tag: String
        # @param Remark: 订单备注
        # @type Remark: String
        # @param TradeResult: 收单机构原始交易报文，请转换为json
        # @type TradeResult: String
        # @param Royalty: 0-不分账，1-需分账。为1时标记为待分账订单，待分账订单不会进行清算。不传默认为不分账。
        # @type Royalty: String
        # @param Jsapi: 小程序支付参数：填默认值 1
        # @type Jsapi: String
        # @param SubAppId: 小程序支付参数：
        # 当前调起支付的小程序APPID
        # @type SubAppId: String
        # @param SubOpenId: 小程序支付参数:
        # 用户在子商户appid下的唯一标识。
        # @type SubOpenId: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :DeveloperNo, :PayTag, :TradeAmount, :NotifyUrl, :PayName, :JumpUrl, :OrderName, :OriginalAmount, :IgnoreAmount, :DiscountAmount, :TradeAccount, :TradeNo, :AuthCode, :Tag, :Remark, :TradeResult, :Royalty, :Jsapi, :SubAppId, :SubOpenId, :Profile
        
        def initialize(openid=nil, openkey=nil, developerno=nil, paytag=nil, tradeamount=nil, notifyurl=nil, payname=nil, jumpurl=nil, ordername=nil, originalamount=nil, ignoreamount=nil, discountamount=nil, tradeaccount=nil, tradeno=nil, authcode=nil, tag=nil, remark=nil, traderesult=nil, royalty=nil, jsapi=nil, subappid=nil, subopenid=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @DeveloperNo = developerno
          @PayTag = paytag
          @TradeAmount = tradeamount
          @NotifyUrl = notifyurl
          @PayName = payname
          @JumpUrl = jumpurl
          @OrderName = ordername
          @OriginalAmount = originalamount
          @IgnoreAmount = ignoreamount
          @DiscountAmount = discountamount
          @TradeAccount = tradeaccount
          @TradeNo = tradeno
          @AuthCode = authcode
          @Tag = tag
          @Remark = remark
          @TradeResult = traderesult
          @Royalty = royalty
          @Jsapi = jsapi
          @SubAppId = subappid
          @SubOpenId = subopenid
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @DeveloperNo = params['DeveloperNo']
          @PayTag = params['PayTag']
          @TradeAmount = params['TradeAmount']
          @NotifyUrl = params['NotifyUrl']
          @PayName = params['PayName']
          @JumpUrl = params['JumpUrl']
          @OrderName = params['OrderName']
          @OriginalAmount = params['OriginalAmount']
          @IgnoreAmount = params['IgnoreAmount']
          @DiscountAmount = params['DiscountAmount']
          @TradeAccount = params['TradeAccount']
          @TradeNo = params['TradeNo']
          @AuthCode = params['AuthCode']
          @Tag = params['Tag']
          @Remark = params['Remark']
          @TradeResult = params['TradeResult']
          @Royalty = params['Royalty']
          @Jsapi = params['Jsapi']
          @SubAppId = params['SubAppId']
          @SubOpenId = params['SubOpenId']
          @Profile = params['Profile']
        end
      end

      # UnifiedTlinxOrder返回参数结构体
      class UnifiedTlinxOrderResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码，0表示成功，其他表示失败。
        # @type ErrCode: String
        # @param Result: 统一下单响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.PayOrderResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = PayOrderResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UploadExternalAnchorInfo请求参数结构体
      class UploadExternalAnchorInfoRequest < TencentCloud::Common::AbstractModel
        # @param AnchorId: 主播Id
        # @type AnchorId: String
        # @param IdCardFront: 身份证正面图片下载链接
        # @type IdCardFront: String
        # @param IdCardReverse: 身份证反面图片下载链接
        # @type IdCardReverse: String

        attr_accessor :AnchorId, :IdCardFront, :IdCardReverse
        
        def initialize(anchorid=nil, idcardfront=nil, idcardreverse=nil)
          @AnchorId = anchorid
          @IdCardFront = idcardfront
          @IdCardReverse = idcardreverse
        end

        def deserialize(params)
          @AnchorId = params['AnchorId']
          @IdCardFront = params['IdCardFront']
          @IdCardReverse = params['IdCardReverse']
        end
      end

      # UploadExternalAnchorInfo返回参数结构体
      class UploadExternalAnchorInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码。响应成功："SUCCESS"，其他为不成功。
        # @type ErrCode: String
        # @param ErrMessage: 响应消息。
        # @type ErrMessage: String
        # @param Result: 该字段为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrCode, :ErrMessage, :Result, :RequestId
        
        def initialize(errcode=nil, errmessage=nil, result=nil, requestid=nil)
          @ErrCode = errcode
          @ErrMessage = errmessage
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @ErrMessage = params['ErrMessage']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UploadFile请求参数结构体
      class UploadFileRequest < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileType: 文件类型
        # __IdCard__:身份证
        # __IdCardCheck__:身份证加验证(只支持人像面)
        # @type FileType: String
        # @param FileUrl: 文件链接
        # __FileUrl和FileContent二选一__
        # @type FileUrl: String
        # @param FileContent: 文件内容，Base64编码
        # __FileUrl和FileContent二选一__
        # @type FileContent: String
        # @param FileExtendInfo: 文件扩展信息
        # @type FileExtendInfo: Array

        attr_accessor :FileName, :FileType, :FileUrl, :FileContent, :FileExtendInfo
        
        def initialize(filename=nil, filetype=nil, fileurl=nil, filecontent=nil, fileextendinfo=nil)
          @FileName = filename
          @FileType = filetype
          @FileUrl = fileurl
          @FileContent = filecontent
          @FileExtendInfo = fileextendinfo
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileContent = params['FileContent']
          unless params['FileExtendInfo'].nil?
            @FileExtendInfo = []
            params['FileExtendInfo'].each do |i|
              anchorextendinfo_tmp = AnchorExtendInfo.new
              anchorextendinfo_tmp.deserialize(i)
              @FileExtendInfo << anchorextendinfo_tmp
            end
          end
        end
      end

      # UploadFile返回参数结构体
      class UploadFileResponse < TencentCloud::Common::AbstractModel
        # @param FileId: 文件ID
        # @type FileId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileId, :RequestId
        
        def initialize(fileid=nil, requestid=nil)
          @FileId = fileid
          @RequestId = requestid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @RequestId = params['RequestId']
        end
      end

      # 上传文件响应对象
      class UploadFileResult < TencentCloud::Common::AbstractModel
        # @param Storage: 存储区域（0私密区，1公共区），请严格按文件要求，上传到不同的区域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Storage: String
        # @param FilePath: 文件路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilePath: String

        attr_accessor :Storage, :FilePath
        
        def initialize(storage=nil, filepath=nil)
          @Storage = storage
          @FilePath = filepath
        end

        def deserialize(params)
          @Storage = params['Storage']
          @FilePath = params['FilePath']
        end
      end

      # UploadOrgFile请求参数结构体
      class UploadOrgFileRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param Storage: 存储区域（0私密区，1公共区），请严格按文件要求，上传到不同的区域
        # @type Storage: String
        # @param FileMd5: 文件的md5值（为防止平台多次上传重复文件，文件名为文件md5,且不会覆盖，重复上传返回第一次上传成功的文件路径）
        # @type FileMd5: String
        # @param FileContent: 文件内容（先将图片转换成二进制，再进行base64加密）
        # @type FileContent: String
        # @param FileExtension: 文件扩展名（png,jpg,gif）
        # @type FileExtension: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :Storage, :FileMd5, :FileContent, :FileExtension, :Profile
        
        def initialize(openid=nil, openkey=nil, storage=nil, filemd5=nil, filecontent=nil, fileextension=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @Storage = storage
          @FileMd5 = filemd5
          @FileContent = filecontent
          @FileExtension = fileextension
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @Storage = params['Storage']
          @FileMd5 = params['FileMd5']
          @FileContent = params['FileContent']
          @FileExtension = params['FileExtension']
          @Profile = params['Profile']
        end
      end

      # UploadOrgFile返回参数结构体
      class UploadOrgFileResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 上传机构文件响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.UploadFileResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = UploadFileResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UploadTaxList请求参数结构体
      class UploadTaxListRequest < TencentCloud::Common::AbstractModel
        # @param Channel: 平台渠道
        # @type Channel: Integer
        # @param BeginMonth: 起始月份，YYYY-MM
        # @type BeginMonth: String
        # @param EndMonth: 结束月份。如果只上传一个月，结束月份等于起始月份
        # @type EndMonth: String
        # @param FileUrl: 完税列表下载地址
        # @type FileUrl: String

        attr_accessor :Channel, :BeginMonth, :EndMonth, :FileUrl
        
        def initialize(channel=nil, beginmonth=nil, endmonth=nil, fileurl=nil)
          @Channel = channel
          @BeginMonth = beginmonth
          @EndMonth = endmonth
          @FileUrl = fileurl
        end

        def deserialize(params)
          @Channel = params['Channel']
          @BeginMonth = params['BeginMonth']
          @EndMonth = params['EndMonth']
          @FileUrl = params['FileUrl']
        end
      end

      # UploadTaxList返回参数结构体
      class UploadTaxListResponse < TencentCloud::Common::AbstractModel
        # @param TaxId: 完税ID
        # @type TaxId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaxId, :RequestId
        
        def initialize(taxid=nil, requestid=nil)
          @TaxId = taxid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaxId = params['TaxId']
          @RequestId = params['RequestId']
        end
      end

      # UploadTaxPayment请求参数结构体
      class UploadTaxPaymentRequest < TencentCloud::Common::AbstractModel
        # @param Channel: 平台渠道
        # @type Channel: Integer
        # @param TaxId: 完税ID
        # @type TaxId: String
        # @param FileUrl: 完税列表下载地址
        # @type FileUrl: String

        attr_accessor :Channel, :TaxId, :FileUrl
        
        def initialize(channel=nil, taxid=nil, fileurl=nil)
          @Channel = channel
          @TaxId = taxid
          @FileUrl = fileurl
        end

        def deserialize(params)
          @Channel = params['Channel']
          @TaxId = params['TaxId']
          @FileUrl = params['FileUrl']
        end
      end

      # UploadTaxPayment返回参数结构体
      class UploadTaxPaymentResponse < TencentCloud::Common::AbstractModel
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

      # ViewContract请求参数结构体
      class ViewContractRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param OutContractId: 外部合同主键编号（ContractId或OutContractId必须传一个）
        # @type OutContractId: String
        # @param ContractId: 合同主键（ContractId或OutContractId必须传一个）
        # @type ContractId: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :OutContractId, :ContractId, :Profile
        
        def initialize(openid=nil, openkey=nil, outcontractid=nil, contractid=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OutContractId = outcontractid
          @ContractId = contractid
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OutContractId = params['OutContractId']
          @ContractId = params['ContractId']
          @Profile = params['Profile']
        end
      end

      # ViewContract返回参数结构体
      class ViewContractResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 合同明细响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ViewContractResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = ViewContractResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 合同明细响应对象
      class ViewContractResult < TencentCloud::Common::AbstractModel
        # @param PaymentTag: 支付标签（唯一性）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentTag: String
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param AgentNo: 机构编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentNo: String
        # @param ContractOptionFour: 合同选项值4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionFour: String
        # @param ContractOptionTwo: 合同选项值2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionTwo: String
        # @param Status: 合同状态（0未审核，1已审核，2审核未通过，3待审核，4已删除，5初审通过）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param PaymentId: 支付方式编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentId: String
        # @param Fee: 商户签约扣率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fee: String
        # @param PaymentOptionFive: 合同选项名称5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionFive: String
        # @param OutContractId: 机构合同主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutContractId: String
        # @param ChannelExtJson: 不同的支付方式对于进件有不同的个性化需求，支付方式字段都是以双下划写开头的字段名称，请以支付方式规定的格式传值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelExtJson: String
        # @param ContractOptionFive: 合同选项值5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionFive: String
        # @param Province: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param StartDate: 生效日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartDate: String
        # @param Address: 详细地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param EndDate: 过期日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndDate: String
        # @param ContractOptionSix: 合同选项值6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionSix: String
        # @param PaymentOptionSeven: 合同选项名称7
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionSeven: String
        # @param PictureTwo: 合同照片补充【私密区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PictureTwo: String
        # @param MerchantNo: 商户编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String
        # @param AgentName: 机构名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String
        # @param ContractOptionOther: 合同选项值8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionOther: String
        # @param ContractOptionThree: 合同选项值3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionThree: String
        # @param Country: 县/区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: String
        # @param ShopCount: 合同关联的门店数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopCount: String
        # @param PaymentOptionThree: 合同选项名称3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionThree: String
        # @param PaymentClassificationName: 支付方式行业名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentClassificationName: String
        # @param ContractOptionSeven: 合同选项值7
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionSeven: String
        # @param PaymentOptionFour: 合同选项名称4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionFour: String
        # @param PaymentClassificationLimit: 商户签约扣率封顶值（分为单位）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentClassificationLimit: String
        # @param Remark: 审核备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param PaymentOptionSix: 合同选项名称6
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionSix: String
        # @param MerchantName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantName: String
        # @param ContractOptionOne: 合同选项值1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionOne: String
        # @param PaymentOptionOther: 合同选项名称8
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionOther: String
        # @param PaymentOptionTwo: 合同选项名称2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionTwo: String
        # @param PaymentOptionOne: 合同选项名称1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionOne: String
        # @param UpdateTime: 更新时间（yyyy-mm-dd hh:ii:ss）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ContactTelephone: 联系人电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactTelephone: String
        # @param Contact: 联系人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contact: String
        # @param SignDate: 签约日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignDate: String
        # @param PaymentOptionNine: 合同选项名称9
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionNine: String
        # @param PaymentName: 付款方式名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentName: String
        # @param PaymentInternalName: 付款方式名称（内部名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentInternalName: String
        # @param ContractOptionTen: 合同选项值10
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionTen: String
        # @param Code: 合同编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param PictureOne: 合同照片【私密区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PictureOne: String
        # @param SignMan: 签约人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignMan: String
        # @param ChannelNo: 渠道号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelNo: String
        # @param AddTime: 添加时间（yyyy-mm-dd hh:ii:ss）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param AutoSign: 是否自动续签（1是，0否）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoSign: String
        # @param ContractOptionNine: 合同选项值9
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractOptionNine: String
        # @param CityId: 城市编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityId: String
        # @param PaymentType: 交易类型（多个以小写逗号分开，0现金，1刷卡，2主扫，3被扫，4JSPAY，5预授权）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentType: String
        # @param PaymentClassificationId: 支付方式行业编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentClassificationId: String
        # @param BrandName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandName: String
        # @param PaymentOptionTen: 合同选项名称10
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PaymentOptionTen: String
        # @param ContractId: 合同主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractId: String

        attr_accessor :PaymentTag, :City, :AgentNo, :ContractOptionFour, :ContractOptionTwo, :Status, :PaymentId, :Fee, :PaymentOptionFive, :OutContractId, :ChannelExtJson, :ContractOptionFive, :Province, :StartDate, :Address, :EndDate, :ContractOptionSix, :PaymentOptionSeven, :PictureTwo, :MerchantNo, :AgentName, :ContractOptionOther, :ContractOptionThree, :Country, :ShopCount, :PaymentOptionThree, :PaymentClassificationName, :ContractOptionSeven, :PaymentOptionFour, :PaymentClassificationLimit, :Remark, :PaymentOptionSix, :MerchantName, :ContractOptionOne, :PaymentOptionOther, :PaymentOptionTwo, :PaymentOptionOne, :UpdateTime, :ContactTelephone, :Contact, :SignDate, :PaymentOptionNine, :PaymentName, :PaymentInternalName, :ContractOptionTen, :Code, :PictureOne, :SignMan, :ChannelNo, :AddTime, :AutoSign, :ContractOptionNine, :CityId, :PaymentType, :PaymentClassificationId, :BrandName, :PaymentOptionTen, :ContractId
        
        def initialize(paymenttag=nil, city=nil, agentno=nil, contractoptionfour=nil, contractoptiontwo=nil, status=nil, paymentid=nil, fee=nil, paymentoptionfive=nil, outcontractid=nil, channelextjson=nil, contractoptionfive=nil, province=nil, startdate=nil, address=nil, enddate=nil, contractoptionsix=nil, paymentoptionseven=nil, picturetwo=nil, merchantno=nil, agentname=nil, contractoptionother=nil, contractoptionthree=nil, country=nil, shopcount=nil, paymentoptionthree=nil, paymentclassificationname=nil, contractoptionseven=nil, paymentoptionfour=nil, paymentclassificationlimit=nil, remark=nil, paymentoptionsix=nil, merchantname=nil, contractoptionone=nil, paymentoptionother=nil, paymentoptiontwo=nil, paymentoptionone=nil, updatetime=nil, contacttelephone=nil, contact=nil, signdate=nil, paymentoptionnine=nil, paymentname=nil, paymentinternalname=nil, contractoptionten=nil, code=nil, pictureone=nil, signman=nil, channelno=nil, addtime=nil, autosign=nil, contractoptionnine=nil, cityid=nil, paymenttype=nil, paymentclassificationid=nil, brandname=nil, paymentoptionten=nil, contractid=nil)
          @PaymentTag = paymenttag
          @City = city
          @AgentNo = agentno
          @ContractOptionFour = contractoptionfour
          @ContractOptionTwo = contractoptiontwo
          @Status = status
          @PaymentId = paymentid
          @Fee = fee
          @PaymentOptionFive = paymentoptionfive
          @OutContractId = outcontractid
          @ChannelExtJson = channelextjson
          @ContractOptionFive = contractoptionfive
          @Province = province
          @StartDate = startdate
          @Address = address
          @EndDate = enddate
          @ContractOptionSix = contractoptionsix
          @PaymentOptionSeven = paymentoptionseven
          @PictureTwo = picturetwo
          @MerchantNo = merchantno
          @AgentName = agentname
          @ContractOptionOther = contractoptionother
          @ContractOptionThree = contractoptionthree
          @Country = country
          @ShopCount = shopcount
          @PaymentOptionThree = paymentoptionthree
          @PaymentClassificationName = paymentclassificationname
          @ContractOptionSeven = contractoptionseven
          @PaymentOptionFour = paymentoptionfour
          @PaymentClassificationLimit = paymentclassificationlimit
          @Remark = remark
          @PaymentOptionSix = paymentoptionsix
          @MerchantName = merchantname
          @ContractOptionOne = contractoptionone
          @PaymentOptionOther = paymentoptionother
          @PaymentOptionTwo = paymentoptiontwo
          @PaymentOptionOne = paymentoptionone
          @UpdateTime = updatetime
          @ContactTelephone = contacttelephone
          @Contact = contact
          @SignDate = signdate
          @PaymentOptionNine = paymentoptionnine
          @PaymentName = paymentname
          @PaymentInternalName = paymentinternalname
          @ContractOptionTen = contractoptionten
          @Code = code
          @PictureOne = pictureone
          @SignMan = signman
          @ChannelNo = channelno
          @AddTime = addtime
          @AutoSign = autosign
          @ContractOptionNine = contractoptionnine
          @CityId = cityid
          @PaymentType = paymenttype
          @PaymentClassificationId = paymentclassificationid
          @BrandName = brandname
          @PaymentOptionTen = paymentoptionten
          @ContractId = contractid
        end

        def deserialize(params)
          @PaymentTag = params['PaymentTag']
          @City = params['City']
          @AgentNo = params['AgentNo']
          @ContractOptionFour = params['ContractOptionFour']
          @ContractOptionTwo = params['ContractOptionTwo']
          @Status = params['Status']
          @PaymentId = params['PaymentId']
          @Fee = params['Fee']
          @PaymentOptionFive = params['PaymentOptionFive']
          @OutContractId = params['OutContractId']
          @ChannelExtJson = params['ChannelExtJson']
          @ContractOptionFive = params['ContractOptionFive']
          @Province = params['Province']
          @StartDate = params['StartDate']
          @Address = params['Address']
          @EndDate = params['EndDate']
          @ContractOptionSix = params['ContractOptionSix']
          @PaymentOptionSeven = params['PaymentOptionSeven']
          @PictureTwo = params['PictureTwo']
          @MerchantNo = params['MerchantNo']
          @AgentName = params['AgentName']
          @ContractOptionOther = params['ContractOptionOther']
          @ContractOptionThree = params['ContractOptionThree']
          @Country = params['Country']
          @ShopCount = params['ShopCount']
          @PaymentOptionThree = params['PaymentOptionThree']
          @PaymentClassificationName = params['PaymentClassificationName']
          @ContractOptionSeven = params['ContractOptionSeven']
          @PaymentOptionFour = params['PaymentOptionFour']
          @PaymentClassificationLimit = params['PaymentClassificationLimit']
          @Remark = params['Remark']
          @PaymentOptionSix = params['PaymentOptionSix']
          @MerchantName = params['MerchantName']
          @ContractOptionOne = params['ContractOptionOne']
          @PaymentOptionOther = params['PaymentOptionOther']
          @PaymentOptionTwo = params['PaymentOptionTwo']
          @PaymentOptionOne = params['PaymentOptionOne']
          @UpdateTime = params['UpdateTime']
          @ContactTelephone = params['ContactTelephone']
          @Contact = params['Contact']
          @SignDate = params['SignDate']
          @PaymentOptionNine = params['PaymentOptionNine']
          @PaymentName = params['PaymentName']
          @PaymentInternalName = params['PaymentInternalName']
          @ContractOptionTen = params['ContractOptionTen']
          @Code = params['Code']
          @PictureOne = params['PictureOne']
          @SignMan = params['SignMan']
          @ChannelNo = params['ChannelNo']
          @AddTime = params['AddTime']
          @AutoSign = params['AutoSign']
          @ContractOptionNine = params['ContractOptionNine']
          @CityId = params['CityId']
          @PaymentType = params['PaymentType']
          @PaymentClassificationId = params['PaymentClassificationId']
          @BrandName = params['BrandName']
          @PaymentOptionTen = params['PaymentOptionTen']
          @ContractId = params['ContractId']
        end
      end

      # ViewMerchant请求参数结构体
      class ViewMerchantRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param OutMerchantId: 外部商户主键编号（MerchantNo或OutMerchantId必须传一个）
        # @type OutMerchantId: String
        # @param MerchantNo: 商户编号（MerchantNo或OutMerchantId必须传一个）
        # @type MerchantNo: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :OutMerchantId, :MerchantNo, :Profile
        
        def initialize(openid=nil, openkey=nil, outmerchantid=nil, merchantno=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OutMerchantId = outmerchantid
          @MerchantNo = merchantno
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OutMerchantId = params['OutMerchantId']
          @MerchantNo = params['MerchantNo']
          @Profile = params['Profile']
        end
      end

      # ViewMerchant返回参数结构体
      class ViewMerchantResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 商户明细响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ViewMerchantResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = ViewMerchantResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 商户明细响应对象
      class ViewMerchantResult < TencentCloud::Common::AbstractModel
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param TaxCollectionPicture: 税务登记证图片【私密区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaxCollectionPicture: String
        # @param BossIdNo: 法人证件号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossIdNo: String
        # @param AccountIdNo: 法人亲属证件号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountIdNo: String
        # @param OtherPictureThree: 其他资料3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherPictureThree: String
        # @param AccountIdType: 法人亲属证件类型（1居民身份证,2临时居民身份证,3居民户口簿,4护照,5港澳居民来往内地通行证,6回乡证,7军人证,8武警身份证,9其他法定文件）结算账户人身份为法人亲属时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountIdType: String
        # @param Status: 商户状态（0未审核，1已审核，2审核未通过，3待审核，4已删除，5初审通过）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param BusinessLicensePicture: 营业执照图片【私密区】（系统返回的图片路径）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessLicensePicture: String
        # @param BrandName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandName: String
        # @param BossPositive: 法人身份证正面【私密区】（系统返回的图片路径）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossPositive: String
        # @param AppCount: 开通应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppCount: String
        # @param BossBack: 法人身份证背面【私密区】（系统返回的图片路径）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossBack: String
        # @param OrganizationCodePicture: 组织机构代码证图片【私密区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCodePicture: String
        # @param BusinessLicenseEndDate: 营业执照过期时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessLicenseEndDate: String
        # @param OrganizationCodeNo: 组织机构代码证号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCodeNo: String
        # @param AgentNo: 机构编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentNo: String
        # @param Province: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param BossStartDate: 法人证件生效时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossStartDate: String
        # @param UpdateTime: 更新时间（yyyy-mm-dd hh:ii:ss）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param BankNo: 清算联行号，开户行行号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankNo: String
        # @param TaxCollectionStartDate: 税务登记证生效时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaxCollectionStartDate: String
        # @param BusinessLicenseStartDate: 营业执照生效时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessLicenseStartDate: String
        # @param AccountManagerId: 客户经理用户编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountManagerId: String
        # @param ClassificationIds: 分类编号(多个以小写逗号分开)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationIds: String
        # @param BusinessLicenseType: 营业执照类型（1三证合一，2非三证合一）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessLicenseType: String
        # @param BossEndDate: 法人证件过期时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossEndDate: String
        # @param BusinessLicenseNo: 营业执照编号（系统有唯一性校验）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessLicenseNo: String
        # @param AgentName: 机构名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String
        # @param Intro: 商户简介
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Intro: String
        # @param BossIdType: 法人证件类型（1居民身份证,2临时居民身份证,3居民户口簿,4护照,5港澳居民来往内地通行证,6回乡证,7军人证,8武警身份证,9其他法定文件）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossIdType: String
        # @param AddTime: 添加时间（yyyy-mm-dd hh:ii:ss）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param ShopCount: 门店数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopCount: String
        # @param AccountBoss: 结算账户人身份（1法人，2法人亲属），结算帐户为对私时必填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountBoss: String
        # @param ClassificationNames: 分类名称(多个以小写逗号分开)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationNames: String
        # @param BossTelephone: 法人电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossTelephone: String
        # @param AccountManagerName: 客户经理姓名，必须为系统后台的管理员真实姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountManagerName: String
        # @param TerminalCount: 终端数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminalCount: String
        # @param Remark: 审核备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param FinancialContact: 财务联系人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinancialContact: String
        # @param MerchantName: 商户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantName: String
        # @param BossSex: 法人性别（1男，2女）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossSex: String
        # @param MerchantNo: 商户编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String
        # @param BossAddress: 法人住址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossAddress: String
        # @param Country: 县/区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Country: String
        # @param Address: 详细地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param BossJob: 法人职业
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossJob: String
        # @param LicencePicture: 许可证图片【私密区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicencePicture: String
        # @param OrganizationCodeEndDate: 组织机构代码证过期时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCodeEndDate: String
        # @param OpenHours: 营业时间，多个以小写逗号分开(9:00-12:00,13:00-18:00)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenHours: String
        # @param OtherPictureTwo: 其他资料2
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherPictureTwo: String
        # @param OtherPictureOne: 其他资料1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherPictureOne: String
        # @param AccountName: 银行户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountName: String
        # @param ContractCount: 合同数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContractCount: String
        # @param LicencePictureTwo: 授权文件【私密区】（当结算帐户身份为法人亲属时必传）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicencePictureTwo: String
        # @param AccountNo: 银行账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountNo: String
        # @param BossEmail: 法人邮箱
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossEmail: String
        # @param AccountType: 结算账户类型（2对私，1对公）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountType: String
        # @param TaxCollectionEndDate: 税务登记证过期时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaxCollectionEndDate: String
        # @param BankName: 开户行名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BankName: String
        # @param Telephone: 联系电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Telephone: String
        # @param OutMerchantId: 外部商户主键编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutMerchantId: String
        # @param CityId: 城市编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityId: String
        # @param BossIdCount: 法人证件国别/地区（中国CHN，香港HKG，澳门MAC，台湾CTN）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossIdCount: String
        # @param Tag: 商户标记，自定义参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param FinancialTelephone: 财务联系人电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FinancialTelephone: String
        # @param BossName: 法人姓名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BossName: String
        # @param OrganizationCodeStartDate: 组织机构代码证生效时间（yyyy-mm-dd）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCodeStartDate: String
        # @param Logo: 商户logo【公共区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Logo: String
        # @param OtherPictureFour: 其他资料4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherPictureFour: String
        # @param TaxCollectionNo: 税务登记证号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaxCollectionNo: String

        attr_accessor :City, :TaxCollectionPicture, :BossIdNo, :AccountIdNo, :OtherPictureThree, :AccountIdType, :Status, :BusinessLicensePicture, :BrandName, :BossPositive, :AppCount, :BossBack, :OrganizationCodePicture, :BusinessLicenseEndDate, :OrganizationCodeNo, :AgentNo, :Province, :BossStartDate, :UpdateTime, :BankNo, :TaxCollectionStartDate, :BusinessLicenseStartDate, :AccountManagerId, :ClassificationIds, :BusinessLicenseType, :BossEndDate, :BusinessLicenseNo, :AgentName, :Intro, :BossIdType, :AddTime, :ShopCount, :AccountBoss, :ClassificationNames, :BossTelephone, :AccountManagerName, :TerminalCount, :Remark, :FinancialContact, :MerchantName, :BossSex, :MerchantNo, :BossAddress, :Country, :Address, :BossJob, :LicencePicture, :OrganizationCodeEndDate, :OpenHours, :OtherPictureTwo, :OtherPictureOne, :AccountName, :ContractCount, :LicencePictureTwo, :AccountNo, :BossEmail, :AccountType, :TaxCollectionEndDate, :BankName, :Telephone, :OutMerchantId, :CityId, :BossIdCount, :Tag, :FinancialTelephone, :BossName, :OrganizationCodeStartDate, :Logo, :OtherPictureFour, :TaxCollectionNo
        
        def initialize(city=nil, taxcollectionpicture=nil, bossidno=nil, accountidno=nil, otherpicturethree=nil, accountidtype=nil, status=nil, businesslicensepicture=nil, brandname=nil, bosspositive=nil, appcount=nil, bossback=nil, organizationcodepicture=nil, businesslicenseenddate=nil, organizationcodeno=nil, agentno=nil, province=nil, bossstartdate=nil, updatetime=nil, bankno=nil, taxcollectionstartdate=nil, businesslicensestartdate=nil, accountmanagerid=nil, classificationids=nil, businesslicensetype=nil, bossenddate=nil, businesslicenseno=nil, agentname=nil, intro=nil, bossidtype=nil, addtime=nil, shopcount=nil, accountboss=nil, classificationnames=nil, bosstelephone=nil, accountmanagername=nil, terminalcount=nil, remark=nil, financialcontact=nil, merchantname=nil, bosssex=nil, merchantno=nil, bossaddress=nil, country=nil, address=nil, bossjob=nil, licencepicture=nil, organizationcodeenddate=nil, openhours=nil, otherpicturetwo=nil, otherpictureone=nil, accountname=nil, contractcount=nil, licencepicturetwo=nil, accountno=nil, bossemail=nil, accounttype=nil, taxcollectionenddate=nil, bankname=nil, telephone=nil, outmerchantid=nil, cityid=nil, bossidcount=nil, tag=nil, financialtelephone=nil, bossname=nil, organizationcodestartdate=nil, logo=nil, otherpicturefour=nil, taxcollectionno=nil)
          @City = city
          @TaxCollectionPicture = taxcollectionpicture
          @BossIdNo = bossidno
          @AccountIdNo = accountidno
          @OtherPictureThree = otherpicturethree
          @AccountIdType = accountidtype
          @Status = status
          @BusinessLicensePicture = businesslicensepicture
          @BrandName = brandname
          @BossPositive = bosspositive
          @AppCount = appcount
          @BossBack = bossback
          @OrganizationCodePicture = organizationcodepicture
          @BusinessLicenseEndDate = businesslicenseenddate
          @OrganizationCodeNo = organizationcodeno
          @AgentNo = agentno
          @Province = province
          @BossStartDate = bossstartdate
          @UpdateTime = updatetime
          @BankNo = bankno
          @TaxCollectionStartDate = taxcollectionstartdate
          @BusinessLicenseStartDate = businesslicensestartdate
          @AccountManagerId = accountmanagerid
          @ClassificationIds = classificationids
          @BusinessLicenseType = businesslicensetype
          @BossEndDate = bossenddate
          @BusinessLicenseNo = businesslicenseno
          @AgentName = agentname
          @Intro = intro
          @BossIdType = bossidtype
          @AddTime = addtime
          @ShopCount = shopcount
          @AccountBoss = accountboss
          @ClassificationNames = classificationnames
          @BossTelephone = bosstelephone
          @AccountManagerName = accountmanagername
          @TerminalCount = terminalcount
          @Remark = remark
          @FinancialContact = financialcontact
          @MerchantName = merchantname
          @BossSex = bosssex
          @MerchantNo = merchantno
          @BossAddress = bossaddress
          @Country = country
          @Address = address
          @BossJob = bossjob
          @LicencePicture = licencepicture
          @OrganizationCodeEndDate = organizationcodeenddate
          @OpenHours = openhours
          @OtherPictureTwo = otherpicturetwo
          @OtherPictureOne = otherpictureone
          @AccountName = accountname
          @ContractCount = contractcount
          @LicencePictureTwo = licencepicturetwo
          @AccountNo = accountno
          @BossEmail = bossemail
          @AccountType = accounttype
          @TaxCollectionEndDate = taxcollectionenddate
          @BankName = bankname
          @Telephone = telephone
          @OutMerchantId = outmerchantid
          @CityId = cityid
          @BossIdCount = bossidcount
          @Tag = tag
          @FinancialTelephone = financialtelephone
          @BossName = bossname
          @OrganizationCodeStartDate = organizationcodestartdate
          @Logo = logo
          @OtherPictureFour = otherpicturefour
          @TaxCollectionNo = taxcollectionno
        end

        def deserialize(params)
          @City = params['City']
          @TaxCollectionPicture = params['TaxCollectionPicture']
          @BossIdNo = params['BossIdNo']
          @AccountIdNo = params['AccountIdNo']
          @OtherPictureThree = params['OtherPictureThree']
          @AccountIdType = params['AccountIdType']
          @Status = params['Status']
          @BusinessLicensePicture = params['BusinessLicensePicture']
          @BrandName = params['BrandName']
          @BossPositive = params['BossPositive']
          @AppCount = params['AppCount']
          @BossBack = params['BossBack']
          @OrganizationCodePicture = params['OrganizationCodePicture']
          @BusinessLicenseEndDate = params['BusinessLicenseEndDate']
          @OrganizationCodeNo = params['OrganizationCodeNo']
          @AgentNo = params['AgentNo']
          @Province = params['Province']
          @BossStartDate = params['BossStartDate']
          @UpdateTime = params['UpdateTime']
          @BankNo = params['BankNo']
          @TaxCollectionStartDate = params['TaxCollectionStartDate']
          @BusinessLicenseStartDate = params['BusinessLicenseStartDate']
          @AccountManagerId = params['AccountManagerId']
          @ClassificationIds = params['ClassificationIds']
          @BusinessLicenseType = params['BusinessLicenseType']
          @BossEndDate = params['BossEndDate']
          @BusinessLicenseNo = params['BusinessLicenseNo']
          @AgentName = params['AgentName']
          @Intro = params['Intro']
          @BossIdType = params['BossIdType']
          @AddTime = params['AddTime']
          @ShopCount = params['ShopCount']
          @AccountBoss = params['AccountBoss']
          @ClassificationNames = params['ClassificationNames']
          @BossTelephone = params['BossTelephone']
          @AccountManagerName = params['AccountManagerName']
          @TerminalCount = params['TerminalCount']
          @Remark = params['Remark']
          @FinancialContact = params['FinancialContact']
          @MerchantName = params['MerchantName']
          @BossSex = params['BossSex']
          @MerchantNo = params['MerchantNo']
          @BossAddress = params['BossAddress']
          @Country = params['Country']
          @Address = params['Address']
          @BossJob = params['BossJob']
          @LicencePicture = params['LicencePicture']
          @OrganizationCodeEndDate = params['OrganizationCodeEndDate']
          @OpenHours = params['OpenHours']
          @OtherPictureTwo = params['OtherPictureTwo']
          @OtherPictureOne = params['OtherPictureOne']
          @AccountName = params['AccountName']
          @ContractCount = params['ContractCount']
          @LicencePictureTwo = params['LicencePictureTwo']
          @AccountNo = params['AccountNo']
          @BossEmail = params['BossEmail']
          @AccountType = params['AccountType']
          @TaxCollectionEndDate = params['TaxCollectionEndDate']
          @BankName = params['BankName']
          @Telephone = params['Telephone']
          @OutMerchantId = params['OutMerchantId']
          @CityId = params['CityId']
          @BossIdCount = params['BossIdCount']
          @Tag = params['Tag']
          @FinancialTelephone = params['FinancialTelephone']
          @BossName = params['BossName']
          @OrganizationCodeStartDate = params['OrganizationCodeStartDate']
          @Logo = params['Logo']
          @OtherPictureFour = params['OtherPictureFour']
          @TaxCollectionNo = params['TaxCollectionNo']
        end
      end

      # ViewShop请求参数结构体
      class ViewShopRequest < TencentCloud::Common::AbstractModel
        # @param OpenId: 收单系统分配的开放ID
        # @type OpenId: String
        # @param OpenKey: 收单系统分配的密钥
        # @type OpenKey: String
        # @param OutShopId: 外部商户主键编号（ShopNo或OutShopId必须传一个）
        # @type OutShopId: String
        # @param ShopNo: 门店编号（ShopNo或OutShopId必须传一个）
        # @type ShopNo: String
        # @param Profile: 沙箱环境填sandbox，正式环境不填
        # @type Profile: String

        attr_accessor :OpenId, :OpenKey, :OutShopId, :ShopNo, :Profile
        
        def initialize(openid=nil, openkey=nil, outshopid=nil, shopno=nil, profile=nil)
          @OpenId = openid
          @OpenKey = openkey
          @OutShopId = outshopid
          @ShopNo = shopno
          @Profile = profile
        end

        def deserialize(params)
          @OpenId = params['OpenId']
          @OpenKey = params['OpenKey']
          @OutShopId = params['OutShopId']
          @ShopNo = params['ShopNo']
          @Profile = params['Profile']
        end
      end

      # ViewShop返回参数结构体
      class ViewShopResponse < TencentCloud::Common::AbstractModel
        # @param ErrMessage: 业务系统返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMessage: String
        # @param ErrCode: 业务系统返回码
        # @type ErrCode: String
        # @param Result: 门店明细响应对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Cpdp.v20190820.models.ViewShopResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrMessage, :ErrCode, :Result, :RequestId
        
        def initialize(errmessage=nil, errcode=nil, result=nil, requestid=nil)
          @ErrMessage = errmessage
          @ErrCode = errcode
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrMessage = params['ErrMessage']
          @ErrCode = params['ErrCode']
          unless params['Result'].nil?
            @Result = ViewShopResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 门店明细响应对象
      class ViewShopResult < TencentCloud::Common::AbstractModel
        # @param City: 城市
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type City: String
        # @param ShopName: 门店简称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopName: String
        # @param Latitude: 百度地图纬度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Latitude: String
        # @param BrandName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandName: String
        # @param AppCount: 开通应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppCount: String
        # @param ContactTelephone: 负责人手机号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactTelephone: String
        # @param MerchantName: 商户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantName: String
        # @param Province: 省份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Province: String
        # @param County: 县/区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type County: String
        # @param UpdateTime: 更新时间（yyyy-mm-dd hh:ii:ss）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param TerminalCount: 终端数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerminalCount: String
        # @param PictureTwo: 收银台图片【公共区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PictureTwo: String
        # @param LatitudeTwo: 高德地图纬度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatitudeTwo: String
        # @param AgentName: 机构名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentName: String
        # @param PictureFour: 其他照片【公共区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PictureFour: String
        # @param LongitudeTwo: 高德地图经度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LongitudeTwo: String
        # @param Status: 门店状态（0未审核，1已审核，2审核未通过，3待审核，4已删除，5初审通过）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Remark: 审核备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param AgentNo: 机构编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AgentNo: String
        # @param MerchantNo: 商户编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MerchantNo: String
        # @param AddTime: 添加时间（yyyy-mm-dd hh:ii:ss）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param Address: 详细地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Address: String
        # @param Longitude: 百度地图经度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Longitude: String
        # @param ShopNo: 门店编号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopNo: String
        # @param ShopFullName: 门店全称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ShopFullName: String
        # @param Contact: 门店负责人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contact: String
        # @param PictureThree: 店内环境图片【公共区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PictureThree: String
        # @param PictureOne: 整体门面（含招牌）图片【公共区】
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PictureOne: String
        # @param Telephone: 门店电话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Telephone: String
        # @param OutShopId: 机构门店主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutShopId: String
        # @param CityId: 城市编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CityId: String

        attr_accessor :City, :ShopName, :Latitude, :BrandName, :AppCount, :ContactTelephone, :MerchantName, :Province, :County, :UpdateTime, :TerminalCount, :PictureTwo, :LatitudeTwo, :AgentName, :PictureFour, :LongitudeTwo, :Status, :Remark, :AgentNo, :MerchantNo, :AddTime, :Address, :Longitude, :ShopNo, :ShopFullName, :Contact, :PictureThree, :PictureOne, :Telephone, :OutShopId, :CityId
        
        def initialize(city=nil, shopname=nil, latitude=nil, brandname=nil, appcount=nil, contacttelephone=nil, merchantname=nil, province=nil, county=nil, updatetime=nil, terminalcount=nil, picturetwo=nil, latitudetwo=nil, agentname=nil, picturefour=nil, longitudetwo=nil, status=nil, remark=nil, agentno=nil, merchantno=nil, addtime=nil, address=nil, longitude=nil, shopno=nil, shopfullname=nil, contact=nil, picturethree=nil, pictureone=nil, telephone=nil, outshopid=nil, cityid=nil)
          @City = city
          @ShopName = shopname
          @Latitude = latitude
          @BrandName = brandname
          @AppCount = appcount
          @ContactTelephone = contacttelephone
          @MerchantName = merchantname
          @Province = province
          @County = county
          @UpdateTime = updatetime
          @TerminalCount = terminalcount
          @PictureTwo = picturetwo
          @LatitudeTwo = latitudetwo
          @AgentName = agentname
          @PictureFour = picturefour
          @LongitudeTwo = longitudetwo
          @Status = status
          @Remark = remark
          @AgentNo = agentno
          @MerchantNo = merchantno
          @AddTime = addtime
          @Address = address
          @Longitude = longitude
          @ShopNo = shopno
          @ShopFullName = shopfullname
          @Contact = contact
          @PictureThree = picturethree
          @PictureOne = pictureone
          @Telephone = telephone
          @OutShopId = outshopid
          @CityId = cityid
        end

        def deserialize(params)
          @City = params['City']
          @ShopName = params['ShopName']
          @Latitude = params['Latitude']
          @BrandName = params['BrandName']
          @AppCount = params['AppCount']
          @ContactTelephone = params['ContactTelephone']
          @MerchantName = params['MerchantName']
          @Province = params['Province']
          @County = params['County']
          @UpdateTime = params['UpdateTime']
          @TerminalCount = params['TerminalCount']
          @PictureTwo = params['PictureTwo']
          @LatitudeTwo = params['LatitudeTwo']
          @AgentName = params['AgentName']
          @PictureFour = params['PictureFour']
          @LongitudeTwo = params['LongitudeTwo']
          @Status = params['Status']
          @Remark = params['Remark']
          @AgentNo = params['AgentNo']
          @MerchantNo = params['MerchantNo']
          @AddTime = params['AddTime']
          @Address = params['Address']
          @Longitude = params['Longitude']
          @ShopNo = params['ShopNo']
          @ShopFullName = params['ShopFullName']
          @Contact = params['Contact']
          @PictureThree = params['PictureThree']
          @PictureOne = params['PictureOne']
          @Telephone = params['Telephone']
          @OutShopId = params['OutShopId']
          @CityId = params['CityId']
        end
      end

      # 聚鑫提现订单内容
      class WithdrawBill < TencentCloud::Common::AbstractModel
        # @param WithdrawOrderId: 业务提现订单号
        # @type WithdrawOrderId: String
        # @param Date: 提现日期
        # @type Date: String
        # @param PayAmt: 提现金额，单位： 分
        # @type PayAmt: String
        # @param InSubAppId: 聚鑫分配转入账户appid
        # @type InSubAppId: String
        # @param OutSubAppId: 聚鑫分配转出账户appid
        # @type OutSubAppId: String
        # @param CurrencyType: ISO货币代码
        # @type CurrencyType: String
        # @param MetaData: 透传字段
        # @type MetaData: String
        # @param ExtendFieldData: 扩展字段
        # @type ExtendFieldData: String

        attr_accessor :WithdrawOrderId, :Date, :PayAmt, :InSubAppId, :OutSubAppId, :CurrencyType, :MetaData, :ExtendFieldData
        
        def initialize(withdraworderid=nil, date=nil, payamt=nil, insubappid=nil, outsubappid=nil, currencytype=nil, metadata=nil, extendfielddata=nil)
          @WithdrawOrderId = withdraworderid
          @Date = date
          @PayAmt = payamt
          @InSubAppId = insubappid
          @OutSubAppId = outsubappid
          @CurrencyType = currencytype
          @MetaData = metadata
          @ExtendFieldData = extendfielddata
        end

        def deserialize(params)
          @WithdrawOrderId = params['WithdrawOrderId']
          @Date = params['Date']
          @PayAmt = params['PayAmt']
          @InSubAppId = params['InSubAppId']
          @OutSubAppId = params['OutSubAppId']
          @CurrencyType = params['CurrencyType']
          @MetaData = params['MetaData']
          @ExtendFieldData = params['ExtendFieldData']
        end
      end

      # WithdrawCashMembership请求参数结构体
      class WithdrawCashMembershipRequest < TencentCloud::Common::AbstractModel
        # @param MrchCode: String(22)，商户号（签约客户号）
        # @type MrchCode: String
        # @param TranWebName: STRING(150)，交易网名称（市场名称）
        # @type TranWebName: String
        # @param MemberGlobalType: STRING(5)，会员证件类型（详情见“常见问题”）
        # @type MemberGlobalType: String
        # @param MemberGlobalId: STRING(32)，会员证件号码
        # @type MemberGlobalId: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码
        # @type TranNetMemberCode: String
        # @param MemberName: STRING(150)，会员名称
        # @type MemberName: String
        # @param TakeCashAcctNo: STRING(50)，提现账号（银行卡）
        # @type TakeCashAcctNo: String
        # @param OutAmtAcctName: STRING(150)，出金账户名称（银行卡户名）
        # @type OutAmtAcctName: String
        # @param Ccy: STRING(3)，币种（默认为RMB）
        # @type Ccy: String
        # @param CashAmt: STRING(20)，可提现金额
        # @type CashAmt: String
        # @param Remark: STRING(300)，备注（建议可送订单号，可在对账文件的备注字段获取到）
        # @type Remark: String
        # @param ReservedMsg: STRING(1027)，保留域
        # @type ReservedMsg: String
        # @param WebSign: STRING(300)，网银签名
        # @type WebSign: String
        # @param Profile: STRING(12)，接入环境，默认接入沙箱环境。接入正式环境填"prod"
        # @type Profile: String

        attr_accessor :MrchCode, :TranWebName, :MemberGlobalType, :MemberGlobalId, :TranNetMemberCode, :MemberName, :TakeCashAcctNo, :OutAmtAcctName, :Ccy, :CashAmt, :Remark, :ReservedMsg, :WebSign, :Profile
        
        def initialize(mrchcode=nil, tranwebname=nil, memberglobaltype=nil, memberglobalid=nil, trannetmembercode=nil, membername=nil, takecashacctno=nil, outamtacctname=nil, ccy=nil, cashamt=nil, remark=nil, reservedmsg=nil, websign=nil, profile=nil)
          @MrchCode = mrchcode
          @TranWebName = tranwebname
          @MemberGlobalType = memberglobaltype
          @MemberGlobalId = memberglobalid
          @TranNetMemberCode = trannetmembercode
          @MemberName = membername
          @TakeCashAcctNo = takecashacctno
          @OutAmtAcctName = outamtacctname
          @Ccy = ccy
          @CashAmt = cashamt
          @Remark = remark
          @ReservedMsg = reservedmsg
          @WebSign = websign
          @Profile = profile
        end

        def deserialize(params)
          @MrchCode = params['MrchCode']
          @TranWebName = params['TranWebName']
          @MemberGlobalType = params['MemberGlobalType']
          @MemberGlobalId = params['MemberGlobalId']
          @TranNetMemberCode = params['TranNetMemberCode']
          @MemberName = params['MemberName']
          @TakeCashAcctNo = params['TakeCashAcctNo']
          @OutAmtAcctName = params['OutAmtAcctName']
          @Ccy = params['Ccy']
          @CashAmt = params['CashAmt']
          @Remark = params['Remark']
          @ReservedMsg = params['ReservedMsg']
          @WebSign = params['WebSign']
          @Profile = params['Profile']
        end
      end

      # WithdrawCashMembership返回参数结构体
      class WithdrawCashMembershipResponse < TencentCloud::Common::AbstractModel
        # @param TxnReturnCode: String(20)，返回码
        # @type TxnReturnCode: String
        # @param TxnReturnMsg: String(100)，返回信息
        # @type TxnReturnMsg: String
        # @param CnsmrSeqNo: String(22)，交易流水号
        # @type CnsmrSeqNo: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param TransferFee: STRING(20)，转账手续费（固定返回0.00）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferFee: String
        # @param ReservedMsg: STRING(1027)，保留域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReservedMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TxnReturnCode, :TxnReturnMsg, :CnsmrSeqNo, :FrontSeqNo, :TransferFee, :ReservedMsg, :RequestId
        
        def initialize(txnreturncode=nil, txnreturnmsg=nil, cnsmrseqno=nil, frontseqno=nil, transferfee=nil, reservedmsg=nil, requestid=nil)
          @TxnReturnCode = txnreturncode
          @TxnReturnMsg = txnreturnmsg
          @CnsmrSeqNo = cnsmrseqno
          @FrontSeqNo = frontseqno
          @TransferFee = transferfee
          @ReservedMsg = reservedmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TxnReturnCode = params['TxnReturnCode']
          @TxnReturnMsg = params['TxnReturnMsg']
          @CnsmrSeqNo = params['CnsmrSeqNo']
          @FrontSeqNo = params['FrontSeqNo']
          @TransferFee = params['TransferFee']
          @ReservedMsg = params['ReservedMsg']
          @RequestId = params['RequestId']
        end
      end

      # 清分提现明细信息
      class WithdrawItem < TencentCloud::Common::AbstractModel
        # @param BookingFlag: STRING(2)，记账标志（01: 提现; 02: 清分 ）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BookingFlag: String
        # @param TranStatus: STRING(32)，交易状态（0: 成功）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranStatus: String
        # @param BookingMsg: STRING(200)，记账说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BookingMsg: String
        # @param TranNetMemberCode: STRING(32)，交易网会员代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranNetMemberCode: String
        # @param SubAcctNo: STRING(50)，见证子帐户的帐号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctNo: String
        # @param SubAcctName: STRING(150)，见证子账户的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAcctName: String
        # @param TranAmt: STRING(20)，交易金额
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranAmt: String
        # @param Commission: STRING(20)，手续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Commission: String
        # @param TranDate: STRING(8)，交易日期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranDate: String
        # @param TranTime: STRING(20)，交易时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranTime: String
        # @param FrontSeqNo: STRING(52)，见证系统流水号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontSeqNo: String
        # @param Remark: STRING(300)，备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String

        attr_accessor :BookingFlag, :TranStatus, :BookingMsg, :TranNetMemberCode, :SubAcctNo, :SubAcctName, :TranAmt, :Commission, :TranDate, :TranTime, :FrontSeqNo, :Remark
        
        def initialize(bookingflag=nil, transtatus=nil, bookingmsg=nil, trannetmembercode=nil, subacctno=nil, subacctname=nil, tranamt=nil, commission=nil, trandate=nil, trantime=nil, frontseqno=nil, remark=nil)
          @BookingFlag = bookingflag
          @TranStatus = transtatus
          @BookingMsg = bookingmsg
          @TranNetMemberCode = trannetmembercode
          @SubAcctNo = subacctno
          @SubAcctName = subacctname
          @TranAmt = tranamt
          @Commission = commission
          @TranDate = trandate
          @TranTime = trantime
          @FrontSeqNo = frontseqno
          @Remark = remark
        end

        def deserialize(params)
          @BookingFlag = params['BookingFlag']
          @TranStatus = params['TranStatus']
          @BookingMsg = params['BookingMsg']
          @TranNetMemberCode = params['TranNetMemberCode']
          @SubAcctNo = params['SubAcctNo']
          @SubAcctName = params['SubAcctName']
          @TranAmt = params['TranAmt']
          @Commission = params['Commission']
          @TranDate = params['TranDate']
          @TranTime = params['TranTime']
          @FrontSeqNo = params['FrontSeqNo']
          @Remark = params['Remark']
        end
      end

    end
  end
end

